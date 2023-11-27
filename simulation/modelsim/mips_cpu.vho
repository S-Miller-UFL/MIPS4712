-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/21/2023 18:17:57"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sramandio IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	sram_data : IN std_logic_vector(31 DOWNTO 0);
	address : IN std_logic_vector(31 DOWNTO 0);
	read_en : IN std_logic;
	write_en : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	inport_en : IN std_logic;
	inport_input : IN std_logic_vector(31 DOWNTO 0);
	switchten : IN std_logic;
	output : OUT std_logic_vector(31 DOWNTO 0);
	outport_output : OUT std_logic_vector(31 DOWNTO 0)
	);
END sramandio;

-- Design Ports Information
-- reset	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[11]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[12]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[14]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[15]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[16]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[17]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[18]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[19]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[21]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[22]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[23]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[24]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[25]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[26]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[27]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[28]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[29]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[30]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outport_output[31]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[16]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[17]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[18]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[19]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[20]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[21]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[22]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[23]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[24]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[25]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[26]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[27]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[28]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[29]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[30]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_en	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_en	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[6]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[7]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[10]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[14]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[16]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[17]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[18]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[19]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[20]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[21]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[22]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[23]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[24]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[25]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[26]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[27]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[28]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[29]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[30]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[31]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_en	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switchten	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[7]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[13]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[16]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[19]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[20]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[21]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[22]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[23]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[24]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[25]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[26]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[27]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[28]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[29]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[30]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inport_input[31]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sramandio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_sram_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_en : std_logic;
SIGNAL ww_write_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_inport_en : std_logic;
SIGNAL ww_inport_input : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_switchten : std_logic;
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outport_output : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[31]~input_o\ : std_logic;
SIGNAL \address[29]~input_o\ : std_logic;
SIGNAL \address[25]~input_o\ : std_logic;
SIGNAL \address[27]~input_o\ : std_logic;
SIGNAL \address[28]~input_o\ : std_logic;
SIGNAL \address[26]~input_o\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \address[30]~input_o\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \address[23]~input_o\ : std_logic;
SIGNAL \address[22]~input_o\ : std_logic;
SIGNAL \address[24]~input_o\ : std_logic;
SIGNAL \address[21]~input_o\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \address[17]~input_o\ : std_logic;
SIGNAL \address[18]~input_o\ : std_logic;
SIGNAL \address[19]~input_o\ : std_logic;
SIGNAL \address[20]~input_o\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \address[12]~input_o\ : std_logic;
SIGNAL \address[11]~input_o\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \address[10]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \address[14]~input_o\ : std_logic;
SIGNAL \address[13]~input_o\ : std_logic;
SIGNAL \address[16]~input_o\ : std_logic;
SIGNAL \address[15]~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \write_en~input_o\ : std_logic;
SIGNAL \sram_en~0_combout\ : std_logic;
SIGNAL \read_en~input_o\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~16\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~18\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~20\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~22\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~24\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~1\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~2_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~1_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~3\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~4_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~5_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~5\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~6_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~4_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~7\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~8_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~3_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~9\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~6_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~10_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~11_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~14\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\ : std_logic;
SIGNAL \sram_data[0]~input_o\ : std_logic;
SIGNAL \sram_data[1]~input_o\ : std_logic;
SIGNAL \sram_data[2]~input_o\ : std_logic;
SIGNAL \sram_data[3]~input_o\ : std_logic;
SIGNAL \sram_data[4]~input_o\ : std_logic;
SIGNAL \sram_data[5]~input_o\ : std_logic;
SIGNAL \sram_data[6]~input_o\ : std_logic;
SIGNAL \sram_data[7]~input_o\ : std_logic;
SIGNAL \sram_data[8]~input_o\ : std_logic;
SIGNAL \sram_data[9]~input_o\ : std_logic;
SIGNAL \sram_data[10]~input_o\ : std_logic;
SIGNAL \sram_data[11]~input_o\ : std_logic;
SIGNAL \sram_data[12]~input_o\ : std_logic;
SIGNAL \sram_data[13]~input_o\ : std_logic;
SIGNAL \sram_data[14]~input_o\ : std_logic;
SIGNAL \sram_data[15]~input_o\ : std_logic;
SIGNAL \sram_data[16]~input_o\ : std_logic;
SIGNAL \sram_data[17]~input_o\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \sram_data[18]~input_o\ : std_logic;
SIGNAL \sram_data[19]~input_o\ : std_logic;
SIGNAL \sram_data[20]~input_o\ : std_logic;
SIGNAL \sram_data[21]~input_o\ : std_logic;
SIGNAL \sram_data[22]~input_o\ : std_logic;
SIGNAL \sram_data[23]~input_o\ : std_logic;
SIGNAL \sram_data[24]~input_o\ : std_logic;
SIGNAL \sram_data[25]~input_o\ : std_logic;
SIGNAL \sram_data[26]~input_o\ : std_logic;
SIGNAL \sram_data[27]~input_o\ : std_logic;
SIGNAL \sram_data[28]~input_o\ : std_logic;
SIGNAL \sram_data[29]~input_o\ : std_logic;
SIGNAL \sram_data[30]~input_o\ : std_logic;
SIGNAL \sram_data[31]~input_o\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~1_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~11_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~12\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~14\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~9_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~16_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~18_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~19_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~15_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~17_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~20_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \inport_input[0]~input_o\ : std_logic;
SIGNAL \inport1|sigout[0]~feeder_combout\ : std_logic;
SIGNAL \inport_en~input_o\ : std_logic;
SIGNAL \switchten~input_o\ : std_logic;
SIGNAL \inport1_en~combout\ : std_logic;
SIGNAL \dff|sigout[0]~0_combout\ : std_logic;
SIGNAL \inport0|sigout[0]~feeder_combout\ : std_logic;
SIGNAL \inport0_en~combout\ : std_logic;
SIGNAL \inport_input[1]~input_o\ : std_logic;
SIGNAL \inport1|sigout[1]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[1]~1_combout\ : std_logic;
SIGNAL \inport0|sigout[1]~feeder_combout\ : std_logic;
SIGNAL \inport_input[2]~input_o\ : std_logic;
SIGNAL \inport1|sigout[2]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[2]~2_combout\ : std_logic;
SIGNAL \inport0|sigout[2]~feeder_combout\ : std_logic;
SIGNAL \inport_input[3]~input_o\ : std_logic;
SIGNAL \inport1|sigout[3]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[3]~3_combout\ : std_logic;
SIGNAL \inport0|sigout[3]~feeder_combout\ : std_logic;
SIGNAL \inport_input[4]~input_o\ : std_logic;
SIGNAL \inport1|sigout[4]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[4]~4_combout\ : std_logic;
SIGNAL \inport0|sigout[4]~feeder_combout\ : std_logic;
SIGNAL \inport_input[5]~input_o\ : std_logic;
SIGNAL \inport1|sigout[5]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[5]~5_combout\ : std_logic;
SIGNAL \inport0|sigout[5]~feeder_combout\ : std_logic;
SIGNAL \inport_input[6]~input_o\ : std_logic;
SIGNAL \inport1|sigout[6]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[6]~6_combout\ : std_logic;
SIGNAL \inport0|sigout[6]~feeder_combout\ : std_logic;
SIGNAL \inport_input[7]~input_o\ : std_logic;
SIGNAL \inport1|sigout[7]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[7]~7_combout\ : std_logic;
SIGNAL \inport0|sigout[7]~feeder_combout\ : std_logic;
SIGNAL \inport_input[8]~input_o\ : std_logic;
SIGNAL \inport1|sigout[8]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[8]~8_combout\ : std_logic;
SIGNAL \inport0|sigout[8]~feeder_combout\ : std_logic;
SIGNAL \inport_input[9]~input_o\ : std_logic;
SIGNAL \inport1|sigout[9]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[9]~9_combout\ : std_logic;
SIGNAL \inport0|sigout[9]~feeder_combout\ : std_logic;
SIGNAL \inport_input[10]~input_o\ : std_logic;
SIGNAL \inport1|sigout[10]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[10]~10_combout\ : std_logic;
SIGNAL \inport0|sigout[10]~feeder_combout\ : std_logic;
SIGNAL \inport_input[11]~input_o\ : std_logic;
SIGNAL \inport1|sigout[11]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[11]~11_combout\ : std_logic;
SIGNAL \inport0|sigout[11]~feeder_combout\ : std_logic;
SIGNAL \inport_input[12]~input_o\ : std_logic;
SIGNAL \inport1|sigout[12]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[12]~12_combout\ : std_logic;
SIGNAL \inport0|sigout[12]~feeder_combout\ : std_logic;
SIGNAL \inport_input[13]~input_o\ : std_logic;
SIGNAL \inport1|sigout[13]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[13]~13_combout\ : std_logic;
SIGNAL \inport0|sigout[13]~feeder_combout\ : std_logic;
SIGNAL \inport_input[14]~input_o\ : std_logic;
SIGNAL \inport1|sigout[14]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[14]~14_combout\ : std_logic;
SIGNAL \inport0|sigout[14]~feeder_combout\ : std_logic;
SIGNAL \inport_input[15]~input_o\ : std_logic;
SIGNAL \inport1|sigout[15]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[15]~15_combout\ : std_logic;
SIGNAL \inport0|sigout[15]~feeder_combout\ : std_logic;
SIGNAL \inport_input[16]~input_o\ : std_logic;
SIGNAL \inport1|sigout[16]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[16]~16_combout\ : std_logic;
SIGNAL \inport0|sigout[16]~feeder_combout\ : std_logic;
SIGNAL \inport_input[17]~input_o\ : std_logic;
SIGNAL \inport1|sigout[17]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[17]~17_combout\ : std_logic;
SIGNAL \inport0|sigout[17]~feeder_combout\ : std_logic;
SIGNAL \inport_input[18]~input_o\ : std_logic;
SIGNAL \inport1|sigout[18]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[18]~18_combout\ : std_logic;
SIGNAL \inport0|sigout[18]~feeder_combout\ : std_logic;
SIGNAL \inport_input[19]~input_o\ : std_logic;
SIGNAL \inport1|sigout[19]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[19]~19_combout\ : std_logic;
SIGNAL \inport0|sigout[19]~feeder_combout\ : std_logic;
SIGNAL \inport_input[20]~input_o\ : std_logic;
SIGNAL \inport1|sigout[20]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[20]~20_combout\ : std_logic;
SIGNAL \inport0|sigout[20]~feeder_combout\ : std_logic;
SIGNAL \inport_input[21]~input_o\ : std_logic;
SIGNAL \inport1|sigout[21]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[21]~21_combout\ : std_logic;
SIGNAL \inport0|sigout[21]~feeder_combout\ : std_logic;
SIGNAL \inport_input[22]~input_o\ : std_logic;
SIGNAL \inport1|sigout[22]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[22]~22_combout\ : std_logic;
SIGNAL \inport0|sigout[22]~feeder_combout\ : std_logic;
SIGNAL \inport_input[23]~input_o\ : std_logic;
SIGNAL \inport1|sigout[23]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[23]~23_combout\ : std_logic;
SIGNAL \inport0|sigout[23]~feeder_combout\ : std_logic;
SIGNAL \inport_input[24]~input_o\ : std_logic;
SIGNAL \inport1|sigout[24]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[24]~24_combout\ : std_logic;
SIGNAL \inport0|sigout[24]~feeder_combout\ : std_logic;
SIGNAL \inport_input[25]~input_o\ : std_logic;
SIGNAL \inport1|sigout[25]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[25]~25_combout\ : std_logic;
SIGNAL \inport0|sigout[25]~feeder_combout\ : std_logic;
SIGNAL \inport_input[26]~input_o\ : std_logic;
SIGNAL \inport1|sigout[26]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[26]~26_combout\ : std_logic;
SIGNAL \inport0|sigout[26]~feeder_combout\ : std_logic;
SIGNAL \inport_input[27]~input_o\ : std_logic;
SIGNAL \inport1|sigout[27]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[27]~27_combout\ : std_logic;
SIGNAL \inport0|sigout[27]~feeder_combout\ : std_logic;
SIGNAL \inport_input[28]~input_o\ : std_logic;
SIGNAL \inport1|sigout[28]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[28]~28_combout\ : std_logic;
SIGNAL \inport0|sigout[28]~feeder_combout\ : std_logic;
SIGNAL \inport_input[29]~input_o\ : std_logic;
SIGNAL \inport1|sigout[29]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[29]~29_combout\ : std_logic;
SIGNAL \inport0|sigout[29]~feeder_combout\ : std_logic;
SIGNAL \inport_input[30]~input_o\ : std_logic;
SIGNAL \inport1|sigout[30]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[30]~30_combout\ : std_logic;
SIGNAL \inport0|sigout[30]~feeder_combout\ : std_logic;
SIGNAL \inport_input[31]~input_o\ : std_logic;
SIGNAL \inport1|sigout[31]~feeder_combout\ : std_logic;
SIGNAL \dff|sigout[31]~31_combout\ : std_logic;
SIGNAL \inport0|sigout[31]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[0]~feeder_combout\ : std_logic;
SIGNAL \sram_enable_logic~0_combout\ : std_logic;
SIGNAL \outport|sigout[1]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[2]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[3]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[4]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[5]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[6]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[7]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[8]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[9]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[10]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[11]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[12]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[13]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[14]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[15]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[16]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[17]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[18]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[19]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[20]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[21]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[22]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[23]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[24]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[25]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[26]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[27]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[28]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[29]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[30]~feeder_combout\ : std_logic;
SIGNAL \outport|sigout[31]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \dff|sigout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \outport|sigout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inport1|sigout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inport0|sigout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_sram_data <= sram_data;
ww_address <= address;
ww_read_en <= read_en;
ww_write_en <= write_en;
ww_clk <= clk;
ww_reset <= reset;
ww_inport_en <= inport_en;
ww_inport_input <= inport_input;
ww_switchten <= switchten;
output <= ww_output;
outport_output <= ww_outport_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ <= (\sram_data[17]~input_o\ & \sram_data[16]~input_o\ & \sram_data[15]~input_o\ & \sram_data[14]~input_o\ & \sram_data[13]~input_o\ & \sram_data[12]~input_o\ & 
\sram_data[11]~input_o\ & \sram_data[10]~input_o\ & \sram_data[9]~input_o\ & \sram_data[8]~input_o\ & \sram_data[7]~input_o\ & \sram_data[6]~input_o\ & \sram_data[5]~input_o\ & \sram_data[4]~input_o\ & \sram_data[3]~input_o\ & \sram_data[2]~input_o\ & 
\sram_data[1]~input_o\ & \sram_data[0]~input_o\);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ <= (\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(1);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(2);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(3);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(4);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(5);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(6);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(7);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(8) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(8);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(9) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(9);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(10) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(10);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(11) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(11);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(12) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(12);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(13) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(13);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(14) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(14);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(15) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(15);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(16) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(16);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(17) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(17);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(1);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(2);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(3);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(4);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(5);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(6);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(7);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(8) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(8);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(9) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(9);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(10) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(10);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(11) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(11);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(12) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(12);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(13) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(13);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(14) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(14);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(15) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(15);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(16) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(16);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(17) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(17);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \sram_data[31]~input_o\ & \sram_data[30]~input_o\ & \sram_data[29]~input_o\ & \sram_data[28]~input_o\ & \sram_data[27]~input_o\ & 
\sram_data[26]~input_o\ & \sram_data[25]~input_o\ & \sram_data[24]~input_o\ & \sram_data[23]~input_o\ & \sram_data[22]~input_o\ & \sram_data[21]~input_o\ & \sram_data[20]~input_o\ & \sram_data[19]~input_o\ & \sram_data[18]~input_o\);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18));

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBADDR_bus\ <= (\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(18) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(0);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(19) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(1);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(20) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(2);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(21) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(3);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(22) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(4);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(23) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(5);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(24) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(6);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(25) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(7);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(26) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(8);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(27) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(9);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(28) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(10);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(29) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(11);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(30) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(12);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(31) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\(13);

\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(18) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(0);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(19) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(1);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(20) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(2);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(21) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(3);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(22) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(4);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(23) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(5);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(24) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(6);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(25) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(7);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(26) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(8);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(27) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(9);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(28) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(10);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(29) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(11);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(30) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(12);
\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(31) <= \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\(13);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ <= NOT \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;

-- Location: LCCOMB_X44_Y49_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X46_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X46_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: IOOBUF_X78_Y43_N16
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(0),
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X69_Y54_N30
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(1),
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X78_Y43_N2
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(2),
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X66_Y54_N9
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(3),
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X78_Y44_N9
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(4),
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X78_Y41_N16
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(5),
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X60_Y54_N9
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(6),
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X58_Y0_N2
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(7),
	devoe => ww_devoe,
	o => ww_output(7));

