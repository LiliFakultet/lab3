library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity colorbar_driver is
    Port ( row_i : in  STD_LOGIC_VECTOR(10 downto 0);
           column_i : in  STD_LOGIC_VECTOR(10 downto 0);
           red_o : out  STD_LOGIC_VECTOR(7 downto 0);
           green_o : out  STD_LOGIC_VECTOR(7 downto 0);
           blue_o : out  STD_LOGIC_VECTOR(7 downto 0));
end colorbar_driver;

architecture Behavioral of colorbar_driver is
	signal color : std_logic_vector(23 downto 0);
begin
	process(row_i, column_i) begin
		if column_i < 80 then
			color <= x"FFFFFF";
		elsif column_i < 160 then
			color <= x"FFFF00";
		elsif column_i < 240 then
			color <= x"00FFFF";
		elsif column_i < 320 then
			color <= x"00FF00";
		elsif column_i < 400 then
			color <= x"FF00FF";
		elsif column_i < 480 then
			color <= x"FF0000";
		elsif column_i < 560 then
			color <= x"0000FF";
		else
			color <= x"000000";
		end if;
	end process;
	
	red_o <= color(23 downto 16);
	green_o <= color(15 downto 8);
	blue_o <= color(7 downto 0);

end Behavioral;

