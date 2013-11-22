library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder is
	--SPI sync signals
	signal dav_latched, dav_old : std_logic;

	--state machine signals
	type instruction_state is (initial, decoding);
	signal instr_state, next_instr_state : instruction_state;

	signal data_in : std_logic_vector(InstrPacketSize-1 downto 0);
	signal packet_num, next_packet_num : unsigned(MaxNumInstrPackets-1 downto 0);
	signal instruction, next_instruction : std_logic_vector(InstrSize-1 downto 0);
	
	--signal data_out : std_logic_vector(InstrPacketSize-1 downto 0);
	--output buffer signals
	signal next_x0, next_x1 : std_logic_vector(SizeX-1 downto 0);
	signal next_y0, next_y1 : std_logic_vector(SizeY-1 downto 0);
	signal next_color : std_logic_vector(SizeColor-1 downto 0);
	signal next_en : std_logic_vector(NumDrawModules-1 downto 0);
	signal next_reg_value, next_reg_id, next_reg_set : std_logic;
	
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
				color <= (others => '0');
				x0 <= (others => '0');
				y0 <= (others => '0');
				x1 <= (others => '0');
				y1 <= (others => '0');
				en <= (others => '0');
				rts <= '0';
				do <= (others => '0');
				reg_id <= '0';
				reg_value <= '0';
				reg_set <= '0';
			else
				--defaults
				rts <= '0';
				do <= (others => '0');

				--synchronize data available flag
				dav_latched <= dav;
				dav_old <= dav_latched;

				--perform action upon data available change
				if draw_rdy = '1' then
					rts <= '1';
					do <= "00000110";
				elsif dav_latched = '1' and dav_old = '0' then
					packet_num <= next_packet_num;
					instr_state <= next_instr_state;
					data_in <= di;
					instruction <= next_instruction;
				end if;

				--update outputs
				color <= next_color;
				x0 <= next_x0;
				y0 <= next_y0;
				x1 <= next_x1;
				y1 <= next_y1;
				en <= next_en;
				reg_id <= next_reg_id;
				reg_value <= next_reg_value;
				reg_set <= next_reg_set;
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
			next_color <= (others => '0');
			next_x0 <= (others => '0');
			next_y0 <= (others => '0');
			next_x1 <= (others => '0');
			next_y1 <= (others => '0');
			next_en <= (others => '0');
			next_reg_value <= '0';
			next_reg_id <= '0';
			next_reg_set <= '0';
		else
			--defaults
			done := '0';
			instr := instruction;
			next_color <= color;
			next_x0 <= x0;
			next_y0 <= y0;
			next_x1 <= x1;
			next_y1 <= y1;
			next_en <= (others => '0');
			next_reg_value <= '0';
			next_reg_id <= '0';
			next_reg_set <= '0';
			--logic depending on current packet in stream
			case to_integer(packet_num) is
				when 0 =>
					--deduce instruction
					instr := data_in(InstrPacketSize-1 downto SizeColor);
					--start loading next instruction next cycle if instruction is "fill", "switch" or unknown
					if (instr = "0000" or instr = "0001" or instr > "0110") then
						done := '1';
						if instr = "0000" then
						next_en(0) <= '1';
							next_en <= (others => '0');
							next_en(0) <= '1';
						elsif instr = "0001" then
							next_reg_value <= not reg_value;
							next_reg_set <= '1';
						end if;
					end if;
					--pass through color
					next_color <= data_in(SizeColor-1 downto 0);
				when 1 => 
					--pass through x0 coord
					next_x0 <= data_in;
				when 2 => 
					--pass through y0 coord
					next_y0 <= data_in(SizeY-1 downto 0);
					---start loading next instruction next cycle if instruction is "pixel"
					if instr = "0010" then
						done := '1';
						next_en <= (others => '0');
						next_en(1) <= '1';
					end if;
				when 3 =>
					--pass through x1 coord
					next_x1 <= data_in;
					--start loading next instruction next cycle if instruction is "circle"
					if instr = "0110" then
						done := '1';
						next_en <= (others => '0');
						next_en(5) <= '1';
					end if;
				when 4 =>
					--pass through y1 coord
					next_y1 <= data_in(SizeY-1 downto 0);
					--start loading next instruction next cycle if instruction is "square", "fsquare" or "line"
					if (instr = "0011" or instr = "0100" or instr = "0101") then
						if instr = "0011" then
							next_en <= (others => '0');
							next_en(2) <= '1';
						elsif instr = "0100" then
							next_en <= (others => '0');
							next_en(3) <= '1';
						elsif instr = "0101" then
							next_en <= (others => '0');
							next_en(4) <= '1';
						end if;
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
		end if;
	end process;
end behaviour;