-- Location: IOOBUF_X56_Y54_N23
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(8),
	devoe => ww_devoe,
	o => ww_output(8));

-- Location: IOOBUF_X78_Y41_N2
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(9),
	devoe => ww_devoe,
	o => ww_output(9));

-- Location: IOOBUF_X54_Y54_N16
\output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(10),
	devoe => ww_devoe,
	o => ww_output(10));

-- Location: IOOBUF_X46_Y54_N23
\output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(11),
	devoe => ww_devoe,
	o => ww_output(11));

-- Location: IOOBUF_X58_Y0_N16
\output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(12),
	devoe => ww_devoe,
	o => ww_output(12));

-- Location: IOOBUF_X58_Y54_N2
\output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(13),
	devoe => ww_devoe,
	o => ww_output(13));

-- Location: IOOBUF_X58_Y0_N30
\output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(14),
	devoe => ww_devoe,
	o => ww_output(14));

-- Location: IOOBUF_X78_Y44_N24
\output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(15),
	devoe => ww_devoe,
	o => ww_output(15));

-- Location: IOOBUF_X51_Y54_N16
\output[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(16),
	devoe => ww_devoe,
	o => ww_output(16));

-- Location: IOOBUF_X51_Y54_N23
\output[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(17),
	devoe => ww_devoe,
	o => ww_output(17));

-- Location: IOOBUF_X54_Y54_N23
\output[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(18),
	devoe => ww_devoe,
	o => ww_output(18));

-- Location: IOOBUF_X66_Y54_N23
\output[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(19),
	devoe => ww_devoe,
	o => ww_output(19));

-- Location: IOOBUF_X66_Y54_N2
\output[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(20),
	devoe => ww_devoe,
	o => ww_output(20));

-- Location: IOOBUF_X51_Y54_N9
\output[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(21),
	devoe => ww_devoe,
	o => ww_output(21));

-- Location: IOOBUF_X51_Y54_N2
\output[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(22),
	devoe => ww_devoe,
	o => ww_output(22));

-- Location: IOOBUF_X49_Y54_N9
\output[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(23),
	devoe => ww_devoe,
	o => ww_output(23));

-- Location: IOOBUF_X56_Y54_N30
\output[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(24),
	devoe => ww_devoe,
	o => ww_output(24));

-- Location: IOOBUF_X46_Y54_N16
\output[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(25),
	devoe => ww_devoe,
	o => ww_output(25));

-- Location: IOOBUF_X78_Y45_N16
\output[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(26),
	devoe => ww_devoe,
	o => ww_output(26));

-- Location: IOOBUF_X58_Y54_N16
\output[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(27),
	devoe => ww_devoe,
	o => ww_output(27));

-- Location: IOOBUF_X78_Y45_N23
\output[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(28),
	devoe => ww_devoe,
	o => ww_output(28));

-- Location: IOOBUF_X69_Y54_N16
\output[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(29),
	devoe => ww_devoe,
	o => ww_output(29));

-- Location: IOOBUF_X58_Y54_N9
\output[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(30),
	devoe => ww_devoe,
	o => ww_output(30));

-- Location: IOOBUF_X49_Y54_N16
\output[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff|sigout\(31),
	devoe => ww_devoe,
	o => ww_output(31));

-- Location: IOOBUF_X26_Y39_N9
\outport_output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(0),
	devoe => ww_devoe,
	o => ww_outport_output(0));

-- Location: IOOBUF_X22_Y39_N30
\outport_output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(1),
	devoe => ww_devoe,
	o => ww_outport_output(1));

-- Location: IOOBUF_X24_Y39_N16
\outport_output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(2),
	devoe => ww_devoe,
	o => ww_outport_output(2));

-- Location: IOOBUF_X29_Y39_N2
\outport_output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(3),
	devoe => ww_devoe,
	o => ww_outport_output(3));

-- Location: IOOBUF_X24_Y39_N23
\outport_output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(4),
	devoe => ww_devoe,
	o => ww_outport_output(4));

-- Location: IOOBUF_X29_Y39_N9
\outport_output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(5),
	devoe => ww_devoe,
	o => ww_outport_output(5));

-- Location: IOOBUF_X26_Y39_N30
\outport_output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(6),
	devoe => ww_devoe,
	o => ww_outport_output(6));

-- Location: IOOBUF_X78_Y25_N16
\outport_output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(7),
	devoe => ww_devoe,
	o => ww_outport_output(7));

-- Location: IOOBUF_X78_Y25_N23
\outport_output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(8),
	devoe => ww_devoe,
	o => ww_outport_output(8));

-- Location: IOOBUF_X26_Y39_N16
\outport_output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(9),
	devoe => ww_devoe,
	o => ww_outport_output(9));

-- Location: IOOBUF_X78_Y21_N23
\outport_output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(10),
	devoe => ww_devoe,
	o => ww_outport_output(10));

-- Location: IOOBUF_X0_Y35_N2
\outport_output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(11),
	devoe => ww_devoe,
	o => ww_outport_output(11));

-- Location: IOOBUF_X78_Y23_N23
\outport_output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(12),
	devoe => ww_devoe,
	o => ww_outport_output(12));

-- Location: IOOBUF_X26_Y39_N2
\outport_output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(13),
	devoe => ww_devoe,
	o => ww_outport_output(13));

-- Location: IOOBUF_X78_Y24_N24
\outport_output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(14),
	devoe => ww_devoe,
	o => ww_outport_output(14));

-- Location: IOOBUF_X20_Y39_N16
\outport_output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(15),
	devoe => ww_devoe,
	o => ww_outport_output(15));

-- Location: IOOBUF_X78_Y23_N2
\outport_output[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(16),
	devoe => ww_devoe,
	o => ww_outport_output(16));

-- Location: IOOBUF_X78_Y25_N9
\outport_output[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(17),
	devoe => ww_devoe,
	o => ww_outport_output(17));

-- Location: IOOBUF_X78_Y18_N16
\outport_output[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(18),
	devoe => ww_devoe,
	o => ww_outport_output(18));

-- Location: IOOBUF_X78_Y21_N2
\outport_output[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(19),
	devoe => ww_devoe,
	o => ww_outport_output(19));

-- Location: IOOBUF_X26_Y39_N23
\outport_output[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(20),
	devoe => ww_devoe,
	o => ww_outport_output(20));

-- Location: IOOBUF_X78_Y23_N9
\outport_output[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(21),
	devoe => ww_devoe,
	o => ww_outport_output(21));

-- Location: IOOBUF_X0_Y36_N9
\outport_output[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(22),
	devoe => ww_devoe,
	o => ww_outport_output(22));

-- Location: IOOBUF_X24_Y39_N2
\outport_output[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(23),
	devoe => ww_devoe,
	o => ww_outport_output(23));

-- Location: IOOBUF_X29_Y39_N16
\outport_output[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(24),
	devoe => ww_devoe,
	o => ww_outport_output(24));

-- Location: IOOBUF_X78_Y20_N9
\outport_output[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(25),
	devoe => ww_devoe,
	o => ww_outport_output(25));

-- Location: IOOBUF_X78_Y17_N16
\outport_output[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(26),
	devoe => ww_devoe,
	o => ww_outport_output(26));

-- Location: IOOBUF_X78_Y25_N2
\outport_output[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(27),
	devoe => ww_devoe,
	o => ww_outport_output(27));

