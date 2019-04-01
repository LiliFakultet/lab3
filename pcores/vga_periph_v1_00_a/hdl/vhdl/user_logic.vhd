------------------------------------------------------------------------------
-- user_logic.vhd - entity/architecture pair
------------------------------------------------------------------------------
--
-- ***************************************************************************
-- ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
-- **                                                                       **
-- ** Xilinx, Inc.                                                          **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
-- ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
-- ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
-- ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
-- ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
-- ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
-- ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
-- ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
-- ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
-- ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
-- ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
-- ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
-- ** FOR A PARTICULAR PURPOSE.                                             **
-- **                                                                       **
-- ***************************************************************************
--
------------------------------------------------------------------------------
-- Filename:          user_logic.vhd
-- Version:           1.00.a
-- Description:       User logic.
-- Date:              Mon Mar 25 10:57:34 2019 (by Create and Import Peripheral Wizard)
-- VHDL Standard:     VHDL'93
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------

-- DO NOT EDIT BELOW THIS LINE --------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;

-- DO NOT EDIT ABOVE THIS LINE --------------------

--USER libraries added here

------------------------------------------------------------------------------
-- Entity section
------------------------------------------------------------------------------
-- Definition of Generics:
--   C_NUM_REG                    -- Number of software accessible registers
--   C_SLV_DWIDTH                 -- Slave interface data bus width
--
-- Definition of Ports:
--   Bus2IP_Clk                   -- Bus to IP clock
--   Bus2IP_Resetn                -- Bus to IP reset
--   Bus2IP_Data                  -- Bus to IP data bus
--   Bus2IP_BE                    -- Bus to IP byte enables
--   Bus2IP_RdCE                  -- Bus to IP read chip enable
--   Bus2IP_WrCE                  -- Bus to IP write chip enable
--   IP2Bus_Data                  -- IP to Bus data bus
--   IP2Bus_RdAck                 -- IP to Bus read transfer acknowledgement
--   IP2Bus_WrAck                 -- IP to Bus write transfer acknowledgement
--   IP2Bus_Error                 -- IP to Bus error response
------------------------------------------------------------------------------

entity user_logic is
  generic
  (
    -- ADD USER GENERICS BELOW THIS LINE ---------------
    --USER generics added here
    -- ADD USER GENERICS ABOVE THIS LINE ---------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol parameters, do not add to or delete
    C_NUM_REG                      : integer              := 1;
    C_SLV_DWIDTH                   : integer              := 32
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );
  port
  (
    -- ADD USER PORTS BELOW THIS LINE ------------------
	 clk_i          : in  std_logic;
	 reset_n_i      : in  std_logic;
	 direct_mode_i  : in  std_logic;
	 display_mode_i : in  std_logic_vector(1 downto 0);
    vga_hsync_o    : out std_logic;
    vga_vsync_o    : out std_logic;
    blank_o        : out std_logic;
    pix_clock_o    : out std_logic;
    psave_o        : out std_logic;
    sync_o         : out std_logic;
    red_o          : out std_logic_vector(7 downto 0);
    green_o        : out std_logic_vector(7 downto 0);
    blue_o         : out std_logic_vector(7 downto 0);
    -- ADD USER PORTS ABOVE THIS LINE ------------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol ports, do not add to or delete
    Bus2IP_Clk                     : in  std_logic;
    Bus2IP_Resetn                  : in  std_logic;
    Bus2IP_Data                    : in  std_logic_vector(C_SLV_DWIDTH-1 downto 0);
    Bus2IP_Addr                    : in  std_logic_vector(31 downto 0);
    Bus2IP_RNW                     : in  std_logic;
    Bus2IP_BE                      : in  std_logic_vector(C_SLV_DWIDTH/8-1 downto 0);
    Bus2IP_CS                      : in  std_logic;
    Bus2IP_RdCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
    Bus2IP_WrCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
    IP2Bus_Data                    : out std_logic_vector(C_SLV_DWIDTH-1 downto 0);
    IP2Bus_RdAck                   : out std_logic;
    IP2Bus_WrAck                   : out std_logic;
    IP2Bus_Error                   : out std_logic
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );

  attribute MAX_FANOUT : string;
  attribute SIGIS : string;

  attribute SIGIS of Bus2IP_Clk    : signal is "CLK";
  attribute SIGIS of Bus2IP_Resetn : signal is "RST";

end entity user_logic;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of user_logic is

  --USER signal declarations added here, as needed for user logic
  
  component top is
	  generic (
		 RES_TYPE             : natural := 1;
		 TEXT_MEM_DATA_WIDTH  : natural := 6;
		 GRAPH_MEM_DATA_WIDTH : natural := 32
		 );
	  port (
		clk_i              : in std_logic;
		reset_n_i          : in std_logic;
		direct_mode_i      : in std_logic;
		display_mode_i     : in std_logic_vector(1 downto 0);   
		show_frame_i       : in std_logic;
		font_size_i        : in std_logic_vector(3 downto 0);
		foreground_color_i : in std_logic_vector(23 downto 0);
		background_color_i : in std_logic_vector(23 downto 0);
		frame_color_i      : in std_logic_vector(23 downto 0);
		 -- vga
		 vga_hsync_o    : out std_logic;
		 vga_vsync_o    : out std_logic;
		 blank_o        : out std_logic;
		 pix_clock_o    : out std_logic;
		 psave_o        : out std_logic;
		 sync_o         : out std_logic;
		 red_o          : out std_logic_vector(7 downto 0);
		 green_o        : out std_logic_vector(7 downto 0);
		 blue_o         : out std_logic_vector(7 downto 0)
		);
	end component;

  ------------------------------------------
  -- Signals for user logic slave model s/w accessible register example
  ------------------------------------------
  signal slv_reg0                       : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal slv_reg_write_sel              : std_logic_vector(0 to 0);
  signal slv_reg_read_sel               : std_logic_vector(0 to 0);
  signal slv_ip2bus_data                : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal slv_read_ack                   : std_logic;
  signal slv_write_ack                  : std_logic;
  
  signal reg_direct_mode : std_logic;
  signal reg_display_mode : std_logic_vector(1 downto 0);
  signal reg_show_frame : std_logic;
  signal reg_font_size : std_logic_vector(3 downto 0);
  signal reg_foreground_color : std_logic_vector(23 downto 0);
  signal reg_background_color : std_logic_vector(23 downto 0);
  signal reg_frame_color : std_logic_vector(23 downto 0);
  -- TODO: ostali
  
  signal unit_addr : std_logic_vector(21 downto 0);
  signal unit_id : std_logic_vector(1 downto 0);
  signal global_we : std_logic;
  signal reg_we : std_logic;
  signal text_we : std_logic;
  signal graph_we : std_logic;

