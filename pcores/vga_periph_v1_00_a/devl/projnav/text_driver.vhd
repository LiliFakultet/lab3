----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:40 03/07/2019 
-- Design Name: 
-- Module Name:    text_driver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity text_driver is
    Port ( clk_i : in std_logic;
	        reset_n_i : in std_logic;
	        char_address_o : out  STD_LOGIC_VECTOR(13 downto 0);
           char_value_o : out  STD_LOGIC_VECTOR (5 downto 0);
           char_we_o : out  STD_LOGIC);
end text_driver;

architecture Behavioral of text_driver is
	signal address : std_logic_vector(13 downto 0);
	signal base : std_logic_vector(13 downto 0);
	signal value : std_logic_vector(5 downto 0);
	
	signal shift_counter : std_logic_vector(25 downto 0);
	signal shift : std_logic;
begin
--   char_address_o <= (others => '0');
--	char_value_o <= "000001";
--	char_we_o <= '1';
	
	process (clk_i) begin
		if rising_edge(clk_i) then
			if (reset_n_i = '0') then
				shift_counter <= (others => '0');
				shift <= '0';
			else
				if shift_counter = 3999999 then
					shift_counter <= (others => '0');
					shift <= '1';
				else
					shift_counter <= shift_counter + '1';
					shift <= '0';
				end if;		
			end if;
		end if;
	end process;
	
	process (clk_i) begin
		if rising_edge(clk_i) then
			if (reset_n_i = '0') then
				base <= (others => '0');
			else
				if shift = '1' then
					if (base < 1200) then
						base <= base + '1';
					else
						base <= (others => '0');
					end if;
				end if;
			end if;
		end if;
	end process;
	
	process (clk_i) begin
		if rising_edge(clk_i) then
			if (reset_n_i = '0') then
				address <= (others => '0');
				value <= (others => '0');
			else
				if (address = base + "00000000000001") then
					value <= "010100";
				elsif (address = base + "00000000000010") then
					value <= "000101";
				elsif (address = base + "00000000000011") then
					value <= "001011";
				elsif (address = base + "00000000000100") then
					value <= "010011";
				elsif (address = base + "00000000000101") then
					value <= "010100";
				else
					value <= "100000";
				end if;
				
				if (address < 1200) then
					address <= address + '1';
				else
					address <= (others => '0');
				end if;
			end if;
		end if;
	end process;
	
	char_address_o <= address;
	char_value_o <= value;
	char_we_o <= '1';

end Behavioral;