-- Location: IOOBUF_X24_Y39_N30
\outport_output[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(28),
	devoe => ww_devoe,
	o => ww_outport_output(28));

-- Location: IOOBUF_X78_Y21_N16
\outport_output[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(29),
	devoe => ww_devoe,
	o => ww_outport_output(29));

-- Location: IOOBUF_X78_Y23_N16
\outport_output[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(30),
	devoe => ww_devoe,
	o => ww_outport_output(30));

-- Location: IOOBUF_X78_Y24_N9
\outport_output[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport|sigout\(31),
	devoe => ww_devoe,
	o => ww_outport_output(31));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y36_N8
\address[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(31),
	o => \address[31]~input_o\);

-- Location: IOIBUF_X78_Y42_N1
\address[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(29),
	o => \address[29]~input_o\);

-- Location: IOIBUF_X78_Y40_N8
\address[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(25),
	o => \address[25]~input_o\);

-- Location: IOIBUF_X78_Y33_N22
\address[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(27),
	o => \address[27]~input_o\);

-- Location: IOIBUF_X78_Y30_N8
\address[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(28),
	o => \address[28]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\address[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(26),
	o => \address[26]~input_o\);

-- Location: LCCOMB_X77_Y36_N2
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\address[25]~input_o\ & (!\address[27]~input_o\ & (!\address[28]~input_o\ & !\address[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[25]~input_o\,
	datab => \address[27]~input_o\,
	datac => \address[28]~input_o\,
	datad => \address[26]~input_o\,
	combout => \Equal1~8_combout\);

-- Location: IOIBUF_X78_Y42_N15
\address[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(30),
	o => \address[30]~input_o\);

-- Location: LCCOMB_X77_Y40_N8
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!\address[31]~input_o\ & (!\address[29]~input_o\ & (\Equal1~8_combout\ & !\address[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[31]~input_o\,
	datab => \address[29]~input_o\,
	datac => \Equal1~8_combout\,
	datad => \address[30]~input_o\,
	combout => \Equal1~9_combout\);

-- Location: IOIBUF_X78_Y40_N1
\address[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(23),
	o => \address[23]~input_o\);

-- Location: IOIBUF_X78_Y34_N8
\address[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(22),
	o => \address[22]~input_o\);

-- Location: IOIBUF_X78_Y31_N22
\address[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(24),
	o => \address[24]~input_o\);

-- Location: IOIBUF_X78_Y41_N23
\address[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(21),
	o => \address[21]~input_o\);

-- Location: LCCOMB_X77_Y35_N18
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\address[23]~input_o\ & (!\address[22]~input_o\ & (!\address[24]~input_o\ & !\address[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[23]~input_o\,
	datab => \address[22]~input_o\,
	datac => \address[24]~input_o\,
	datad => \address[21]~input_o\,
	combout => \Equal1~6_combout\);

-- Location: IOIBUF_X78_Y36_N23
\address[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(17),
	o => \address[17]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\address[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(18),
	o => \address[18]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\address[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(19),
	o => \address[19]~input_o\);

-- Location: IOIBUF_X78_Y41_N8
\address[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(20),
	o => \address[20]~input_o\);

-- Location: LCCOMB_X77_Y36_N8
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\address[17]~input_o\ & (!\address[18]~input_o\ & (!\address[19]~input_o\ & !\address[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[17]~input_o\,
	datab => \address[18]~input_o\,
	datac => \address[19]~input_o\,
	datad => \address[20]~input_o\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X77_Y35_N28
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Equal1~6_combout\ & \Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~7_combout\);

-- Location: IOIBUF_X78_Y34_N23
\address[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(12),
	o => \address[12]~input_o\);

-- Location: IOIBUF_X78_Y33_N15
\address[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(11),
	o => \address[11]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\address[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\address[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(10),
	o => \address[10]~input_o\);

-- Location: LCCOMB_X77_Y35_N12
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\address[12]~input_o\ & (\address[11]~input_o\ & (\address[9]~input_o\ & \address[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[12]~input_o\,
	datab => \address[11]~input_o\,
	datac => \address[9]~input_o\,
	datad => \address[10]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X78_Y37_N1
\address[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X78_Y35_N22
\address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X78_Y35_N15
\address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\address[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: LCCOMB_X77_Y35_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\address[3]~input_o\ & (!\address[0]~input_o\ & (!\address[1]~input_o\ & \address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[4]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X78_Y34_N15
\address[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(14),
	o => \address[14]~input_o\);

-- Location: IOIBUF_X78_Y34_N1
\address[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(13),
	o => \address[13]~input_o\);

-- Location: IOIBUF_X78_Y20_N15
\address[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(16),
	o => \address[16]~input_o\);

-- Location: IOIBUF_X78_Y40_N15
\address[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(15),
	o => \address[15]~input_o\);

-- Location: LCCOMB_X77_Y35_N14
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\address[14]~input_o\ & (\address[13]~input_o\ & (!\address[16]~input_o\ & \address[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~input_o\,
	datab => \address[13]~input_o\,
	datac => \address[16]~input_o\,
	datad => \address[15]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: IOIBUF_X54_Y54_N8
\address[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X78_Y37_N15
\address[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\address[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: IOIBUF_X78_Y42_N8
\address[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: LCCOMB_X77_Y35_N10
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\address[7]~input_o\ & (\address[5]~input_o\ & (\address[8]~input_o\ & \address[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datab => \address[5]~input_o\,
	datac => \address[8]~input_o\,
	datad => \address[6]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X77_Y35_N8
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: IOIBUF_X78_Y40_N22
\address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X77_Y35_N22
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\ & (\Equal1~7_combout\ & (\Equal1~4_combout\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~4_combout\,
	datad => \address[2]~input_o\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X77_Y35_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Equal1~9_combout\ & (\Equal1~7_combout\ & (\Equal1~4_combout\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~4_combout\,
	datad => \address[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X78_Y43_N8
\write_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_en,
	o => \write_en~input_o\);

-- Location: LCCOMB_X77_Y35_N4
\sram_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sram_en~0_combout\ = (!\Equal1~10_combout\ & (!\Equal0~0_combout\ & \write_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \Equal0~0_combout\,
	datac => \write_en~input_o\,
	combout => \sram_en~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\read_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_en,
	o => \read_en~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X45_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X45_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X45_Y39_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X45_Y39_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X46_Y39_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X46_Y39_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X46_Y39_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X46_Y39_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X46_Y39_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X46_Y39_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X46_Y39_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X46_Y39_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X46_Y39_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X46_Y39_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X45_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X45_Y39_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X44_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X44_Y39_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X44_Y39_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X44_Y39_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X45_Y39_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X45_Y39_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X46_Y39_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X46_Y39_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X46_Y39_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X46_Y39_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X46_Y39_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X46_Y39_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X45_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X45_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X46_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X46_Y39_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X46_Y39_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X46_Y39_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X46_Y39_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X46_Y39_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X46_Y39_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X46_Y39_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X46_Y36_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X46_Y36_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X49_Y37_N12
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datad => VCC,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\);

-- Location: LCCOMB_X49_Y37_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~14\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~16\);

-- Location: LCCOMB_X49_Y37_N18
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~16\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~18\);

-- Location: LCCOMB_X49_Y37_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~18\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~20\);

-- Location: LCCOMB_X49_Y37_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~20\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~22\);

-- Location: LCCOMB_X49_Y37_N24
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~22\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~24\);

-- Location: LCCOMB_X49_Y37_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~24\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25_combout\);

-- Location: LCCOMB_X45_Y39_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X45_Y39_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X45_Y39_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X45_Y39_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X45_Y39_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X45_Y39_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X45_Y39_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X45_Y39_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X45_Y39_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X45_Y39_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X45_Y39_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X45_Y39_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X45_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X45_Y39_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X45_Y39_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X45_Y39_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X45_Y39_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y39_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y39_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X45_Y39_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X46_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X46_Y39_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X46_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X50_Y37_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\);

-- Location: LCCOMB_X46_Y37_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: LCCOMB_X49_Y37_N6
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: FF_X50_Y37_N1
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X50_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X46_Y39_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X45_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X50_Y36_N0
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X45_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~GND~combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X46_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X45_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X45_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X45_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X45_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X50_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X46_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X46_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X46_Y36_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X46_Y36_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X46_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: FF_X46_Y39_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X49_Y39_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X49_Y39_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X46_Y39_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X46_Y39_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: LCCOMB_X45_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X46_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X49_Y37_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LCCOMB_X47_Y37_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => VCC,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~1\);

-- Location: LCCOMB_X49_Y37_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|sdr~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\);

-- Location: LCCOMB_X46_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X46_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X46_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X46_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X49_Y37_N28
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\);

-- Location: LCCOMB_X47_Y37_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\);

-- Location: FF_X47_Y37_N3
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LCCOMB_X47_Y37_N18
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~1\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~2_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~3\);

-- Location: LCCOMB_X47_Y37_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~1_combout\);

-- Location: FF_X47_Y37_N9
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LCCOMB_X47_Y37_N30
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y37_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~3\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~4_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~5\);

-- Location: LCCOMB_X47_Y37_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~4_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~5_combout\);

-- Location: FF_X47_Y37_N1
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LCCOMB_X47_Y37_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~5\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~6_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~7\);

-- Location: LCCOMB_X47_Y37_N6
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~6_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~4_combout\);

-- Location: FF_X47_Y37_N7
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3));

-- Location: LCCOMB_X47_Y37_N24
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~7\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~8_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~9\);

-- Location: LCCOMB_X47_Y37_N12
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~8_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~3_combout\);

-- Location: FF_X47_Y37_N13
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4));

-- Location: LCCOMB_X47_Y37_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~9\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\);

-- Location: LCCOMB_X47_Y37_N10
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~6_combout\);

-- Location: FF_X47_Y37_N11
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5));

-- Location: LCCOMB_X47_Y37_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y37_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~10_combout\);

-- Location: LCCOMB_X49_Y40_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~11_combout\);

-- Location: LCCOMB_X49_Y37_N30
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~10_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~11_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\);

-- Location: FF_X49_Y37_N27
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~25_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: FF_X49_Y37_N25
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~23_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: FF_X49_Y37_N23
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~21_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: FF_X49_Y37_N21
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~19_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: FF_X49_Y37_N19
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~17_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: LCCOMB_X50_Y37_N14
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\);

-- Location: FF_X50_Y37_N15
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LCCOMB_X50_Y37_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\);

-- Location: FF_X50_Y37_N9
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4));

-- Location: LCCOMB_X50_Y37_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\);

-- Location: FF_X50_Y37_N27
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5));

-- Location: LCCOMB_X50_Y37_N28
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder_combout\);

-- Location: FF_X50_Y37_N29
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6));

-- Location: LCCOMB_X50_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X50_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X50_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X50_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X50_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X50_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X50_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X50_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X46_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X46_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: LCCOMB_X46_Y37_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: FF_X46_Y37_N17
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\);

-- Location: LCCOMB_X50_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X50_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X46_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X46_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: FF_X49_Y37_N13
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: LCCOMB_X49_Y37_N14
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~14\);

-- Location: FF_X49_Y37_N15
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~13_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: FF_X49_Y37_N17
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~15_combout\,
	asdata => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: LCCOMB_X50_Y37_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: FF_X50_Y37_N21
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LCCOMB_X45_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X45_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X45_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X45_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X45_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X50_Y37_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\);

-- Location: FF_X50_Y37_N3
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\,
	clrn => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LCCOMB_X50_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X50_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X46_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X46_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X47_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X46_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X46_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X46_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X46_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X46_Y39_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X46_Y39_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X46_Y36_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X46_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X46_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X46_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X46_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X46_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X46_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X46_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X46_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X46_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X46_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X46_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X47_Y39_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X47_Y39_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11_combout\);

-- Location: LCCOMB_X47_Y39_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: LCCOMB_X47_Y39_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: LCCOMB_X46_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\);

-- Location: FF_X47_Y39_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X47_Y39_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: FF_X47_Y39_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X47_Y39_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: FF_X47_Y39_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X47_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\);

-- Location: FF_X47_Y39_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: FF_X47_Y39_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X47_Y39_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\);

