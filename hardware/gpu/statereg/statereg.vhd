entity statereg is 
	port
	(
		clk :in std_logic;
		rst :in std_logic;
		s   :in std_logic;
		di  :in std_logic;
		asb :out std_logic
	);
end statereg;

architecture structural of statereg is

	component dff is 	
		port
		(
			clk :in std_logic;
			rst :in std_logic;
			s   :in std_logic;
			d   :in std_logic;
			q   :out std_logic
		);
	end component dff;

begin 

	dff1 : ddf port map 
	(
		clk => clk,
		rst => rst,
		s   => s,
		d   => di(0),
		q   => asb
	);
end structural;


entity dff is 	
	port(
		clk :in std_logic;
		rst :in std_logic;
		s   :in std_logic;
		d   :in std_logic;
		q   :out std_logic);
end dff;

architecture behavioural of dff is
begin 
	process(clk,rst)
	begin
		if rst = '1' then 
			q <= '0';
		elsif rising_edge(clk) then 
			if s = '1' then 
				q <= d;
			end if;
		end if;
	end process;
end behavioural;