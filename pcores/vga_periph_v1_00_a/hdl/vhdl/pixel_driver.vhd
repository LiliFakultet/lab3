library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pixel_driver is
    Port ( clk_i : in  STD_LOGIC;
           reset_n_i : in  STD_LOGIC;
           pixel_we_o : out  STD_LOGIC;
           pixel_value_o : out  STD_LOGIC_VECTOR (31 downto 0);
           pixel_address_o : out  STD_LOGIC_VECTOR (19 downto 0));
end pixel_driver;

architecture Behavioral of pixel_driver is
	signal address : std_logic_vector(19 downto 0);
	
	signal row : std_logic_vector(8 downto 0);
	signal column : std_logic_vector(4 downto 0);
	
	signal value : std_logic_vector(31 downto 0);
	
	signal direction : std_logic;
	signal origin : std_logic_vector(4 downto 0);
	
	signal move_counter : std_logic_vector(25 downto 0);
	signal move : std_logic;
begin
	process (clk_i) begin
		if rising_edge(clk_i) then
			if (reset_n_i = '0') then
				move_counter <= (others => '0');
				move <= '0';
			else
				if move_counter = 3999999 then
					move_counter <= (others => '0');
					move <= '1';
				else
					move_counter <= move_counter + '1';
					move <= '0';
				end if;		
			end if;
		end if;
	end process;

	process (clk_i) begin
		if rising_edge(clk_i) then
			if (reset_n_i = '0') then
				direction <= '1';
				origin <= (others => '0');
			else
				if move = '1' then
					if direction = '1' then
						if origin = 19 then
							direction <= '0';
						else
							origin <= origin + '1';
						end if;
					else
						if origin = 0 then
							direction <= '1';
						else
							origin <= origin - '1';
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;

	process (clk_i) begin
		if rising_edge(clk_i) then
			if (reset_n_i = '0') then
				row  <= (others => '0');
				column <= (others => '0');
				value <= (others => '0');
			else
				address <= column + "00000010100" * row;
			
				if (row >= (240 - 16) and row <= (240 + 16) and column = origin) then
					value <= (others => '1');
				else
					value <= (others => '0');
				end if;
			
				if (column < 20) then
					column <= column + '1';
				else
					column <= (others => '0');
					if (row < 400) then
						row <= row + '1';
					else
						row <= (others => '0');
					end if;
				end if;
			end if;
		end if;
	end process;
	
	pixel_we_o <= '1';
	pixel_value_o <= value;
	pixel_address_o <= address;

end Behavioral;