-- Location: LCCOMB_X46_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\);

-- Location: LCCOMB_X47_Y39_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X47_Y39_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: LCCOMB_X47_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X47_Y39_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X47_Y39_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: FF_X46_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X46_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X46_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X47_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X47_Y39_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X47_Y39_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: FF_X46_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X46_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X47_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X47_Y39_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: FF_X46_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X46_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\);

-- Location: LCCOMB_X47_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\);

-- Location: LCCOMB_X47_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X47_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X46_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X47_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X47_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X47_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X47_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X46_Y37_N18
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: FF_X46_Y37_N19
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\);

-- Location: LCCOMB_X46_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: FF_X46_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X46_Y37_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\);

-- Location: IOIBUF_X40_Y0_N29
\sram_data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(0),
	o => \sram_data[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\sram_data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(1),
	o => \sram_data[1]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\sram_data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(2),
	o => \sram_data[2]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\sram_data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(3),
	o => \sram_data[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\sram_data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(4),
	o => \sram_data[4]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\sram_data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(5),
	o => \sram_data[5]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\sram_data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(6),
	o => \sram_data[6]~input_o\);

-- Location: IOIBUF_X78_Y30_N1
\sram_data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(7),
	o => \sram_data[7]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\sram_data[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(8),
	o => \sram_data[8]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\sram_data[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(9),
	o => \sram_data[9]~input_o\);

-- Location: IOIBUF_X78_Y31_N15
\sram_data[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(10),
	o => \sram_data[10]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\sram_data[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(11),
	o => \sram_data[11]~input_o\);

-- Location: IOIBUF_X78_Y20_N1
\sram_data[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(12),
	o => \sram_data[12]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\sram_data[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(13),
	o => \sram_data[13]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\sram_data[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(14),
	o => \sram_data[14]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\sram_data[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(15),
	o => \sram_data[15]~input_o\);

-- Location: IOIBUF_X78_Y33_N1
\sram_data[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(16),
	o => \sram_data[16]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\sram_data[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(17),
	o => \sram_data[17]~input_o\);

-- Location: LCCOMB_X49_Y37_N10
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: IOIBUF_X78_Y29_N8
\sram_data[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(18),
	o => \sram_data[18]~input_o\);

-- Location: IOIBUF_X78_Y21_N8
\sram_data[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(19),
	o => \sram_data[19]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\sram_data[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(20),
	o => \sram_data[20]~input_o\);

-- Location: IOIBUF_X78_Y30_N15
\sram_data[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(21),
	o => \sram_data[21]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\sram_data[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(22),
	o => \sram_data[22]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\sram_data[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(23),
	o => \sram_data[23]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\sram_data[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(24),
	o => \sram_data[24]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\sram_data[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(25),
	o => \sram_data[25]~input_o\);

-- Location: IOIBUF_X78_Y20_N23
\sram_data[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(26),
	o => \sram_data[26]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\sram_data[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(27),
	o => \sram_data[27]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\sram_data[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(28),
	o => \sram_data[28]~input_o\);

-- Location: IOIBUF_X78_Y24_N15
\sram_data[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(29),
	o => \sram_data[29]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\sram_data[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(30),
	o => \sram_data[30]~input_o\);

-- Location: IOIBUF_X78_Y30_N22
\sram_data[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(31),
	o => \sram_data[31]~input_o\);

-- Location: M9K_X53_Y37_N0
\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"03F840FDC03F880FD903F942A570BF942FD90BF882FDC0BF842FDD0BF842FDD0BF842FDD0BF842FD603F580FE103F740FE103F740FE103F740FE103F700FE203",
	mem_init1 => X"F640FE50A9202FE50BF642FE20BF702FE10BF742FE10BF742FE10BF742FE10BF580FD603F840FDD03F840FDD03F840FDD03F840FDC03F880FD903F942A4E0BF942FD90BF882FDC0BF842FDD0BF842FDD0BF842FDD0BF842FD603F580FE103F740FE103F740FE103F740FE103F700FE203F640FE50A9142FE50BF642FE20BF702FE10BF742FE10BF742FE10BF742FE10BF580FD603F840FDD03F840FDD03F840FDD03F840FDC03F880FD903F942A440BF942FD90BF882FDC0BF842FDD0BF842FDD0BF842FDD0BF842FD603F580FE103F740FE103F740FE103F740FE103F700FE203F640FE50A8DC2FE50BF642FE20BF702FE10BF742FE10BF742FE10BF742FE10",
	mem_init0 => X"BF580FD603F840FDD03F840FDD03F840FDD03F840FDC03F880FD903F942A2E0BF942FD90BF882FDC0BF842FDD0BF842FDD0BF842FDD0BF842FD603F580FE103F740FE103F740FE103F740FE103F700FE203F640FE50A8902FE50BF642FE20BF702FE10BF742FE10BF742FE10BF742FE10BF580FD603F840FDD03F840FDD03F840FDD03F840FDC03F880FD903F942A0E0BF942FD90BF882FDC0BF842FDD0BF842FDD0BF842FDD0BF842FD603F580FE103F740FE103F740FE103F740FE103F700FE203F640FE50A7B82FE50BF642FE20BF702FE10BF742FE10BF742FE10BF742FE10BF580FD603F840FDD03F840FDD03F840FDD03F840FDC03F880FD903F940000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SRAM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SRAM:sram_mem|altsyncram:altsyncram_component|altsyncram_gpt3:auto_generated|altsyncram_r5r2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \sram_en~0_combout\,
	portare => \read_en~input_o\,
	portbwe => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	clr0 => GND,
	portadatain => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAIN_bus\,
	portbdatain => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAIN_bus\,
	portaaddr => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTAADDR_bus\,
	portbaddr => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTADATAOUT_bus\,
	portbdataout => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y37_N30
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(31),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\);

-- Location: LCCOMB_X47_Y37_N28
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~1_combout\);

-- Location: LCCOMB_X47_Y37_N14
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~1_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~0_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\);

-- Location: FF_X54_Y37_N31
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31));

-- Location: LCCOMB_X54_Y37_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(30),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\);

-- Location: FF_X54_Y37_N21
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30));

-- Location: LCCOMB_X54_Y37_N18
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(29),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31_combout\);

-- Location: FF_X54_Y37_N19
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29));

-- Location: LCCOMB_X54_Y37_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(28),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30_combout\);

-- Location: FF_X54_Y37_N1
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28));

-- Location: LCCOMB_X54_Y37_N14
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(27),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29_combout\);

-- Location: FF_X54_Y37_N15
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27));

-- Location: LCCOMB_X54_Y37_N12
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(26),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28_combout\);

-- Location: FF_X54_Y37_N13
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26));

-- Location: LCCOMB_X54_Y37_N10
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(25),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27_combout\);

-- Location: FF_X54_Y37_N11
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25));

-- Location: LCCOMB_X54_Y37_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(24),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26_combout\);

-- Location: FF_X54_Y37_N9
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24));

-- Location: LCCOMB_X54_Y37_N6
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(23),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25_combout\);

-- Location: FF_X54_Y37_N7
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23));

-- Location: LCCOMB_X54_Y37_N28
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(22),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24_combout\);

-- Location: FF_X54_Y37_N29
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22));

-- Location: LCCOMB_X54_Y37_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(21),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23_combout\);

-- Location: FF_X54_Y37_N27
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21));

-- Location: LCCOMB_X54_Y37_N24
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(20),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22_combout\);

-- Location: FF_X54_Y37_N25
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20));

-- Location: LCCOMB_X54_Y37_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(19),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21_combout\);

-- Location: FF_X54_Y37_N23
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19));

-- Location: LCCOMB_X54_Y37_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(18),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20_combout\);

-- Location: FF_X54_Y37_N5
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18));

-- Location: M9K_X53_Y36_N0
\sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"67B3E75EB2F086C78ABFA0E113ABFA0EC78A2F08675EB67B3E31D01D3B78E780DCE6C3BF9691CEBEA3AFAA5A47B0EFC3739E39E074ED8C7419ECF9D7ACBC21B1",
	mem_init1 => X"E2AFE83747E6FE83B1E28BC219D7AD9ECF8C74074EDE39E03739B0EFE5A473AFA8EBEA9691EC3BF0DCE78E781D3B631D067B3E75EB2F086C78ABFA0C5A99BFA0EC78A2F08675EB67B3E31D01D3B78E780DCE6C3BF9691CEBEA3AFAA5A47B0EFC3739E39E074ED8C7419ECF9D7ACBC21B1E2AFE8333326FE83B1E28BC219D7AD9ECF8C74074EDE39E03739B0EFE5A473AFA8EBEA9691EC3BF0DCE78E781D3B631D067B3E75EB2F086C78ABFA0C2BD4BFA0EC78A2F08675EB67B3E31D01D3B78E780DCE6C3BF9691CEBEA3AFAA5A47B0EFC3739E39E074ED8C7419ECF9D7ACBC21B1E2AFE83844EAFE83B1E28BC219D7AD9ECF8C74074EDE39E03739B0EFE5A473",
	mem_init0 => X"AFA8EBEA9691EC3BF0DCE78E781D3B631D067B3E75EB2F086C78ABFA0C5A99BFA0EC78A2F08675EB67B3E31D01D3B78E780DCE6C3BF9691CEBEA3AFAA5A47B0EFC3739E39E074ED8C7419ECF9D7ACBC21B1E2AFE830AF52FE83B1E28BC219D7AD9ECF8C74074EDE39E03739B0EFE5A473AFA8EBEA9691EC3BF0DCE78E781D3B631D067B3E75EB2F086C78ABFA0C5A99BFA0EC78A2F08675EB67B3E31D01D3B78E780DCE6C3BF9691CEBEA3AFAA5A47B0EFC3739E39E074ED8C7419ECF9D7ACBC21B1E2AFE8316A66FE83B1E28BC219D7AD9ECF8C74074EDE39E03739B0EFE5A473AFA8EBEA9691EC3BF0DCE78E781D3B631D067B3E75EB2F086C78ABFA0C0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SRAM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SRAM:sram_mem|altsyncram:altsyncram_component|altsyncram_gpt3:auto_generated|altsyncram_r5r2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \sram_en~0_combout\,
	portare => \read_en~input_o\,
	portbwe => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	clr0 => GND,
	portadatain => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \sram_mem|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y37_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(17),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19_combout\);

-- Location: FF_X54_Y37_N3
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17));

-- Location: LCCOMB_X54_Y37_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(16),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18_combout\);

-- Location: FF_X54_Y37_N17
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16));

-- Location: LCCOMB_X52_Y36_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(15),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17_combout\);

-- Location: FF_X52_Y36_N23
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15));

-- Location: LCCOMB_X52_Y36_N28
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(14),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16_combout\);

-- Location: FF_X52_Y36_N29
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14));

-- Location: LCCOMB_X52_Y36_N18
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(13),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15_combout\);

-- Location: FF_X52_Y36_N19
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13));

-- Location: LCCOMB_X52_Y36_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(12),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14_combout\);

-- Location: FF_X52_Y36_N17
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12));

-- Location: LCCOMB_X52_Y36_N30
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(11),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13_combout\);

-- Location: FF_X52_Y36_N31
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11));

-- Location: LCCOMB_X52_Y36_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11),
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(10),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12_combout\);

-- Location: FF_X52_Y36_N5
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10));

-- Location: LCCOMB_X52_Y36_N10
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(9),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11_combout\);

-- Location: FF_X52_Y36_N11
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9));

-- Location: LCCOMB_X52_Y36_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(8),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10_combout\);

-- Location: FF_X52_Y36_N1
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8));

-- Location: LCCOMB_X52_Y36_N14
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(7),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\);

-- Location: FF_X52_Y36_N15
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LCCOMB_X52_Y36_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(6),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\);

-- Location: FF_X52_Y36_N21
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LCCOMB_X52_Y36_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(5),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\);

-- Location: FF_X52_Y36_N27
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LCCOMB_X52_Y36_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\);

-- Location: FF_X52_Y36_N9
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LCCOMB_X52_Y36_N6
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(3),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\);