begin

  --USER logic implementation added here
  
  Inst_top: top PORT MAP(
		clk_i => clk_i,
		reset_n_i => reset_n_i,
		direct_mode_i => reg_direct_mode,
		display_mode_i => reg_display_mode,
		show_frame_i => reg_show_frame,
		font_size_i => reg_font_size,
		foreground_color_i => reg_foreground_color,
		background_color_i => reg_background_color,
		frame_color_i => reg_frame_color,
		vga_hsync_o => vga_hsync_o,
		vga_vsync_o => vga_vsync_o,
		blank_o => blank_o,
		pix_clock_o => pix_clock_o,
		psave_o => psave_o,
		sync_o => sync_o,
		red_o => red_o ,
		green_o => green_o,
		blue_o => blue_o
	);

  ------------------------------------------
  -- Example code to read/write user logic slave model s/w accessible registers
  -- 
  -- Note:
  -- The example code presented here is to show you one way of reading/writing
  -- software accessible registers implemented in the user logic slave model.
  -- Each bit of the Bus2IP_WrCE/Bus2IP_RdCE signals is configured to correspond
  -- to one software accessible register by the top level template. For example,
  -- if you have four 32 bit software accessible registers in the user logic,
  -- you are basically operating on the following memory mapped registers:
  -- 
  --    Bus2IP_WrCE/Bus2IP_RdCE   Memory Mapped Register
  --                     "1000"   C_BASEADDR + 0x0
  --                     "0100"   C_BASEADDR + 0x4
  --                     "0010"   C_BASEADDR + 0x8
  --                     "0001"   C_BASEADDR + 0xC
  -- 
  ------------------------------------------
  slv_reg_write_sel <= Bus2IP_WrCE(0 downto 0);
  slv_reg_read_sel  <= Bus2IP_RdCE(0 downto 0);
  slv_write_ack     <= Bus2IP_WrCE(0);
  slv_read_ack      <= Bus2IP_RdCE(0);

  -- implement slave model software accessible register(s)
  
	unit_addr <= Bus2IP_Addr(23 downto 2);
	unit_id <= Bus2IP_Addr(25 downto 24);
	
	global_we <= '1' when (Bus2IP_CS = '1' and Bus2IP_RNW = '0') else '0';
	reg_we <= '1' when (global_we = '1' and unit_id = "00") else '0';
	text_we <= '1' when (global_we = '1' and unit_id = "01") else '0';
	graph_we <= '1' when (global_we = '1' and unit_id = "10") else '0';
	
	process (Bus2IP_Clk) begin
		if rising_edge(Bus2IP_Clk) then
			if Bus2IP_Resetn = '0' then
				reg_direct_mode      <= '0';
				reg_display_mode     <= (others => '0');  
				reg_show_frame       <= '0';
				reg_font_size        <= (others => '0');  
				reg_foreground_color <= (others => '0');  
				reg_background_color <= (others => '0');  
				reg_frame_color      <= (others => '0');  
			else
				if reg_we = '1' then
					case Bus2IP_Addr is
						when x"00000000" => reg_direct_mode      <= Bus2IP_Data(0);
						when x"00000001" => reg_display_mode     <= Bus2IP_Data(1 downto 0);
						when x"00000002" => reg_show_frame       <= Bus2IP_Data(0);
						when x"00000003" => reg_font_size        <= Bus2IP_Data(3 downto 0);
						when x"00000004" => reg_foreground_color <= Bus2IP_Data(23 downto 0);  
						when x"00000005" => reg_background_color <= Bus2IP_Data(23 downto 0);  
						when x"00000006" => reg_frame_color      <= Bus2IP_Data(23 downto 0); 
						when others => null;
					end case;
				end if;
			end if;
		end if;
	end process;

  -- implement slave model software accessible register(s) read mux
  SLAVE_REG_READ_PROC : process( slv_reg_read_sel, slv_reg0 ) is
  begin

    case slv_reg_read_sel is
      when "1" => slv_ip2bus_data <= slv_reg0;
      when others => slv_ip2bus_data <= (others => '0');
    end case;

  end process SLAVE_REG_READ_PROC;

  ------------------------------------------
  -- Example code to drive IP to Bus signals
  ------------------------------------------
  IP2Bus_Data  <= slv_ip2bus_data when slv_read_ack = '1' else
                  (others => '0');

  IP2Bus_WrAck <= slv_write_ack;
  IP2Bus_RdAck <= slv_read_ack;
  IP2Bus_Error <= '0';

end IMP;
