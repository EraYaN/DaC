library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder is
	type instruction_state is (initial, decoding);
	signal instr_state, next_instr_state : instruction_state;

	signal dav_latched, dav_old : std_logic;

	--signal data : std_logic;
	signal data_in : std_logic_vector(InstrPacketSize-1 downto 0);
	signal packet_num, next_packet_num : unsigned(MaxNumInstrPackets-1 downto 0);
	signal instruction, next_instruction : std_logic_vector(InstrSize-1 downto 0);

	--signal sendready, reg_value, reg_id, reg_set : std_logic;
	--signal data_out : std_logic_vector(InstrPacketSize-1 downto 0);
	signal draw_x0, next_draw_x0, draw_x1, next_draw_x1 : std_logic_vector(SizeX-1 downto 0);
	signal draw_y0, next_draw_y0, draw_y1, next_draw_y1 : std_logic_vector(SizeY-1 downto 0);
	signal draw_color, next_draw_color : std_logic_vector(SizeColor-1 downto 0);
	--signal draw_enabled : std_logic_vector(NumDrawModules-1 downto 0);
	
begin
	--synchronizer + input buffer + output buffer + state change
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				--reset all registers
				dav_latched <= '0';
				dav_old <= '0';
				packet_num <= (others => '0');
				instr_state <= initial;
				data_in <= (others => '0');
				instruction <= (others => '0');
				draw_color <= (others => '0');
				draw_x0 <= (others => '0');
				draw_y0 <= (others => '0');
				draw_x1 <= (others => '0');
				draw_y1 <= (others => '0');
				
			else
				--synchronize data available flag
				dav_latched <= dav;
				dav_old <= dav_latched;

				--perform action upon data available change
				if dav_latched = '1' and dav_old = '0' then
					packet_num <= next_packet_num;
					instr_state <= next_instr_state;
					data_in <= di;
					instruction <= next_instruction;
				end if;

				--update other stage registers
				draw_color <= next_draw_color;
				draw_x0 <= next_draw_x0;
				draw_y0 <= next_draw_y0;
				draw_x1 <= next_draw_x1;
				draw_y1 <= next_draw_y1;
			end if;
		end if;
	end process;
	
	--combinatorial state logic
	process (packet_num, instr_state, data_in)
		variable done : std_logic;
		variable instr : std_logic_vector(InstrSize-1 downto 0);
	begin
		if instr_state = initial then
			--reset
			next_instr_state <= decoding;
			next_packet_num <= (others => '0');
			next_instruction <= (others => '0');			
			col <= (others => '0');
			x0 <= (others => '0');
			y0 <= (others => '0');
			x1 <= (others => '0');
			y1 <= (others => '0');
			next_draw_color <= (others => '0');
			next_draw_x0 <= (others => '0');
			next_draw_y0 <= (others => '0');
			next_draw_x1 <= (others => '0');
			next_draw_y1 <= (others => '0');
		else
			--defaults
			done := '0';
			instr := instruction;
			next_draw_color <= draw_color;
			next_draw_x0 <= draw_x0;
			next_draw_y0 <= draw_y0;
			next_draw_x1 <= draw_x1;
			next_draw_y1 <= draw_y1;
			--logic depending on current packet in stream
			case to_integer(packet_num) is
				when 0 =>
					--deduce instruction
					instr := data_in(InstrPacketSize-1 downto SizeColor);
					--start loading next instruction next cycle if instruction is "fill", "switch" or unknown
					if (instr = "0000" or instr = "0001" or instr > "0110") then
						done := '1';
					end if;
					--pass through color
					next_draw_color <= data_in(SizeColor-1 downto 0);
				when 1 => 
					--pass through x0 coord
					next_draw_x0 <= data_in;
				when 2 => 
					--pass through y0 coord
					next_draw_y0 <= data_in(SizeY-1 downto 0);
					---start loading next instruction next cycle if instruction is "pixel"
					if instr = "0010" then
						done := '1';
					end if;
				when 3 =>
					--pass through x1 coord
					next_draw_x1 <= data_in;
					--start loading next instruction next cycle if instruction is "circle" or "fcircle"
					if (instr = "0110" or instr = "0111") then
						done := '1';
					end if;
				when 4 =>
					--pass through y1 coord
					next_draw_y1 <= data_in(SizeY-1 downto 0);
					--start loading next instruction next cycle if instruction is "square", "fsquare" or "line"
					if (instr = "0011" or instr = "0100" or instr = "0101") then
						done := '1';
					end if;
				when others =>

			end case;

			--update state pre-register state signals
			if done = '1' then
				next_packet_num <= (others => '0');
			else
				next_packet_num <= packet_num + 1;
			end if;
			next_instr_state <= decoding;
			next_instruction <= instr;

			--update outputs
			col <= next_draw_color;
			x0 <= next_draw_x0;
			y0 <= next_draw_y0;
			x1 <= next_draw_x1;
			y1 <= next_draw_y1;
		end if;
	end process;
end behaviour;