-- Location: FF_X52_Y36_N7
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LCCOMB_X52_Y36_N12
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(2),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\);

-- Location: FF_X52_Y36_N13
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LCCOMB_X52_Y36_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	datac => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\);

-- Location: FF_X52_Y36_N3
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: LCCOMB_X52_Y36_N24
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_b\(0),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\);

-- Location: FF_X52_Y36_N25
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: LCCOMB_X46_Y37_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\);

-- Location: LCCOMB_X49_Y38_N10
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => VCC,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\);

-- Location: LCCOMB_X49_Y38_N12
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~11_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~12\);

-- Location: LCCOMB_X50_Y38_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X50_Y38_N30
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\);

-- Location: FF_X49_Y38_N13
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~11_combout\,
	sclr => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X49_Y38_N14
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~12\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~14\);

-- Location: FF_X49_Y38_N15
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~13_combout\,
	sclr => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X49_Y38_N16
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => VCC,
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~14\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	cout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\);

-- Location: FF_X49_Y38_N17
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	sclr => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X49_Y38_N18
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	cin => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\);

-- Location: FF_X49_Y38_N19
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\,
	sclr => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LCCOMB_X49_Y38_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~9_combout\);

-- Location: LCCOMB_X49_Y38_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~9_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\);

-- Location: FF_X49_Y38_N11
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	sclr => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCCOMB_X49_Y38_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X49_Y38_N24
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\);

-- Location: LCCOMB_X49_Y38_N6
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~16_combout\);

-- Location: LCCOMB_X50_Y38_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X50_Y38_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\);

-- Location: LCCOMB_X50_Y38_N24
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~18_combout\);

-- Location: LCCOMB_X50_Y38_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~18_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~19_combout\);

-- Location: LCCOMB_X50_Y38_N20
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9_combout\);

-- Location: FF_X50_Y38_N9
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~19_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X50_Y38_N10
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\);

-- Location: LCCOMB_X50_Y38_N22
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~15_combout\);

-- Location: LCCOMB_X49_Y38_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~16_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~15_combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~17_combout\);

-- Location: FF_X49_Y38_N5
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~17_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X49_Y38_N2
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\);

-- Location: FF_X49_Y38_N3
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X49_Y38_N28
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X49_Y38_N26
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X49_Y38_N30
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~20_combout\);

-- Location: LCCOMB_X49_Y38_N8
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~20_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: FF_X49_Y38_N9
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X46_Y37_N0
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datac => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~2_combout\);

-- Location: LCCOMB_X46_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: LCCOMB_X46_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datab => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\);

-- Location: LCCOMB_X46_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X47_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X47_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X47_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X47_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X47_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X47_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X47_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X47_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X45_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\);

-- Location: LCCOMB_X45_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~15\);

-- Location: LCCOMB_X46_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X45_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\);

-- Location: FF_X45_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X45_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~17\);

-- Location: FF_X45_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X45_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~19\);

-- Location: FF_X45_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X45_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X45_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X45_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: LCCOMB_X45_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\);

-- Location: FF_X45_Y38_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X45_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X45_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X45_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X45_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X45_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X46_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12_combout\);

-- Location: FF_X45_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X45_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: FF_X45_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X45_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X45_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X45_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: FF_X45_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X46_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X46_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\);

-- Location: FF_X46_Y36_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G10
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X45_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X45_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X45_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X45_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X45_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: FF_X45_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X49_Y37_N4
\sram_mem|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \sram_mem|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: IOIBUF_X69_Y54_N22
\inport_input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(0),
	o => \inport_input[0]~input_o\);

-- Location: LCCOMB_X59_Y44_N24
\inport1|sigout[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[0]~feeder_combout\ = \inport_input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[0]~input_o\,
	combout => \inport1|sigout[0]~feeder_combout\);

-- Location: IOIBUF_X71_Y54_N29
\inport_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_en,
	o => \inport_en~input_o\);

-- Location: IOIBUF_X66_Y54_N15
\switchten~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switchten,
	o => \switchten~input_o\);

-- Location: LCCOMB_X63_Y47_N16
inport1_en : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1_en~combout\ = (\inport_en~input_o\ & \switchten~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inport_en~input_o\,
	datac => \switchten~input_o\,
	combout => \inport1_en~combout\);

-- Location: FF_X59_Y44_N25
\inport1|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[0]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(0));

-- Location: LCCOMB_X60_Y44_N18
\dff|sigout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[0]~0_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(0)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	datad => \inport1|sigout\(0),
	combout => \dff|sigout[0]~0_combout\);

-- Location: LCCOMB_X60_Y44_N22
\inport0|sigout[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[0]~feeder_combout\ = \inport_input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[0]~input_o\,
	combout => \inport0|sigout[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y47_N18
inport0_en : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0_en~combout\ = (\inport_en~input_o\ & !\switchten~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inport_en~input_o\,
	datac => \switchten~input_o\,
	combout => \inport0_en~combout\);

-- Location: FF_X60_Y44_N23
\inport0|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[0]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(0));

-- Location: FF_X60_Y44_N19
\dff|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[0]~0_combout\,
	asdata => \inport0|sigout\(0),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(0));

-- Location: IOIBUF_X46_Y54_N8
\inport_input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(1),
	o => \inport_input[1]~input_o\);

-- Location: LCCOMB_X59_Y44_N26
\inport1|sigout[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[1]~feeder_combout\ = \inport_input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[1]~input_o\,
	combout => \inport1|sigout[1]~feeder_combout\);

-- Location: FF_X59_Y44_N27
\inport1|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[1]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(1));

-- Location: LCCOMB_X60_Y44_N28
\dff|sigout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[1]~1_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(1))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \inport1|sigout\(1),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	combout => \dff|sigout[1]~1_combout\);

-- Location: LCCOMB_X60_Y44_N2
\inport0|sigout[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[1]~feeder_combout\ = \inport_input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[1]~input_o\,
	combout => \inport0|sigout[1]~feeder_combout\);

-- Location: FF_X60_Y44_N3
\inport0|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[1]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(1));

-- Location: FF_X60_Y44_N29
\dff|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[1]~1_combout\,
	asdata => \inport0|sigout\(1),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(1));

-- Location: IOIBUF_X66_Y54_N29
\inport_input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(2),
	o => \inport_input[2]~input_o\);

-- Location: LCCOMB_X59_Y47_N8
\inport1|sigout[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[2]~feeder_combout\ = \inport_input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[2]~input_o\,
	combout => \inport1|sigout[2]~feeder_combout\);

-- Location: FF_X59_Y47_N9
\inport1|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[2]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(2));

-- Location: LCCOMB_X60_Y44_N12
\dff|sigout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[2]~2_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(2)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	datad => \inport1|sigout\(2),
	combout => \dff|sigout[2]~2_combout\);

-- Location: LCCOMB_X60_Y44_N10
\inport0|sigout[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[2]~feeder_combout\ = \inport_input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[2]~input_o\,
	combout => \inport0|sigout[2]~feeder_combout\);

-- Location: FF_X60_Y44_N11
\inport0|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[2]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(2));

-- Location: FF_X60_Y44_N13
\dff|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[2]~2_combout\,
	asdata => \inport0|sigout\(2),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(2));

-- Location: IOIBUF_X56_Y54_N8
\inport_input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(3),
	o => \inport_input[3]~input_o\);

-- Location: LCCOMB_X59_Y44_N12
\inport1|sigout[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[3]~feeder_combout\ = \inport_input[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[3]~input_o\,
	combout => \inport1|sigout[3]~feeder_combout\);

-- Location: FF_X59_Y44_N13
\inport1|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[3]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(3));

-- Location: LCCOMB_X60_Y44_N24
\dff|sigout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[3]~3_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(3)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	datad => \inport1|sigout\(3),
	combout => \dff|sigout[3]~3_combout\);

-- Location: LCCOMB_X60_Y44_N4
\inport0|sigout[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[3]~feeder_combout\ = \inport_input[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[3]~input_o\,
	combout => \inport0|sigout[3]~feeder_combout\);

-- Location: FF_X60_Y44_N5
\inport0|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[3]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(3));

-- Location: FF_X60_Y44_N25
\dff|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[3]~3_combout\,
	asdata => \inport0|sigout\(3),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(3));

-- Location: IOIBUF_X60_Y0_N29
\inport_input[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(4),
	o => \inport_input[4]~input_o\);

-- Location: LCCOMB_X59_Y44_N14
\inport1|sigout[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[4]~feeder_combout\ = \inport_input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[4]~input_o\,
	combout => \inport1|sigout[4]~feeder_combout\);

-- Location: FF_X59_Y44_N15
\inport1|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[4]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(4));

-- Location: LCCOMB_X60_Y44_N6
\dff|sigout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[4]~4_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(4)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	datad => \inport1|sigout\(4),
	combout => \dff|sigout[4]~4_combout\);

-- Location: LCCOMB_X60_Y44_N26
\inport0|sigout[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[4]~feeder_combout\ = \inport_input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[4]~input_o\,
	combout => \inport0|sigout[4]~feeder_combout\);

-- Location: FF_X60_Y44_N27
\inport0|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[4]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(4));

-- Location: FF_X60_Y44_N7
\dff|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[4]~4_combout\,
	asdata => \inport0|sigout\(4),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(4));

-- Location: IOIBUF_X69_Y54_N8
\inport_input[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(5),
	o => \inport_input[5]~input_o\);

-- Location: LCCOMB_X59_Y44_N8
\inport1|sigout[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[5]~feeder_combout\ = \inport_input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[5]~input_o\,
	combout => \inport1|sigout[5]~feeder_combout\);

-- Location: FF_X59_Y44_N9
\inport1|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[5]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(5));

-- Location: LCCOMB_X60_Y44_N16
\dff|sigout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[5]~5_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(5)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	datad => \inport1|sigout\(5),
	combout => \dff|sigout[5]~5_combout\);

-- Location: LCCOMB_X60_Y44_N8
\inport0|sigout[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[5]~feeder_combout\ = \inport_input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[5]~input_o\,
	combout => \inport0|sigout[5]~feeder_combout\);

-- Location: FF_X60_Y44_N9
\inport0|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[5]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(5));

-- Location: FF_X60_Y44_N17
\dff|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[5]~5_combout\,
	asdata => \inport0|sigout\(5),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(5));

-- Location: IOIBUF_X78_Y45_N1
\inport_input[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(6),
	o => \inport_input[6]~input_o\);

-- Location: LCCOMB_X59_Y44_N2
\inport1|sigout[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[6]~feeder_combout\ = \inport_input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[6]~input_o\,
	combout => \inport1|sigout[6]~feeder_combout\);

-- Location: FF_X59_Y44_N3
\inport1|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[6]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(6));

-- Location: LCCOMB_X60_Y44_N0
\dff|sigout[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[6]~6_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(6)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	datad => \inport1|sigout\(6),
	combout => \dff|sigout[6]~6_combout\);

-- Location: LCCOMB_X60_Y44_N30
\inport0|sigout[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[6]~feeder_combout\ = \inport_input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[6]~input_o\,
	combout => \inport0|sigout[6]~feeder_combout\);

-- Location: FF_X60_Y44_N31
\inport0|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[6]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(6));

-- Location: FF_X60_Y44_N1
\dff|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[6]~6_combout\,
	asdata => \inport0|sigout\(6),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(6));

-- Location: IOIBUF_X78_Y42_N22
\inport_input[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(7),
	o => \inport_input[7]~input_o\);

-- Location: LCCOMB_X59_Y44_N4
\inport1|sigout[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[7]~feeder_combout\ = \inport_input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[7]~input_o\,
	combout => \inport1|sigout[7]~feeder_combout\);

-- Location: FF_X59_Y44_N5
\inport1|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[7]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(7));

-- Location: LCCOMB_X60_Y40_N18
\dff|sigout[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[7]~7_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(7))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \inport1|sigout\(7),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	combout => \dff|sigout[7]~7_combout\);

-- Location: LCCOMB_X60_Y40_N8
\inport0|sigout[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[7]~feeder_combout\ = \inport_input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[7]~input_o\,
	combout => \inport0|sigout[7]~feeder_combout\);

-- Location: FF_X60_Y40_N9
\inport0|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[7]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(7));

-- Location: FF_X60_Y40_N19
\dff|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[7]~7_combout\,
	asdata => \inport0|sigout\(7),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(7));

-- Location: IOIBUF_X60_Y54_N15
\inport_input[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(8),
	o => \inport_input[8]~input_o\);

-- Location: LCCOMB_X59_Y44_N22
\inport1|sigout[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[8]~feeder_combout\ = \inport_input[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[8]~input_o\,
	combout => \inport1|sigout[8]~feeder_combout\);

-- Location: FF_X59_Y44_N23
\inport1|sigout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[8]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(8));

-- Location: LCCOMB_X60_Y40_N10
\dff|sigout[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[8]~8_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(8)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(8),
	datad => \inport1|sigout\(8),
	combout => \dff|sigout[8]~8_combout\);

-- Location: LCCOMB_X60_Y40_N30
\inport0|sigout[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[8]~feeder_combout\ = \inport_input[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[8]~input_o\,
	combout => \inport0|sigout[8]~feeder_combout\);

-- Location: FF_X60_Y40_N31
\inport0|sigout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[8]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(8));

-- Location: FF_X60_Y40_N11
\dff|sigout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[8]~8_combout\,
	asdata => \inport0|sigout\(8),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(8));

-- Location: IOIBUF_X74_Y54_N15
\inport_input[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(9),
	o => \inport_input[9]~input_o\);

-- Location: LCCOMB_X59_Y47_N10
\inport1|sigout[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[9]~feeder_combout\ = \inport_input[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[9]~input_o\,
	combout => \inport1|sigout[9]~feeder_combout\);

-- Location: FF_X59_Y47_N11
\inport1|sigout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[9]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(9));

-- Location: LCCOMB_X60_Y40_N24
\dff|sigout[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[9]~9_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(9)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(9),
	datad => \inport1|sigout\(9),
	combout => \dff|sigout[9]~9_combout\);

-- Location: LCCOMB_X60_Y40_N4
\inport0|sigout[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[9]~feeder_combout\ = \inport_input[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[9]~input_o\,
	combout => \inport0|sigout[9]~feeder_combout\);

-- Location: FF_X60_Y40_N5
\inport0|sigout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[9]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(9));

-- Location: FF_X60_Y40_N25
\dff|sigout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[9]~9_combout\,
	asdata => \inport0|sigout\(9),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(9));

-- Location: IOIBUF_X60_Y54_N29
\inport_input[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(10),
	o => \inport_input[10]~input_o\);

-- Location: LCCOMB_X59_Y44_N0
\inport1|sigout[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[10]~feeder_combout\ = \inport_input[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[10]~input_o\,
	combout => \inport1|sigout[10]~feeder_combout\);

-- Location: FF_X59_Y44_N1
\inport1|sigout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[10]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(10));

-- Location: LCCOMB_X60_Y40_N12
\dff|sigout[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[10]~10_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(10)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	datad => \inport1|sigout\(10),
	combout => \dff|sigout[10]~10_combout\);

-- Location: LCCOMB_X60_Y40_N14
\inport0|sigout[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[10]~feeder_combout\ = \inport_input[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[10]~input_o\,
	combout => \inport0|sigout[10]~feeder_combout\);

-- Location: FF_X60_Y40_N15
\inport0|sigout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[10]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(10));

-- Location: FF_X60_Y40_N13
\dff|sigout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[10]~10_combout\,
	asdata => \inport0|sigout\(10),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(10));

-- Location: IOIBUF_X60_Y54_N22
\inport_input[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(11),
	o => \inport_input[11]~input_o\);

-- Location: LCCOMB_X59_Y44_N18
\inport1|sigout[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[11]~feeder_combout\ = \inport_input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[11]~input_o\,
	combout => \inport1|sigout[11]~feeder_combout\);

-- Location: FF_X59_Y44_N19
\inport1|sigout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[11]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(11));

-- Location: LCCOMB_X60_Y40_N16
\dff|sigout[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[11]~11_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(11))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \inport1|sigout\(11),
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(11),
	combout => \dff|sigout[11]~11_combout\);

-- Location: LCCOMB_X60_Y40_N26
\inport0|sigout[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[11]~feeder_combout\ = \inport_input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[11]~input_o\,
	combout => \inport0|sigout[11]~feeder_combout\);

-- Location: FF_X60_Y40_N27
\inport0|sigout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[11]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(11));

-- Location: FF_X60_Y40_N17
\dff|sigout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[11]~11_combout\,
	asdata => \inport0|sigout\(11),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(11));

-- Location: IOIBUF_X78_Y17_N1
\inport_input[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(12),
	o => \inport_input[12]~input_o\);

-- Location: LCCOMB_X59_Y44_N28
\inport1|sigout[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[12]~feeder_combout\ = \inport_input[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[12]~input_o\,
	combout => \inport1|sigout[12]~feeder_combout\);

-- Location: FF_X59_Y44_N29
\inport1|sigout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[12]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(12));

-- Location: LCCOMB_X60_Y40_N20
\dff|sigout[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[12]~12_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(12)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(12),
	datad => \inport1|sigout\(12),
	combout => \dff|sigout[12]~12_combout\);

-- Location: LCCOMB_X60_Y40_N22
\inport0|sigout[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[12]~feeder_combout\ = \inport_input[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[12]~input_o\,
	combout => \inport0|sigout[12]~feeder_combout\);

-- Location: FF_X60_Y40_N23
\inport0|sigout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[12]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(12));

-- Location: FF_X60_Y40_N21
\dff|sigout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[12]~12_combout\,
	asdata => \inport0|sigout\(12),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(12));

-- Location: IOIBUF_X74_Y54_N1
\inport_input[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(13),
	o => \inport_input[13]~input_o\);

-- Location: LCCOMB_X59_Y44_N30
\inport1|sigout[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[13]~feeder_combout\ = \inport_input[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[13]~input_o\,
	combout => \inport1|sigout[13]~feeder_combout\);

-- Location: FF_X59_Y44_N31
\inport1|sigout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[13]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(13));

-- Location: LCCOMB_X60_Y40_N0
\dff|sigout[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[13]~13_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(13)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	datad => \inport1|sigout\(13),
	combout => \dff|sigout[13]~13_combout\);

-- Location: LCCOMB_X60_Y40_N2
\inport0|sigout[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[13]~feeder_combout\ = \inport_input[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[13]~input_o\,
	combout => \inport0|sigout[13]~feeder_combout\);

-- Location: FF_X60_Y40_N3
\inport0|sigout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[13]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(13));

-- Location: FF_X60_Y40_N1
\dff|sigout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[13]~13_combout\,
	asdata => \inport0|sigout\(13),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(13));

-- Location: IOIBUF_X78_Y44_N15
\inport_input[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(14),
	o => \inport_input[14]~input_o\);

-- Location: LCCOMB_X59_Y44_N16
\inport1|sigout[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[14]~feeder_combout\ = \inport_input[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[14]~input_o\,
	combout => \inport1|sigout[14]~feeder_combout\);

-- Location: FF_X59_Y44_N17
\inport1|sigout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[14]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(14));

-- Location: LCCOMB_X60_Y40_N28
\dff|sigout[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[14]~14_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(14)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(14),
	datad => \inport1|sigout\(14),
	combout => \dff|sigout[14]~14_combout\);

-- Location: LCCOMB_X60_Y40_N6
\inport0|sigout[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[14]~feeder_combout\ = \inport_input[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[14]~input_o\,
	combout => \inport0|sigout[14]~feeder_combout\);

-- Location: FF_X60_Y40_N7
\inport0|sigout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[14]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(14));

-- Location: FF_X60_Y40_N29
\dff|sigout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[14]~14_combout\,
	asdata => \inport0|sigout\(14),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(14));

-- Location: IOIBUF_X56_Y54_N15
\inport_input[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(15),
	o => \inport_input[15]~input_o\);

-- Location: LCCOMB_X59_Y44_N10
\inport1|sigout[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[15]~feeder_combout\ = \inport_input[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[15]~input_o\,
	combout => \inport1|sigout[15]~feeder_combout\);

-- Location: FF_X59_Y44_N11
\inport1|sigout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[15]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(15));

-- Location: LCCOMB_X60_Y44_N20
\dff|sigout[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[15]~15_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(15)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(15),
	datad => \inport1|sigout\(15),
	combout => \dff|sigout[15]~15_combout\);

-- Location: LCCOMB_X60_Y44_N14
\inport0|sigout[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[15]~feeder_combout\ = \inport_input[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[15]~input_o\,
	combout => \inport0|sigout[15]~feeder_combout\);

-- Location: FF_X60_Y44_N15
\inport0|sigout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[15]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(15));

-- Location: FF_X60_Y44_N21
\dff|sigout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[15]~15_combout\,
	asdata => \inport0|sigout\(15),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(15));

-- Location: IOIBUF_X58_Y54_N22
\inport_input[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(16),
	o => \inport_input[16]~input_o\);

-- Location: LCCOMB_X59_Y47_N4
\inport1|sigout[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[16]~feeder_combout\ = \inport_input[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[16]~input_o\,
	combout => \inport1|sigout[16]~feeder_combout\);

-- Location: FF_X59_Y47_N5
\inport1|sigout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[16]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(16));

-- Location: LCCOMB_X59_Y48_N16
\dff|sigout[16]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[16]~16_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(16)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(16),
	datab => \inport1|sigout\(16),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[16]~16_combout\);

-- Location: LCCOMB_X59_Y48_N20
\inport0|sigout[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[16]~feeder_combout\ = \inport_input[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[16]~input_o\,
	combout => \inport0|sigout[16]~feeder_combout\);

-- Location: FF_X59_Y48_N21
\inport0|sigout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[16]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(16));

-- Location: FF_X59_Y48_N17
\dff|sigout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[16]~16_combout\,
	asdata => \inport0|sigout\(16),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(16));

-- Location: IOIBUF_X60_Y54_N1
\inport_input[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(17),
	o => \inport_input[17]~input_o\);

-- Location: LCCOMB_X59_Y47_N6
\inport1|sigout[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[17]~feeder_combout\ = \inport_input[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[17]~input_o\,
	combout => \inport1|sigout[17]~feeder_combout\);

-- Location: FF_X59_Y47_N7
\inport1|sigout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[17]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(17));

-- Location: LCCOMB_X59_Y48_N24
\dff|sigout[17]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[17]~17_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(17)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(17),
	datab => \Equal1~10_combout\,
	datad => \inport1|sigout\(17),
	combout => \dff|sigout[17]~17_combout\);

-- Location: LCCOMB_X59_Y48_N6
\inport0|sigout[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[17]~feeder_combout\ = \inport_input[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[17]~input_o\,
	combout => \inport0|sigout[17]~feeder_combout\);

-- Location: FF_X59_Y48_N7
\inport0|sigout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[17]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(17));

-- Location: FF_X59_Y48_N25
\dff|sigout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[17]~17_combout\,
	asdata => \inport0|sigout\(17),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(17));

-- Location: IOIBUF_X46_Y54_N1
\inport_input[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(18),
	o => \inport_input[18]~input_o\);

-- Location: LCCOMB_X59_Y47_N24
\inport1|sigout[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[18]~feeder_combout\ = \inport_input[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[18]~input_o\,
	combout => \inport1|sigout[18]~feeder_combout\);

-- Location: FF_X59_Y47_N25
\inport1|sigout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[18]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(18));

-- Location: LCCOMB_X59_Y48_N28
\dff|sigout[18]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[18]~18_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(18))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(18),
	datab => \Equal1~10_combout\,
	datad => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	combout => \dff|sigout[18]~18_combout\);

-- Location: LCCOMB_X59_Y48_N14
\inport0|sigout[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[18]~feeder_combout\ = \inport_input[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[18]~input_o\,
	combout => \inport0|sigout[18]~feeder_combout\);

-- Location: FF_X59_Y48_N15
\inport0|sigout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[18]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(18));

-- Location: FF_X59_Y48_N29
\dff|sigout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[18]~18_combout\,
	asdata => \inport0|sigout\(18),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(18));

-- Location: IOIBUF_X62_Y54_N29
\inport_input[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(19),
	o => \inport_input[19]~input_o\);

-- Location: LCCOMB_X59_Y47_N26
\inport1|sigout[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[19]~feeder_combout\ = \inport_input[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[19]~input_o\,
	combout => \inport1|sigout[19]~feeder_combout\);

-- Location: FF_X59_Y47_N27
\inport1|sigout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[19]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(19));

-- Location: LCCOMB_X59_Y48_N0
\dff|sigout[19]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[19]~19_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(19)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(19),
	datab => \Equal1~10_combout\,
	datad => \inport1|sigout\(19),
	combout => \dff|sigout[19]~19_combout\);

-- Location: LCCOMB_X59_Y48_N26
\inport0|sigout[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[19]~feeder_combout\ = \inport_input[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[19]~input_o\,
	combout => \inport0|sigout[19]~feeder_combout\);

-- Location: FF_X59_Y48_N27
\inport0|sigout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[19]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(19));

-- Location: FF_X59_Y48_N1
\dff|sigout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[19]~19_combout\,
	asdata => \inport0|sigout\(19),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(19));

-- Location: IOIBUF_X51_Y54_N29
\inport_input[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(20),
	o => \inport_input[20]~input_o\);

-- Location: LCCOMB_X59_Y47_N28
\inport1|sigout[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[20]~feeder_combout\ = \inport_input[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[20]~input_o\,
	combout => \inport1|sigout[20]~feeder_combout\);

-- Location: FF_X59_Y47_N29
\inport1|sigout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[20]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(20));

-- Location: LCCOMB_X59_Y48_N18
\dff|sigout[20]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[20]~20_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(20))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(20),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(20),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[20]~20_combout\);

-- Location: LCCOMB_X59_Y48_N4
\inport0|sigout[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[20]~feeder_combout\ = \inport_input[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[20]~input_o\,
	combout => \inport0|sigout[20]~feeder_combout\);

-- Location: FF_X59_Y48_N5
\inport0|sigout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[20]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(20));

-- Location: FF_X59_Y48_N19
\dff|sigout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[20]~20_combout\,
	asdata => \inport0|sigout\(20),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(20));

-- Location: IOIBUF_X78_Y45_N8
\inport_input[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(21),
	o => \inport_input[21]~input_o\);

-- Location: LCCOMB_X59_Y47_N22
\inport1|sigout[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[21]~feeder_combout\ = \inport_input[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[21]~input_o\,
	combout => \inport1|sigout[21]~feeder_combout\);

-- Location: FF_X59_Y47_N23
\inport1|sigout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[21]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(21));

-- Location: LCCOMB_X59_Y48_N10
\dff|sigout[21]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[21]~21_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(21)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(21),
	datab => \inport1|sigout\(21),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[21]~21_combout\);

-- Location: LCCOMB_X59_Y48_N8
\inport0|sigout[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[21]~feeder_combout\ = \inport_input[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[21]~input_o\,
	combout => \inport0|sigout[21]~feeder_combout\);

-- Location: FF_X59_Y48_N9
\inport0|sigout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[21]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(21));

-- Location: FF_X59_Y48_N11
\dff|sigout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[21]~21_combout\,
	asdata => \inport0|sigout\(21),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(21));

-- Location: IOIBUF_X46_Y54_N29
\inport_input[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(22),
	o => \inport_input[22]~input_o\);

-- Location: LCCOMB_X59_Y47_N16
\inport1|sigout[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[22]~feeder_combout\ = \inport_input[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[22]~input_o\,
	combout => \inport1|sigout[22]~feeder_combout\);

-- Location: FF_X59_Y47_N17
\inport1|sigout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[22]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(22));

-- Location: LCCOMB_X59_Y48_N12
\dff|sigout[22]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[22]~22_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(22)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	datab => \inport1|sigout\(22),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[22]~22_combout\);

-- Location: LCCOMB_X59_Y48_N30
\inport0|sigout[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[22]~feeder_combout\ = \inport_input[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[22]~input_o\,
	combout => \inport0|sigout[22]~feeder_combout\);

-- Location: FF_X59_Y48_N31
\inport0|sigout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[22]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(22));

-- Location: FF_X59_Y48_N13
\dff|sigout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[22]~22_combout\,
	asdata => \inport0|sigout\(22),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(22));

-- Location: IOIBUF_X56_Y54_N1
\inport_input[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(23),
	o => \inport_input[23]~input_o\);

-- Location: LCCOMB_X59_Y47_N18
\inport1|sigout[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[23]~feeder_combout\ = \inport_input[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[23]~input_o\,
	combout => \inport1|sigout[23]~feeder_combout\);

-- Location: FF_X59_Y47_N19
\inport1|sigout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[23]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(23));

-- Location: LCCOMB_X59_Y46_N24
\dff|sigout[23]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[23]~23_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(23))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(23),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(23),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[23]~23_combout\);

-- Location: LCCOMB_X59_Y46_N22
\inport0|sigout[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[23]~feeder_combout\ = \inport_input[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[23]~input_o\,
	combout => \inport0|sigout[23]~feeder_combout\);

-- Location: FF_X59_Y46_N23
\inport0|sigout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[23]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(23));

-- Location: FF_X59_Y46_N25
\dff|sigout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[23]~23_combout\,
	asdata => \inport0|sigout\(23),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(23));

-- Location: IOIBUF_X58_Y54_N29
\inport_input[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(24),
	o => \inport_input[24]~input_o\);

-- Location: LCCOMB_X59_Y47_N20
\inport1|sigout[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[24]~feeder_combout\ = \inport_input[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[24]~input_o\,
	combout => \inport1|sigout[24]~feeder_combout\);

-- Location: FF_X59_Y47_N21
\inport1|sigout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[24]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(24));

-- Location: LCCOMB_X59_Y46_N16
\dff|sigout[24]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[24]~24_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(24))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(24),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(24),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[24]~24_combout\);

-- Location: LCCOMB_X59_Y46_N28
\inport0|sigout[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[24]~feeder_combout\ = \inport_input[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[24]~input_o\,
	combout => \inport0|sigout[24]~feeder_combout\);

-- Location: FF_X59_Y46_N29
\inport0|sigout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[24]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(24));

-- Location: FF_X59_Y46_N17
\dff|sigout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[24]~24_combout\,
	asdata => \inport0|sigout\(24),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(24));

-- Location: IOIBUF_X74_Y54_N8
\inport_input[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(25),
	o => \inport_input[25]~input_o\);

-- Location: LCCOMB_X59_Y44_N20
\inport1|sigout[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[25]~feeder_combout\ = \inport_input[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[25]~input_o\,
	combout => \inport1|sigout[25]~feeder_combout\);

-- Location: FF_X59_Y44_N21
\inport1|sigout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[25]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(25));

-- Location: LCCOMB_X59_Y46_N6
\dff|sigout[25]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[25]~25_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(25)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	datab => \inport1|sigout\(25),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[25]~25_combout\);

-- Location: LCCOMB_X59_Y46_N20
\inport0|sigout[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[25]~feeder_combout\ = \inport_input[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[25]~input_o\,
	combout => \inport0|sigout[25]~feeder_combout\);

-- Location: FF_X59_Y46_N21
\inport0|sigout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[25]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(25));

-- Location: FF_X59_Y46_N7
\dff|sigout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[25]~25_combout\,
	asdata => \inport0|sigout\(25),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(25));

-- Location: IOIBUF_X49_Y54_N22
\inport_input[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(26),
	o => \inport_input[26]~input_o\);

-- Location: LCCOMB_X59_Y47_N30
\inport1|sigout[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[26]~feeder_combout\ = \inport_input[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[26]~input_o\,
	combout => \inport1|sigout[26]~feeder_combout\);

-- Location: FF_X59_Y47_N31
\inport1|sigout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[26]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(26));

-- Location: LCCOMB_X59_Y46_N0
\dff|sigout[26]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[26]~26_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(26))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(26),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(26),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[26]~26_combout\);

-- Location: LCCOMB_X59_Y46_N8
\inport0|sigout[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[26]~feeder_combout\ = \inport_input[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[26]~input_o\,
	combout => \inport0|sigout[26]~feeder_combout\);

-- Location: FF_X59_Y46_N9
\inport0|sigout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[26]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(26));

-- Location: FF_X59_Y46_N1
\dff|sigout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[26]~26_combout\,
	asdata => \inport0|sigout\(26),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(26));

-- Location: IOIBUF_X54_Y54_N29
\inport_input[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(27),
	o => \inport_input[27]~input_o\);

-- Location: LCCOMB_X59_Y47_N0
\inport1|sigout[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[27]~feeder_combout\ = \inport_input[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[27]~input_o\,
	combout => \inport1|sigout[27]~feeder_combout\);

-- Location: FF_X59_Y47_N1
\inport1|sigout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[27]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(27));

-- Location: LCCOMB_X59_Y46_N12
\dff|sigout[27]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[27]~27_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(27))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(27),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[27]~27_combout\);

-- Location: LCCOMB_X59_Y46_N26
\inport0|sigout[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[27]~feeder_combout\ = \inport_input[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[27]~input_o\,
	combout => \inport0|sigout[27]~feeder_combout\);

-- Location: FF_X59_Y46_N27
\inport0|sigout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[27]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(27));

-- Location: FF_X59_Y46_N13
\dff|sigout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[27]~27_combout\,
	asdata => \inport0|sigout\(27),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(27));

-- Location: IOIBUF_X64_Y54_N1
\inport_input[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(28),
	o => \inport_input[28]~input_o\);

-- Location: LCCOMB_X59_Y47_N2
\inport1|sigout[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[28]~feeder_combout\ = \inport_input[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[28]~input_o\,
	combout => \inport1|sigout[28]~feeder_combout\);

-- Location: FF_X59_Y47_N3
\inport1|sigout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[28]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(28));

-- Location: LCCOMB_X59_Y46_N10
\dff|sigout[28]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[28]~28_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(28))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(28),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[28]~28_combout\);

-- Location: LCCOMB_X59_Y46_N4
\inport0|sigout[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[28]~feeder_combout\ = \inport_input[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[28]~input_o\,
	combout => \inport0|sigout[28]~feeder_combout\);

-- Location: FF_X59_Y46_N5
\inport0|sigout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[28]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(28));

-- Location: FF_X59_Y46_N11
\dff|sigout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[28]~28_combout\,
	asdata => \inport0|sigout\(28),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(28));

-- Location: IOIBUF_X69_Y54_N1
\inport_input[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(29),
	o => \inport_input[29]~input_o\);

-- Location: LCCOMB_X59_Y47_N12
\inport1|sigout[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[29]~feeder_combout\ = \inport_input[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[29]~input_o\,
	combout => \inport1|sigout[29]~feeder_combout\);

-- Location: FF_X59_Y47_N13
\inport1|sigout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[29]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(29));

-- Location: LCCOMB_X59_Y46_N18
\dff|sigout[29]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[29]~29_combout\ = (\Equal1~10_combout\ & ((\inport1|sigout\(29)))) # (!\Equal1~10_combout\ & (\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datab => \inport1|sigout\(29),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[29]~29_combout\);

-- Location: LCCOMB_X59_Y46_N30
\inport0|sigout[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[29]~feeder_combout\ = \inport_input[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[29]~input_o\,
	combout => \inport0|sigout[29]~feeder_combout\);

-- Location: FF_X59_Y46_N31
\inport0|sigout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[29]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(29));

-- Location: FF_X59_Y46_N19
\dff|sigout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[29]~29_combout\,
	asdata => \inport0|sigout\(29),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(29));

-- Location: IOIBUF_X54_Y54_N1
\inport_input[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(30),
	o => \inport_input[30]~input_o\);

-- Location: LCCOMB_X59_Y47_N14
\inport1|sigout[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[30]~feeder_combout\ = \inport_input[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[30]~input_o\,
	combout => \inport1|sigout[30]~feeder_combout\);

-- Location: FF_X59_Y47_N15
\inport1|sigout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[30]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(30));

-- Location: LCCOMB_X59_Y46_N2
\dff|sigout[30]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[30]~30_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(30))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(30),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(30),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[30]~30_combout\);

-- Location: LCCOMB_X59_Y46_N14
\inport0|sigout[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[30]~feeder_combout\ = \inport_input[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[30]~input_o\,
	combout => \inport0|sigout[30]~feeder_combout\);

-- Location: FF_X59_Y46_N15
\inport0|sigout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[30]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(30));

-- Location: FF_X59_Y46_N3
\dff|sigout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[30]~30_combout\,
	asdata => \inport0|sigout\(30),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(30));

-- Location: IOIBUF_X49_Y54_N1
\inport_input[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport_input(31),
	o => \inport_input[31]~input_o\);

-- Location: LCCOMB_X59_Y44_N6
\inport1|sigout[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport1|sigout[31]~feeder_combout\ = \inport_input[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inport_input[31]~input_o\,
	combout => \inport1|sigout[31]~feeder_combout\);

-- Location: FF_X59_Y44_N7
\inport1|sigout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport1|sigout[31]~feeder_combout\,
	ena => \inport1_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport1|sigout\(31));

-- Location: LCCOMB_X59_Y48_N2
\dff|sigout[31]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dff|sigout[31]~31_combout\ = (\Equal1~10_combout\ & (\inport1|sigout\(31))) # (!\Equal1~10_combout\ & ((\sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport1|sigout\(31),
	datab => \sram_mem|altsyncram_component|auto_generated|altsyncram1|q_a\(31),
	datad => \Equal1~10_combout\,
	combout => \dff|sigout[31]~31_combout\);

-- Location: LCCOMB_X59_Y48_N22
\inport0|sigout[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inport0|sigout[31]~feeder_combout\ = \inport_input[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inport_input[31]~input_o\,
	combout => \inport0|sigout[31]~feeder_combout\);

-- Location: FF_X59_Y48_N23
\inport0|sigout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inport0|sigout[31]~feeder_combout\,
	ena => \inport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inport0|sigout\(31));

-- Location: FF_X59_Y48_N3
\dff|sigout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dff|sigout[31]~31_combout\,
	asdata => \inport0|sigout\(31),
	sload => \Equal0~0_combout\,
	ena => \read_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff|sigout\(31));

-- Location: LCCOMB_X27_Y35_N8
\outport|sigout[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[0]~feeder_combout\ = \sram_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[0]~input_o\,
	combout => \outport|sigout[0]~feeder_combout\);

-- Location: LCCOMB_X77_Y35_N26
\sram_enable_logic~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sram_enable_logic~0_combout\ = (\write_en~input_o\ & \Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_en~input_o\,
	datac => \Equal1~10_combout\,
	combout => \sram_enable_logic~0_combout\);

-- Location: FF_X27_Y35_N9
\outport|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[0]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(0));

-- Location: LCCOMB_X27_Y35_N26
\outport|sigout[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[1]~feeder_combout\ = \sram_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[1]~input_o\,
	combout => \outport|sigout[1]~feeder_combout\);

-- Location: FF_X27_Y35_N27
\outport|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[1]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(1));

-- Location: LCCOMB_X27_Y35_N12
\outport|sigout[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[2]~feeder_combout\ = \sram_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[2]~input_o\,
	combout => \outport|sigout[2]~feeder_combout\);

-- Location: FF_X27_Y35_N13
\outport|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[2]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(2));

-- Location: LCCOMB_X27_Y35_N14
\outport|sigout[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[3]~feeder_combout\ = \sram_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[3]~input_o\,
	combout => \outport|sigout[3]~feeder_combout\);

-- Location: FF_X27_Y35_N15
\outport|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[3]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(3));

-- Location: LCCOMB_X27_Y35_N24
\outport|sigout[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[4]~feeder_combout\ = \sram_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[4]~input_o\,
	combout => \outport|sigout[4]~feeder_combout\);

-- Location: FF_X27_Y35_N25
\outport|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[4]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(4));

-- Location: LCCOMB_X27_Y35_N2
\outport|sigout[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[5]~feeder_combout\ = \sram_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[5]~input_o\,
	combout => \outport|sigout[5]~feeder_combout\);

-- Location: FF_X27_Y35_N3
\outport|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[5]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(5));

-- Location: LCCOMB_X27_Y35_N20
\outport|sigout[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[6]~feeder_combout\ = \sram_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[6]~input_o\,
	combout => \outport|sigout[6]~feeder_combout\);

-- Location: FF_X27_Y35_N21
\outport|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[6]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(6));

-- Location: LCCOMB_X77_Y25_N16
\outport|sigout[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[7]~feeder_combout\ = \sram_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[7]~input_o\,
	combout => \outport|sigout[7]~feeder_combout\);

-- Location: FF_X77_Y25_N17
\outport|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[7]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(7));

-- Location: LCCOMB_X77_Y25_N2
\outport|sigout[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[8]~feeder_combout\ = \sram_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[8]~input_o\,
	combout => \outport|sigout[8]~feeder_combout\);

-- Location: FF_X77_Y25_N3
\outport|sigout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[8]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(8));

-- Location: LCCOMB_X27_Y35_N6
\outport|sigout[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[9]~feeder_combout\ = \sram_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[9]~input_o\,
	combout => \outport|sigout[9]~feeder_combout\);

-- Location: FF_X27_Y35_N7
\outport|sigout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[9]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(9));

-- Location: LCCOMB_X77_Y25_N20
\outport|sigout[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[10]~feeder_combout\ = \sram_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[10]~input_o\,
	combout => \outport|sigout[10]~feeder_combout\);

-- Location: FF_X77_Y25_N21
\outport|sigout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[10]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(10));

-- Location: LCCOMB_X27_Y35_N16
\outport|sigout[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[11]~feeder_combout\ = \sram_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[11]~input_o\,
	combout => \outport|sigout[11]~feeder_combout\);

-- Location: FF_X27_Y35_N17
\outport|sigout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[11]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(11));

-- Location: LCCOMB_X77_Y25_N6
\outport|sigout[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[12]~feeder_combout\ = \sram_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[12]~input_o\,
	combout => \outport|sigout[12]~feeder_combout\);

-- Location: FF_X77_Y25_N7
\outport|sigout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[12]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(12));

-- Location: LCCOMB_X27_Y35_N18
\outport|sigout[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[13]~feeder_combout\ = \sram_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[13]~input_o\,
	combout => \outport|sigout[13]~feeder_combout\);

-- Location: FF_X27_Y35_N19
\outport|sigout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[13]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(13));

-- Location: LCCOMB_X77_Y25_N8
\outport|sigout[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[14]~feeder_combout\ = \sram_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[14]~input_o\,
	combout => \outport|sigout[14]~feeder_combout\);

-- Location: FF_X77_Y25_N9
\outport|sigout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[14]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(14));

-- Location: LCCOMB_X27_Y35_N28
\outport|sigout[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[15]~feeder_combout\ = \sram_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[15]~input_o\,
	combout => \outport|sigout[15]~feeder_combout\);

-- Location: FF_X27_Y35_N29
\outport|sigout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[15]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(15));

-- Location: LCCOMB_X77_Y25_N18
\outport|sigout[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[16]~feeder_combout\ = \sram_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[16]~input_o\,
	combout => \outport|sigout[16]~feeder_combout\);

-- Location: FF_X77_Y25_N19
\outport|sigout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[16]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(16));

-- Location: LCCOMB_X77_Y25_N4
\outport|sigout[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[17]~feeder_combout\ = \sram_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[17]~input_o\,
	combout => \outport|sigout[17]~feeder_combout\);

-- Location: FF_X77_Y25_N5
\outport|sigout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[17]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(17));

-- Location: LCCOMB_X77_Y25_N22
\outport|sigout[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[18]~feeder_combout\ = \sram_data[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[18]~input_o\,
	combout => \outport|sigout[18]~feeder_combout\);

-- Location: FF_X77_Y25_N23
\outport|sigout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[18]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(18));

-- Location: LCCOMB_X77_Y25_N0
\outport|sigout[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[19]~feeder_combout\ = \sram_data[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[19]~input_o\,
	combout => \outport|sigout[19]~feeder_combout\);

-- Location: FF_X77_Y25_N1
\outport|sigout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[19]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(19));

-- Location: LCCOMB_X27_Y35_N22
\outport|sigout[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[20]~feeder_combout\ = \sram_data[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[20]~input_o\,
	combout => \outport|sigout[20]~feeder_combout\);

-- Location: FF_X27_Y35_N23
\outport|sigout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[20]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(20));

-- Location: LCCOMB_X77_Y25_N10
\outport|sigout[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[21]~feeder_combout\ = \sram_data[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[21]~input_o\,
	combout => \outport|sigout[21]~feeder_combout\);

-- Location: FF_X77_Y25_N11
\outport|sigout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[21]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(21));

-- Location: LCCOMB_X27_Y35_N0
\outport|sigout[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[22]~feeder_combout\ = \sram_data[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[22]~input_o\,
	combout => \outport|sigout[22]~feeder_combout\);

-- Location: FF_X27_Y35_N1
\outport|sigout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[22]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(22));

-- Location: LCCOMB_X27_Y35_N10
\outport|sigout[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[23]~feeder_combout\ = \sram_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[23]~input_o\,
	combout => \outport|sigout[23]~feeder_combout\);

-- Location: FF_X27_Y35_N11
\outport|sigout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[23]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(23));

-- Location: LCCOMB_X27_Y35_N4
\outport|sigout[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[24]~feeder_combout\ = \sram_data[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[24]~input_o\,
	combout => \outport|sigout[24]~feeder_combout\);

-- Location: FF_X27_Y35_N5
\outport|sigout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[24]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(24));

-- Location: LCCOMB_X77_Y25_N12
\outport|sigout[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[25]~feeder_combout\ = \sram_data[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[25]~input_o\,
	combout => \outport|sigout[25]~feeder_combout\);

-- Location: FF_X77_Y25_N13
\outport|sigout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[25]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(25));

-- Location: LCCOMB_X77_Y25_N14
\outport|sigout[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[26]~feeder_combout\ = \sram_data[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[26]~input_o\,
	combout => \outport|sigout[26]~feeder_combout\);

-- Location: FF_X77_Y25_N15
\outport|sigout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[26]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(26));

-- Location: LCCOMB_X77_Y25_N24
\outport|sigout[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[27]~feeder_combout\ = \sram_data[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_data[27]~input_o\,
	combout => \outport|sigout[27]~feeder_combout\);

-- Location: FF_X77_Y25_N25
\outport|sigout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[27]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(27));

-- Location: LCCOMB_X27_Y35_N30
\outport|sigout[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[28]~feeder_combout\ = \sram_data[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[28]~input_o\,
	combout => \outport|sigout[28]~feeder_combout\);

-- Location: FF_X27_Y35_N31
\outport|sigout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[28]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(28));

-- Location: LCCOMB_X77_Y25_N26
\outport|sigout[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[29]~feeder_combout\ = \sram_data[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[29]~input_o\,
	combout => \outport|sigout[29]~feeder_combout\);

-- Location: FF_X77_Y25_N27
\outport|sigout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[29]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(29));

-- Location: LCCOMB_X77_Y25_N28
\outport|sigout[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[30]~feeder_combout\ = \sram_data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[30]~input_o\,
	combout => \outport|sigout[30]~feeder_combout\);

-- Location: FF_X77_Y25_N29
\outport|sigout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[30]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(30));

-- Location: LCCOMB_X77_Y25_N30
\outport|sigout[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outport|sigout[31]~feeder_combout\ = \sram_data[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[31]~input_o\,
	combout => \outport|sigout[31]~feeder_combout\);

-- Location: FF_X77_Y25_N31
\outport|sigout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outport|sigout[31]~feeder_combout\,
	ena => \sram_enable_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outport|sigout\(31));

-- Location: FF_X46_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: FF_X46_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X56_Y43_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X50_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X45_Y39_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X26_Y0_N15
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


