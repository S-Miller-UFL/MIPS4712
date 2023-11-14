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

-- DATE "11/13/2023 21:55:37"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_ALU IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ir : IN std_logic_vector(4 DOWNTO 0);
	opcode : IN std_logic_vector(4 DOWNTO 0);
	result : OUT std_logic_vector(31 DOWNTO 0);
	result_hi : OUT std_logic_vector(31 DOWNTO 0);
	branch_taken : OUT std_logic
	);
END MIPS_ALU;

-- Design Ports Information
-- result[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[8]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[9]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[10]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[12]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[14]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[15]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[16]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[17]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[18]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[19]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[20]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[21]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[22]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[23]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[24]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[25]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[26]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[27]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[28]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[29]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[30]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[31]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_taken	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ir : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_result_hi : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_branch_taken : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \result_hi[0]~output_o\ : std_logic;
SIGNAL \result_hi[1]~output_o\ : std_logic;
SIGNAL \result_hi[2]~output_o\ : std_logic;
SIGNAL \result_hi[3]~output_o\ : std_logic;
SIGNAL \result_hi[4]~output_o\ : std_logic;
SIGNAL \result_hi[5]~output_o\ : std_logic;
SIGNAL \result_hi[6]~output_o\ : std_logic;
SIGNAL \result_hi[7]~output_o\ : std_logic;
SIGNAL \result_hi[8]~output_o\ : std_logic;
SIGNAL \result_hi[9]~output_o\ : std_logic;
SIGNAL \result_hi[10]~output_o\ : std_logic;
SIGNAL \result_hi[11]~output_o\ : std_logic;
SIGNAL \result_hi[12]~output_o\ : std_logic;
SIGNAL \result_hi[13]~output_o\ : std_logic;
SIGNAL \result_hi[14]~output_o\ : std_logic;
SIGNAL \result_hi[15]~output_o\ : std_logic;
SIGNAL \result_hi[16]~output_o\ : std_logic;
SIGNAL \result_hi[17]~output_o\ : std_logic;
SIGNAL \result_hi[18]~output_o\ : std_logic;
SIGNAL \result_hi[19]~output_o\ : std_logic;
SIGNAL \result_hi[20]~output_o\ : std_logic;
SIGNAL \result_hi[21]~output_o\ : std_logic;
SIGNAL \result_hi[22]~output_o\ : std_logic;
SIGNAL \result_hi[23]~output_o\ : std_logic;
SIGNAL \result_hi[24]~output_o\ : std_logic;
SIGNAL \result_hi[25]~output_o\ : std_logic;
SIGNAL \result_hi[26]~output_o\ : std_logic;
SIGNAL \result_hi[27]~output_o\ : std_logic;
SIGNAL \result_hi[28]~output_o\ : std_logic;
SIGNAL \result_hi[29]~output_o\ : std_logic;
SIGNAL \result_hi[30]~output_o\ : std_logic;
SIGNAL \result_hi[31]~output_o\ : std_logic;
SIGNAL \branch_taken~output_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mux128~1_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \ir[3]~input_o\ : std_logic;
SIGNAL \ir[0]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ir[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ir[2]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ir[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \Mux128~2_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~61_cout\ : std_logic;
SIGNAL \LessThan1~62_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Mux128~3_combout\ : std_logic;
SIGNAL \Mux128~4_combout\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mux128~5_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_cout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Mux128~6_combout\ : std_logic;
SIGNAL \Mux128~7_combout\ : std_logic;
SIGNAL \Equal0~26_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~27_combout\ : std_logic;
SIGNAL \Equal0~24_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~23_combout\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \Equal0~25_combout\ : std_logic;
SIGNAL \Equal0~28_combout\ : std_logic;
SIGNAL \Equal0~37_combout\ : std_logic;
SIGNAL \Equal0~34_combout\ : std_logic;
SIGNAL \Equal0~35_combout\ : std_logic;
SIGNAL \Equal0~36_combout\ : std_logic;
SIGNAL \Equal0~38_combout\ : std_logic;
SIGNAL \Equal0~30_combout\ : std_logic;
SIGNAL \Equal0~32_combout\ : std_logic;
SIGNAL \Equal0~31_combout\ : std_logic;
SIGNAL \Equal0~29_combout\ : std_logic;
SIGNAL \Equal0~33_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~39_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \Mux128~8_combout\ : std_logic;
SIGNAL \Mux128~9_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux94~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \Mux94~3_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux65~2_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux28~22_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \Mux28~17_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \Mux28~18_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \Mux28~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \Mux28~20_combout\ : std_logic;
SIGNAL \Mux28~21_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~11_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \ShiftRight1~65_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \ShiftRight1~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \ShiftRight1~67_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \ShiftRight1~68_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Mux79~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Mux79~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Mux79~5_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux79~6_combout\ : std_logic;
SIGNAL \Mux79~4_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Equal0~40_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Equal0~41_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~68\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~80\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Mux65~3_combout\ : std_logic;
SIGNAL \Mux65~4_combout\ : std_logic;
SIGNAL \Mux65~5_combout\ : std_logic;
SIGNAL \Mux65~7_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mux65~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Add0~103_combout\ : std_logic;
SIGNAL \Add0~99_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~107_combout\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \Mux127~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mux125~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mux121~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Mux119~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~45\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~45\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~47\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~47\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \Mux117~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~49\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~49\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~51\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~51\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \Mux115~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~53\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~53\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~55\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~55\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \Mux113~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~57\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~57\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \Mux112~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~59\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~59\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \Mux111~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~61\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~61\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \Mux110~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~63\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~64_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~63\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~64_combout\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[32]~65\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[33]~66_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~65\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~65\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~67\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[33]~67\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[34]~68_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~67\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~69\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[34]~69\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[35]~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~69\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[35]~71\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[36]~72_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~71\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~71\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[36]~73\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[37]~74_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~73\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~73\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[37]~75\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[38]~76_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~75\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~75\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \Mux103~1_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~77\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[38]~77\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[39]~78_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~77\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~79\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[39]~79\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[40]~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~79\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~81\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~82_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[40]~81\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[41]~82_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~81\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~82_combout\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[41]~83\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[42]~84_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~83\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~83\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \Mux99~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[42]~85\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[43]~86_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~85\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~85\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[43]~87\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[44]~88_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~87\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~88_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~87\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~88_combout\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[44]~89\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[45]~90_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~89\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~89\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux128~10_combout\ : std_logic;
SIGNAL \Mux128~11_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|w513w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ir <= ir;
ww_opcode <= opcode;
result <= ww_result;
result_hi <= ww_result_hi;
branch_taken <= ww_branch_taken;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT35\ & \Mult1|auto_generated|mac_mult1~DATAOUT34\ & \Mult1|auto_generated|mac_mult1~DATAOUT33\ & \Mult1|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT31\ & \Mult1|auto_generated|mac_mult1~DATAOUT30\ & \Mult1|auto_generated|mac_mult1~DATAOUT29\ & \Mult1|auto_generated|mac_mult1~DATAOUT28\ & \Mult1|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT26\ & \Mult1|auto_generated|mac_mult1~DATAOUT25\ & \Mult1|auto_generated|mac_mult1~DATAOUT24\ & \Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & \Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\);

\Mult1|auto_generated|w513w\(0) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|w513w\(1) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|w513w\(2) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|w513w\(3) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|w513w\(4) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|w513w\(5) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|w513w\(6) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|w513w\(7) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|w513w\(8) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|w513w\(9) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|w513w\(10) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|w513w\(11) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|w513w\(12) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|w513w\(13) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|w513w\(14) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|w513w\(15) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|w513w\(16) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|w513w\(17) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out2~DATAOUT24\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out2~DATAOUT25\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out2~DATAOUT26\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out2~DATAOUT27\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out2~DATAOUT28\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out2~DATAOUT29\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out2~DATAOUT30\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out2~DATAOUT31\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out2~DATAOUT32\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out2~DATAOUT33\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out2~DATAOUT34\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT35\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Mult0|auto_generated|mac_mult1~DATAOUT34\ & \Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|w569w\(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|w569w\(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|w569w\(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|w569w\(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|w569w\(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|w569w\(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|w569w\(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|w569w\(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|w569w\(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|w569w\(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|w569w\(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|w569w\(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|w569w\(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|w569w\(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|w569w\(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|w569w\(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|w569w\(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|w569w\(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT34\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT35\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult3~DATAOUT31\ & \Mult1|auto_generated|mac_mult3~DATAOUT30\ & \Mult1|auto_generated|mac_mult3~DATAOUT29\ & \Mult1|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT27\ & \Mult1|auto_generated|mac_mult3~DATAOUT26\ & \Mult1|auto_generated|mac_mult3~DATAOUT25\ & \Mult1|auto_generated|mac_mult3~DATAOUT24\ & \Mult1|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT22\ & \Mult1|auto_generated|mac_mult3~DATAOUT21\ & \Mult1|auto_generated|mac_mult3~DATAOUT20\ & \Mult1|auto_generated|mac_mult3~DATAOUT19\ & \Mult1|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT17\ & \Mult1|auto_generated|mac_mult3~DATAOUT16\ & \Mult1|auto_generated|mac_mult3~DATAOUT15\ & \Mult1|auto_generated|mac_mult3~DATAOUT14\ & \Mult1|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT12\ & \Mult1|auto_generated|mac_mult3~DATAOUT11\ & \Mult1|auto_generated|mac_mult3~DATAOUT10\ & \Mult1|auto_generated|mac_mult3~DATAOUT9\ & \Mult1|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT7\ & \Mult1|auto_generated|mac_mult3~DATAOUT6\ & \Mult1|auto_generated|mac_mult3~DATAOUT5\ & \Mult1|auto_generated|mac_mult3~DATAOUT4\ & \Mult1|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT2\ & \Mult1|auto_generated|mac_mult3~DATAOUT1\ & \Mult1|auto_generated|mac_mult3~dataout\ & \Mult1|auto_generated|mac_mult3~3\ & \Mult1|auto_generated|mac_mult3~2\ & \Mult1|auto_generated|mac_mult3~1\ & 
\Mult1|auto_generated|mac_mult3~0\);

\Mult1|auto_generated|mac_out4~0\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out4~1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out4~2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out4~3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out4~dataout\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out4~DATAOUT1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out4~DATAOUT2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out4~DATAOUT3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out4~DATAOUT4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out4~DATAOUT5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out4~DATAOUT6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out4~DATAOUT7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out4~DATAOUT8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out4~DATAOUT9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out4~DATAOUT10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out4~DATAOUT11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out4~DATAOUT12\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out4~DATAOUT13\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out4~DATAOUT14\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out4~DATAOUT15\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out4~DATAOUT16\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out4~DATAOUT17\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out4~DATAOUT18\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out4~DATAOUT19\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out4~DATAOUT20\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out4~DATAOUT21\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out4~DATAOUT22\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out4~DATAOUT23\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out4~DATAOUT24\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out4~DATAOUT25\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out4~DATAOUT26\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out4~DATAOUT27\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out4~DATAOUT28\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out4~DATAOUT29\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out4~DATAOUT30\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out4~DATAOUT31\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out6_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult5~DATAOUT31\ & \Mult1|auto_generated|mac_mult5~DATAOUT30\ & \Mult1|auto_generated|mac_mult5~DATAOUT29\ & \Mult1|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT27\ & \Mult1|auto_generated|mac_mult5~DATAOUT26\ & \Mult1|auto_generated|mac_mult5~DATAOUT25\ & \Mult1|auto_generated|mac_mult5~DATAOUT24\ & \Mult1|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT22\ & \Mult1|auto_generated|mac_mult5~DATAOUT21\ & \Mult1|auto_generated|mac_mult5~DATAOUT20\ & \Mult1|auto_generated|mac_mult5~DATAOUT19\ & \Mult1|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT17\ & \Mult1|auto_generated|mac_mult5~DATAOUT16\ & \Mult1|auto_generated|mac_mult5~DATAOUT15\ & \Mult1|auto_generated|mac_mult5~DATAOUT14\ & \Mult1|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT12\ & \Mult1|auto_generated|mac_mult5~DATAOUT11\ & \Mult1|auto_generated|mac_mult5~DATAOUT10\ & \Mult1|auto_generated|mac_mult5~DATAOUT9\ & \Mult1|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT7\ & \Mult1|auto_generated|mac_mult5~DATAOUT6\ & \Mult1|auto_generated|mac_mult5~DATAOUT5\ & \Mult1|auto_generated|mac_mult5~DATAOUT4\ & \Mult1|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT2\ & \Mult1|auto_generated|mac_mult5~DATAOUT1\ & \Mult1|auto_generated|mac_mult5~dataout\ & \Mult1|auto_generated|mac_mult5~3\ & \Mult1|auto_generated|mac_mult5~2\ & \Mult1|auto_generated|mac_mult5~1\ & 
\Mult1|auto_generated|mac_mult5~0\);

\Mult1|auto_generated|mac_out6~0\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out6~1\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out6~2\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out6~3\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out6~dataout\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out6~DATAOUT1\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out6~DATAOUT2\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out6~DATAOUT3\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out6~DATAOUT4\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out6~DATAOUT5\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out6~DATAOUT6\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out6~DATAOUT7\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out6~DATAOUT8\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out6~DATAOUT9\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out6~DATAOUT10\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out6~DATAOUT11\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out6~DATAOUT12\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out6~DATAOUT13\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out6~DATAOUT14\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out6~DATAOUT15\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out6~DATAOUT16\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out6~DATAOUT17\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out6~DATAOUT18\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out6~DATAOUT19\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out6~DATAOUT20\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out6~DATAOUT21\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out6~DATAOUT22\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out6~DATAOUT23\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out6~DATAOUT24\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out6~DATAOUT25\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out6~DATAOUT26\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out6~DATAOUT27\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out6~DATAOUT28\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out6~DATAOUT29\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out6~DATAOUT30\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out6~DATAOUT31\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT31\ & \Mult0|auto_generated|mac_mult3~DATAOUT30\ & \Mult0|auto_generated|mac_mult3~DATAOUT29\ & \Mult0|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT27\ & \Mult0|auto_generated|mac_mult3~DATAOUT26\ & \Mult0|auto_generated|mac_mult3~DATAOUT25\ & \Mult0|auto_generated|mac_mult3~DATAOUT24\ & \Mult0|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT22\ & \Mult0|auto_generated|mac_mult3~DATAOUT21\ & \Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT12\ & \Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Mult0|auto_generated|mac_mult3~DATAOUT6\ & \Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Mult0|auto_generated|mac_mult3~dataout\ & \Mult0|auto_generated|mac_mult3~3\ & \Mult0|auto_generated|mac_mult3~2\ & \Mult0|auto_generated|mac_mult3~1\ & 
\Mult0|auto_generated|mac_mult3~0\);

\Mult0|auto_generated|mac_out4~0\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out4~1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out4~2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out4~3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out4~dataout\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out4~DATAOUT22\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out4~DATAOUT23\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out4~DATAOUT24\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out4~DATAOUT25\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out4~DATAOUT26\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out4~DATAOUT27\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out4~DATAOUT28\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out4~DATAOUT29\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out4~DATAOUT30\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out4~DATAOUT31\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult5~DATAOUT31\ & \Mult0|auto_generated|mac_mult5~DATAOUT30\ & \Mult0|auto_generated|mac_mult5~DATAOUT29\ & \Mult0|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT27\ & \Mult0|auto_generated|mac_mult5~DATAOUT26\ & \Mult0|auto_generated|mac_mult5~DATAOUT25\ & \Mult0|auto_generated|mac_mult5~DATAOUT24\ & \Mult0|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT22\ & \Mult0|auto_generated|mac_mult5~DATAOUT21\ & \Mult0|auto_generated|mac_mult5~DATAOUT20\ & \Mult0|auto_generated|mac_mult5~DATAOUT19\ & \Mult0|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT17\ & \Mult0|auto_generated|mac_mult5~DATAOUT16\ & \Mult0|auto_generated|mac_mult5~DATAOUT15\ & \Mult0|auto_generated|mac_mult5~DATAOUT14\ & \Mult0|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT12\ & \Mult0|auto_generated|mac_mult5~DATAOUT11\ & \Mult0|auto_generated|mac_mult5~DATAOUT10\ & \Mult0|auto_generated|mac_mult5~DATAOUT9\ & \Mult0|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT7\ & \Mult0|auto_generated|mac_mult5~DATAOUT6\ & \Mult0|auto_generated|mac_mult5~DATAOUT5\ & \Mult0|auto_generated|mac_mult5~DATAOUT4\ & \Mult0|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT2\ & \Mult0|auto_generated|mac_mult5~DATAOUT1\ & \Mult0|auto_generated|mac_mult5~dataout\ & \Mult0|auto_generated|mac_mult5~3\ & \Mult0|auto_generated|mac_mult5~2\ & \Mult0|auto_generated|mac_mult5~1\ & 
\Mult0|auto_generated|mac_mult5~0\);

\Mult0|auto_generated|mac_out6~0\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out6~1\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out6~2\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out6~3\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out6~dataout\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out6~DATAOUT1\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out6~DATAOUT2\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out6~DATAOUT3\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out6~DATAOUT4\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out6~DATAOUT5\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out6~DATAOUT6\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out6~DATAOUT7\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out6~DATAOUT8\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out6~DATAOUT9\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out6~DATAOUT10\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out6~DATAOUT11\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out6~DATAOUT12\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out6~DATAOUT13\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out6~DATAOUT14\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out6~DATAOUT15\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out6~DATAOUT16\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out6~DATAOUT17\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out6~DATAOUT18\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out6~DATAOUT19\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out6~DATAOUT20\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out6~DATAOUT21\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out6~DATAOUT22\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out6~DATAOUT23\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out6~DATAOUT24\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out6~DATAOUT25\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out6~DATAOUT26\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out6~DATAOUT27\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out6~DATAOUT28\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out6~DATAOUT29\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out6~DATAOUT30\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out6~DATAOUT31\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out8_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult7~DATAOUT27\ & \Mult1|auto_generated|mac_mult7~DATAOUT26\ & \Mult1|auto_generated|mac_mult7~DATAOUT25\ & \Mult1|auto_generated|mac_mult7~DATAOUT24\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT23\ & \Mult1|auto_generated|mac_mult7~DATAOUT22\ & \Mult1|auto_generated|mac_mult7~DATAOUT21\ & \Mult1|auto_generated|mac_mult7~DATAOUT20\ & \Mult1|auto_generated|mac_mult7~DATAOUT19\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT18\ & \Mult1|auto_generated|mac_mult7~DATAOUT17\ & \Mult1|auto_generated|mac_mult7~DATAOUT16\ & \Mult1|auto_generated|mac_mult7~DATAOUT15\ & \Mult1|auto_generated|mac_mult7~DATAOUT14\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT13\ & \Mult1|auto_generated|mac_mult7~DATAOUT12\ & \Mult1|auto_generated|mac_mult7~DATAOUT11\ & \Mult1|auto_generated|mac_mult7~DATAOUT10\ & \Mult1|auto_generated|mac_mult7~DATAOUT9\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT8\ & \Mult1|auto_generated|mac_mult7~DATAOUT7\ & \Mult1|auto_generated|mac_mult7~DATAOUT6\ & \Mult1|auto_generated|mac_mult7~DATAOUT5\ & \Mult1|auto_generated|mac_mult7~DATAOUT4\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT3\ & \Mult1|auto_generated|mac_mult7~DATAOUT2\ & \Mult1|auto_generated|mac_mult7~DATAOUT1\ & \Mult1|auto_generated|mac_mult7~dataout\ & \Mult1|auto_generated|mac_mult7~7\ & \Mult1|auto_generated|mac_mult7~6\ & 
\Mult1|auto_generated|mac_mult7~5\ & \Mult1|auto_generated|mac_mult7~4\ & \Mult1|auto_generated|mac_mult7~3\ & \Mult1|auto_generated|mac_mult7~2\ & \Mult1|auto_generated|mac_mult7~1\ & \Mult1|auto_generated|mac_mult7~0\);

\Mult1|auto_generated|mac_out8~0\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out8~1\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out8~2\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out8~3\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out8~4\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out8~5\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out8~6\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out8~7\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out8~dataout\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out8~DATAOUT1\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out8~DATAOUT2\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out8~DATAOUT3\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out8~DATAOUT4\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out8~DATAOUT5\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out8~DATAOUT6\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out8~DATAOUT7\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out8~DATAOUT8\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out8~DATAOUT9\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out8~DATAOUT10\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out8~DATAOUT11\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out8~DATAOUT12\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out8~DATAOUT13\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out8~DATAOUT14\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out8~DATAOUT15\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out8~DATAOUT16\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out8~DATAOUT17\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out8~DATAOUT18\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out8~DATAOUT19\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out8~DATAOUT20\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out8~DATAOUT21\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out8~DATAOUT22\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out8~DATAOUT23\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out8~DATAOUT24\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out8~DATAOUT25\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out8~DATAOUT26\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out8~DATAOUT27\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out8_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult7~DATAOUT27\ & \Mult0|auto_generated|mac_mult7~DATAOUT26\ & \Mult0|auto_generated|mac_mult7~DATAOUT25\ & \Mult0|auto_generated|mac_mult7~DATAOUT24\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT23\ & \Mult0|auto_generated|mac_mult7~DATAOUT22\ & \Mult0|auto_generated|mac_mult7~DATAOUT21\ & \Mult0|auto_generated|mac_mult7~DATAOUT20\ & \Mult0|auto_generated|mac_mult7~DATAOUT19\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT18\ & \Mult0|auto_generated|mac_mult7~DATAOUT17\ & \Mult0|auto_generated|mac_mult7~DATAOUT16\ & \Mult0|auto_generated|mac_mult7~DATAOUT15\ & \Mult0|auto_generated|mac_mult7~DATAOUT14\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT13\ & \Mult0|auto_generated|mac_mult7~DATAOUT12\ & \Mult0|auto_generated|mac_mult7~DATAOUT11\ & \Mult0|auto_generated|mac_mult7~DATAOUT10\ & \Mult0|auto_generated|mac_mult7~DATAOUT9\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT8\ & \Mult0|auto_generated|mac_mult7~DATAOUT7\ & \Mult0|auto_generated|mac_mult7~DATAOUT6\ & \Mult0|auto_generated|mac_mult7~DATAOUT5\ & \Mult0|auto_generated|mac_mult7~DATAOUT4\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT3\ & \Mult0|auto_generated|mac_mult7~DATAOUT2\ & \Mult0|auto_generated|mac_mult7~DATAOUT1\ & \Mult0|auto_generated|mac_mult7~dataout\ & \Mult0|auto_generated|mac_mult7~7\ & \Mult0|auto_generated|mac_mult7~6\ & 
\Mult0|auto_generated|mac_mult7~5\ & \Mult0|auto_generated|mac_mult7~4\ & \Mult0|auto_generated|mac_mult7~3\ & \Mult0|auto_generated|mac_mult7~2\ & \Mult0|auto_generated|mac_mult7~1\ & \Mult0|auto_generated|mac_mult7~0\);

\Mult0|auto_generated|mac_out8~0\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out8~1\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out8~2\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out8~3\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out8~4\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out8~5\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out8~6\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out8~7\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out8~dataout\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out8~DATAOUT1\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out8~DATAOUT2\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out8~DATAOUT3\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out8~DATAOUT4\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out8~DATAOUT5\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out8~DATAOUT6\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out8~DATAOUT7\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out8~DATAOUT8\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out8~DATAOUT9\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out8~DATAOUT10\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out8~DATAOUT11\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out8~DATAOUT12\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out8~DATAOUT13\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out8~DATAOUT14\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out8~DATAOUT15\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out8~DATAOUT16\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out8~DATAOUT17\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out8~DATAOUT18\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out8~DATAOUT19\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out8~DATAOUT20\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out8~DATAOUT21\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out8~DATAOUT22\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out8~DATAOUT23\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out8~DATAOUT24\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out8~DATAOUT25\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out8~DATAOUT26\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out8~DATAOUT27\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\A[17]~input_o\ & \A[16]~input_o\ & \A[15]~input_o\ & \A[14]~input_o\ & \A[13]~input_o\ & \A[12]~input_o\ & \A[11]~input_o\ & \A[10]~input_o\ & \A[9]~input_o\ & \A[8]~input_o\ & \A[7]~input_o\ & 
\A[6]~input_o\ & \A[5]~input_o\ & \A[4]~input_o\ & \A[3]~input_o\ & \A[2]~input_o\ & \A[1]~input_o\ & \A[0]~input_o\);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\B[17]~input_o\ & \B[16]~input_o\ & \B[15]~input_o\ & \B[14]~input_o\ & \B[13]~input_o\ & \B[12]~input_o\ & \B[11]~input_o\ & \B[10]~input_o\ & \B[9]~input_o\ & \B[8]~input_o\ & \B[7]~input_o\ & 
\B[6]~input_o\ & \B[5]~input_o\ & \B[4]~input_o\ & \B[3]~input_o\ & \B[2]~input_o\ & \B[1]~input_o\ & \B[0]~input_o\);

\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT32\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT33\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT34\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT35\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\A[17]~input_o\ & \A[16]~input_o\ & \A[15]~input_o\ & \A[14]~input_o\ & \A[13]~input_o\ & \A[12]~input_o\ & \A[11]~input_o\ & \A[10]~input_o\ & \A[9]~input_o\ & \A[8]~input_o\ & \A[7]~input_o\ & 
\A[6]~input_o\ & \A[5]~input_o\ & \A[4]~input_o\ & \A[3]~input_o\ & \A[2]~input_o\ & \A[1]~input_o\ & \A[0]~input_o\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\B[17]~input_o\ & \B[16]~input_o\ & \B[15]~input_o\ & \B[14]~input_o\ & \B[13]~input_o\ & \B[12]~input_o\ & \B[11]~input_o\ & \B[10]~input_o\ & \B[9]~input_o\ & \B[8]~input_o\ & \B[7]~input_o\ & 
\B[6]~input_o\ & \B[5]~input_o\ & \B[4]~input_o\ & \B[3]~input_o\ & \B[2]~input_o\ & \B[1]~input_o\ & \B[0]~input_o\);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (\A[17]~input_o\ & \A[16]~input_o\ & \A[15]~input_o\ & \A[14]~input_o\ & \A[13]~input_o\ & \A[12]~input_o\ & \A[11]~input_o\ & \A[10]~input_o\ & \A[9]~input_o\ & \A[8]~input_o\ & \A[7]~input_o\ & 
\A[6]~input_o\ & \A[5]~input_o\ & \A[4]~input_o\ & \A[3]~input_o\ & \A[2]~input_o\ & \A[1]~input_o\ & \A[0]~input_o\);

\Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (\B[31]~input_o\ & \B[30]~input_o\ & \B[29]~input_o\ & \B[28]~input_o\ & \B[27]~input_o\ & \B[26]~input_o\ & \B[25]~input_o\ & \B[24]~input_o\ & \B[23]~input_o\ & \B[22]~input_o\ & \B[21]~input_o\ & 
\B[20]~input_o\ & \B[19]~input_o\ & \B[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3~0\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult3~1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult3~2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult3~3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult3~dataout\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult3~DATAOUT12\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult3~DATAOUT13\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult3~DATAOUT14\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult3~DATAOUT15\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult3~DATAOUT16\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult3~DATAOUT17\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult3~DATAOUT18\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult3~DATAOUT19\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult3~DATAOUT20\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult3~DATAOUT21\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult3~DATAOUT22\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult3~DATAOUT23\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult3~DATAOUT24\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult3~DATAOUT25\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult3~DATAOUT26\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult3~DATAOUT27\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult3~DATAOUT28\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult3~DATAOUT29\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult3~DATAOUT30\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult3~DATAOUT31\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult5_DATAA_bus\ <= (\B[17]~input_o\ & \B[16]~input_o\ & \B[15]~input_o\ & \B[14]~input_o\ & \B[13]~input_o\ & \B[12]~input_o\ & \B[11]~input_o\ & \B[10]~input_o\ & \B[9]~input_o\ & \B[8]~input_o\ & \B[7]~input_o\ & 
\B[6]~input_o\ & \B[5]~input_o\ & \B[4]~input_o\ & \B[3]~input_o\ & \B[2]~input_o\ & \B[1]~input_o\ & \B[0]~input_o\);

\Mult1|auto_generated|mac_mult5_DATAB_bus\ <= (\A[31]~input_o\ & \A[30]~input_o\ & \A[29]~input_o\ & \A[28]~input_o\ & \A[27]~input_o\ & \A[26]~input_o\ & \A[25]~input_o\ & \A[24]~input_o\ & \A[23]~input_o\ & \A[22]~input_o\ & \A[21]~input_o\ & 
\A[20]~input_o\ & \A[19]~input_o\ & \A[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult5~0\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult5~1\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult5~2\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult5~3\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult5~dataout\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult5~DATAOUT1\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult5~DATAOUT2\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult5~DATAOUT3\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult5~DATAOUT4\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult5~DATAOUT5\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult5~DATAOUT6\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult5~DATAOUT7\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult5~DATAOUT8\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult5~DATAOUT9\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult5~DATAOUT10\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult5~DATAOUT11\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult5~DATAOUT12\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult5~DATAOUT13\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult5~DATAOUT14\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult5~DATAOUT15\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult5~DATAOUT16\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult5~DATAOUT17\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult5~DATAOUT18\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult5~DATAOUT19\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult5~DATAOUT20\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult5~DATAOUT21\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult5~DATAOUT22\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult5~DATAOUT23\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult5~DATAOUT24\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult5~DATAOUT25\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult5~DATAOUT26\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult5~DATAOUT27\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult5~DATAOUT28\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult5~DATAOUT29\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult5~DATAOUT30\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult5~DATAOUT31\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\A[17]~input_o\ & \A[16]~input_o\ & \A[15]~input_o\ & \A[14]~input_o\ & \A[13]~input_o\ & \A[12]~input_o\ & \A[11]~input_o\ & \A[10]~input_o\ & \A[9]~input_o\ & \A[8]~input_o\ & \A[7]~input_o\ & 
\A[6]~input_o\ & \A[5]~input_o\ & \A[4]~input_o\ & \A[3]~input_o\ & \A[2]~input_o\ & \A[1]~input_o\ & \A[0]~input_o\);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\B[31]~input_o\ & \B[30]~input_o\ & \B[29]~input_o\ & \B[28]~input_o\ & \B[27]~input_o\ & \B[26]~input_o\ & \B[25]~input_o\ & \B[24]~input_o\ & \B[23]~input_o\ & \B[22]~input_o\ & \B[21]~input_o\ & 
\B[20]~input_o\ & \B[19]~input_o\ & \B[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3~0\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult3~1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult3~2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult3~3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\B[17]~input_o\ & \B[16]~input_o\ & \B[15]~input_o\ & \B[14]~input_o\ & \B[13]~input_o\ & \B[12]~input_o\ & \B[11]~input_o\ & \B[10]~input_o\ & \B[9]~input_o\ & \B[8]~input_o\ & \B[7]~input_o\ & 
\B[6]~input_o\ & \B[5]~input_o\ & \B[4]~input_o\ & \B[3]~input_o\ & \B[2]~input_o\ & \B[1]~input_o\ & \B[0]~input_o\);

\Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\A[31]~input_o\ & \A[30]~input_o\ & \A[29]~input_o\ & \A[28]~input_o\ & \A[27]~input_o\ & \A[26]~input_o\ & \A[25]~input_o\ & \A[24]~input_o\ & \A[23]~input_o\ & \A[22]~input_o\ & \A[21]~input_o\ & 
\A[20]~input_o\ & \A[19]~input_o\ & \A[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult5~0\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult5~1\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult5~2\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult5~3\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult5~dataout\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult7_DATAA_bus\ <= (\A[31]~input_o\ & \A[30]~input_o\ & \A[29]~input_o\ & \A[28]~input_o\ & \A[27]~input_o\ & \A[26]~input_o\ & \A[25]~input_o\ & \A[24]~input_o\ & \A[23]~input_o\ & \A[22]~input_o\ & \A[21]~input_o\ & 
\A[20]~input_o\ & \A[19]~input_o\ & \A[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult7_DATAB_bus\ <= (\B[31]~input_o\ & \B[30]~input_o\ & \B[29]~input_o\ & \B[28]~input_o\ & \B[27]~input_o\ & \B[26]~input_o\ & \B[25]~input_o\ & \B[24]~input_o\ & \B[23]~input_o\ & \B[22]~input_o\ & \B[21]~input_o\ & 
\B[20]~input_o\ & \B[19]~input_o\ & \B[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult7~0\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult7~1\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult7~2\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult7~3\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult7~4\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult7~5\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult7~6\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult7~7\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult7~dataout\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult7~DATAOUT1\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult7~DATAOUT2\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult7~DATAOUT3\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult7~DATAOUT4\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult7~DATAOUT5\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult7~DATAOUT6\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult7~DATAOUT7\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult7~DATAOUT8\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult7~DATAOUT9\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult7~DATAOUT10\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult7~DATAOUT11\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult7~DATAOUT12\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult7~DATAOUT13\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult7~DATAOUT14\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult7~DATAOUT15\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult7~DATAOUT16\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult7~DATAOUT17\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult7~DATAOUT18\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult7~DATAOUT19\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult7~DATAOUT20\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult7~DATAOUT21\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult7~DATAOUT22\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult7~DATAOUT23\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult7~DATAOUT24\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult7~DATAOUT25\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult7~DATAOUT26\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult7~DATAOUT27\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult7_DATAA_bus\ <= (\A[31]~input_o\ & \A[30]~input_o\ & \A[29]~input_o\ & \A[28]~input_o\ & \A[27]~input_o\ & \A[26]~input_o\ & \A[25]~input_o\ & \A[24]~input_o\ & \A[23]~input_o\ & \A[22]~input_o\ & \A[21]~input_o\ & 
\A[20]~input_o\ & \A[19]~input_o\ & \A[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult7_DATAB_bus\ <= (\B[31]~input_o\ & \B[30]~input_o\ & \B[29]~input_o\ & \B[28]~input_o\ & \B[27]~input_o\ & \B[26]~input_o\ & \B[25]~input_o\ & \B[24]~input_o\ & \B[23]~input_o\ & \B[22]~input_o\ & \B[21]~input_o\ & 
\B[20]~input_o\ & \B[19]~input_o\ & \B[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult7~0\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult7~1\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult7~2\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult7~3\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult7~4\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult7~5\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult7~6\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult7~7\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult7~dataout\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult7~DATAOUT1\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult7~DATAOUT2\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult7~DATAOUT3\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult7~DATAOUT4\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult7~DATAOUT5\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult7~DATAOUT6\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult7~DATAOUT7\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult7~DATAOUT8\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult7~DATAOUT9\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult7~DATAOUT10\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult7~DATAOUT11\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult7~DATAOUT12\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult7~DATAOUT13\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult7~DATAOUT14\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult7~DATAOUT15\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult7~DATAOUT16\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult7~DATAOUT17\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult7~DATAOUT18\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult7~DATAOUT19\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult7~DATAOUT20\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult7~DATAOUT21\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult7~DATAOUT22\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult7~DATAOUT23\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult7~DATAOUT24\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult7~DATAOUT25\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult7~DATAOUT26\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult7~DATAOUT27\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N24
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

-- Location: IOOBUF_X22_Y39_N16
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~2_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~10_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~21_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~10_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~9_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~7_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~7_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~9_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~7_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~7_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~7_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~7_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~6_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~6_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~7_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~3_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~10_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~7_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~7_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~7_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~7_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~7_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~7_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~8_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~8_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~14_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~9_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~5_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\result_hi[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux127~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\result_hi[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux126~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[1]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\result_hi[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux125~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\result_hi[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux124~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\result_hi[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux123~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\result_hi[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux122~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[5]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\result_hi[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux121~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\result_hi[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux120~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[7]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\result_hi[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux119~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[8]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\result_hi[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux118~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\result_hi[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux117~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[10]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\result_hi[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux116~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[11]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\result_hi[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux115~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\result_hi[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux114~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[13]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\result_hi[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux113~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[14]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\result_hi[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux112~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[15]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\result_hi[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux111~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[16]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\result_hi[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux110~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[17]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\result_hi[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux109~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[18]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\result_hi[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux108~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[19]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\result_hi[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux107~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[20]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\result_hi[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux106~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[21]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\result_hi[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux105~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[22]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\result_hi[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux104~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[23]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\result_hi[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux103~1_combout\,
	devoe => ww_devoe,
	o => \result_hi[24]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\result_hi[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux102~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[25]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\result_hi[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux101~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[26]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\result_hi[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux100~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[27]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\result_hi[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux99~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[28]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\result_hi[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux98~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[29]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\result_hi[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[30]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\result_hi[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux96~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[31]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\branch_taken~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux128~11_combout\,
	devoe => ww_devoe,
	o => \branch_taken~output_o\);

-- Location: IOIBUF_X22_Y39_N22
\opcode[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\opcode[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\opcode[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X42_Y30_N10
\Mux128~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~1_combout\ = (\A[0]~input_o\ & ((\opcode[0]~input_o\) # ((!\opcode[1]~input_o\ & \B[0]~input_o\)))) # (!\A[0]~input_o\ & (\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux128~1_combout\);

-- Location: LCCOMB_X42_Y30_N8
\result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \result~0_combout\);

-- Location: IOIBUF_X34_Y39_N8
\ir[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir(3),
	o => \ir[3]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\ir[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir(0),
	o => \ir[0]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\ir[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir(1),
	o => \ir[1]~input_o\);

-- Location: LCCOMB_X42_Y33_N30
\ShiftRight0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\ir[1]~input_o\ & (\A[19]~input_o\)) # (!\ir[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[17]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~24_combout\);

-- Location: IOIBUF_X46_Y54_N29
\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X41_Y29_N16
\ShiftRight0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\ir[1]~input_o\ & (\A[18]~input_o\)) # (!\ir[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[16]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X40_Y33_N28
\ShiftRight0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~24_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[0]~input_o\,
	datac => \ShiftRight0~24_combout\,
	datad => \ShiftRight0~25_combout\,
	combout => \ShiftRight0~26_combout\);

-- Location: IOIBUF_X0_Y34_N1
\ir[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir(2),
	o => \ir[2]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X38_Y32_N10
\ShiftRight0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\ir[1]~input_o\ & ((\A[27]~input_o\))) # (!\ir[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: IOIBUF_X24_Y39_N1
\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X38_Y32_N28
\ShiftRight0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\ir[1]~input_o\ & (\A[26]~input_o\)) # (!\ir[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X40_Y33_N2
\ShiftRight0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~21_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X40_Y33_N6
\ShiftRight0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\ir[3]~input_o\ & (((\ir[2]~input_o\) # (\ShiftRight0~23_combout\)))) # (!\ir[3]~input_o\ & (\ShiftRight0~26_combout\ & (!\ir[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight0~26_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight0~27_combout\);

-- Location: IOIBUF_X26_Y39_N22
\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X39_Y31_N16
\ShiftRight0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\ir[1]~input_o\ & (\A[23]~input_o\)) # (!\ir[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: IOIBUF_X78_Y36_N1
\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X20_Y39_N8
\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X39_Y31_N10
\ShiftRight0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\ir[1]~input_o\ & (\A[22]~input_o\)) # (!\ir[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[20]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X40_Y33_N16
\ShiftRight0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~18_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~18_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight0~20_combout\);

-- Location: IOIBUF_X36_Y39_N29
\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X41_Y33_N10
\ShiftRight1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\ir[0]~input_o\ & (\A[31]~input_o\)) # (!\ir[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[30]~input_o\,
	combout => \ShiftRight1~16_combout\);

-- Location: IOIBUF_X34_Y0_N29
\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X41_Y33_N24
\ShiftRight0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & (\A[29]~input_o\)) # (!\ir[0]~input_o\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X41_Y33_N20
\ShiftRight0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\ShiftRight0~16_combout\) # ((\ShiftRight1~16_combout\ & \ir[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \ir[1]~input_o\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X40_Y33_N8
\ShiftRight0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\ShiftRight0~27_combout\ & (((\ShiftRight0~17_combout\) # (!\ir[2]~input_o\)))) # (!\ShiftRight0~27_combout\ & (\ShiftRight0~20_combout\ & (\ir[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \ShiftRight0~20_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: IOIBUF_X31_Y39_N22
\ir[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir(4),
	o => \ir[4]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X39_Y34_N26
\ShiftRight1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\ir[0]~input_o\ & ((\A[5]~input_o\))) # (!\ir[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	combout => \ShiftRight1~15_combout\);

-- Location: IOIBUF_X29_Y39_N15
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X39_Y34_N24
\ShiftRight0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[7]~input_o\))) # (!\ir[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X39_Y34_N28
\ShiftRight0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\ShiftRight0~13_combout\) # ((!\ir[1]~input_o\ & \ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[1]~input_o\,
	datac => \ShiftRight1~15_combout\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: IOIBUF_X46_Y54_N15
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X38_Y34_N8
\ShiftRight0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[1]~input_o\))) # (!\ir[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ir[0]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: IOIBUF_X36_Y0_N8
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X38_Y34_N10
\ShiftRight1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\ir[0]~input_o\ & (\A[3]~input_o\)) # (!\ir[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X38_Y34_N28
\ShiftRight0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (!\ir[2]~input_o\ & ((\ShiftRight0~11_combout\) # ((\ir[1]~input_o\ & \ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~11_combout\,
	datac => \ir[1]~input_o\,
	datad => \ShiftRight1~14_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X42_Y32_N8
\ShiftRight0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (!\ir[3]~input_o\ & !\ir[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \ir[4]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X41_Y32_N8
\ShiftRight0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\ShiftRight0~10_combout\ & ((\ShiftRight0~12_combout\) # ((\ShiftRight0~14_combout\ & \ir[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~14_combout\,
	datab => \ir[2]~input_o\,
	datac => \ShiftRight0~12_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight0~15_combout\);

-- Location: IOIBUF_X31_Y39_N8
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X39_Y34_N2
\ShiftRight0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\ir[1]~input_o\ & (\A[11]~input_o\)) # (!\ir[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \A[9]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: IOIBUF_X54_Y54_N1
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X39_Y34_N4
\ShiftRight0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\ir[1]~input_o\ & ((\A[10]~input_o\))) # (!\ir[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X39_Y34_N14
\ShiftRight0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~7_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight0~7_combout\,
	datac => \ShiftRight0~8_combout\,
	combout => \ShiftRight0~9_combout\);

-- Location: IOIBUF_X78_Y24_N8
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X40_Y29_N20
\ShiftRight0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\ir[1]~input_o\ & (\A[14]~input_o\)) # (!\ir[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[12]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: IOIBUF_X31_Y39_N29
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X40_Y29_N2
\ShiftRight0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\ir[1]~input_o\ & ((\A[15]~input_o\))) # (!\ir[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ir[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X40_Y29_N22
\ShiftRight0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\ir[0]~input_o\ & ((\ShiftRight0~4_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~4_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X40_Y33_N22
\ShiftRight0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (\ir[3]~input_o\ & ((\ir[2]~input_o\ & ((\ShiftRight0~6_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight0~9_combout\,
	datac => \ShiftRight0~6_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X42_Y30_N28
\ShiftRight0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (\ShiftRight0~15_combout\) # ((\ir[4]~input_o\ & (\ShiftRight0~28_combout\)) # (!\ir[4]~input_o\ & ((\ShiftRight0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ir[4]~input_o\,
	datac => \ShiftRight0~15_combout\,
	datad => \ShiftRight0~77_combout\,
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X42_Y30_N4
\Mux128~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~2_combout\ = (\Mux128~1_combout\ & (((\ShiftRight0~78_combout\)) # (!\opcode[1]~input_o\))) # (!\Mux128~1_combout\ & (\opcode[1]~input_o\ & (\result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~1_combout\,
	datab => \opcode[1]~input_o\,
	datac => \result~0_combout\,
	datad => \ShiftRight0~78_combout\,
	combout => \Mux128~2_combout\);

-- Location: IOIBUF_X20_Y39_N15
\opcode[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X78_Y34_N15
\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X78_Y25_N15
\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X78_Y33_N22
\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X78_Y30_N1
\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X78_Y21_N22
\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X78_Y37_N15
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X78_Y37_N1
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X60_Y54_N29
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X51_Y54_N15
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X44_Y35_N0
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X44_Y35_N2
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\LessThan1~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X44_Y35_N4
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\B[2]~input_o\ & ((!\LessThan1~3_cout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X44_Y35_N6
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan1~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X44_Y35_N8
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\B[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X44_Y35_N10
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\A[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X44_Y35_N12
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\LessThan1~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X44_Y35_N14
\LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\A[7]~input_o\ & ((!\LessThan1~13_cout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X44_Y35_N16
\LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\A[8]~input_o\ & (\B[8]~input_o\ & !\LessThan1~15_cout\)) # (!\A[8]~input_o\ & ((\B[8]~input_o\) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X44_Y35_N18
\LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\A[9]~input_o\ & ((!\LessThan1~17_cout\) # (!\B[9]~input_o\))) # (!\A[9]~input_o\ & (!\B[9]~input_o\ & !\LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X44_Y35_N20
\LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\A[10]~input_o\ & (\B[10]~input_o\ & !\LessThan1~19_cout\)) # (!\A[10]~input_o\ & ((\B[10]~input_o\) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X44_Y35_N22
\LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\B[11]~input_o\ & (\A[11]~input_o\ & !\LessThan1~21_cout\)) # (!\B[11]~input_o\ & ((\A[11]~input_o\) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X44_Y35_N24
\LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\B[12]~input_o\ & ((!\LessThan1~23_cout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X44_Y35_N26
\LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\A[13]~input_o\ & ((!\LessThan1~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X44_Y35_N28
\LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\B[14]~input_o\ & ((!\LessThan1~27_cout\) # (!\A[14]~input_o\))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & !\LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X44_Y35_N30
\LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\A[15]~input_o\ & ((!\LessThan1~29_cout\) # (!\B[15]~input_o\))) # (!\A[15]~input_o\ & (!\B[15]~input_o\ & !\LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X44_Y34_N0
\LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\LessThan1~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X44_Y34_N2
\LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\A[17]~input_o\ & ((!\LessThan1~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X44_Y34_N4
\LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\B[18]~input_o\ & ((!\LessThan1~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\LessThan1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X44_Y34_N6
\LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\A[19]~input_o\ & ((!\LessThan1~37_cout\) # (!\B[19]~input_o\))) # (!\A[19]~input_o\ & (!\B[19]~input_o\ & !\LessThan1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X44_Y34_N8
\LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\A[20]~input_o\ & (\B[20]~input_o\ & !\LessThan1~39_cout\)) # (!\A[20]~input_o\ & ((\B[20]~input_o\) # (!\LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X44_Y34_N10
\LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\B[21]~input_o\ & (\A[21]~input_o\ & !\LessThan1~41_cout\)) # (!\B[21]~input_o\ & ((\A[21]~input_o\) # (!\LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X44_Y34_N12
\LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\B[22]~input_o\ & ((!\LessThan1~43_cout\) # (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & !\LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X44_Y34_N14
\LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\A[23]~input_o\ & ((!\LessThan1~45_cout\) # (!\B[23]~input_o\))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & !\LessThan1~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X44_Y34_N16
\LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\B[24]~input_o\ & ((!\LessThan1~47_cout\) # (!\A[24]~input_o\))) # (!\B[24]~input_o\ & (!\A[24]~input_o\ & !\LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X44_Y34_N18
\LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\A[25]~input_o\ & ((!\LessThan1~49_cout\) # (!\B[25]~input_o\))) # (!\A[25]~input_o\ & (!\B[25]~input_o\ & !\LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X44_Y34_N20
\LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\B[26]~input_o\ & ((!\LessThan1~51_cout\) # (!\A[26]~input_o\))) # (!\B[26]~input_o\ & (!\A[26]~input_o\ & !\LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X44_Y34_N22
\LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\A[27]~input_o\ & ((!\LessThan1~53_cout\) # (!\B[27]~input_o\))) # (!\A[27]~input_o\ & (!\B[27]~input_o\ & !\LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X44_Y34_N24
\LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\A[28]~input_o\ & (\B[28]~input_o\ & !\LessThan1~55_cout\)) # (!\A[28]~input_o\ & ((\B[28]~input_o\) # (!\LessThan1~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X44_Y34_N26
\LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\A[29]~input_o\ & ((!\LessThan1~57_cout\) # (!\B[29]~input_o\))) # (!\A[29]~input_o\ & (!\B[29]~input_o\ & !\LessThan1~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X44_Y34_N28
\LessThan1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\B[30]~input_o\ & ((!\LessThan1~59_cout\) # (!\A[30]~input_o\))) # (!\B[30]~input_o\ & (!\A[30]~input_o\ & !\LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X44_Y34_N30
\LessThan1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (\B[31]~input_o\ & ((\LessThan1~61_cout\) # (!\A[31]~input_o\))) # (!\B[31]~input_o\ & (\LessThan1~61_cout\ & !\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: LCCOMB_X44_Y32_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X44_Y32_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X44_Y32_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X44_Y32_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X44_Y32_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X44_Y32_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X44_Y32_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X44_Y32_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\A[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X44_Y32_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\A[8]~input_o\ & (\B[8]~input_o\ & !\LessThan0~15_cout\)) # (!\A[8]~input_o\ & ((\B[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X44_Y32_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\B[9]~input_o\ & (\A[9]~input_o\ & !\LessThan0~17_cout\)) # (!\B[9]~input_o\ & ((\A[9]~input_o\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X44_Y32_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\A[10]~input_o\ & (\B[10]~input_o\ & !\LessThan0~19_cout\)) # (!\A[10]~input_o\ & ((\B[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X44_Y32_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\B[11]~input_o\ & (\A[11]~input_o\ & !\LessThan0~21_cout\)) # (!\B[11]~input_o\ & ((\A[11]~input_o\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X44_Y32_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\B[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X44_Y32_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X44_Y32_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\A[14]~input_o\ & (\B[14]~input_o\ & !\LessThan0~27_cout\)) # (!\A[14]~input_o\ & ((\B[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X44_Y32_N30
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\A[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\B[15]~input_o\))) # (!\A[15]~input_o\ & (!\B[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X44_Y31_N0
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\LessThan0~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X44_Y31_N2
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\A[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X44_Y31_N4
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\A[18]~input_o\ & (\B[18]~input_o\ & !\LessThan0~35_cout\)) # (!\A[18]~input_o\ & ((\B[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X44_Y31_N6
\LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\B[19]~input_o\ & (\A[19]~input_o\ & !\LessThan0~37_cout\)) # (!\B[19]~input_o\ & ((\A[19]~input_o\) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X44_Y31_N8
\LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\B[20]~input_o\ & ((!\LessThan0~39_cout\) # (!\A[20]~input_o\))) # (!\B[20]~input_o\ & (!\A[20]~input_o\ & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X44_Y31_N10
\LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\A[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\B[21]~input_o\))) # (!\A[21]~input_o\ & (!\B[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X44_Y31_N12
\LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\B[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X44_Y31_N14
\LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\B[23]~input_o\ & (\A[23]~input_o\ & !\LessThan0~45_cout\)) # (!\B[23]~input_o\ & ((\A[23]~input_o\) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X44_Y31_N16
\LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\A[24]~input_o\ & (\B[24]~input_o\ & !\LessThan0~47_cout\)) # (!\A[24]~input_o\ & ((\B[24]~input_o\) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X44_Y31_N18
\LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\A[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\B[25]~input_o\))) # (!\A[25]~input_o\ & (!\B[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X44_Y31_N20
\LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\A[26]~input_o\ & (\B[26]~input_o\ & !\LessThan0~51_cout\)) # (!\A[26]~input_o\ & ((\B[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X44_Y31_N22
\LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\A[27]~input_o\ & ((!\LessThan0~53_cout\) # (!\B[27]~input_o\))) # (!\A[27]~input_o\ & (!\B[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X44_Y31_N24
\LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\B[28]~input_o\ & ((!\LessThan0~55_cout\) # (!\A[28]~input_o\))) # (!\B[28]~input_o\ & (!\A[28]~input_o\ & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X44_Y31_N26
\LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\B[29]~input_o\ & (\A[29]~input_o\ & !\LessThan0~57_cout\)) # (!\B[29]~input_o\ & ((\A[29]~input_o\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X44_Y31_N28
\LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\A[30]~input_o\ & (\B[30]~input_o\ & !\LessThan0~59_cout\)) # (!\A[30]~input_o\ & ((\B[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X44_Y31_N30
\LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\A[31]~input_o\ & ((\LessThan0~61_cout\) # (!\B[31]~input_o\))) # (!\A[31]~input_o\ & (\LessThan0~61_cout\ & !\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X38_Y34_N14
\ShiftLeft0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\ir[0]~input_o\) # ((\ir[1]~input_o\) # (\ir[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \ir[2]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X42_Y30_N22
\ShiftLeft0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (!\ir[3]~input_o\ & (!\ir[4]~input_o\ & (\A[0]~input_o\ & !\ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ir[4]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X42_Y30_N0
\Mux128~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~3_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & ((\ShiftRight0~78_combout\))) # (!\opcode[0]~input_o\ & (\ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftRight0~78_combout\,
	combout => \Mux128~3_combout\);

-- Location: LCCOMB_X42_Y31_N16
\Mux128~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~4_combout\ = (\opcode[1]~input_o\ & ((\Mux128~3_combout\ & (\LessThan1~62_combout\)) # (!\Mux128~3_combout\ & ((\LessThan0~62_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux128~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~62_combout\,
	datab => \LessThan0~62_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux128~3_combout\,
	combout => \Mux128~4_combout\);

-- Location: IOIBUF_X26_Y39_N1
\opcode[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: DSPMULT_X48_Y32_N0
\Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y32_N2
\Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X48_Y35_N0
\Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y35_N2
\Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X45_Y32_N16
\Mux128~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~5_combout\ = (\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|w513w\(0)))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|w569w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mult0|auto_generated|w569w\(0),
	datac => \Mult1|auto_generated|w513w\(0),
	datad => \opcode[1]~input_o\,
	combout => \Mux128~5_combout\);

-- Location: LCCOMB_X42_Y30_N18
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \opcode[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X46_Y34_N16
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_cout\ = CARRY((!\opcode[1]~input_o\ & \opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datad => VCC,
	cout => \Add0~4_cout\);

-- Location: LCCOMB_X46_Y34_N18
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~2_combout\ & ((\A[0]~input_o\ & (\Add0~4_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~4_cout\)))) # (!\Add0~2_combout\ & ((\A[0]~input_o\ & (!\Add0~4_cout\)) # (!\A[0]~input_o\ & ((\Add0~4_cout\) # (GND)))))
-- \Add0~6\ = CARRY((\Add0~2_combout\ & (!\A[0]~input_o\ & !\Add0~4_cout\)) # (!\Add0~2_combout\ & ((!\Add0~4_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~4_cout\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X45_Y32_N26
\Mux128~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~6_combout\ = (\Mux128~5_combout\) # ((\Add0~5_combout\ & !\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux128~5_combout\,
	datac => \Add0~5_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux128~6_combout\);

-- Location: LCCOMB_X43_Y31_N8
\Mux128~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~7_combout\ = (\opcode[2]~input_o\ & (((\opcode[3]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[3]~input_o\ & (\Mux128~4_combout\)) # (!\opcode[3]~input_o\ & ((\Mux128~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~4_combout\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \Mux128~6_combout\,
	combout => \Mux128~7_combout\);

-- Location: LCCOMB_X42_Y33_N10
\Equal0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~26_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \Equal0~26_combout\);

-- Location: LCCOMB_X42_Y33_N24
\Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (\A[18]~input_o\ & (\B[18]~input_o\ & (\B[19]~input_o\ $ (!\A[19]~input_o\)))) # (!\A[18]~input_o\ & (!\B[18]~input_o\ & (\B[19]~input_o\ $ (!\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X42_Y33_N12
\Equal0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~27_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Equal0~27_combout\);

-- Location: LCCOMB_X42_Y34_N6
\Equal0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~24_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	combout => \Equal0~24_combout\);

-- Location: LCCOMB_X45_Y33_N26
\Equal0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X45_Y34_N8
\Equal0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~23_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	combout => \Equal0~23_combout\);

-- Location: LCCOMB_X42_Y34_N12
\Equal0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~22_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Equal0~22_combout\);

-- Location: LCCOMB_X42_Y34_N8
\Equal0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~25_combout\ = (!\Equal0~24_combout\ & (!\Equal0~21_combout\ & (!\Equal0~23_combout\ & !\Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~24_combout\,
	datab => \Equal0~21_combout\,
	datac => \Equal0~23_combout\,
	datad => \Equal0~22_combout\,
	combout => \Equal0~25_combout\);

-- Location: LCCOMB_X42_Y33_N14
\Equal0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~28_combout\ = (!\Equal0~26_combout\ & (\Equal0~20_combout\ & (!\Equal0~27_combout\ & \Equal0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~26_combout\,
	datab => \Equal0~20_combout\,
	datac => \Equal0~27_combout\,
	datad => \Equal0~25_combout\,
	combout => \Equal0~28_combout\);

-- Location: LCCOMB_X43_Y31_N18
\Equal0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~37_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => \Equal0~37_combout\);

-- Location: LCCOMB_X43_Y33_N0
\Equal0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~34_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Equal0~34_combout\);

-- Location: LCCOMB_X43_Y34_N0
\Equal0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~35_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Equal0~35_combout\);

-- Location: LCCOMB_X42_Y32_N14
\Equal0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~36_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Equal0~36_combout\);

-- Location: LCCOMB_X43_Y33_N26
\Equal0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~38_combout\ = (!\Equal0~37_combout\ & (!\Equal0~34_combout\ & (!\Equal0~35_combout\ & !\Equal0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~37_combout\,
	datab => \Equal0~34_combout\,
	datac => \Equal0~35_combout\,
	datad => \Equal0~36_combout\,
	combout => \Equal0~38_combout\);

-- Location: LCCOMB_X45_Y32_N6
\Equal0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~30_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	combout => \Equal0~30_combout\);

-- Location: LCCOMB_X45_Y32_N18
\Equal0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~32_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	combout => \Equal0~32_combout\);

-- Location: LCCOMB_X45_Y32_N8
\Equal0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~31_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Equal0~31_combout\);

-- Location: LCCOMB_X45_Y32_N20
\Equal0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~29_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Equal0~29_combout\);

-- Location: LCCOMB_X45_Y32_N28
\Equal0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~33_combout\ = (!\Equal0~30_combout\ & (!\Equal0~32_combout\ & (!\Equal0~31_combout\ & !\Equal0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~30_combout\,
	datab => \Equal0~32_combout\,
	datac => \Equal0~31_combout\,
	datad => \Equal0~29_combout\,
	combout => \Equal0~33_combout\);

-- Location: LCCOMB_X45_Y34_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X45_Y33_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X45_Y34_N16
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y34_N4
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Equal0~2_combout\ & (!\Equal0~1_combout\ & (!\result~0_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \result~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X44_Y33_N6
\Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X44_Y33_N24
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X44_Y33_N26
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X44_Y33_N12
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X44_Y33_N8
\Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\Equal0~12_combout\ & (!\Equal0~9_combout\ & (!\Equal0~10_combout\ & !\Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~10_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X42_Y32_N2
\Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X43_Y33_N16
\Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X42_Y32_N20
\Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X43_Y33_N10
\Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X43_Y33_N4
\Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!\Equal0~16_combout\ & (!\Equal0~14_combout\ & (!\Equal0~17_combout\ & !\Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~16_combout\,
	datab => \Equal0~14_combout\,
	datac => \Equal0~17_combout\,
	datad => \Equal0~15_combout\,
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X46_Y34_N10
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X43_Y35_N24
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X45_Y34_N22
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X42_Y34_N16
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X42_Y34_N2
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Equal0~4_combout\ & (!\Equal0~7_combout\ & (!\Equal0~6_combout\ & !\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X43_Y33_N6
\Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (\Equal0~3_combout\ & (\Equal0~13_combout\ & (\Equal0~18_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~13_combout\,
	datac => \Equal0~18_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X43_Y33_N28
\Equal0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~39_combout\ = (\Equal0~28_combout\ & (\Equal0~38_combout\ & (\Equal0~33_combout\ & \Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~28_combout\,
	datab => \Equal0~38_combout\,
	datac => \Equal0~33_combout\,
	datad => \Equal0~19_combout\,
	combout => \Equal0~39_combout\);

-- Location: LCCOMB_X40_Y29_N8
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\A[13]~input_o\) # ((\A[15]~input_o\) # ((\A[14]~input_o\) # (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[12]~input_o\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X41_Y30_N0
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\A[10]~input_o\) # ((\A[11]~input_o\) # ((\A[8]~input_o\) # (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X39_Y34_N16
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\A[7]~input_o\) # ((\A[4]~input_o\) # ((\A[5]~input_o\) # (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X46_Y34_N8
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\A[3]~input_o\) # ((\A[2]~input_o\) # ((\A[0]~input_o\) # (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X43_Y31_N24
\LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~3_combout\) # ((\LessThan2~2_combout\) # ((\LessThan2~1_combout\) # (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X42_Y33_N2
\LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\A[21]~input_o\) # (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X42_Y33_N0
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\A[19]~input_o\) # ((\A[16]~input_o\) # ((\A[18]~input_o\) # (\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[17]~input_o\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X42_Y33_N28
\LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\A[22]~input_o\) # ((\LessThan2~6_combout\) # ((\A[23]~input_o\) # (\LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \LessThan2~6_combout\,
	datac => \A[23]~input_o\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X38_Y32_N0
\LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\A[24]~input_o\) # ((\A[26]~input_o\) # ((\A[25]~input_o\) # (\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[27]~input_o\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X46_Y32_N18
\LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\A[28]~input_o\) # ((\A[29]~input_o\) # ((\LessThan2~8_combout\) # (\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \LessThan2~8_combout\,
	datad => \A[30]~input_o\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X43_Y31_N10
\Mux128~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (!\A[31]~input_o\ & ((\LessThan2~4_combout\) # ((\LessThan2~7_combout\) # (\LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \LessThan2~4_combout\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan2~9_combout\,
	combout => \Mux128~0_combout\);

-- Location: LCCOMB_X43_Y31_N20
\Mux128~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~8_combout\ = \opcode[0]~input_o\ $ (((\opcode[1]~input_o\ & ((!\Mux128~0_combout\))) # (!\opcode[1]~input_o\ & (\Equal0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Equal0~39_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux128~0_combout\,
	combout => \Mux128~8_combout\);

-- Location: LCCOMB_X43_Y31_N22
\Mux128~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~9_combout\ = (\opcode[2]~input_o\ & ((\Mux128~7_combout\ & ((\Mux128~8_combout\))) # (!\Mux128~7_combout\ & (\Mux128~2_combout\)))) # (!\opcode[2]~input_o\ & (((\Mux128~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~2_combout\,
	datab => \opcode[2]~input_o\,
	datac => \Mux128~7_combout\,
	datad => \Mux128~8_combout\,
	combout => \Mux128~9_combout\);

-- Location: LCCOMB_X43_Y31_N4
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\ & \Mux128~0_combout\)))) # (!\opcode[1]~input_o\ & (\A[31]~input_o\ $ ((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \Mux128~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X43_Y31_N6
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\opcode[3]~input_o\ & (!\opcode[2]~input_o\ & (\Mux31~0_combout\ & \opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \opcode[4]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X43_Y31_N16
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux31~1_combout\) # ((!\opcode[4]~input_o\ & \Mux128~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[4]~input_o\,
	datac => \Mux128~9_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X46_Y31_N8
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\opcode[3]~input_o\ & (!\opcode[2]~input_o\ & !\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X41_Y35_N18
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\ir[4]~input_o\ & \opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X38_Y34_N16
\ShiftRight0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & (\A[2]~input_o\)) # (!\ir[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X38_Y34_N26
\ShiftRight1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\ir[0]~input_o\ & (\A[4]~input_o\)) # (!\ir[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ir[0]~input_o\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X38_Y34_N12
\ShiftRight0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (!\ir[2]~input_o\ & ((\ShiftRight0~34_combout\) # ((\ir[1]~input_o\ & \ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ShiftRight0~34_combout\,
	datac => \ShiftRight1~20_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X46_Y34_N4
\ShiftRight1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\ir[0]~input_o\ & ((\A[6]~input_o\))) # (!\ir[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \ir[0]~input_o\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X39_Y34_N8
\ShiftRight0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[8]~input_o\))) # (!\ir[0]~input_o\ & (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X40_Y34_N24
\ShiftRight0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~32_combout\) # ((\ShiftRight1~19_combout\ & !\ir[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \ir[1]~input_o\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X40_Y29_N16
\ShiftRight1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\ir[1]~input_o\ & (\A[12]~input_o\)) # (!\ir[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \A[10]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X39_Y34_N30
\ShiftRight0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\ir[0]~input_o\ & ((\ShiftRight1~18_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight0~7_combout\,
	datac => \ShiftRight1~18_combout\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X41_Y29_N10
\ShiftRight1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\ir[1]~input_o\ & (\A[16]~input_o\)) # (!\ir[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \A[14]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X41_Y30_N26
\ShiftRight0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\ir[0]~input_o\ & ((\ShiftRight1~17_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftRight0~4_combout\,
	datad => \ShiftRight1~17_combout\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X41_Y34_N24
\ShiftRight0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~29_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~30_combout\,
	datac => \ShiftRight0~29_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X41_Y34_N2
\ShiftRight0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\ir[3]~input_o\ & (((\ShiftRight0~31_combout\)))) # (!\ir[3]~input_o\ & ((\ShiftRight0~35_combout\) # ((\ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~35_combout\,
	datab => \ShiftRight0~33_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X38_Y34_N6
\ShiftLeft0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\ir[0]~input_o\ & (\A[0]~input_o\)) # (!\ir[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X40_Y32_N6
\ShiftLeft0~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (!\ir[3]~input_o\ & (!\ir[2]~input_o\ & (!\ir[1]~input_o\ & \ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~105_combout\);

-- Location: LCCOMB_X41_Y35_N8
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\ir[4]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftRight0~36_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftLeft0~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftRight0~36_combout\,
	datac => \ShiftLeft0~105_combout\,
	datad => \ir[4]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X39_Y31_N28
\ShiftRight1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\ir[1]~input_o\ & ((\A[24]~input_o\))) # (!\ir[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[24]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X39_Y31_N14
\ShiftRight0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\ir[0]~input_o\ & (\ShiftRight1~25_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~25_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X42_Y33_N8
\ShiftRight1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\ir[1]~input_o\ & (\A[20]~input_o\)) # (!\ir[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \A[18]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X41_Y30_N4
\ShiftRight0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\ir[0]~input_o\ & ((\ShiftRight1~26_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight0~24_combout\,
	datac => \ShiftRight1~26_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X41_Y34_N22
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\ir[2]~input_o\ & (\ShiftRight0~39_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftRight0~39_combout\,
	datad => \ShiftRight0~40_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X38_Y32_N6
\ShiftRight1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\ir[1]~input_o\ & ((\A[28]~input_o\))) # (!\ir[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[28]~input_o\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X38_Y32_N16
\ShiftRight0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\ir[0]~input_o\ & (\ShiftRight1~23_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~23_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X41_Y33_N22
\ShiftRight1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\ir[0]~input_o\ & (\A[30]~input_o\)) # (!\ir[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X41_Y33_N0
\ShiftRight1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\ir[2]~input_o\ & ((\ir[1]~input_o\ & ((\A[31]~input_o\))) # (!\ir[1]~input_o\ & (\ShiftRight1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~21_combout\,
	datab => \A[31]~input_o\,
	datac => \ir[2]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X41_Y34_N4
\ShiftRight1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\ShiftRight1~22_combout\) # ((!\ir[2]~input_o\ & \ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftRight0~38_combout\,
	datad => \ShiftRight1~22_combout\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X41_Y34_N16
\ShiftRight1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\ir[3]~input_o\ & ((\ShiftRight1~24_combout\))) # (!\ir[3]~input_o\ & (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \ShiftRight1~24_combout\,
	datac => \ir[3]~input_o\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X41_Y35_N28
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~0_combout\) # ((\Mux30~1_combout\ & \ShiftRight1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux30~0_combout\,
	datad => \ShiftRight1~27_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X51_Y34_N0
\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \B[1]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X46_Y34_N20
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Add0~7_combout\ $ (\A[1]~input_o\ $ (!\Add0~6\)))) # (GND)
-- \Add0~9\ = CARRY((\Add0~7_combout\ & ((\A[1]~input_o\) # (!\Add0~6\))) # (!\Add0~7_combout\ & (\A[1]~input_o\ & !\Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X46_Y34_N6
\Mux94~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux94~2_combout\ = (\opcode[0]~input_o\ & ((\Mult1|auto_generated|w513w\(1)))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|w569w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(1),
	datab => \opcode[0]~input_o\,
	datad => \Mult1|auto_generated|w513w\(1),
	combout => \Mux94~2_combout\);

-- Location: LCCOMB_X46_Y34_N0
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\opcode[1]~input_o\ & (((\opcode[2]~input_o\) # (\Mux94~2_combout\)))) # (!\opcode[1]~input_o\ & (\Add0~8_combout\ & (!\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Add0~8_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux94~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X46_Y34_N14
\Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\A[1]~input_o\ & (\Mux30~3_combout\ $ (((\opcode[0]~input_o\) # (\B[1]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\opcode[0]~input_o\ $ (\Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X41_Y33_N26
\ShiftRight0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\ir[1]~input_o\ & (((\A[31]~input_o\ & !\ir[0]~input_o\)))) # (!\ir[1]~input_o\ & (\ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~21_combout\,
	datab => \A[31]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X41_Y34_N18
\ShiftRight0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\ir[2]~input_o\ & (\ir[3]~input_o\)) # (!\ir[2]~input_o\ & ((\ir[3]~input_o\ & (\ShiftRight0~38_combout\)) # (!\ir[3]~input_o\ & ((\ShiftRight0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ShiftRight0~38_combout\,
	datad => \ShiftRight0~40_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X41_Y34_N20
\ShiftRight0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~42_combout\ & (\ShiftRight0~41_combout\)) # (!\ShiftRight0~42_combout\ & ((\ShiftRight0~39_combout\))))) # (!\ir[2]~input_o\ & (((\ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~41_combout\,
	datac => \ShiftRight0~39_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X41_Y35_N6
\Mux94~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux94~3_combout\ = (\opcode[0]~input_o\ & ((\ir[4]~input_o\ & ((\ShiftRight0~43_combout\))) # (!\ir[4]~input_o\ & (\ShiftRight0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datab => \ShiftRight0~36_combout\,
	datac => \ShiftRight0~43_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux94~3_combout\);

-- Location: LCCOMB_X41_Y35_N2
\Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\opcode[2]~input_o\ & ((\Mux30~5_combout\) # ((\Mux30~3_combout\ & \Mux94~3_combout\)))) # (!\opcode[2]~input_o\ & (\Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux30~5_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux94~3_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X41_Y35_N0
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\opcode[4]~input_o\ & ((\Mux30~2_combout\) # ((!\opcode[3]~input_o\ & \Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \Mux30~2_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux30~6_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X41_Y35_N10
\Mux65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux65~2_combout\ = (!\ir[4]~input_o\ & \opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux65~2_combout\);

-- Location: LCCOMB_X41_Y35_N20
\Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\opcode[3]~input_o\ & ((\opcode[2]~input_o\) # ((\opcode[1]~input_o\) # (!\Mux65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \Mux65~2_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X39_Y30_N4
\Mux29~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (!\opcode[4]~input_o\ & (((!\opcode[2]~input_o\ & !\opcode[1]~input_o\)) # (!\Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \Mux28~6_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X41_Y35_N22
\Mux28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = ((\opcode[2]~input_o\ & ((\opcode[3]~input_o\) # (!\opcode[1]~input_o\))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\) # (!\opcode[3]~input_o\)))) # (!\Mux65~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \Mux65~2_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X39_Y32_N2
\Mux28~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = ((\opcode[0]~input_o\ & \opcode[3]~input_o\)) # (!\Mux28~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X46_Y31_N26
\Mux28~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (!\opcode[2]~input_o\ & \opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X45_Y33_N20
\Mux28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\opcode[2]~input_o\) # ((!\opcode[0]~input_o\ & \opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X45_Y33_N14
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\A[2]~input_o\ & ((\opcode[0]~input_o\) # ((\B[2]~input_o\ & !\opcode[1]~input_o\)))) # (!\A[2]~input_o\ & (\opcode[0]~input_o\ & ((\B[2]~input_o\) # (\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X42_Y31_N10
\ShiftRight0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (!\ir[2]~input_o\ & !\ir[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datad => \ir[3]~input_o\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X39_Y31_N0
\ShiftRight1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\ir[1]~input_o\ & (\A[25]~input_o\)) # (!\ir[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \A[25]~input_o\,
	datad => \A[23]~input_o\,
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X39_Y31_N2
\ShiftRight1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\ir[0]~input_o\ & ((\ShiftRight1~32_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~25_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftRight1~32_combout\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X38_Y32_N18
\ShiftRight1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\ir[0]~input_o\ & ((\ir[1]~input_o\ & (\A[29]~input_o\)) # (!\ir[1]~input_o\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[27]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \ir[0]~input_o\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X38_Y32_N4
\ShiftRight1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\ShiftRight1~29_combout\) # ((!\ir[0]~input_o\ & \ShiftRight1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight1~29_combout\,
	datad => \ShiftRight1~23_combout\,
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X41_Y31_N16
\ShiftRight0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\ir[2]~input_o\ & (\ShiftRight1~33_combout\ & (!\ir[3]~input_o\))) # (!\ir[2]~input_o\ & (((\ir[3]~input_o\ & \ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~33_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftRight1~30_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X41_Y33_N4
\ShiftRight0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\ShiftRight1~16_combout\ & (\ir[3]~input_o\ & (\ir[2]~input_o\ & !\ir[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \ir[3]~input_o\,
	datac => \ir[2]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X42_Y33_N18
\ShiftRight1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\ir[1]~input_o\ & ((\A[21]~input_o\))) # (!\ir[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[21]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X41_Y30_N22
\ShiftRight1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\ir[0]~input_o\ & ((\ShiftRight1~34_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight1~26_combout\,
	datac => \ShiftRight1~34_combout\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X41_Y33_N6
\ShiftRight0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\ShiftRight0~44_combout\) # ((\ShiftRight0~45_combout\) # ((\ShiftRight0~37_combout\ & \ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~44_combout\,
	datac => \ShiftRight0~45_combout\,
	datad => \ShiftRight1~35_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X45_Y33_N24
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\opcode[1]~input_o\ & ((\Mux29~2_combout\ & (\ShiftRight0~46_combout\)) # (!\Mux29~2_combout\ & ((\Equal0~1_combout\))))) # (!\opcode[1]~input_o\ & (\Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Mux29~2_combout\,
	datac => \ShiftRight0~46_combout\,
	datad => \Equal0~1_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X43_Y34_N26
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \opcode[0]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X46_Y34_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11_combout\ & ((\A[2]~input_o\ & (\Add0~9\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~9\)))) # (!\Add0~11_combout\ & ((\A[2]~input_o\ & (!\Add0~9\)) # (!\A[2]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~13\ = CARRY((\Add0~11_combout\ & (!\A[2]~input_o\ & !\Add0~9\)) # (!\Add0~11_combout\ & ((!\Add0~9\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X47_Y34_N24
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux28~9_combout\ & (\Mux28~10_combout\)) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux29~3_combout\)) # (!\Mux28~10_combout\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux28~10_combout\,
	datac => \Mux29~3_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X46_Y31_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (!\opcode[4]~input_o\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[4]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X45_Y33_N30
\Mux28~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~22_combout\ = (!\opcode[2]~input_o\ & (\opcode[1]~input_o\ & ((\Add0~10_combout\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Add0~10_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux28~22_combout\);

-- Location: LCCOMB_X47_Y34_N2
\Mux29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\ & ((\Mult0|auto_generated|w569w\(2)) # ((!\Mux28~22_combout\)))) # (!\Mux29~4_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|w513w\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(2),
	datab => \Mux29~4_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|w513w\(2),
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X39_Y33_N16
\Mux28~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\ir[3]~input_o\) # ((\ir[1]~input_o\ & !\ir[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \ir[3]~input_o\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X40_Y29_N18
\ShiftRight1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\ir[1]~input_o\ & ((\A[13]~input_o\))) # (!\ir[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \A[13]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~42_combout\);

-- Location: LCCOMB_X40_Y29_N12
\ShiftRight1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (\ir[0]~input_o\ & (\ShiftRight1~42_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight1~42_combout\,
	datad => \ShiftRight1~18_combout\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X41_Y29_N28
\ShiftRight1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\ir[1]~input_o\ & ((\A[17]~input_o\))) # (!\ir[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[17]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X41_Y29_N14
\ShiftRight1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\ir[0]~input_o\ & (\ShiftRight1~40_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight1~40_combout\,
	datad => \ShiftRight1~17_combout\,
	combout => \ShiftRight1~41_combout\);

-- Location: LCCOMB_X41_Y31_N2
\ShiftRight0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\ir[2]~input_o\ & ((\ShiftRight1~41_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftRight1~43_combout\,
	datad => \ShiftRight1~41_combout\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X39_Y34_N18
\ShiftRight1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (!\ir[0]~input_o\ & ((\ir[1]~input_o\ & ((\A[8]~input_o\))) # (!\ir[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X39_Y34_N20
\ShiftRight1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\ir[1]~input_o\ & ((\A[9]~input_o\))) # (!\ir[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \A[9]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X39_Y34_N6
\ShiftRight1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\ShiftRight1~37_combout\) # ((\ir[0]~input_o\ & \ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~37_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftRight1~38_combout\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X39_Y34_N0
\Mux29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux28~11_combout\ & (((!\ShiftRight0~37_combout\)))) # (!\Mux28~11_combout\ & ((\ShiftRight0~37_combout\ & (\ShiftRight1~14_combout\)) # (!\ShiftRight0~37_combout\ & ((\ShiftRight1~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \Mux28~11_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \ShiftRight1~39_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X39_Y34_N10
\Mux29~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux28~11_combout\ & ((\Mux29~6_combout\ & ((\ShiftRight0~47_combout\))) # (!\Mux29~6_combout\ & (\ShiftRight1~15_combout\)))) # (!\Mux28~11_combout\ & (((\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datab => \Mux28~11_combout\,
	datac => \ShiftRight0~47_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X39_Y30_N8
\Mux29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\Mux28~12_combout\ & (((\Mux29~7_combout\) # (\Mux28~6_combout\)))) # (!\Mux28~12_combout\ & (\Mux29~5_combout\ & ((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~12_combout\,
	datab => \Mux29~5_combout\,
	datac => \Mux29~7_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X38_Y34_N0
\ShiftLeft0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (!\ir[0]~input_o\ & ((\ir[1]~input_o\ & ((\A[0]~input_o\))) # (!\ir[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X38_Y34_N2
\ShiftLeft0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\ShiftLeft0~7_combout\) # ((\ir[0]~input_o\ & (!\ir[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ir[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X40_Y30_N14
\ShiftLeft0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~106_combout\ = (!\ir[2]~input_o\ & (\ShiftLeft0~8_combout\ & !\ir[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \ir[3]~input_o\,
	combout => \ShiftLeft0~106_combout\);

-- Location: LCCOMB_X39_Y32_N0
\Mux28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux28~6_combout\ & ((\opcode[0]~input_o\) # ((!\Mux28~7_combout\) # (!\ir[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X41_Y31_N8
\ShiftRight1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\ir[0]~input_o\ & (((\A[31]~input_o\)))) # (!\ir[0]~input_o\ & ((\ir[1]~input_o\ & ((\A[31]~input_o\))) # (!\ir[1]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X41_Y31_N26
\ShiftRight1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\ir[2]~input_o\ & ((\ShiftRight1~28_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~30_combout\,
	datac => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X41_Y31_N28
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\ir[2]~input_o\ & (\ShiftRight1~33_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~33_combout\,
	datac => \ShiftRight1~35_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X41_Y31_N30
\ShiftRight1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\ir[3]~input_o\ & (\ShiftRight1~31_combout\)) # (!\ir[3]~input_o\ & ((\Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datac => \ir[3]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X40_Y30_N0
\Mux29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux29~8_combout\ & (((\ShiftRight1~36_combout\) # (!\Mux28~8_combout\)))) # (!\Mux29~8_combout\ & (\ShiftLeft0~106_combout\ & (\Mux28~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \ShiftLeft0~106_combout\,
	datac => \Mux28~8_combout\,
	datad => \ShiftRight1~36_combout\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X37_Y33_N16
\Mux29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\Mux29~11_combout\ & \Mux29~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux29~11_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X39_Y34_N12
\ShiftRight1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\ir[0]~input_o\ & ((\ShiftRight0~8_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight1~38_combout\,
	datac => \ShiftRight0~8_combout\,
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X40_Y34_N2
\Mux28~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~17_combout\ = (\Mux28~11_combout\ & (((!\ShiftRight0~37_combout\)))) # (!\Mux28~11_combout\ & ((\ShiftRight0~37_combout\ & (\ShiftRight1~20_combout\)) # (!\ShiftRight0~37_combout\ & ((\ShiftRight1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \ShiftRight1~20_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \ShiftRight1~50_combout\,
	combout => \Mux28~17_combout\);

-- Location: LCCOMB_X40_Y29_N14
\ShiftRight1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~5_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight0~5_combout\,
	datad => \ShiftRight1~42_combout\,
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X41_Y29_N0
\ShiftRight1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\ir[0]~input_o\ & ((\ShiftRight0~25_combout\))) # (!\ir[0]~input_o\ & (\ShiftRight1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight1~40_combout\,
	datad => \ShiftRight0~25_combout\,
	combout => \ShiftRight1~51_combout\);

-- Location: LCCOMB_X40_Y34_N28
\ShiftRight0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\ir[2]~input_o\ & ((\ShiftRight1~51_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~52_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight1~51_combout\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X40_Y34_N14
\Mux28~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~18_combout\ = (\Mux28~17_combout\ & (((\ShiftRight0~52_combout\) # (!\Mux28~11_combout\)))) # (!\Mux28~17_combout\ & (\ShiftRight1~19_combout\ & (\Mux28~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \Mux28~17_combout\,
	datac => \Mux28~11_combout\,
	datad => \ShiftRight0~52_combout\,
	combout => \Mux28~18_combout\);

-- Location: LCCOMB_X38_Y33_N26
\ShiftRight0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\A[31]~input_o\ & \ir[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \ir[3]~input_o\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X38_Y33_N10
\ShiftRight0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (!\ir[1]~input_o\ & (\ir[2]~input_o\ & (\ShiftRight0~48_combout\ & !\ir[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \ShiftRight0~48_combout\,
	datad => \ir[0]~input_o\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X41_Y33_N8
\ShiftRight1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[28]~input_o\))) # (!\ir[0]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X41_Y33_N2
\ShiftRight1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\ShiftRight1~45_combout\) # ((\ShiftRight1~21_combout\ & \ir[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~21_combout\,
	datab => \ir[1]~input_o\,
	datac => \ShiftRight1~45_combout\,
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X38_Y32_N14
\ShiftRight1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~22_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftRight0~22_combout\,
	datad => \ShiftRight1~32_combout\,
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X38_Y33_N8
\ShiftRight0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\ir[3]~input_o\ & (\ShiftRight1~46_combout\ & ((!\ir[2]~input_o\)))) # (!\ir[3]~input_o\ & (((\ShiftRight1~44_combout\ & \ir[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight1~46_combout\,
	datac => \ShiftRight1~44_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X39_Y31_N20
\ShiftRight1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\ir[0]~input_o\ & (\ShiftRight0~19_combout\)) # (!\ir[0]~input_o\ & ((\ShiftRight1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datab => \ShiftRight1~34_combout\,
	datac => \ir[0]~input_o\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X38_Y33_N28
\ShiftRight0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\ShiftRight0~50_combout\) # ((\ShiftRight0~49_combout\) # ((\ShiftRight1~47_combout\ & \ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~50_combout\,
	datab => \ShiftRight0~49_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X45_Y34_N18
\Mux28~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[3]~input_o\ & ((\opcode[0]~input_o\) # (\B[3]~input_o\))) # (!\A[3]~input_o\ & (\opcode[0]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X45_Y34_N12
\Mux28~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~13_combout\ & ((\ShiftRight0~51_combout\) # ((!\opcode[1]~input_o\)))) # (!\Mux28~13_combout\ & (((\Equal0~2_combout\ & \opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \Mux28~13_combout\,
	datac => \Equal0~2_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X46_Y34_N2
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \B[3]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X46_Y34_N24
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\A[3]~input_o\ $ (\Add0~15_combout\ $ (!\Add0~13\)))) # (GND)
-- \Add0~17\ = CARRY((\A[3]~input_o\ & ((\Add0~15_combout\) # (!\Add0~13\))) # (!\A[3]~input_o\ & (\Add0~15_combout\ & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X47_Y34_N12
\Mux28~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux28~14_combout\)) # (!\Mux28~10_combout\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux28~14_combout\,
	datac => \Mux28~10_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X47_Y34_N30
\Mux28~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\Mux28~15_combout\ & (((\Mult0|auto_generated|w569w\(3))) # (!\Mux28~22_combout\))) # (!\Mux28~15_combout\ & (\Mux28~22_combout\ & ((\Mult1|auto_generated|w513w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~15_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult0|auto_generated|w569w\(3),
	datad => \Mult1|auto_generated|w513w\(3),
	combout => \Mux28~16_combout\);

-- Location: LCCOMB_X47_Y34_N0
\Mux28~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~19_combout\ = (\Mux28~6_combout\ & (((\Mux28~12_combout\)))) # (!\Mux28~6_combout\ & ((\Mux28~12_combout\ & (\Mux28~18_combout\)) # (!\Mux28~12_combout\ & ((\Mux28~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux28~18_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux28~12_combout\,
	combout => \Mux28~19_combout\);

-- Location: LCCOMB_X38_Y34_N20
\ShiftLeft0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[2]~input_o\))) # (!\ir[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X38_Y33_N24
\ShiftLeft0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\ShiftRight0~37_combout\ & ((\ShiftLeft0~9_combout\) # ((\ir[1]~input_o\ & \ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ShiftLeft0~9_combout\,
	datac => \ShiftLeft0~6_combout\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X38_Y33_N4
\ShiftRight1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\ir[3]~input_o\ & ((\ShiftRight1~46_combout\) # ((\ir[2]~input_o\)))) # (!\ir[3]~input_o\ & (((\ShiftRight1~47_combout\ & !\ir[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight1~46_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X38_Y33_N6
\ShiftRight1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~48_combout\) # ((!\ShiftRight1~48_combout\ & \ShiftRight1~44_combout\)))) # (!\ir[2]~input_o\ & (((\ShiftRight1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \ShiftRight1~48_combout\,
	datac => \ShiftRight1~44_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight1~49_combout\);

-- Location: LCCOMB_X38_Y33_N22
\Mux28~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~20_combout\ = (\Mux28~19_combout\ & (((\ShiftRight1~49_combout\) # (!\Mux28~8_combout\)))) # (!\Mux28~19_combout\ & (\ShiftLeft0~10_combout\ & (\Mux28~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~19_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \Mux28~8_combout\,
	datad => \ShiftRight1~49_combout\,
	combout => \Mux28~20_combout\);

-- Location: LCCOMB_X37_Y33_N10
\Mux28~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~21_combout\ = (\Mux29~11_combout\ & \Mux28~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux29~11_combout\,
	datad => \Mux28~20_combout\,
	combout => \Mux28~21_combout\);

-- Location: LCCOMB_X40_Y33_N18
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\Mux28~7_combout\ & ((\ir[3]~input_o\) # (\ir[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ir[2]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X41_Y35_N26
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\ir[3]~input_o\) # (\Mux28~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X46_Y34_N12
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \B[4]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X46_Y34_N26
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18_combout\ & ((\A[4]~input_o\ & (\Add0~17\ & VCC)) # (!\A[4]~input_o\ & (!\Add0~17\)))) # (!\Add0~18_combout\ & ((\A[4]~input_o\ & (!\Add0~17\)) # (!\A[4]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~20\ = CARRY((\Add0~18_combout\ & (!\A[4]~input_o\ & !\Add0~17\)) # (!\Add0~18_combout\ & ((!\Add0~17\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X40_Y33_N20
\ShiftRight0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & ((\ShiftRight0~23_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight0~20_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X40_Y33_N14
\ShiftRight0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\ShiftRight0~53_combout\) # ((\ir[3]~input_o\ & (!\ir[2]~input_o\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight0~53_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X45_Y33_N18
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[4]~input_o\ & ((\opcode[0]~input_o\) # (\B[4]~input_o\))) # (!\A[4]~input_o\ & (\opcode[0]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X45_Y33_N4
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\opcode[1]~input_o\ & ((\Mux27~2_combout\ & (\ShiftRight0~54_combout\)) # (!\Mux27~2_combout\ & ((\Equal0~4_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \ShiftRight0~54_combout\,
	datac => \Equal0~4_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X47_Y34_N10
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux28~9_combout\ & (\Mux28~10_combout\)) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & ((\Mux27~3_combout\))) # (!\Mux28~10_combout\ & (\Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux28~10_combout\,
	datac => \Add0~19_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X47_Y34_N4
\Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~4_combout\ & ((\Mult0|auto_generated|w569w\(4)) # ((!\Mux28~22_combout\)))) # (!\Mux27~4_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|w513w\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~4_combout\,
	datab => \Mult0|auto_generated|w569w\(4),
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|w513w\(4),
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X40_Y34_N16
\Mux27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux26~1_combout\ & (((\Mux27~5_combout\) # (\Mux26~0_combout\)))) # (!\Mux26~1_combout\ & (\ShiftRight0~14_combout\ & ((!\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~14_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux27~5_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X40_Y33_N0
\ShiftRight0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~26_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~6_combout\,
	datab => \ir[2]~input_o\,
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X40_Y34_N26
\Mux27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux26~0_combout\ & ((\Mux27~6_combout\ & ((\ShiftRight0~55_combout\))) # (!\Mux27~6_combout\ & (\ShiftRight0~9_combout\)))) # (!\Mux26~0_combout\ & (\Mux27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~6_combout\,
	datac => \ShiftRight0~9_combout\,
	datad => \ShiftRight0~55_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X40_Y33_N12
\ShiftRight1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (\ir[2]~input_o\ & ((\ir[3]~input_o\ & (\A[31]~input_o\)) # (!\ir[3]~input_o\ & ((\ShiftRight0~23_combout\))))) # (!\ir[2]~input_o\ & (((\ir[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \ir[3]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight1~62_combout\);

-- Location: LCCOMB_X40_Y33_N26
\ShiftRight1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\ShiftRight1~62_combout\ & (((\ir[2]~input_o\) # (\ShiftRight0~17_combout\)))) # (!\ShiftRight1~62_combout\ & (\ShiftRight0~20_combout\ & (!\ir[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~62_combout\,
	datab => \ShiftRight0~20_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X38_Y34_N30
\ShiftLeft0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\ir[0]~input_o\ & ((\ir[1]~input_o\ & ((\A[1]~input_o\))) # (!\ir[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X38_Y34_N24
\ShiftLeft0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\ir[1]~input_o\ & ((\A[2]~input_o\))) # (!\ir[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X38_Y34_N18
\ShiftLeft0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\ShiftLeft0~12_combout\) # ((!\ir[0]~input_o\ & \ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftLeft0~13_combout\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X42_Y31_N20
\ShiftLeft0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (!\ir[0]~input_o\ & !\ir[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[0]~input_o\,
	datac => \ir[1]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X38_Y30_N8
\ShiftLeft0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\ir[2]~input_o\ & (((\ShiftLeft0~11_combout\ & \A[0]~input_o\)))) # (!\ir[2]~input_o\ & (\ShiftLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~11_combout\,
	datad => \A[0]~input_o\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X38_Y30_N18
\Mux27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\opcode[0]~input_o\ & (\ShiftRight1~53_combout\)) # (!\opcode[0]~input_o\ & (((\ShiftLeft0~15_combout\ & \ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftRight1~53_combout\,
	datac => \ShiftLeft0~15_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X39_Y30_N30
\Mux27~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~11_combout\ = (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & (!\opcode[4]~input_o\ & \Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \Mux28~6_combout\,
	combout => \Mux27~11_combout\);

-- Location: LCCOMB_X39_Y30_N2
\Mux27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (!\opcode[4]~input_o\ & !\Mux28~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[4]~input_o\,
	datad => \Mux28~6_combout\,
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X39_Y30_N28
\Mux27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\Mux27~7_combout\ & ((\Mux27~9_combout\) # ((\Mux27~8_combout\ & \Mux27~11_combout\)))) # (!\Mux27~7_combout\ & (\Mux27~8_combout\ & (\Mux27~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~7_combout\,
	datab => \Mux27~8_combout\,
	datac => \Mux27~11_combout\,
	datad => \Mux27~9_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X41_Y34_N8
\ShiftRight0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & (\ShiftRight0~38_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~39_combout\,
	datad => \ir[3]~input_o\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X42_Y34_N30
\ShiftRight0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\ShiftRight0~56_combout\) # ((!\ir[2]~input_o\ & (\ShiftRight0~41_combout\ & \ir[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~41_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftRight0~56_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X42_Y34_N20
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[5]~input_o\ & ((\opcode[0]~input_o\) # (\A[5]~input_o\))) # (!\B[5]~input_o\ & (\opcode[0]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X42_Y34_N0
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\opcode[1]~input_o\ & ((\Mux26~3_combout\ & ((\ShiftRight0~57_combout\))) # (!\Mux26~3_combout\ & (\Equal0~5_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Equal0~5_combout\,
	datac => \ShiftRight0~57_combout\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X42_Y34_N18
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \opcode[0]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X46_Y34_N28
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\Add0~21_combout\ $ (\A[5]~input_o\ $ (!\Add0~20\)))) # (GND)
-- \Add0~23\ = CARRY((\Add0~21_combout\ & ((\A[5]~input_o\) # (!\Add0~20\))) # (!\Add0~21_combout\ & (\A[5]~input_o\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X47_Y34_N22
\Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux28~9_combout\ & (\Mux28~10_combout\)) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux26~4_combout\)) # (!\Mux28~10_combout\ & ((\Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux28~10_combout\,
	datac => \Mux26~4_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X47_Y34_N8
\Mux26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux26~5_combout\ & (((\Mult0|auto_generated|w569w\(5))) # (!\Mux28~22_combout\))) # (!\Mux26~5_combout\ & (\Mux28~22_combout\ & ((\Mult1|auto_generated|w513w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~5_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult0|auto_generated|w569w\(5),
	datad => \Mult1|auto_generated|w513w\(5),
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X41_Y34_N10
\ShiftRight0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~40_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftRight0~29_combout\,
	datad => \ShiftRight0~40_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X40_Y34_N4
\ShiftRight0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\ShiftRight0~32_combout\) # ((!\ir[1]~input_o\ & \ShiftRight1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[1]~input_o\,
	datac => \ShiftRight1~19_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X40_Y34_N22
\Mux26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~0_combout\ & ((\ShiftRight0~30_combout\) # ((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (((\ShiftRight0~58_combout\ & !\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \ShiftRight0~30_combout\,
	datac => \ShiftRight0~58_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X40_Y34_N8
\Mux26~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux26~7_combout\ & (((\ShiftRight0~59_combout\) # (!\Mux26~1_combout\)))) # (!\Mux26~7_combout\ & (\Mux26~6_combout\ & ((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~6_combout\,
	datab => \ShiftRight0~59_combout\,
	datac => \Mux26~7_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X38_Y34_N4
\ShiftLeft0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\ir[1]~input_o\ & (\A[3]~input_o\)) # (!\ir[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[5]~input_o\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X38_Y34_N22
\ShiftLeft0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~13_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~13_combout\,
	datac => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X40_Y32_N8
\ShiftLeft0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\ir[2]~input_o\ & (((!\ir[1]~input_o\ & \ShiftLeft0~6_combout\)))) # (!\ir[2]~input_o\ & (\ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \ir[2]~input_o\,
	datac => \ir[1]~input_o\,
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X41_Y34_N30
\ShiftRight1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\ir[2]~input_o\ & (\ShiftRight0~38_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~39_combout\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X39_Y33_N10
\ShiftRight1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\ir[1]~input_o\ & (((\A[31]~input_o\)))) # (!\ir[1]~input_o\ & ((\ir[2]~input_o\ & (\A[31]~input_o\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight1~21_combout\,
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X39_Y33_N12
\ShiftRight1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\ir[3]~input_o\ & ((\ShiftRight1~54_combout\))) # (!\ir[3]~input_o\ & (\ShiftRight1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \ShiftRight1~55_combout\,
	datad => \ShiftRight1~54_combout\,
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X38_Y30_N12
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\opcode[0]~input_o\ & (((\ShiftRight1~56_combout\)))) # (!\opcode[0]~input_o\ & (\ShiftLeft0~18_combout\ & ((\ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ShiftRight1~56_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X39_Y30_N14
\Mux26~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\Mux27~11_combout\ & ((\Mux26~2_combout\) # ((\Mux27~9_combout\ & \Mux26~8_combout\)))) # (!\Mux27~11_combout\ & (\Mux27~9_combout\ & (\Mux26~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~11_combout\,
	datab => \Mux27~9_combout\,
	datac => \Mux26~8_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~9_combout\);

-- Location: LCCOMB_X41_Y31_N20
\ShiftRight0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\ir[2]~input_o\ & (\ShiftRight1~35_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftRight1~35_combout\,
	datad => \ShiftRight1~41_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X41_Y31_N14
\ShiftRight0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[31]~input_o\))) # (!\ir[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X41_Y31_N0
\ShiftRight0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (!\ir[2]~input_o\ & ((\ir[3]~input_o\ & ((\ShiftRight0~60_combout\))) # (!\ir[3]~input_o\ & (\ShiftRight1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~33_combout\,
	datac => \ShiftRight0~60_combout\,
	datad => \ir[3]~input_o\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X41_Y31_N18
\ShiftRight0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\ShiftRight0~61_combout\) # ((\ir[2]~input_o\ & (\ShiftRight1~30_combout\ & !\ir[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~30_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftRight0~61_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X45_Y34_N24
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\opcode[0]~input_o\ & ((\A[6]~input_o\) # ((\B[6]~input_o\) # (\opcode[1]~input_o\)))) # (!\opcode[0]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X45_Y34_N10
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\opcode[1]~input_o\ & ((\Mux25~1_combout\ & ((\ShiftRight0~62_combout\))) # (!\Mux25~1_combout\ & (\Equal0~6_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Equal0~6_combout\,
	datac => \ShiftRight0~62_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X45_Y34_N14
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \B[6]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X46_Y34_N30
\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24_combout\ & ((\A[6]~input_o\ & (\Add0~23\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~23\)))) # (!\Add0~24_combout\ & ((\A[6]~input_o\ & (!\Add0~23\)) # (!\A[6]~input_o\ & ((\Add0~23\) # (GND)))))
-- \Add0~26\ = CARRY((\Add0~24_combout\ & (!\A[6]~input_o\ & !\Add0~23\)) # (!\Add0~24_combout\ & ((!\Add0~23\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X47_Y34_N18
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux28~9_combout\ & (\Mux28~10_combout\)) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux25~2_combout\)) # (!\Mux28~10_combout\ & ((\Add0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux28~10_combout\,
	datac => \Mux25~2_combout\,
	datad => \Add0~25_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X47_Y34_N28
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux25~3_combout\ & (((\Mult0|auto_generated|w569w\(6))) # (!\Mux28~22_combout\))) # (!\Mux25~3_combout\ & (\Mux28~22_combout\ & ((\Mult1|auto_generated|w513w\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult0|auto_generated|w569w\(6),
	datad => \Mult1|auto_generated|w513w\(6),
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X40_Y34_N10
\Mux25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux26~0_combout\ & (((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & ((\Mux25~4_combout\))) # (!\Mux26~1_combout\ & (\ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \ShiftRight1~39_combout\,
	datac => \Mux25~4_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X40_Y34_N12
\Mux25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux26~0_combout\ & ((\Mux25~5_combout\ & (\ShiftRight0~63_combout\)) # (!\Mux25~5_combout\ & ((\ShiftRight1~43_combout\))))) # (!\Mux26~0_combout\ & (((\Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \ShiftRight1~43_combout\,
	datad => \Mux25~5_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X41_Y30_N16
\ShiftLeft0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\ir[1]~input_o\ & ((\A[4]~input_o\))) # (!\ir[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X41_Y30_N18
\ShiftLeft0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~16_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~16_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X40_Y30_N10
\ShiftLeft0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~8_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftLeft0~8_combout\,
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X41_Y31_N4
\ShiftRight1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = (\ir[2]~input_o\ & ((\ShiftRight1~30_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftRight1~33_combout\,
	datad => \ShiftRight1~30_combout\,
	combout => \ShiftRight1~58_combout\);

-- Location: LCCOMB_X42_Y30_N12
\ShiftRight1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (\ir[3]~input_o\ & ((\ShiftLeft0~4_combout\ & ((\A[31]~input_o\))) # (!\ShiftLeft0~4_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftRight1~57_combout\);

-- Location: LCCOMB_X42_Y30_N6
\ShiftRight1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = (\ShiftRight1~57_combout\) # ((!\ir[3]~input_o\ & \ShiftRight1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight1~58_combout\,
	datad => \ShiftRight1~57_combout\,
	combout => \ShiftRight1~59_combout\);

-- Location: LCCOMB_X39_Y30_N24
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\opcode[0]~input_o\ & (((\ShiftRight1~59_combout\)))) # (!\opcode[0]~input_o\ & (\ShiftLeft0~21_combout\ & (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftLeft0~21_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftRight1~59_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X39_Y30_N26
\Mux25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux25~6_combout\ & ((\Mux27~9_combout\) # ((\Mux27~11_combout\ & \Mux25~0_combout\)))) # (!\Mux25~6_combout\ & (((\Mux27~11_combout\ & \Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datab => \Mux27~9_combout\,
	datac => \Mux27~11_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X40_Y34_N18
\ShiftRight0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\ir[2]~input_o\ & (\ShiftRight1~47_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~47_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight1~51_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X38_Y33_N18
\ShiftRight0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\ShiftRight0~48_combout\ & (((\ShiftRight1~44_combout\ & \ShiftRight0~37_combout\)) # (!\ShiftLeft0~4_combout\))) # (!\ShiftRight0~48_combout\ & (\ShiftRight1~44_combout\ & ((\ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \ShiftRight1~44_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X42_Y34_N4
\ShiftRight0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\ShiftRight0~64_combout\) # ((\ir[2]~input_o\ & (!\ir[3]~input_o\ & \ShiftRight1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~64_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftRight1~46_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X42_Y34_N10
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\opcode[0]~input_o\ & ((\A[7]~input_o\) # ((\B[7]~input_o\) # (\opcode[1]~input_o\)))) # (!\opcode[0]~input_o\ & (\A[7]~input_o\ & (\B[7]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X42_Y34_N14
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\opcode[1]~input_o\ & ((\Mux24~1_combout\ & ((\ShiftRight0~65_combout\))) # (!\Mux24~1_combout\ & (\Equal0~7_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Equal0~7_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X40_Y34_N30
\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = \opcode[0]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X46_Y33_N0
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\A[7]~input_o\ $ (\Add0~27_combout\ $ (!\Add0~26\)))) # (GND)
-- \Add0~29\ = CARRY((\A[7]~input_o\ & ((\Add0~27_combout\) # (!\Add0~26\))) # (!\A[7]~input_o\ & (\Add0~27_combout\ & !\Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X47_Y34_N6
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux28~10_combout\ & ((\Mux24~2_combout\) # ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((!\Mux28~9_combout\ & \Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux28~10_combout\,
	datac => \Mux28~9_combout\,
	datad => \Add0~28_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X47_Y34_N16
\Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux24~3_combout\ & ((\Mult0|auto_generated|w569w\(7)) # ((!\Mux28~22_combout\)))) # (!\Mux24~3_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|w513w\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mult0|auto_generated|w569w\(7),
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|w513w\(7),
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X40_Y34_N0
\Mux24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux26~1_combout\ & (((\Mux26~0_combout\)))) # (!\Mux26~1_combout\ & ((\Mux26~0_combout\ & (\ShiftRight1~52_combout\)) # (!\Mux26~0_combout\ & ((\ShiftRight1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~52_combout\,
	datab => \Mux26~1_combout\,
	datac => \ShiftRight1~50_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X40_Y34_N20
\Mux24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux26~1_combout\ & ((\Mux24~5_combout\ & (\ShiftRight0~66_combout\)) # (!\Mux24~5_combout\ & ((\Mux24~4_combout\))))) # (!\Mux26~1_combout\ & (((\Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \Mux24~4_combout\,
	datad => \Mux24~5_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X38_Y33_N0
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\ir[2]~input_o\ & ((\ShiftRight1~46_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~44_combout\,
	datac => \ShiftRight1~46_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X38_Y33_N30
\ShiftRight1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (\ir[3]~input_o\ & (\A[31]~input_o\)) # (!\ir[3]~input_o\ & ((\Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \ir[3]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \ShiftRight1~63_combout\);

-- Location: LCCOMB_X38_Y31_N0
\ShiftLeft0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\ShiftLeft0~9_combout\) # ((\ir[1]~input_o\ & \ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datac => \ShiftLeft0~9_combout\,
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X41_Y30_N28
\ShiftLeft0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\ir[1]~input_o\ & (\A[5]~input_o\)) # (!\ir[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[7]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X41_Y30_N30
\ShiftLeft0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~19_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~19_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X38_Y31_N18
\ShiftLeft0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~22_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~22_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X39_Y30_N12
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\opcode[0]~input_o\ & (\ShiftRight1~63_combout\)) # (!\opcode[0]~input_o\ & (((\ShiftRight0~10_combout\ & \ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftRight1~63_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftLeft0~25_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X39_Y30_N22
\Mux24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux27~11_combout\ & ((\Mux24~0_combout\) # ((\Mux27~9_combout\ & \Mux24~6_combout\)))) # (!\Mux27~11_combout\ & (\Mux27~9_combout\ & (\Mux24~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~11_combout\,
	datab => \Mux27~9_combout\,
	datac => \Mux24~6_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X41_Y35_N12
\Mux23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\ir[3]~input_o\ & (!\opcode[4]~input_o\ & !\Mux28~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X40_Y31_N16
\Mux23~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\Mux29~11_combout\ & ((\Mux28~7_combout\) # (!\ir[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \Mux29~11_combout\,
	datac => \Mux28~7_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X39_Y34_N22
\ShiftLeft0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\ir[1]~input_o\ & (\A[6]~input_o\)) # (!\ir[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X41_Y30_N8
\ShiftLeft0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\ir[0]~input_o\ & ((\ShiftLeft0~23_combout\))) # (!\ir[0]~input_o\ & (\ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~26_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X38_Y30_N14
\ShiftLeft0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~14_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datac => \ShiftLeft0~27_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X42_Y30_N16
\ShiftLeft0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\ir[3]~input_o\ & (((\A[0]~input_o\ & !\ShiftLeft0~4_combout\)))) # (!\ir[3]~input_o\ & (\ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftLeft0~28_combout\,
	datac => \A[0]~input_o\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X40_Y33_N4
\ShiftRight0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & ((\ShiftRight0~17_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftRight0~23_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X41_Y32_N4
\ShiftRight1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = (\ShiftRight0~67_combout\) # ((\A[31]~input_o\ & \ir[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ir[3]~input_o\,
	datad => \ShiftRight0~67_combout\,
	combout => \ShiftRight1~64_combout\);

-- Location: LCCOMB_X40_Y33_N30
\ShiftRight0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\ir[2]~input_o\ & (\ShiftRight0~6_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~6_combout\,
	datab => \ShiftRight0~9_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X43_Y34_N12
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \B[8]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X46_Y33_N2
\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30_combout\ & ((\A[8]~input_o\ & (\Add0~29\ & VCC)) # (!\A[8]~input_o\ & (!\Add0~29\)))) # (!\Add0~30_combout\ & ((\A[8]~input_o\ & (!\Add0~29\)) # (!\A[8]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~32\ = CARRY((\Add0~30_combout\ & (!\A[8]~input_o\ & !\Add0~29\)) # (!\Add0~30_combout\ & ((!\Add0~29\) # (!\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X44_Y33_N2
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\opcode[0]~input_o\ & ((\A[8]~input_o\) # ((\opcode[1]~input_o\) # (\B[8]~input_o\)))) # (!\opcode[0]~input_o\ & (\A[8]~input_o\ & (!\opcode[1]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[8]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X44_Y33_N4
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\opcode[1]~input_o\ & ((\Mux23~0_combout\ & (\ShiftRight0~67_combout\)) # (!\Mux23~0_combout\ & ((\Equal0~9_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \Equal0~9_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X47_Y32_N24
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux28~10_combout\ & (((\Mux23~1_combout\) # (\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (\Add0~31_combout\ & ((!\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Add0~31_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X47_Y32_N18
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & ((\Mult0|auto_generated|w569w\(8)) # ((!\Mux28~22_combout\)))) # (!\Mux23~2_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|w513w\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(8),
	datab => \Mux23~2_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|w513w\(8),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X39_Y32_N28
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux28~6_combout\ & (\Mux28~12_combout\)) # (!\Mux28~6_combout\ & ((\Mux28~12_combout\ & (\ShiftRight0~68_combout\)) # (!\Mux28~12_combout\ & ((\Mux23~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux28~12_combout\,
	datac => \ShiftRight0~68_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X39_Y32_N14
\Mux23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux28~8_combout\ & ((\Mux23~4_combout\ & ((\ShiftRight1~64_combout\))) # (!\Mux23~4_combout\ & (\ShiftLeft0~29_combout\)))) # (!\Mux28~8_combout\ & (((\Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~29_combout\,
	datab => \Mux28~8_combout\,
	datac => \ShiftRight1~64_combout\,
	datad => \Mux23~4_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X40_Y33_N24
\Mux23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~20_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~26_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~20_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X39_Y33_N14
\Mux23~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux23~7_combout\ & ((\Mux23~6_combout\) # ((\Mux23~8_combout\ & \Mux23~5_combout\)))) # (!\Mux23~7_combout\ & (\Mux23~8_combout\ & (\Mux23~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~7_combout\,
	datab => \Mux23~8_combout\,
	datac => \Mux23~5_combout\,
	datad => \Mux23~6_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X41_Y30_N10
\ShiftLeft0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\ir[1]~input_o\ & ((\A[7]~input_o\))) # (!\ir[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[7]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X41_Y30_N12
\ShiftLeft0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~26_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~26_combout\,
	datad => \ShiftLeft0~30_combout\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X40_Y32_N10
\ShiftLeft0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~17_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X40_Y32_N20
\ShiftLeft0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[0]~input_o\))) # (!\ir[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ir[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X40_Y32_N22
\ShiftLeft0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\ir[3]~input_o\ & (((!\ir[2]~input_o\ & \ShiftLeft0~33_combout\)))) # (!\ir[3]~input_o\ & (\ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~32_combout\,
	datab => \ir[2]~input_o\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~33_combout\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X41_Y34_N28
\ShiftRight0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & ((\ShiftRight0~41_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~41_combout\,
	datad => \ir[3]~input_o\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X44_Y33_N16
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\A[9]~input_o\) # (\B[9]~input_o\)))) # (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X44_Y33_N18
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\opcode[1]~input_o\ & ((\Mux22~1_combout\ & (\ShiftRight0~69_combout\)) # (!\Mux22~1_combout\ & ((\Equal0~10_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Equal0~10_combout\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X44_Y33_N14
\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \opcode[0]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X46_Y33_N4
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = ((\A[9]~input_o\ $ (\Add0~33_combout\ $ (!\Add0~32\)))) # (GND)
-- \Add0~35\ = CARRY((\A[9]~input_o\ & ((\Add0~33_combout\) # (!\Add0~32\))) # (!\A[9]~input_o\ & (\Add0~33_combout\ & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X47_Y32_N12
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux28~10_combout\ & ((\Mux22~2_combout\) # ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((\Add0~34_combout\ & !\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux22~2_combout\,
	datac => \Add0~34_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X47_Y32_N30
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~3_combout\ & (((\Mult0|auto_generated|w569w\(9))) # (!\Mux28~22_combout\))) # (!\Mux22~3_combout\ & (\Mux28~22_combout\ & ((\Mult1|auto_generated|w513w\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult0|auto_generated|w569w\(9),
	datad => \Mult1|auto_generated|w513w\(9),
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X41_Y34_N14
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux28~6_combout\ & (\Mux28~12_combout\)) # (!\Mux28~6_combout\ & ((\Mux28~12_combout\ & ((\ShiftRight0~31_combout\))) # (!\Mux28~12_combout\ & (\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux28~12_combout\,
	datac => \Mux22~4_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X41_Y34_N12
\ShiftRight1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~65_combout\ = (\ir[3]~input_o\ & (\A[31]~input_o\)) # (!\ir[3]~input_o\ & ((\ShiftRight1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datac => \ShiftRight1~24_combout\,
	datad => \ir[3]~input_o\,
	combout => \ShiftRight1~65_combout\);

-- Location: LCCOMB_X41_Y34_N0
\Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux28~8_combout\ & ((\Mux22~5_combout\ & ((\ShiftRight1~65_combout\))) # (!\Mux22~5_combout\ & (\ShiftLeft0~34_combout\)))) # (!\Mux28~8_combout\ & (((\Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux22~5_combout\,
	datad => \ShiftRight1~65_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X41_Y34_N26
\Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux22~0_combout\ & ((\Mux23~7_combout\) # ((\Mux22~6_combout\ & \Mux23~8_combout\)))) # (!\Mux22~0_combout\ & (\Mux22~6_combout\ & ((\Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux22~6_combout\,
	datac => \Mux23~7_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X41_Y31_N6
\ShiftRight1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~66_combout\ = (\ir[3]~input_o\ & ((\A[31]~input_o\))) # (!\ir[3]~input_o\ & (\ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \ir[3]~input_o\,
	datac => \A[31]~input_o\,
	combout => \ShiftRight1~66_combout\);

-- Location: LCCOMB_X41_Y30_N14
\ShiftLeft0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\ir[1]~input_o\ & ((\A[8]~input_o\))) # (!\ir[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X41_Y30_N24
\ShiftLeft0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\ir[0]~input_o\ & ((\ShiftLeft0~30_combout\))) # (!\ir[0]~input_o\ & (\ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~35_combout\,
	datad => \ShiftLeft0~30_combout\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X40_Y30_N28
\ShiftLeft0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~20_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~36_combout\,
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X40_Y30_N6
\ShiftLeft0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\ir[3]~input_o\ & (!\ir[2]~input_o\ & (\ShiftLeft0~8_combout\))) # (!\ir[3]~input_o\ & (((\ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X44_Y33_N22
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\A[10]~input_o\ & ((\opcode[0]~input_o\) # ((!\opcode[1]~input_o\ & \B[10]~input_o\)))) # (!\A[10]~input_o\ & (\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X41_Y31_N22
\ShiftRight0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & (\ShiftRight0~60_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ShiftRight0~60_combout\,
	datad => \ShiftRight1~30_combout\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X44_Y33_N0
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~1_combout\ & ((\ShiftRight0~70_combout\) # ((!\opcode[1]~input_o\)))) # (!\Mux21~1_combout\ & (((\opcode[1]~input_o\ & \Equal0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \ShiftRight0~70_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Equal0~11_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X44_Y33_N20
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \opcode[0]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X46_Y33_N6
\Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\A[10]~input_o\ & ((\Add0~36_combout\ & (\Add0~35\ & VCC)) # (!\Add0~36_combout\ & (!\Add0~35\)))) # (!\A[10]~input_o\ & ((\Add0~36_combout\ & (!\Add0~35\)) # (!\Add0~36_combout\ & ((\Add0~35\) # (GND)))))
-- \Add0~38\ = CARRY((\A[10]~input_o\ & (!\Add0~36_combout\ & !\Add0~35\)) # (!\A[10]~input_o\ & ((!\Add0~35\) # (!\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X47_Y34_N26
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux21~2_combout\)) # (!\Mux28~10_combout\ & ((\Add0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux21~2_combout\,
	datac => \Mux28~10_combout\,
	datad => \Add0~37_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X47_Y34_N20
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux21~3_combout\ & (((\Mult0|auto_generated|w569w\(10))) # (!\Mux28~22_combout\))) # (!\Mux21~3_combout\ & (\Mux28~22_combout\ & (\Mult1|auto_generated|w513w\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult1|auto_generated|w513w\(10),
	datad => \Mult0|auto_generated|w569w\(10),
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X41_Y31_N24
\Mux21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux28~6_combout\ & (\Mux28~12_combout\)) # (!\Mux28~6_combout\ & ((\Mux28~12_combout\ & ((\ShiftRight0~47_combout\))) # (!\Mux28~12_combout\ & (\Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux28~12_combout\,
	datac => \Mux21~4_combout\,
	datad => \ShiftRight0~47_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X41_Y31_N10
\Mux21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux28~8_combout\ & ((\Mux21~5_combout\ & (\ShiftRight1~66_combout\)) # (!\Mux21~5_combout\ & ((\ShiftLeft0~38_combout\))))) # (!\Mux28~8_combout\ & (((\Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~66_combout\,
	datab => \ShiftLeft0~38_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X41_Y31_N12
\Mux21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux21~6_combout\ & ((\Mux23~8_combout\) # ((\Mux21~0_combout\ & \Mux23~7_combout\)))) # (!\Mux21~6_combout\ & (\Mux21~0_combout\ & ((\Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~6_combout\,
	datab => \Mux21~0_combout\,
	datac => \Mux23~8_combout\,
	datad => \Mux23~7_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X38_Y33_N12
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux23~7_combout\ & ((\ir[2]~input_o\ & (\ShiftRight1~44_combout\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftRight1~44_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \Mux23~7_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X41_Y30_N2
\ShiftLeft0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\ir[1]~input_o\ & (\A[9]~input_o\)) # (!\ir[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X41_Y30_N20
\ShiftLeft0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~35_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~35_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X38_Y31_N20
\ShiftLeft0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~24_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~40_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X38_Y31_N22
\ShiftLeft0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\ir[3]~input_o\ & (!\ir[2]~input_o\ & (\ShiftLeft0~22_combout\))) # (!\ir[3]~input_o\ & (((\ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~22_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~41_combout\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X41_Y33_N12
\ShiftRight0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (!\ir[0]~input_o\ & (!\ir[3]~input_o\ & (\ir[2]~input_o\ & !\ir[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ir[2]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X41_Y33_N30
\ShiftRight0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\ShiftRight0~71_combout\ & ((\A[31]~input_o\) # ((\ShiftRight1~46_combout\ & \ShiftRight0~37_combout\)))) # (!\ShiftRight0~71_combout\ & (\ShiftRight1~46_combout\ & ((\ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~71_combout\,
	datab => \ShiftRight1~46_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X44_Y33_N28
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\A[11]~input_o\ & ((\opcode[0]~input_o\) # ((!\opcode[1]~input_o\ & \B[11]~input_o\)))) # (!\A[11]~input_o\ & (\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X44_Y33_N30
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux20~1_combout\ & ((\ShiftRight0~72_combout\) # ((!\opcode[1]~input_o\)))) # (!\Mux20~1_combout\ & (((\opcode[1]~input_o\ & \Equal0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \Mux20~1_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Equal0~12_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X44_Y33_N10
\Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = \opcode[0]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X46_Y33_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\A[11]~input_o\ $ (\Add0~39_combout\ $ (!\Add0~38\)))) # (GND)
-- \Add0~41\ = CARRY((\A[11]~input_o\ & ((\Add0~39_combout\) # (!\Add0~38\))) # (!\A[11]~input_o\ & (\Add0~39_combout\ & !\Add0~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Add0~39_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X47_Y32_N8
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux28~10_combout\ & ((\Mux20~2_combout\) # ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((\Add0~40_combout\ & !\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux20~2_combout\,
	datac => \Add0~40_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X47_Y32_N2
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux20~3_combout\ & ((\Mult0|auto_generated|w569w\(11)) # ((!\Mux28~22_combout\)))) # (!\Mux20~3_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|w513w\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(11),
	datab => \Mux20~3_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|w513w\(11),
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X38_Y33_N14
\Mux20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux28~12_combout\ & (((\ShiftRight0~52_combout\) # (\Mux28~6_combout\)))) # (!\Mux28~12_combout\ & (\Mux20~4_combout\ & ((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux28~12_combout\,
	datac => \ShiftRight0~52_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X41_Y32_N6
\ShiftRight1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~67_combout\ = (\ir[3]~input_o\ & (\A[31]~input_o\)) # (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & (\A[31]~input_o\)) # (!\ir[2]~input_o\ & ((\ShiftRight1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ShiftRight1~46_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftRight1~67_combout\);

-- Location: LCCOMB_X38_Y33_N16
\Mux20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux28~8_combout\ & ((\Mux20~5_combout\ & ((\ShiftRight1~67_combout\))) # (!\Mux20~5_combout\ & (\ShiftLeft0~42_combout\)))) # (!\Mux28~8_combout\ & (((\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~42_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux20~5_combout\,
	datad => \ShiftRight1~67_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X38_Y33_N2
\Mux20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux20~0_combout\) # ((\Mux20~6_combout\ & \Mux23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Mux20~6_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X40_Y33_N10
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\ir[2]~input_o\ & ((\ShiftRight0~23_combout\))) # (!\ir[2]~input_o\ & (\ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~20_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X40_Y29_N24
\ShiftLeft0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\ir[1]~input_o\ & ((\A[10]~input_o\))) # (!\ir[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \A[10]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X41_Y30_N6
\ShiftLeft0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\ir[0]~input_o\ & ((\ShiftLeft0~39_combout\))) # (!\ir[0]~input_o\ & (\ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~43_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X38_Y30_N16
\ShiftLeft0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~27_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~44_combout\,
	datac => \ShiftLeft0~27_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X38_Y30_N2
\ShiftLeft0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\ir[3]~input_o\ & ((\ShiftLeft0~15_combout\))) # (!\ir[3]~input_o\ & (\ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftLeft0~45_combout\,
	datac => \ShiftLeft0~15_combout\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X41_Y33_N16
\ShiftRight0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\ShiftRight0~37_combout\ & ((\ShiftRight0~16_combout\) # ((\ShiftRight1~16_combout\ & \ir[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \ir[1]~input_o\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X43_Y33_N24
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\A[12]~input_o\ & ((\opcode[0]~input_o\) # ((!\opcode[1]~input_o\ & \B[12]~input_o\)))) # (!\A[12]~input_o\ & (\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X43_Y33_N2
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\opcode[1]~input_o\ & ((\Mux19~1_combout\ & ((\ShiftRight0~73_combout\))) # (!\Mux19~1_combout\ & (\Equal0~14_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Equal0~14_combout\,
	datac => \ShiftRight0~73_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X43_Y33_N30
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = \opcode[0]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X46_Y33_N10
\Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\A[12]~input_o\ & ((\Add0~42_combout\ & (\Add0~41\ & VCC)) # (!\Add0~42_combout\ & (!\Add0~41\)))) # (!\A[12]~input_o\ & ((\Add0~42_combout\ & (!\Add0~41\)) # (!\Add0~42_combout\ & ((\Add0~41\) # (GND)))))
-- \Add0~44\ = CARRY((\A[12]~input_o\ & (!\Add0~42_combout\ & !\Add0~41\)) # (!\A[12]~input_o\ & ((!\Add0~41\) # (!\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X47_Y33_N8
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux19~2_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux19~2_combout\,
	datad => \Add0~43_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X47_Y33_N18
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\ & (((\Mult0|auto_generated|w569w\(12)) # (!\Mux28~22_combout\)))) # (!\Mux19~3_combout\ & (\Mult1|auto_generated|w513w\(12) & (\Mux28~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(12),
	datab => \Mux19~3_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult0|auto_generated|w569w\(12),
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X39_Y33_N8
\Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux28~12_combout\ & (((\ShiftRight0~55_combout\) # (\Mux28~6_combout\)))) # (!\Mux28~12_combout\ & (\Mux19~4_combout\ & ((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \Mux28~12_combout\,
	datac => \ShiftRight0~55_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X39_Y33_N22
\ShiftRight1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~68_combout\ = (\ShiftRight0~73_combout\) # ((\A[31]~input_o\ & ((\ir[3]~input_o\) # (\ir[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \ShiftRight0~73_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~68_combout\);

-- Location: LCCOMB_X39_Y33_N18
\Mux19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux28~8_combout\ & ((\Mux19~5_combout\ & ((\ShiftRight1~68_combout\))) # (!\Mux19~5_combout\ & (\ShiftLeft0~46_combout\)))) # (!\Mux28~8_combout\ & (((\Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~46_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux19~5_combout\,
	datad => \ShiftRight1~68_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X39_Y33_N4
\Mux19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux23~7_combout\ & ((\Mux19~0_combout\) # ((\Mux23~8_combout\ & \Mux19~6_combout\)))) # (!\Mux23~7_combout\ & (\Mux23~8_combout\ & ((\Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~7_combout\,
	datab => \Mux23~8_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux19~6_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X41_Y33_N18
\ShiftRight1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (\ir[1]~input_o\ & (((\A[31]~input_o\)))) # (!\ir[1]~input_o\ & ((\ShiftRight0~37_combout\ & (\ShiftRight1~21_combout\)) # (!\ShiftRight0~37_combout\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~21_combout\,
	datab => \ir[1]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftRight1~60_combout\);

-- Location: LCCOMB_X40_Y29_N26
\ShiftLeft0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\ir[1]~input_o\ & (\A[11]~input_o\)) # (!\ir[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \A[13]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X40_Y29_N4
\ShiftLeft0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~43_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~43_combout\,
	datac => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X40_Y32_N24
\ShiftLeft0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~31_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X40_Y32_N18
\ShiftLeft0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\ir[3]~input_o\ & ((\ShiftLeft0~18_combout\))) # (!\ir[3]~input_o\ & (\ShiftLeft0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \ShiftLeft0~49_combout\,
	datac => \ShiftLeft0~18_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X41_Y34_N6
\ShiftRight0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (!\ir[2]~input_o\ & (!\ir[3]~input_o\ & \ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ShiftRight0~41_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X43_Y33_N14
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[13]~input_o\ & ((\B[13]~input_o\) # (\opcode[0]~input_o\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X43_Y33_N8
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\opcode[1]~input_o\ & ((\Mux18~0_combout\ & (\ShiftRight0~75_combout\)) # (!\Mux18~0_combout\ & ((\Equal0~15_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Mux18~0_combout\,
	datad => \Equal0~15_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X43_Y33_N12
\Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = \B[13]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~45_combout\);

-- Location: LCCOMB_X46_Y33_N12
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = ((\Add0~45_combout\ $ (\A[13]~input_o\ $ (!\Add0~44\)))) # (GND)
-- \Add0~47\ = CARRY((\Add0~45_combout\ & ((\A[13]~input_o\) # (!\Add0~44\))) # (!\Add0~45_combout\ & (\A[13]~input_o\ & !\Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X39_Y32_N8
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux18~1_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux18~1_combout\,
	datad => \Add0~46_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X39_Y32_N26
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux28~22_combout\ & ((\Mux18~2_combout\ & ((\Mult0|auto_generated|w569w\(13)))) # (!\Mux18~2_combout\ & (\Mult1|auto_generated|w513w\(13))))) # (!\Mux28~22_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(13),
	datab => \Mult0|auto_generated|w569w\(13),
	datac => \Mux28~22_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X39_Y32_N4
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux28~12_combout\ & (((\Mux28~6_combout\) # (\ShiftRight0~59_combout\)))) # (!\Mux28~12_combout\ & (\Mux18~3_combout\ & (!\Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \Mux28~12_combout\,
	datac => \Mux28~6_combout\,
	datad => \ShiftRight0~59_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X39_Y32_N22
\Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~4_combout\ & ((\ShiftRight1~60_combout\) # ((!\Mux28~8_combout\)))) # (!\Mux18~4_combout\ & (((\ShiftLeft0~50_combout\ & \Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \ShiftLeft0~50_combout\,
	datac => \Mux18~4_combout\,
	datad => \Mux28~8_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X39_Y33_N30
\Mux18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux23~7_combout\ & ((\ShiftRight1~55_combout\) # ((\Mux18~5_combout\ & \Mux23~8_combout\)))) # (!\Mux23~7_combout\ & (\Mux18~5_combout\ & ((\Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~7_combout\,
	datab => \Mux18~5_combout\,
	datac => \ShiftRight1~55_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X39_Y30_N10
\ShiftRight1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = (\ir[3]~input_o\ & (((\A[31]~input_o\)))) # (!\ir[3]~input_o\ & ((\ShiftLeft0~4_combout\ & ((\A[31]~input_o\))) # (!\ShiftLeft0~4_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datab => \A[30]~input_o\,
	datac => \ShiftLeft0~4_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~61_combout\);

-- Location: LCCOMB_X40_Y29_N6
\ShiftLeft0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\ir[1]~input_o\ & ((\A[12]~input_o\))) # (!\ir[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[12]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X40_Y29_N0
\ShiftLeft0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~47_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~47_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X40_Y30_N24
\ShiftLeft0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~36_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~52_combout\,
	datad => \ShiftLeft0~36_combout\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X39_Y30_N16
\ShiftLeft0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\ir[3]~input_o\ & (\ShiftLeft0~21_combout\)) # (!\ir[3]~input_o\ & ((\ShiftLeft0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~21_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X41_Y33_N14
\ShiftRight0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\ShiftRight1~16_combout\ & (!\ir[3]~input_o\ & (!\ir[2]~input_o\ & !\ir[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \ir[3]~input_o\,
	datac => \ir[2]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X42_Y32_N18
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\opcode[0]~input_o\ & ((\B[14]~input_o\) # ((\opcode[1]~input_o\) # (\A[14]~input_o\)))) # (!\opcode[0]~input_o\ & (\B[14]~input_o\ & (!\opcode[1]~input_o\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[14]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X42_Y32_N28
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\opcode[1]~input_o\ & ((\Mux17~0_combout\ & ((\ShiftRight0~76_combout\))) # (!\Mux17~0_combout\ & (\Equal0~16_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~16_combout\,
	datab => \opcode[1]~input_o\,
	datac => \ShiftRight0~76_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X42_Y32_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \opcode[0]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X46_Y33_N14
\Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48_combout\ & ((\A[14]~input_o\ & (\Add0~47\ & VCC)) # (!\A[14]~input_o\ & (!\Add0~47\)))) # (!\Add0~48_combout\ & ((\A[14]~input_o\ & (!\Add0~47\)) # (!\A[14]~input_o\ & ((\Add0~47\) # (GND)))))
-- \Add0~50\ = CARRY((\Add0~48_combout\ & (!\A[14]~input_o\ & !\Add0~47\)) # (!\Add0~48_combout\ & ((!\Add0~47\) # (!\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X47_Y32_N28
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux17~1_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux17~1_combout\,
	datad => \Add0~49_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X47_Y32_N22
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux28~22_combout\ & ((\Mux17~2_combout\ & ((\Mult0|auto_generated|w569w\(14)))) # (!\Mux17~2_combout\ & (\Mult1|auto_generated|w513w\(14))))) # (!\Mux28~22_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(14),
	datab => \Mux28~22_combout\,
	datac => \Mult0|auto_generated|w569w\(14),
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X39_Y30_N20
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux28~6_combout\ & (((\Mux28~12_combout\)))) # (!\Mux28~6_combout\ & ((\Mux28~12_combout\ & ((\ShiftRight0~63_combout\))) # (!\Mux28~12_combout\ & (\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux28~12_combout\,
	datad => \ShiftRight0~63_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X39_Y30_N6
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux28~8_combout\ & ((\Mux17~4_combout\ & (\ShiftRight1~61_combout\)) # (!\Mux17~4_combout\ & ((\ShiftLeft0~54_combout\))))) # (!\Mux28~8_combout\ & (((\Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~61_combout\,
	datab => \ShiftLeft0~54_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X39_Y33_N0
\Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~5_combout\ & ((\Mux23~8_combout\) # ((\ShiftRight1~58_combout\ & \Mux23~7_combout\)))) # (!\Mux17~5_combout\ & (\ShiftRight1~58_combout\ & (\Mux23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~5_combout\,
	datab => \ShiftRight1~58_combout\,
	datac => \Mux23~7_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X42_Y30_N2
\ShiftRight0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (!\ir[3]~input_o\ & (\A[31]~input_o\ & !\ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X42_Y32_N24
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\opcode[0]~input_o\ & ((\A[15]~input_o\) # ((\opcode[1]~input_o\) # (\B[15]~input_o\)))) # (!\opcode[0]~input_o\ & (\A[15]~input_o\ & (!\opcode[1]~input_o\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X42_Y32_N26
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\opcode[1]~input_o\ & ((\Mux16~1_combout\ & (\ShiftRight0~74_combout\)) # (!\Mux16~1_combout\ & ((\Equal0~17_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Equal0~17_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X42_Y32_N30
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = \opcode[0]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X46_Y33_N16
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\A[15]~input_o\ $ (\Add0~51_combout\ $ (!\Add0~50\)))) # (GND)
-- \Add0~53\ = CARRY((\A[15]~input_o\ & ((\Add0~51_combout\) # (!\Add0~50\))) # (!\A[15]~input_o\ & (\Add0~51_combout\ & !\Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Add0~51_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X39_Y32_N24
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux16~2_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux16~2_combout\,
	datad => \Add0~52_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X39_Y32_N18
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux28~22_combout\ & ((\Mux16~3_combout\ & ((\Mult0|auto_generated|w569w\(15)))) # (!\Mux16~3_combout\ & (\Mult1|auto_generated|w513w\(15))))) # (!\Mux28~22_combout\ & (((\Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(15),
	datab => \Mult0|auto_generated|w569w\(15),
	datac => \Mux28~22_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X39_Y32_N12
\Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux28~12_combout\ & ((\ShiftRight0~66_combout\) # ((\Mux28~6_combout\)))) # (!\Mux28~12_combout\ & (((!\Mux28~6_combout\ & \Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~66_combout\,
	datab => \Mux28~12_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X40_Y29_N10
\ShiftLeft0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\ir[1]~input_o\ & (\A[13]~input_o\)) # (!\ir[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ir[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X40_Y29_N28
\ShiftLeft0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~51_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~51_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftLeft0~55_combout\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X38_Y31_N24
\ShiftLeft0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~40_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftLeft0~56_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X38_Y31_N26
\ShiftLeft0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\ir[3]~input_o\ & ((\ShiftLeft0~25_combout\))) # (!\ir[3]~input_o\ & (\ShiftLeft0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~57_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~25_combout\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X39_Y33_N26
\Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~5_combout\ & ((\A[31]~input_o\) # ((!\Mux28~8_combout\)))) # (!\Mux16~5_combout\ & (((\ShiftLeft0~58_combout\ & \Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~5_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftLeft0~58_combout\,
	datad => \Mux28~8_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X39_Y33_N20
\Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux16~6_combout\ & ((\Mux23~8_combout\) # ((\Mux23~7_combout\ & \Mux16~0_combout\)))) # (!\Mux16~6_combout\ & (((\Mux23~7_combout\ & \Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~6_combout\,
	datab => \Mux23~8_combout\,
	datac => \Mux23~7_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X41_Y29_N18
\ShiftLeft0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (\ir[1]~input_o\ & ((\A[14]~input_o\))) # (!\ir[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \A[14]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X40_Y29_N30
\ShiftLeft0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\ir[0]~input_o\ & ((\ShiftLeft0~55_combout\))) # (!\ir[0]~input_o\ & (\ShiftLeft0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~60_combout\,
	datad => \ShiftLeft0~55_combout\,
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X38_Y30_N4
\ShiftLeft0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~44_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~61_combout\,
	datac => \ShiftLeft0~44_combout\,
	datad => \ir[2]~input_o\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X42_Y30_N30
\ShiftLeft0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\ir[3]~input_o\ & ((\ShiftLeft0~28_combout\))) # (!\ir[3]~input_o\ & (\ShiftLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~62_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~28_combout\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X42_Y30_N24
\Mux79~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux79~2_combout\ = (\ir[4]~input_o\ & (((\opcode[0]~input_o\)))) # (!\ir[4]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftRight0~28_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftLeft0~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ir[4]~input_o\,
	datac => \ShiftLeft0~63_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux79~2_combout\);

-- Location: LCCOMB_X42_Y30_N20
\ShiftLeft0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (!\ir[3]~input_o\ & (\A[0]~input_o\ & !\ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X42_Y30_N26
\Mux79~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux79~3_combout\ = (\Mux79~2_combout\ & ((\A[31]~input_o\) # ((!\ir[4]~input_o\)))) # (!\Mux79~2_combout\ & (((\ir[4]~input_o\ & \ShiftLeft0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux79~2_combout\,
	datac => \ir[4]~input_o\,
	datad => \ShiftLeft0~59_combout\,
	combout => \Mux79~3_combout\);

-- Location: LCCOMB_X46_Y31_N30
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\opcode[1]~input_o\ & (\Mux79~3_combout\ & (!\opcode[2]~input_o\ & \opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Mux79~3_combout\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X46_Y31_N4
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \B[16]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[16]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~54_combout\);

-- Location: LCCOMB_X46_Y33_N18
\Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\A[16]~input_o\ & ((\Add0~54_combout\ & (\Add0~53\ & VCC)) # (!\Add0~54_combout\ & (!\Add0~53\)))) # (!\A[16]~input_o\ & ((\Add0~54_combout\ & (!\Add0~53\)) # (!\Add0~54_combout\ & ((\Add0~53\) # (GND)))))
-- \Add0~56\ = CARRY((\A[16]~input_o\ & (!\Add0~54_combout\ & !\Add0~53\)) # (!\A[16]~input_o\ & ((!\Add0~53\) # (!\Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X46_Y31_N10
\Mux79~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux79~5_combout\ = (\opcode[0]~input_o\ & ((\Mult1|auto_generated|w513w\(16)))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|w569w\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \Mult0|auto_generated|w569w\(16),
	datad => \Mult1|auto_generated|w513w\(16),
	combout => \Mux79~5_combout\);

-- Location: LCCOMB_X46_Y31_N6
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\opcode[1]~input_o\ & (((\opcode[2]~input_o\) # (\Mux79~5_combout\)))) # (!\opcode[1]~input_o\ & (\Add0~55_combout\ & (!\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Add0~55_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux79~5_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X42_Y33_N22
\Mux79~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux79~6_combout\ = (\opcode[0]~input_o\ & (\ShiftRight0~28_combout\ & (!\ir[4]~input_o\))) # (!\opcode[0]~input_o\ & (((\Equal0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftRight0~28_combout\,
	datac => \ir[4]~input_o\,
	datad => \Equal0~26_combout\,
	combout => \Mux79~6_combout\);

-- Location: LCCOMB_X46_Y31_N0
\Mux79~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux79~4_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # (\opcode[0]~input_o\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux79~4_combout\);

-- Location: LCCOMB_X46_Y31_N24
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\ & ((\Mux79~6_combout\) # ((!\opcode[2]~input_o\)))) # (!\Mux15~1_combout\ & (((\opcode[2]~input_o\ & \Mux79~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux79~6_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux79~4_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X46_Y31_N18
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (!\opcode[4]~input_o\ & ((\Mux15~0_combout\) # ((\Mux15~2_combout\ & !\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux15~2_combout\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X41_Y35_N30
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\ir[4]~input_o\) # (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X41_Y29_N20
\ShiftLeft0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\ir[1]~input_o\ & (\A[15]~input_o\)) # (!\ir[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[17]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X41_Y29_N30
\ShiftLeft0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\ir[0]~input_o\ & ((\ShiftLeft0~60_combout\))) # (!\ir[0]~input_o\ & (\ShiftLeft0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~64_combout\,
	datad => \ShiftLeft0~60_combout\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X40_Y32_N28
\ShiftLeft0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~48_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X42_Y31_N30
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\opcode[0]~input_o\) # ((\ir[3]~input_o\ & !\ir[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X40_Y32_N14
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux14~1_combout\ & ((\ShiftLeft0~32_combout\) # ((\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\ShiftLeft0~66_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~32_combout\,
	datab => \ShiftLeft0~66_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X40_Y32_N0
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~0_combout\ & ((\Mux14~2_combout\ & ((\ShiftRight1~27_combout\))) # (!\Mux14~2_combout\ & (\ShiftLeft0~105_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~105_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \ShiftRight1~27_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X47_Y33_N12
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & ((\A[31]~input_o\))) # (!\Mux30~1_combout\ & (\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Mux30~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X43_Y34_N30
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\opcode[1]~input_o\ & ((!\opcode[0]~input_o\) # (!\ir[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X42_Y33_N6
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\A[17]~input_o\) # (\B[17]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\A[17]~input_o\ & \B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[17]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X42_Y33_N16
\Mux14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux14~5_combout\ & ((\Mux14~6_combout\ & (\Equal0~27_combout\)) # (!\Mux14~6_combout\ & ((\ShiftRight0~43_combout\))))) # (!\Mux14~5_combout\ & (((\Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~27_combout\,
	datab => \Mux14~5_combout\,
	datac => \ShiftRight0~43_combout\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X42_Y33_N4
\Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = \opcode[0]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add0~57_combout\);

-- Location: LCCOMB_X46_Y33_N20
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = ((\A[17]~input_o\ $ (\Add0~57_combout\ $ (!\Add0~56\)))) # (GND)
-- \Add0~59\ = CARRY((\A[17]~input_o\ & ((\Add0~57_combout\) # (!\Add0~56\))) # (!\A[17]~input_o\ & (\Add0~57_combout\ & !\Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Add0~57_combout\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X47_Y33_N30
\Mux14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux14~7_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux14~7_combout\,
	datad => \Add0~58_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X47_Y33_N16
\Mux14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux14~8_combout\ & ((\Mult0|auto_generated|w569w\(17)) # ((!\Mux28~22_combout\)))) # (!\Mux14~8_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|w513w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~8_combout\,
	datab => \Mult0|auto_generated|w569w\(17),
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|w513w\(17),
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X47_Y33_N26
\Mux14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (!\opcode[4]~input_o\ & ((\Mux14~4_combout\) # ((\Mux14~9_combout\ & !\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux14~9_combout\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux14~10_combout\);

-- Location: DSPMULT_X48_Y36_N0
\Mult1|auto_generated|mac_mult5\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y36_N2
\Mult1|auto_generated|mac_out6\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: DSPMULT_X48_Y34_N0
\Mult1|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y34_N2
\Mult1|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y35_N16
\Mult1|auto_generated|add9_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[0]~0_combout\ = (\Mult1|auto_generated|mac_out6~dataout\ & (\Mult1|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out6~dataout\ & (\Mult1|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult1|auto_generated|add9_result[0]~1\ = CARRY((\Mult1|auto_generated|mac_out6~dataout\ & \Mult1|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~dataout\,
	datab => \Mult1|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult1|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult1|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X50_Y35_N2
\Mult1|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|add9_result[0]~0_combout\ & (\Mult1|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\Mult1|auto_generated|add9_result[0]~0_combout\ & (\Mult1|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|add9_result[0]~0_combout\ & \Mult1|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[0]~0_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: DSPMULT_X48_Y31_N0
\Mult0|auto_generated|mac_mult5\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y31_N2
\Mult0|auto_generated|mac_out6\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: DSPMULT_X48_Y30_N0
\Mult0|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y30_N2
\Mult0|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y31_N2
\Mult0|auto_generated|add9_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[0]~0_combout\ = (\Mult0|auto_generated|mac_out6~dataout\ & (\Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out6~dataout\ & (\Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult0|auto_generated|add9_result[0]~1\ = CARRY((\Mult0|auto_generated|mac_out6~dataout\ & \Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~dataout\,
	datab => \Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult0|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X49_Y31_N2
\Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|add9_result[0]~0_combout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|add9_result[0]~0_combout\ & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT18\ & \Mult0|auto_generated|add9_result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult0|auto_generated|add9_result[0]~0_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X45_Y33_N16
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\B[18]~input_o\) # (\A[18]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X45_Y33_N6
\Equal0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~40_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Equal0~40_combout\);

-- Location: LCCOMB_X45_Y33_N2
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux14~5_combout\ & ((\Mux13~3_combout\ & ((\Equal0~40_combout\))) # (!\Mux13~3_combout\ & (\ShiftRight0~46_combout\)))) # (!\Mux14~5_combout\ & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux13~3_combout\,
	datac => \ShiftRight0~46_combout\,
	datad => \Equal0~40_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X42_Y33_N26
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = \B[18]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X46_Y33_N22
\Add0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Add0~60_combout\ & ((\A[18]~input_o\ & (\Add0~59\ & VCC)) # (!\A[18]~input_o\ & (!\Add0~59\)))) # (!\Add0~60_combout\ & ((\A[18]~input_o\ & (!\Add0~59\)) # (!\A[18]~input_o\ & ((\Add0~59\) # (GND)))))
-- \Add0~62\ = CARRY((\Add0~60_combout\ & (!\A[18]~input_o\ & !\Add0~59\)) # (!\Add0~60_combout\ & ((!\Add0~59\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X46_Y35_N18
\Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux28~10_combout\ & ((\Mux13~4_combout\) # ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((\Add0~61_combout\ & !\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux28~10_combout\,
	datac => \Add0~61_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X46_Y35_N20
\Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux28~22_combout\ & ((\Mux13~5_combout\ & ((\Mult0|auto_generated|op_1~0_combout\))) # (!\Mux13~5_combout\ & (\Mult1|auto_generated|op_1~0_combout\)))) # (!\Mux28~22_combout\ & (((\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~0_combout\,
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X41_Y29_N24
\ShiftLeft0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\ir[1]~input_o\ & ((\A[16]~input_o\))) # (!\ir[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[16]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X41_Y29_N2
\ShiftLeft0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\ir[0]~input_o\ & ((\ShiftLeft0~64_combout\))) # (!\ir[0]~input_o\ & (\ShiftLeft0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~67_combout\,
	datad => \ShiftLeft0~64_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X40_Y30_N26
\ShiftLeft0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~52_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~52_combout\,
	datac => \ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X40_Y30_N12
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux14~0_combout\ & (((\Mux14~1_combout\) # (\ShiftLeft0~106_combout\)))) # (!\Mux14~0_combout\ & (\ShiftLeft0~69_combout\ & (!\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~69_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux14~1_combout\,
	datad => \ShiftLeft0~106_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X40_Y30_N22
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & (((\ShiftRight1~36_combout\) # (!\Mux14~1_combout\)))) # (!\Mux13~0_combout\ & (\ShiftLeft0~37_combout\ & (\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \ShiftLeft0~37_combout\,
	datac => \Mux14~1_combout\,
	datad => \ShiftRight1~36_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X46_Y35_N0
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & ((\A[31]~input_o\))) # (!\Mux30~1_combout\ & (\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux30~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X46_Y35_N22
\Mux13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (!\opcode[4]~input_o\ & ((\Mux13~2_combout\) # ((!\opcode[3]~input_o\ & \Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux13~6_combout\,
	datac => \opcode[4]~input_o\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X41_Y29_N4
\ShiftLeft0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\ir[1]~input_o\ & ((\A[17]~input_o\))) # (!\ir[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \A[17]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X41_Y29_N6
\ShiftLeft0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~67_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~67_combout\,
	datac => \ShiftLeft0~70_combout\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X38_Y31_N28
\ShiftLeft0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~56_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datac => \ShiftLeft0~56_combout\,
	datad => \ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X38_Y31_N30
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux14~0_combout\ & (((\Mux14~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\ShiftLeft0~41_combout\))) # (!\Mux14~1_combout\ & (\ShiftLeft0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~72_combout\,
	datab => \ShiftLeft0~41_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X38_Y33_N20
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\ShiftRight1~49_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux12~0_combout\ & (((\ShiftLeft0~10_combout\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~49_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X47_Y33_N20
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & ((\A[31]~input_o\))) # (!\Mux30~1_combout\ & (\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux30~1_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X45_Y34_N30
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[19]~input_o\ & ((\opcode[0]~input_o\) # (\B[19]~input_o\))) # (!\A[19]~input_o\ & (\opcode[0]~input_o\ & \B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[19]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X45_Y34_N28
\Equal0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~41_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Equal0~41_combout\);

-- Location: LCCOMB_X45_Y34_N0
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux14~5_combout\ & ((\Mux12~3_combout\ & ((\Equal0~41_combout\))) # (!\Mux12~3_combout\ & (\ShiftRight0~51_combout\)))) # (!\Mux14~5_combout\ & (((\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux12~3_combout\,
	datad => \Equal0~41_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X42_Y33_N20
\Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = \opcode[0]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \B[19]~input_o\,
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X46_Y33_N24
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = ((\A[19]~input_o\ $ (\Add0~63_combout\ $ (!\Add0~62\)))) # (GND)
-- \Add0~65\ = CARRY((\A[19]~input_o\ & ((\Add0~63_combout\) # (!\Add0~62\))) # (!\A[19]~input_o\ & (\Add0~63_combout\ & !\Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Add0~63_combout\,
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X47_Y33_N22
\Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux12~4_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux12~4_combout\,
	datad => \Add0~64_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X47_Y31_N4
\Mult0|auto_generated|add9_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[1]~2_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|mac_out6~DATAOUT1\ & (\Mult0|auto_generated|add9_result[0]~1\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- (!\Mult0|auto_generated|add9_result[0]~1\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\Mult0|auto_generated|add9_result[0]~1\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- ((\Mult0|auto_generated|add9_result[0]~1\) # (GND)))))
-- \Mult0|auto_generated|add9_result[1]~3\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & !\Mult0|auto_generated|add9_result[0]~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\Mult0|auto_generated|add9_result[0]~1\) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[0]~1\,
	combout => \Mult0|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X49_Y31_N4
\Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|add9_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Mult0|auto_generated|op_1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Mult0|auto_generated|op_1~1\)))) # (!\Mult0|auto_generated|add9_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~3\ = CARRY((\Mult0|auto_generated|add9_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|add9_result[1]~2_combout\ & ((!\Mult0|auto_generated|op_1~1\) 
-- # (!\Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[1]~2_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X49_Y35_N18
\Mult1|auto_generated|add9_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[1]~2_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT1\ & (\Mult1|auto_generated|add9_result[0]~1\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT1\ & 
-- (!\Mult1|auto_generated|add9_result[0]~1\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT1\ & (!\Mult1|auto_generated|add9_result[0]~1\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT1\ & 
-- ((\Mult1|auto_generated|add9_result[0]~1\) # (GND)))))
-- \Mult1|auto_generated|add9_result[1]~3\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|mac_out6~DATAOUT1\ & !\Mult1|auto_generated|add9_result[0]~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\Mult1|auto_generated|add9_result[0]~1\) # (!\Mult1|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[0]~1\,
	combout => \Mult1|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult1|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X50_Y35_N4
\Mult1|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|add9_result[1]~2_combout\ & (\Mult1|auto_generated|op_1~1\ & VCC)) # (!\Mult1|auto_generated|add9_result[1]~2_combout\ & 
-- (!\Mult1|auto_generated|op_1~1\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|add9_result[1]~2_combout\ & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|add9_result[1]~2_combout\ & 
-- ((\Mult1|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|auto_generated|op_1~3\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Mult1|auto_generated|add9_result[1]~2_combout\ & !\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult1|auto_generated|op_1~1\) # 
-- (!\Mult1|auto_generated|add9_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult1|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X47_Y33_N24
\Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & ((\Mult0|auto_generated|op_1~2_combout\) # ((!\Mux28~22_combout\)))) # (!\Mux12~5_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~5_combout\,
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|op_1~2_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X47_Y33_N10
\Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!\opcode[4]~input_o\ & ((\Mux12~2_combout\) # ((!\opcode[3]~input_o\ & \Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \Mux12~2_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X41_Y29_N8
\ShiftLeft0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (\ir[1]~input_o\ & ((\A[18]~input_o\))) # (!\ir[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \ir[1]~input_o\,
	datad => \A[18]~input_o\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X41_Y29_N26
\ShiftLeft0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~70_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~70_combout\,
	datac => \ShiftLeft0~74_combout\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X38_Y30_N0
\ShiftLeft0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~61_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~61_combout\,
	datad => \ShiftLeft0~75_combout\,
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X38_Y30_N22
\ShiftLeft0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (!\ir[3]~input_o\ & \ShiftLeft0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~input_o\,
	datac => \ShiftLeft0~15_combout\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X38_Y30_N26
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux14~0_combout\ & (((\ShiftLeft0~73_combout\) # (\Mux14~1_combout\)))) # (!\Mux14~0_combout\ & (\ShiftLeft0~76_combout\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftLeft0~76_combout\,
	datac => \ShiftLeft0~73_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X38_Y30_N20
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux14~1_combout\ & ((\Mux11~0_combout\ & ((\ShiftRight1~53_combout\))) # (!\Mux11~0_combout\ & (\ShiftLeft0~45_combout\)))) # (!\Mux14~1_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftLeft0~45_combout\,
	datac => \Mux11~0_combout\,
	datad => \ShiftRight1~53_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X46_Y35_N8
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & (\A[31]~input_o\)) # (!\Mux30~1_combout\ & ((\Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux30~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X45_Y33_N22
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[20]~input_o\ & ((\opcode[0]~input_o\) # (\B[20]~input_o\))) # (!\A[20]~input_o\ & (\opcode[0]~input_o\ & \B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[20]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X45_Y33_N8
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux14~5_combout\ & ((\Mux11~3_combout\ & ((\Equal0~21_combout\))) # (!\Mux11~3_combout\ & (\ShiftRight0~54_combout\)))) # (!\Mux14~5_combout\ & (((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \ShiftRight0~54_combout\,
	datac => \Mux11~3_combout\,
	datad => \Equal0~21_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X45_Y33_N12
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = \opcode[0]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Add0~66_combout\);

-- Location: LCCOMB_X46_Y33_N26
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~66_combout\ & ((\A[20]~input_o\ & (\Add0~65\ & VCC)) # (!\A[20]~input_o\ & (!\Add0~65\)))) # (!\Add0~66_combout\ & ((\A[20]~input_o\ & (!\Add0~65\)) # (!\A[20]~input_o\ & ((\Add0~65\) # (GND)))))
-- \Add0~68\ = CARRY((\Add0~66_combout\ & (!\A[20]~input_o\ & !\Add0~65\)) # (!\Add0~66_combout\ & ((!\Add0~65\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~67_combout\,
	cout => \Add0~68\);

-- Location: LCCOMB_X45_Y33_N10
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux28~9_combout\ & (\Mux28~10_combout\)) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux11~4_combout\)) # (!\Mux28~10_combout\ & ((\Add0~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux28~10_combout\,
	datac => \Mux11~4_combout\,
	datad => \Add0~67_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X49_Y35_N20
\Mult1|auto_generated|add9_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[2]~4_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT2\ $ (\Mult1|auto_generated|mac_out4~DATAOUT2\ $ (!\Mult1|auto_generated|add9_result[1]~3\)))) # (GND)
-- \Mult1|auto_generated|add9_result[2]~5\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT2\ & ((\Mult1|auto_generated|mac_out4~DATAOUT2\) # (!\Mult1|auto_generated|add9_result[1]~3\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT2\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT2\ & !\Mult1|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT2\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[1]~3\,
	combout => \Mult1|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult1|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X50_Y35_N6
\Mult1|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT20\ $ (\Mult1|auto_generated|add9_result[2]~4_combout\ $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\Mult1|auto_generated|add9_result[2]~4_combout\) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- (\Mult1|auto_generated|add9_result[2]~4_combout\ & !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult1|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X47_Y31_N6
\Mult0|auto_generated|add9_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[2]~4_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\Mult0|auto_generated|mac_out6~DATAOUT2\ $ (!\Mult0|auto_generated|add9_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|add9_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\Mult0|auto_generated|mac_out6~DATAOUT2\) # (!\Mult0|auto_generated|add9_result[1]~3\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT2\ & !\Mult0|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[1]~3\,
	combout => \Mult0|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X49_Y31_N6
\Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|add9_result[2]~4_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|add9_result[2]~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|add9_result[2]~4_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT20\ & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[2]~4_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X46_Y35_N10
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~5_combout\ & (((\Mult0|auto_generated|op_1~4_combout\)) # (!\Mux28~22_combout\))) # (!\Mux11~5_combout\ & (\Mux28~22_combout\ & (\Mult1|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult1|auto_generated|op_1~4_combout\,
	datad => \Mult0|auto_generated|op_1~4_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X46_Y35_N4
\Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (!\opcode[4]~input_o\ & ((\Mux11~2_combout\) # ((!\opcode[3]~input_o\ & \Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \Mux11~2_combout\,
	datad => \Mux11~6_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X41_Y29_N12
\ShiftLeft0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\ir[1]~input_o\ & ((\A[19]~input_o\))) # (!\ir[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \A[19]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X41_Y29_N22
\ShiftLeft0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~74_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~74_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X40_Y32_N4
\ShiftLeft0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~65_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~65_combout\,
	datad => \ShiftLeft0~79_combout\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X40_Y32_N30
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux14~1_combout\ & (((\ShiftLeft0~49_combout\) # (\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftLeft0~80_combout\ & ((!\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~80_combout\,
	datab => \ShiftLeft0~49_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X40_Y32_N26
\ShiftLeft0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\ShiftLeft0~18_combout\ & !\ir[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~18_combout\,
	datac => \ir[3]~input_o\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X40_Y32_N16
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\ShiftRight1~56_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux10~0_combout\ & (((\ShiftLeft0~77_combout\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \ShiftRight1~56_combout\,
	datac => \ShiftLeft0~77_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X46_Y35_N30
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & (\A[31]~input_o\)) # (!\Mux30~1_combout\ & ((\Mux10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux10~1_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X49_Y35_N22
\Mult1|auto_generated|add9_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[3]~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out6~DATAOUT3\ & (\Mult1|auto_generated|add9_result[2]~5\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT3\ & 
-- (!\Mult1|auto_generated|add9_result[2]~5\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out6~DATAOUT3\ & (!\Mult1|auto_generated|add9_result[2]~5\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT3\ & 
-- ((\Mult1|auto_generated|add9_result[2]~5\) # (GND)))))
-- \Mult1|auto_generated|add9_result[3]~7\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\Mult1|auto_generated|mac_out6~DATAOUT3\ & !\Mult1|auto_generated|add9_result[2]~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & 
-- ((!\Mult1|auto_generated|add9_result[2]~5\) # (!\Mult1|auto_generated|mac_out6~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT3\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[2]~5\,
	combout => \Mult1|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult1|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X50_Y35_N8
\Mult1|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|add9_result[3]~6_combout\ & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|add9_result[3]~6_combout\ & 
-- (!\Mult1|auto_generated|op_1~5\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|add9_result[3]~6_combout\ & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|add9_result[3]~6_combout\ & 
-- ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|add9_result[3]~6_combout\ & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((!\Mult1|auto_generated|op_1~5\) # 
-- (!\Mult1|auto_generated|add9_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult1|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X42_Y34_N24
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\opcode[1]~input_o\ & (!\opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & ((\A[21]~input_o\) # (\B[21]~input_o\))) # (!\opcode[0]~input_o\ & (\A[21]~input_o\ & \B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X42_Y34_N26
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (((\Equal0~22_combout\) # (!\Mux14~5_combout\)))) # (!\Mux10~3_combout\ & (\ShiftRight0~57_combout\ & (\Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux14~5_combout\,
	datad => \Equal0~22_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X43_Y34_N8
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = \opcode[0]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \B[21]~input_o\,
	combout => \Add0~69_combout\);

-- Location: LCCOMB_X46_Y33_N28
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = ((\A[21]~input_o\ $ (\Add0~69_combout\ $ (!\Add0~68\)))) # (GND)
-- \Add0~71\ = CARRY((\A[21]~input_o\ & ((\Add0~69_combout\) # (!\Add0~68\))) # (!\A[21]~input_o\ & (\Add0~69_combout\ & !\Add0~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \Add0~69_combout\,
	datad => VCC,
	cin => \Add0~68\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

-- Location: LCCOMB_X46_Y35_N16
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux10~4_combout\)) # (!\Mux28~10_combout\ & ((\Add0~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux28~9_combout\,
	datac => \Add0~70_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X47_Y31_N8
\Mult0|auto_generated|add9_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[3]~6_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Mult0|auto_generated|add9_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\Mult0|auto_generated|add9_result[2]~5\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|add9_result[2]~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\Mult0|auto_generated|add9_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|add9_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Mult0|auto_generated|add9_result[2]~5\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- ((!\Mult0|auto_generated|add9_result[2]~5\) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[2]~5\,
	combout => \Mult0|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X49_Y31_N8
\Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|add9_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|add9_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|add9_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|add9_result[3]~6_combout\ & ((!\Mult0|auto_generated|op_1~5\) 
-- # (!\Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[3]~6_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X46_Y35_N2
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & (((\Mult0|auto_generated|op_1~6_combout\) # (!\Mux28~22_combout\)))) # (!\Mux10~5_combout\ & (\Mult1|auto_generated|op_1~6_combout\ & (\Mux28~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~6_combout\,
	datab => \Mux10~5_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult0|auto_generated|op_1~6_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X46_Y35_N28
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (!\opcode[4]~input_o\ & ((\Mux10~2_combout\) # ((!\opcode[3]~input_o\ & \Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \Mux10~2_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X45_Y34_N2
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\B[22]~input_o\) # (\A[22]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X45_Y34_N20
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux14~5_combout\ & ((\Mux9~3_combout\ & ((\Equal0~23_combout\))) # (!\Mux9~3_combout\ & (\ShiftRight0~62_combout\)))) # (!\Mux14~5_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \Mux14~5_combout\,
	datac => \Equal0~23_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X43_Y34_N2
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = \opcode[0]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \B[22]~input_o\,
	combout => \Add0~72_combout\);

-- Location: LCCOMB_X46_Y33_N30
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~72_combout\ & ((\A[22]~input_o\ & (\Add0~71\ & VCC)) # (!\A[22]~input_o\ & (!\Add0~71\)))) # (!\Add0~72_combout\ & ((\A[22]~input_o\ & (!\Add0~71\)) # (!\A[22]~input_o\ & ((\Add0~71\) # (GND)))))
-- \Add0~74\ = CARRY((\Add0~72_combout\ & (!\A[22]~input_o\ & !\Add0~71\)) # (!\Add0~72_combout\ & ((!\Add0~71\) # (!\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~72_combout\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~73_combout\,
	cout => \Add0~74\);

-- Location: LCCOMB_X47_Y33_N6
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux28~10_combout\ & ((\Mux28~9_combout\) # ((\Mux9~4_combout\)))) # (!\Mux28~10_combout\ & (!\Mux28~9_combout\ & ((\Add0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux9~4_combout\,
	datad => \Add0~73_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X47_Y31_N10
\Mult0|auto_generated|add9_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Mult0|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult0|auto_generated|add9_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|add9_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Mult0|auto_generated|mac_out6~DATAOUT4\) # (!\Mult0|auto_generated|add9_result[3]~7\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT4\ & !\Mult0|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[3]~7\,
	combout => \Mult0|auto_generated|add9_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X49_Y31_N10
\Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|add9_result[4]~8_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|add9_result[4]~8_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|add9_result[4]~8_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT22\ & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[4]~8_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X49_Y35_N24
\Mult1|auto_generated|add9_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[4]~8_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT4\ $ (\Mult1|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult1|auto_generated|add9_result[3]~7\)))) # (GND)
-- \Mult1|auto_generated|add9_result[4]~9\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT4\ & ((\Mult1|auto_generated|mac_out6~DATAOUT4\) # (!\Mult1|auto_generated|add9_result[3]~7\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT4\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT4\ & !\Mult1|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[3]~7\,
	combout => \Mult1|auto_generated|add9_result[4]~8_combout\,
	cout => \Mult1|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X50_Y35_N10
\Mult1|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\Mult1|auto_generated|add9_result[4]~8_combout\ $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\Mult1|auto_generated|add9_result[4]~8_combout\) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- (\Mult1|auto_generated|add9_result[4]~8_combout\ & !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult1|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X47_Y33_N0
\Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & ((\Mult0|auto_generated|op_1~8_combout\) # ((!\Mux28~22_combout\)))) # (!\Mux9~5_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mult0|auto_generated|op_1~8_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|op_1~8_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X39_Y31_N30
\ShiftLeft0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (\ir[1]~input_o\ & ((\A[20]~input_o\))) # (!\ir[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[20]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X39_Y31_N8
\ShiftLeft0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~78_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ShiftLeft0~78_combout\,
	datac => \ShiftLeft0~82_combout\,
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X40_Y30_N18
\ShiftLeft0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\ir[2]~input_o\ & (\ShiftLeft0~68_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~68_combout\,
	datac => \ShiftLeft0~83_combout\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X40_Y30_N16
\ShiftLeft0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & (\ShiftLeft0~8_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X40_Y30_N20
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux14~0_combout\ & (((\Mux14~1_combout\) # (\ShiftLeft0~81_combout\)))) # (!\Mux14~0_combout\ & (\ShiftLeft0~84_combout\ & (!\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~84_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux14~1_combout\,
	datad => \ShiftLeft0~81_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X40_Y30_N30
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\ShiftRight1~59_combout\) # (!\Mux14~1_combout\)))) # (!\Mux9~0_combout\ & (\ShiftLeft0~53_combout\ & (\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~53_combout\,
	datab => \Mux9~0_combout\,
	datac => \Mux14~1_combout\,
	datad => \ShiftRight1~59_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X47_Y33_N4
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & ((\A[31]~input_o\))) # (!\Mux30~1_combout\ & (\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux30~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X47_Y33_N2
\Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (!\opcode[4]~input_o\ & ((\Mux9~2_combout\) # ((\Mux9~6_combout\ & !\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \Mux9~6_combout\,
	datac => \Mux9~2_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X47_Y31_N12
\Mult0|auto_generated|add9_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[5]~10_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (\Mult0|auto_generated|add9_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\Mult0|auto_generated|add9_result[4]~9\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\Mult0|auto_generated|add9_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|add9_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & !\Mult0|auto_generated|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- ((!\Mult0|auto_generated|add9_result[4]~9\) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[4]~9\,
	combout => \Mult0|auto_generated|add9_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X49_Y31_N12
\Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|add9_result[5]~10_combout\ & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- (!\Mult0|auto_generated|op_1~9\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|add9_result[5]~10_combout\ & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|add9_result[5]~10_combout\ & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult0|auto_generated|op_1~9\) # 
-- (!\Mult0|auto_generated|add9_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult0|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X42_Y34_N28
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\A[23]~input_o\) # (\B[23]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\A[23]~input_o\ & \B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X42_Y34_N22
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux14~5_combout\ & ((\Mux8~3_combout\ & ((\Equal0~24_combout\))) # (!\Mux8~3_combout\ & (\ShiftRight0~65_combout\)))) # (!\Mux14~5_combout\ & (\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux8~3_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \Equal0~24_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X46_Y32_N20
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = \opcode[0]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X46_Y32_N0
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = ((\A[23]~input_o\ $ (\Add0~75_combout\ $ (!\Add0~74\)))) # (GND)
-- \Add0~77\ = CARRY((\A[23]~input_o\ & ((\Add0~75_combout\) # (!\Add0~74\))) # (!\A[23]~input_o\ & (\Add0~75_combout\ & !\Add0~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \Add0~75_combout\,
	datad => VCC,
	cin => \Add0~74\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X46_Y35_N24
\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux28~10_combout\ & ((\Mux8~4_combout\) # ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((\Add0~76_combout\ & !\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux28~10_combout\,
	datac => \Add0~76_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X49_Y35_N26
\Mult1|auto_generated|add9_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[5]~10_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT5\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (\Mult1|auto_generated|add9_result[4]~9\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\Mult1|auto_generated|add9_result[4]~9\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT5\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|add9_result[4]~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\Mult1|auto_generated|add9_result[4]~9\) # (GND)))))
-- \Mult1|auto_generated|add9_result[5]~11\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT5\ & (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & !\Mult1|auto_generated|add9_result[4]~9\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT5\ & 
-- ((!\Mult1|auto_generated|add9_result[4]~9\) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT5\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[4]~9\,
	combout => \Mult1|auto_generated|add9_result[5]~10_combout\,
	cout => \Mult1|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X50_Y35_N12
\Mult1|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = (\Mult1|auto_generated|add9_result[5]~10_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Mult1|auto_generated|op_1~9\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\Mult1|auto_generated|op_1~9\)))) # (!\Mult1|auto_generated|add9_result[5]~10_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|op_1~9\) # 
-- (GND)))))
-- \Mult1|auto_generated|op_1~11\ = CARRY((\Mult1|auto_generated|add9_result[5]~10_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|add9_result[5]~10_combout\ & 
-- ((!\Mult1|auto_generated|op_1~9\) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[5]~10_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\,
	cout => \Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X46_Y35_N26
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & ((\Mult0|auto_generated|op_1~10_combout\) # ((!\Mux28~22_combout\)))) # (!\Mux8~5_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~10_combout\,
	datab => \Mux8~5_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|op_1~10_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X39_Y31_N26
\ShiftLeft0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (\ir[1]~input_o\ & ((\A[21]~input_o\))) # (!\ir[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X39_Y31_N4
\ShiftLeft0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~82_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~82_combout\,
	datac => \ShiftLeft0~86_combout\,
	datad => \ir[0]~input_o\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X38_Y31_N10
\ShiftLeft0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~71_combout\))) # (!\ir[2]~input_o\ & (\ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~87_combout\,
	datac => \ir[2]~input_o\,
	datad => \ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X38_Y31_N4
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux14~0_combout\ & (((\Mux14~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\ShiftLeft0~57_combout\))) # (!\Mux14~1_combout\ & (\ShiftLeft0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~88_combout\,
	datab => \ShiftLeft0~57_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X38_Y31_N16
\ShiftLeft0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & (\ShiftLeft0~22_combout\)) # (!\ir[2]~input_o\ & ((\ShiftLeft0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ShiftLeft0~22_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X38_Y31_N14
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\ShiftRight1~63_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux8~0_combout\ & (((\Mux14~0_combout\ & \ShiftLeft0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftLeft0~85_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X46_Y35_N6
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux4~2_combout\ & ((\Mux30~1_combout\ & ((\A[31]~input_o\))) # (!\Mux30~1_combout\ & (\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux30~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X46_Y35_N12
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (!\opcode[4]~input_o\ & ((\Mux8~2_combout\) # ((!\opcode[3]~input_o\ & \Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \Mux8~6_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X46_Y31_N28
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\opcode[1]~input_o\ & (\opcode[3]~input_o\ & (!\opcode[2]~input_o\ & \opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X47_Y31_N14
\Mult0|auto_generated|add9_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT6\ $ (\Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult0|auto_generated|add9_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|add9_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT6\ & ((\Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\Mult0|auto_generated|add9_result[5]~11\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT6\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT6\ & !\Mult0|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[5]~11\,
	combout => \Mult0|auto_generated|add9_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X49_Y31_N14
\Mult0|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\Mult0|auto_generated|add9_result[6]~12_combout\ $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Mult0|auto_generated|add9_result[6]~12_combout\) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- (\Mult0|auto_generated|add9_result[6]~12_combout\ & !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult0|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X45_Y32_N14
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\B[24]~input_o\) # (\A[24]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X45_Y32_N0
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux14~5_combout\ & ((\Mux7~2_combout\ & ((\Equal0~29_combout\))) # (!\Mux7~2_combout\ & (\ShiftRight0~67_combout\)))) # (!\Mux14~5_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux7~2_combout\,
	datad => \Equal0~29_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X46_Y32_N30
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = \B[24]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~78_combout\);

-- Location: LCCOMB_X46_Y32_N2
\Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~78_combout\ & ((\A[24]~input_o\ & (\Add0~77\ & VCC)) # (!\A[24]~input_o\ & (!\Add0~77\)))) # (!\Add0~78_combout\ & ((\A[24]~input_o\ & (!\Add0~77\)) # (!\A[24]~input_o\ & ((\Add0~77\) # (GND)))))
-- \Add0~80\ = CARRY((\Add0~78_combout\ & (!\A[24]~input_o\ & !\Add0~77\)) # (!\Add0~78_combout\ & ((!\Add0~77\) # (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~78_combout\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~79_combout\,
	cout => \Add0~80\);

-- Location: LCCOMB_X47_Y33_N28
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux7~3_combout\)) # (!\Mux28~10_combout\ & ((\Add0~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux28~9_combout\,
	datac => \Add0~79_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X49_Y35_N28
\Mult1|auto_generated|add9_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[6]~12_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT6\ $ (\Mult1|auto_generated|mac_out6~DATAOUT6\ $ (!\Mult1|auto_generated|add9_result[5]~11\)))) # (GND)
-- \Mult1|auto_generated|add9_result[6]~13\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT6\ & ((\Mult1|auto_generated|mac_out6~DATAOUT6\) # (!\Mult1|auto_generated|add9_result[5]~11\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT6\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT6\ & !\Mult1|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT6\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT6\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[5]~11\,
	combout => \Mult1|auto_generated|add9_result[6]~12_combout\,
	cout => \Mult1|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X50_Y35_N14
\Mult1|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~12_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\Mult1|auto_generated|add9_result[6]~12_combout\ $ (!\Mult1|auto_generated|op_1~11\)))) # (GND)
-- \Mult1|auto_generated|op_1~13\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\Mult1|auto_generated|add9_result[6]~12_combout\) # (!\Mult1|auto_generated|op_1~11\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- (\Mult1|auto_generated|add9_result[6]~12_combout\ & !\Mult1|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult1|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~11\,
	combout => \Mult1|auto_generated|op_1~12_combout\,
	cout => \Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X41_Y32_N10
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux28~22_combout\ & ((\Mux7~4_combout\ & (\Mult0|auto_generated|op_1~12_combout\)) # (!\Mux7~4_combout\ & ((\Mult1|auto_generated|op_1~12_combout\))))) # (!\Mux28~22_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~12_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mux7~4_combout\,
	datad => \Mult1|auto_generated|op_1~12_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X40_Y30_N8
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\ir[4]~input_o\) # ((\ir[2]~input_o\ & !\ir[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ir[4]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X39_Y31_N6
\ShiftLeft0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (\ir[1]~input_o\ & (\A[22]~input_o\)) # (!\ir[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[24]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X39_Y31_N24
\ShiftLeft0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\ir[0]~input_o\ & (\ShiftLeft0~86_combout\)) # (!\ir[0]~input_o\ & ((\ShiftLeft0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \ShiftLeft0~86_combout\,
	datad => \ShiftLeft0~89_combout\,
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X38_Y30_N30
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux4~4_combout\ & (((!\ShiftRight0~10_combout\)))) # (!\Mux4~4_combout\ & ((\ShiftRight0~10_combout\ & (\ShiftLeft0~90_combout\)) # (!\ShiftRight0~10_combout\ & ((\ShiftLeft0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~90_combout\,
	datab => \Mux4~4_combout\,
	datac => \ShiftLeft0~62_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X38_Y30_N24
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux4~4_combout\ & ((\Mux7~0_combout\ & ((\ShiftLeft0~29_combout\))) # (!\Mux7~0_combout\ & (\ShiftLeft0~75_combout\)))) # (!\Mux4~4_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~75_combout\,
	datab => \Mux4~4_combout\,
	datac => \Mux7~0_combout\,
	datad => \ShiftLeft0~29_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X46_Y31_N2
\Mux4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = ((!\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & !\opcode[0]~input_o\))) # (!\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X41_Y35_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (!\opcode[1]~input_o\ & !\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X41_Y35_N16
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\opcode[3]~input_o\ & ((\ir[4]~input_o\) # ((!\opcode[0]~input_o\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datab => \Add0~14_combout\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X41_Y32_N28
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux4~15_combout\ & ((\Mux4~5_combout\ & ((\Mux7~1_combout\))) # (!\Mux4~5_combout\ & (\Mux7~5_combout\)))) # (!\Mux4~15_combout\ & (((!\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \Mux7~1_combout\,
	datac => \Mux4~15_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X41_Y32_N22
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux4~3_combout\ & ((\Mux7~6_combout\ & ((\ShiftRight1~64_combout\))) # (!\Mux7~6_combout\ & (\A[31]~input_o\)))) # (!\Mux4~3_combout\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux4~3_combout\,
	datac => \ShiftRight1~64_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X41_Y32_N16
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & !\opcode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datac => \opcode[4]~input_o\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X47_Y31_N16
\Mult0|auto_generated|add9_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[7]~14_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|mac_out6~DATAOUT7\ & (\Mult0|auto_generated|add9_result[6]~13\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- (!\Mult0|auto_generated|add9_result[6]~13\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\Mult0|auto_generated|add9_result[6]~13\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- ((\Mult0|auto_generated|add9_result[6]~13\) # (GND)))))
-- \Mult0|auto_generated|add9_result[7]~15\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & !\Mult0|auto_generated|add9_result[6]~13\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- ((!\Mult0|auto_generated|add9_result[6]~13\) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[6]~13\,
	combout => \Mult0|auto_generated|add9_result[7]~14_combout\,
	cout => \Mult0|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X49_Y31_N16
\Mult0|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|add9_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\Mult0|auto_generated|op_1~13\)))) # (!\Mult0|auto_generated|add9_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|op_1~13\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~15\ = CARRY((\Mult0|auto_generated|add9_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & !\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- ((!\Mult0|auto_generated|op_1~13\) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[7]~14_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X45_Y32_N10
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\A[25]~input_o\) # (\B[25]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\A[25]~input_o\ & \B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \B[25]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X45_Y32_N12
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\Equal0~30_combout\)) # (!\Mux14~5_combout\))) # (!\Mux6~2_combout\ & (\Mux14~5_combout\ & (\ShiftRight0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux14~5_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Equal0~30_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X46_Y32_N24
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = \B[25]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~81_combout\);

-- Location: LCCOMB_X46_Y32_N4
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = ((\A[25]~input_o\ $ (\Add0~81_combout\ $ (!\Add0~80\)))) # (GND)
-- \Add0~83\ = CARRY((\A[25]~input_o\ & ((\Add0~81_combout\) # (!\Add0~80\))) # (!\A[25]~input_o\ & (\Add0~81_combout\ & !\Add0~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Add0~81_combout\,
	datad => VCC,
	cin => \Add0~80\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X47_Y32_N0
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux28~10_combout\ & ((\Mux6~3_combout\) # ((\Mux28~9_combout\)))) # (!\Mux28~10_combout\ & (((\Add0~82_combout\ & !\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux6~3_combout\,
	datac => \Add0~82_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X49_Y35_N30
\Mult1|auto_generated|add9_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[7]~14_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|mac_out6~DATAOUT7\ & (\Mult1|auto_generated|add9_result[6]~13\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT7\ & 
-- (!\Mult1|auto_generated|add9_result[6]~13\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|mac_out6~DATAOUT7\ & (!\Mult1|auto_generated|add9_result[6]~13\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT7\ & 
-- ((\Mult1|auto_generated|add9_result[6]~13\) # (GND)))))
-- \Mult1|auto_generated|add9_result[7]~15\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT7\ & (!\Mult1|auto_generated|mac_out6~DATAOUT7\ & !\Mult1|auto_generated|add9_result[6]~13\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & 
-- ((!\Mult1|auto_generated|add9_result[6]~13\) # (!\Mult1|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[6]~13\,
	combout => \Mult1|auto_generated|add9_result[7]~14_combout\,
	cout => \Mult1|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X50_Y35_N16
\Mult1|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~14_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|add9_result[7]~14_combout\ & (\Mult1|auto_generated|op_1~13\ & VCC)) # (!\Mult1|auto_generated|add9_result[7]~14_combout\ & 
-- (!\Mult1|auto_generated|op_1~13\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|add9_result[7]~14_combout\ & (!\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|add9_result[7]~14_combout\ & 
-- ((\Mult1|auto_generated|op_1~13\) # (GND)))))
-- \Mult1|auto_generated|op_1~15\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\Mult1|auto_generated|add9_result[7]~14_combout\ & !\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((!\Mult1|auto_generated|op_1~13\) # 
-- (!\Mult1|auto_generated|add9_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult1|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~13\,
	combout => \Mult1|auto_generated|op_1~14_combout\,
	cout => \Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X47_Y32_N10
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & ((\Mult0|auto_generated|op_1~14_combout\) # ((!\Mux28~22_combout\)))) # (!\Mux6~4_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~14_combout\,
	datab => \Mux6~4_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|op_1~14_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X39_Y31_N18
\ShiftLeft0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (!\ir[0]~input_o\ & ((\ir[1]~input_o\ & ((\A[23]~input_o\))) # (!\ir[1]~input_o\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \A[25]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \A[23]~input_o\,
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X39_Y31_N12
\ShiftLeft0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (\ShiftLeft0~91_combout\) # ((\ShiftLeft0~89_combout\ & \ir[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~89_combout\,
	datac => \ir[0]~input_o\,
	datad => \ShiftLeft0~91_combout\,
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X40_Y32_N2
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux4~4_combout\ & (((!\ShiftRight0~10_combout\)))) # (!\Mux4~4_combout\ & ((\ShiftRight0~10_combout\ & (\ShiftLeft0~92_combout\)) # (!\ShiftRight0~10_combout\ & ((\ShiftLeft0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~92_combout\,
	datab => \ShiftLeft0~66_combout\,
	datac => \Mux4~4_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X40_Y32_N12
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\ShiftLeft0~34_combout\) # ((!\Mux4~4_combout\)))) # (!\Mux6~0_combout\ & (((\Mux4~4_combout\ & \ShiftLeft0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux4~4_combout\,
	datad => \ShiftLeft0~79_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X41_Y32_N2
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux4~5_combout\ & (((\Mux4~15_combout\ & \Mux6~1_combout\)))) # (!\Mux4~5_combout\ & ((\Mux6~5_combout\) # ((!\Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux4~15_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X41_Y32_N20
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\ & (((\ShiftRight1~65_combout\) # (!\Mux4~3_combout\)))) # (!\Mux6~6_combout\ & (\A[31]~input_o\ & (\Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux6~6_combout\,
	datac => \Mux4~3_combout\,
	datad => \ShiftRight1~65_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X41_Y32_N14
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (!\opcode[4]~input_o\ & \Mux6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[4]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X45_Y32_N22
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[26]~input_o\ & ((\opcode[0]~input_o\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & (\opcode[0]~input_o\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[26]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X45_Y32_N24
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\Equal0~31_combout\)) # (!\Mux14~5_combout\))) # (!\Mux5~2_combout\ & (\Mux14~5_combout\ & ((\ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux14~5_combout\,
	datac => \Equal0~31_combout\,
	datad => \ShiftRight0~70_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X46_Y32_N26
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = \B[26]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[26]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~84_combout\);

-- Location: LCCOMB_X46_Y32_N6
\Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~84_combout\ & ((\A[26]~input_o\ & (\Add0~83\ & VCC)) # (!\A[26]~input_o\ & (!\Add0~83\)))) # (!\Add0~84_combout\ & ((\A[26]~input_o\ & (!\Add0~83\)) # (!\A[26]~input_o\ & ((\Add0~83\) # (GND)))))
-- \Add0~86\ = CARRY((\Add0~84_combout\ & (!\A[26]~input_o\ & !\Add0~83\)) # (!\Add0~84_combout\ & ((!\Add0~83\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~85_combout\,
	cout => \Add0~86\);

-- Location: LCCOMB_X47_Y32_N20
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux5~3_combout\)) # (!\Mux28~10_combout\ & ((\Add0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux28~10_combout\,
	datad => \Add0~85_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X47_Y31_N18
\Mult0|auto_generated|add9_result[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[8]~16_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT8\ $ (\Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult0|auto_generated|add9_result[7]~15\)))) # (GND)
-- \Mult0|auto_generated|add9_result[8]~17\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT8\ & ((\Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\Mult0|auto_generated|add9_result[7]~15\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT8\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT8\ & !\Mult0|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[7]~15\,
	combout => \Mult0|auto_generated|add9_result[8]~16_combout\,
	cout => \Mult0|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X49_Y31_N18
\Mult0|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~16_combout\ = ((\Mult0|auto_generated|add9_result[8]~16_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT26\ $ (!\Mult0|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|add9_result[8]~16_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\Mult0|auto_generated|op_1~15\))) # (!\Mult0|auto_generated|add9_result[8]~16_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT26\ & !\Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[8]~16_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~15\,
	combout => \Mult0|auto_generated|op_1~16_combout\,
	cout => \Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X49_Y34_N0
\Mult1|auto_generated|add9_result[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[8]~16_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT8\ $ (\Mult1|auto_generated|mac_out6~DATAOUT8\ $ (!\Mult1|auto_generated|add9_result[7]~15\)))) # (GND)
-- \Mult1|auto_generated|add9_result[8]~17\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT8\ & ((\Mult1|auto_generated|mac_out6~DATAOUT8\) # (!\Mult1|auto_generated|add9_result[7]~15\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT8\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT8\ & !\Mult1|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT8\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT8\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[7]~15\,
	combout => \Mult1|auto_generated|add9_result[8]~16_combout\,
	cout => \Mult1|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X50_Y35_N18
\Mult1|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~16_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT26\ $ (\Mult1|auto_generated|add9_result[8]~16_combout\ $ (!\Mult1|auto_generated|op_1~15\)))) # (GND)
-- \Mult1|auto_generated|op_1~17\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\Mult1|auto_generated|add9_result[8]~16_combout\) # (!\Mult1|auto_generated|op_1~15\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- (\Mult1|auto_generated|add9_result[8]~16_combout\ & !\Mult1|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult1|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~15\,
	combout => \Mult1|auto_generated|op_1~16_combout\,
	cout => \Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X47_Y32_N14
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & ((\Mult0|auto_generated|op_1~16_combout\) # ((!\Mux28~22_combout\)))) # (!\Mux5~4_combout\ & (((\Mux28~22_combout\ & \Mult1|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mult0|auto_generated|op_1~16_combout\,
	datac => \Mux28~22_combout\,
	datad => \Mult1|auto_generated|op_1~16_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X39_Y31_N22
\ShiftLeft0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[23]~input_o\))) # (!\ir[0]~input_o\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[23]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X38_Y32_N24
\ShiftLeft0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\ir[0]~input_o\ & ((\A[25]~input_o\))) # (!\ir[0]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \A[25]~input_o\,
	datad => \ir[0]~input_o\,
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X39_Y33_N6
\ShiftLeft0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\ShiftLeft0~93_combout\) # ((!\ir[1]~input_o\ & \ShiftLeft0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datac => \ShiftLeft0~93_combout\,
	datad => \ShiftLeft0~94_combout\,
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X40_Y30_N2
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ShiftRight0~10_combout\ & (((\ShiftLeft0~95_combout\ & !\Mux4~4_combout\)))) # (!\ShiftRight0~10_combout\ & ((\ShiftLeft0~69_combout\) # ((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~69_combout\,
	datab => \ShiftLeft0~95_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X40_Y30_N4
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux4~4_combout\ & ((\Mux5~0_combout\ & ((\ShiftLeft0~38_combout\))) # (!\Mux5~0_combout\ & (\ShiftLeft0~83_combout\)))) # (!\Mux4~4_combout\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Mux5~0_combout\,
	datac => \ShiftLeft0~83_combout\,
	datad => \ShiftLeft0~38_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X41_Y32_N0
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux4~15_combout\ & ((\Mux4~5_combout\ & ((\Mux5~1_combout\))) # (!\Mux4~5_combout\ & (\Mux5~5_combout\)))) # (!\Mux4~15_combout\ & (((!\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux4~15_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X41_Y32_N26
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\ & ((\ShiftRight1~66_combout\) # ((!\Mux4~3_combout\)))) # (!\Mux5~6_combout\ & (((\Mux4~3_combout\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~66_combout\,
	datab => \Mux5~6_combout\,
	datac => \Mux4~3_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X41_Y32_N12
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & !\opcode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datac => \opcode[4]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X49_Y34_N2
\Mult1|auto_generated|add9_result[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[9]~18_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\Mult1|auto_generated|mac_out6~DATAOUT9\ & (\Mult1|auto_generated|add9_result[8]~17\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT9\ & 
-- (!\Mult1|auto_generated|add9_result[8]~17\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\Mult1|auto_generated|mac_out6~DATAOUT9\ & (!\Mult1|auto_generated|add9_result[8]~17\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT9\ & 
-- ((\Mult1|auto_generated|add9_result[8]~17\) # (GND)))))
-- \Mult1|auto_generated|add9_result[9]~19\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\Mult1|auto_generated|mac_out6~DATAOUT9\ & !\Mult1|auto_generated|add9_result[8]~17\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & 
-- ((!\Mult1|auto_generated|add9_result[8]~17\) # (!\Mult1|auto_generated|mac_out6~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT9\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT9\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[8]~17\,
	combout => \Mult1|auto_generated|add9_result[9]~18_combout\,
	cout => \Mult1|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X50_Y35_N20
\Mult1|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~18_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\Mult1|auto_generated|add9_result[9]~18_combout\ & (\Mult1|auto_generated|op_1~17\ & VCC)) # (!\Mult1|auto_generated|add9_result[9]~18_combout\ & 
-- (!\Mult1|auto_generated|op_1~17\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\Mult1|auto_generated|add9_result[9]~18_combout\ & (!\Mult1|auto_generated|op_1~17\)) # (!\Mult1|auto_generated|add9_result[9]~18_combout\ & 
-- ((\Mult1|auto_generated|op_1~17\) # (GND)))))
-- \Mult1|auto_generated|op_1~19\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\Mult1|auto_generated|add9_result[9]~18_combout\ & !\Mult1|auto_generated|op_1~17\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & ((!\Mult1|auto_generated|op_1~17\) # 
-- (!\Mult1|auto_generated|add9_result[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult1|auto_generated|add9_result[9]~18_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~17\,
	combout => \Mult1|auto_generated|op_1~18_combout\,
	cout => \Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X47_Y31_N20
\Mult0|auto_generated|add9_result[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[9]~18_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|mac_out6~DATAOUT9\ & (\Mult0|auto_generated|add9_result[8]~17\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- (!\Mult0|auto_generated|add9_result[8]~17\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\Mult0|auto_generated|add9_result[8]~17\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- ((\Mult0|auto_generated|add9_result[8]~17\) # (GND)))))
-- \Mult0|auto_generated|add9_result[9]~19\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & !\Mult0|auto_generated|add9_result[8]~17\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- ((!\Mult0|auto_generated|add9_result[8]~17\) # (!\Mult0|auto_generated|mac_out6~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[8]~17\,
	combout => \Mult0|auto_generated|add9_result[9]~18_combout\,
	cout => \Mult0|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X49_Y31_N20
\Mult0|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|add9_result[9]~18_combout\ & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- (!\Mult0|auto_generated|op_1~17\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|add9_result[9]~18_combout\ & (!\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- ((\Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|auto_generated|op_1~19\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|add9_result[9]~18_combout\ & !\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((!\Mult0|auto_generated|op_1~17\) # 
-- (!\Mult0|auto_generated|add9_result[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult0|auto_generated|add9_result[9]~18_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X45_Y32_N4
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\opcode[1]~input_o\ & (!\opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & ((\B[27]~input_o\) # (\A[27]~input_o\))) # (!\opcode[0]~input_o\ & (\B[27]~input_o\ & \A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X45_Y32_N30
\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux14~5_combout\ & ((\Mux4~8_combout\ & ((\Equal0~32_combout\))) # (!\Mux4~8_combout\ & (\ShiftRight0~72_combout\)))) # (!\Mux14~5_combout\ & (((\Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux4~8_combout\,
	datad => \Equal0~32_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X45_Y32_N2
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = \B[27]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Add0~87_combout\);

-- Location: LCCOMB_X46_Y32_N8
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = ((\A[27]~input_o\ $ (\Add0~87_combout\ $ (!\Add0~86\)))) # (GND)
-- \Add0~89\ = CARRY((\A[27]~input_o\ & ((\Add0~87_combout\) # (!\Add0~86\))) # (!\A[27]~input_o\ & (\Add0~87_combout\ & !\Add0~86\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Add0~87_combout\,
	datad => VCC,
	cin => \Add0~86\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X47_Y32_N16
\Mux4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & (\Mux4~9_combout\)) # (!\Mux28~10_combout\ & ((\Add0~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \Mux4~9_combout\,
	datac => \Mux28~10_combout\,
	datad => \Add0~88_combout\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X47_Y32_N26
\Mux4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Mux28~22_combout\ & ((\Mux4~10_combout\ & ((\Mult0|auto_generated|op_1~18_combout\))) # (!\Mux4~10_combout\ & (\Mult1|auto_generated|op_1~18_combout\)))) # (!\Mux28~22_combout\ & (((\Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~18_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mult0|auto_generated|op_1~18_combout\,
	datad => \Mux4~10_combout\,
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X38_Y32_N26
\ShiftLeft0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[24]~input_o\))) # (!\ir[0]~input_o\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \ir[1]~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[24]~input_o\,
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X38_Y32_N12
\ShiftLeft0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\ir[0]~input_o\ & (\A[26]~input_o\)) # (!\ir[0]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[27]~input_o\,
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X38_Y32_N30
\ShiftLeft0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (\ShiftLeft0~96_combout\) # ((!\ir[1]~input_o\ & \ShiftLeft0~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~96_combout\,
	datac => \ir[1]~input_o\,
	datad => \ShiftLeft0~97_combout\,
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X38_Y31_N8
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~4_combout\ & (((!\ShiftRight0~10_combout\)))) # (!\Mux4~4_combout\ & ((\ShiftRight0~10_combout\ & ((\ShiftLeft0~98_combout\))) # (!\ShiftRight0~10_combout\ & (\ShiftLeft0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \ShiftLeft0~72_combout\,
	datac => \ShiftLeft0~98_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X38_Y31_N2
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & (((\ShiftLeft0~42_combout\) # (!\Mux4~4_combout\)))) # (!\Mux4~6_combout\ & (\ShiftLeft0~87_combout\ & ((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~87_combout\,
	datab => \ShiftLeft0~42_combout\,
	datac => \Mux4~6_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X41_Y32_N30
\Mux4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (\Mux4~15_combout\ & ((\Mux4~5_combout\ & ((\Mux4~7_combout\))) # (!\Mux4~5_combout\ & (\Mux4~11_combout\)))) # (!\Mux4~15_combout\ & (((!\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => \Mux4~15_combout\,
	datac => \Mux4~7_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X41_Y32_N24
\Mux4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (\Mux4~3_combout\ & ((\Mux4~12_combout\ & ((\ShiftRight1~67_combout\))) # (!\Mux4~12_combout\ & (\A[31]~input_o\)))) # (!\Mux4~3_combout\ & (((\Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~12_combout\,
	datad => \ShiftRight1~67_combout\,
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X41_Y32_N18
\Mux4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (!\opcode[4]~input_o\ & \Mux4~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[4]~input_o\,
	datad => \Mux4~13_combout\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X38_Y32_N8
\ShiftLeft0~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (\ir[0]~input_o\ & ((\A[27]~input_o\))) # (!\ir[0]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[0]~input_o\,
	datab => \A[28]~input_o\,
	datad => \A[27]~input_o\,
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X38_Y30_N10
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ShiftRight0~37_combout\ & (\ShiftLeft0~99_combout\ & ((!\Mux28~11_combout\)))) # (!\ShiftRight0~37_combout\ & (((\ShiftLeft0~90_combout\) # (\Mux28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftLeft0~99_combout\,
	datac => \ShiftLeft0~90_combout\,
	datad => \Mux28~11_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X38_Y30_N28
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\ShiftLeft0~76_combout\) # ((!\Mux28~11_combout\)))) # (!\Mux3~0_combout\ & (((\ShiftLeft0~94_combout\ & \Mux28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \ShiftLeft0~76_combout\,
	datac => \ShiftLeft0~94_combout\,
	datad => \Mux28~11_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X38_Y30_N6
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\opcode[0]~input_o\ & ((\ShiftRight1~68_combout\) # ((\ir[4]~input_o\)))) # (!\opcode[0]~input_o\ & (((!\ir[4]~input_o\ & \Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~68_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X42_Y31_N0
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\ir[4]~input_o\ & ((\Mux3~2_combout\ & (\A[31]~input_o\)) # (!\Mux3~2_combout\ & ((\ShiftLeft0~46_combout\))))) # (!\ir[4]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ir[4]~input_o\,
	datac => \Mux3~2_combout\,
	datad => \ShiftLeft0~46_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X46_Y31_N14
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & (!\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X49_Y34_N4
\Mult1|auto_generated|add9_result[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[10]~20_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT10\ $ (\Mult1|auto_generated|mac_out4~DATAOUT10\ $ (!\Mult1|auto_generated|add9_result[9]~19\)))) # (GND)
-- \Mult1|auto_generated|add9_result[10]~21\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT10\ & ((\Mult1|auto_generated|mac_out4~DATAOUT10\) # (!\Mult1|auto_generated|add9_result[9]~19\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT10\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT10\ & !\Mult1|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT10\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[9]~19\,
	combout => \Mult1|auto_generated|add9_result[10]~20_combout\,
	cout => \Mult1|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X50_Y35_N22
\Mult1|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~20_combout\ = ((\Mult1|auto_generated|add9_result[10]~20_combout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT28\ $ (!\Mult1|auto_generated|op_1~19\)))) # (GND)
-- \Mult1|auto_generated|op_1~21\ = CARRY((\Mult1|auto_generated|add9_result[10]~20_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT28\) # (!\Mult1|auto_generated|op_1~19\))) # (!\Mult1|auto_generated|add9_result[10]~20_combout\ & 
-- (\Mult1|auto_generated|mac_out2~DATAOUT28\ & !\Mult1|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[10]~20_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~19\,
	combout => \Mult1|auto_generated|op_1~20_combout\,
	cout => \Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X47_Y31_N22
\Mult0|auto_generated|add9_result[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[10]~20_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT10\ $ (\Mult0|auto_generated|mac_out4~DATAOUT10\ $ (!\Mult0|auto_generated|add9_result[9]~19\)))) # (GND)
-- \Mult0|auto_generated|add9_result[10]~21\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT10\ & ((\Mult0|auto_generated|mac_out4~DATAOUT10\) # (!\Mult0|auto_generated|add9_result[9]~19\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT10\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT10\ & !\Mult0|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT10\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[9]~19\,
	combout => \Mult0|auto_generated|add9_result[10]~20_combout\,
	cout => \Mult0|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X49_Y31_N22
\Mult0|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = ((\Mult0|auto_generated|add9_result[10]~20_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\Mult0|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|add9_result[10]~20_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|add9_result[10]~20_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT28\ & !\Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[10]~20_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X43_Y33_N18
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = \opcode[0]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Add0~90_combout\);

-- Location: LCCOMB_X46_Y32_N10
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\A[28]~input_o\ & ((\Add0~90_combout\ & (\Add0~89\ & VCC)) # (!\Add0~90_combout\ & (!\Add0~89\)))) # (!\A[28]~input_o\ & ((\Add0~90_combout\ & (!\Add0~89\)) # (!\Add0~90_combout\ & ((\Add0~89\) # (GND)))))
-- \Add0~92\ = CARRY((\A[28]~input_o\ & (!\Add0~90_combout\ & !\Add0~89\)) # (!\A[28]~input_o\ & ((!\Add0~89\) # (!\Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \Add0~90_combout\,
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~91_combout\,
	cout => \Add0~92\);

-- Location: LCCOMB_X43_Y33_N20
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[28]~input_o\ & ((\A[28]~input_o\) # (\opcode[0]~input_o\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X43_Y33_N22
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux14~5_combout\ & ((\Mux3~5_combout\ & ((\Equal0~34_combout\))) # (!\Mux3~5_combout\ & (\ShiftRight0~73_combout\)))) # (!\Mux14~5_combout\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \Equal0~34_combout\,
	datac => \Mux14~5_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X42_Y31_N2
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & ((\Mux3~6_combout\))) # (!\Mux28~10_combout\ & (\Add0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~91_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X42_Y31_N12
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & (((\Mult0|auto_generated|op_1~20_combout\) # (!\Mux28~22_combout\)))) # (!\Mux3~7_combout\ & (\Mult1|auto_generated|op_1~20_combout\ & ((\Mux28~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~20_combout\,
	datab => \Mult0|auto_generated|op_1~20_combout\,
	datac => \Mux3~7_combout\,
	datad => \Mux28~22_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X42_Y31_N22
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Add0~10_combout\ & ((\Mux3~8_combout\) # ((\Mux3~3_combout\ & \Mux3~4_combout\)))) # (!\Add0~10_combout\ & (\Mux3~3_combout\ & (\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X38_Y32_N2
\ShiftLeft0~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (\ir[0]~input_o\ & (\A[28]~input_o\)) # (!\ir[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \ir[0]~input_o\,
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X39_Y32_N30
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux28~11_combout\ & (((!\ShiftRight0~37_combout\)))) # (!\Mux28~11_combout\ & ((\ShiftRight0~37_combout\ & (\ShiftLeft0~100_combout\)) # (!\ShiftRight0~37_combout\ & ((\ShiftLeft0~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~100_combout\,
	datab => \Mux28~11_combout\,
	datac => \ShiftLeft0~92_combout\,
	datad => \ShiftRight0~37_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X39_Y32_N16
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux28~11_combout\ & ((\Mux2~0_combout\ & ((\ShiftLeft0~80_combout\))) # (!\Mux2~0_combout\ & (\ShiftLeft0~97_combout\)))) # (!\Mux28~11_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~97_combout\,
	datab => \Mux28~11_combout\,
	datac => \ShiftLeft0~80_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X39_Y32_N10
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\opcode[0]~input_o\ & ((\ShiftRight1~60_combout\) # ((\ir[4]~input_o\)))) # (!\opcode[0]~input_o\ & (((!\ir[4]~input_o\ & \Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X39_Y32_N20
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\A[31]~input_o\) # ((!\ir[4]~input_o\)))) # (!\Mux2~2_combout\ & (((\ir[4]~input_o\ & \ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \A[31]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \ShiftLeft0~50_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X49_Y34_N6
\Mult1|auto_generated|add9_result[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[11]~22_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT11\ & ((\Mult1|auto_generated|mac_out4~DATAOUT11\ & (\Mult1|auto_generated|add9_result[10]~21\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\Mult1|auto_generated|add9_result[10]~21\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT11\ & ((\Mult1|auto_generated|mac_out4~DATAOUT11\ & (!\Mult1|auto_generated|add9_result[10]~21\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & 
-- ((\Mult1|auto_generated|add9_result[10]~21\) # (GND)))))
-- \Mult1|auto_generated|add9_result[11]~23\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT11\ & (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & !\Mult1|auto_generated|add9_result[10]~21\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT11\ & 
-- ((!\Mult1|auto_generated|add9_result[10]~21\) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT11\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[10]~21\,
	combout => \Mult1|auto_generated|add9_result[11]~22_combout\,
	cout => \Mult1|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X50_Y35_N24
\Mult1|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~22_combout\ = (\Mult1|auto_generated|add9_result[11]~22_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\ & (\Mult1|auto_generated|op_1~21\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\Mult1|auto_generated|op_1~21\)))) # (!\Mult1|auto_generated|add9_result[11]~22_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\ & (!\Mult1|auto_generated|op_1~21\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & ((\Mult1|auto_generated|op_1~21\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~23\ = CARRY((\Mult1|auto_generated|add9_result[11]~22_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & !\Mult1|auto_generated|op_1~21\)) # (!\Mult1|auto_generated|add9_result[11]~22_combout\ & 
-- ((!\Mult1|auto_generated|op_1~21\) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[11]~22_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~21\,
	combout => \Mult1|auto_generated|op_1~22_combout\,
	cout => \Mult1|auto_generated|op_1~23\);

-- Location: LCCOMB_X43_Y34_N20
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = \opcode[0]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X46_Y32_N12
\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = ((\Add0~93_combout\ $ (\A[29]~input_o\ $ (!\Add0~92\)))) # (GND)
-- \Add0~95\ = CARRY((\Add0~93_combout\ & ((\A[29]~input_o\) # (!\Add0~92\))) # (!\Add0~93_combout\ & (\A[29]~input_o\ & !\Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~93_combout\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \Add0~92\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

-- Location: LCCOMB_X43_Y34_N14
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((\A[29]~input_o\) # (\B[29]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((\A[29]~input_o\ & \B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X43_Y34_N16
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux14~5_combout\ & ((\Mux2~4_combout\ & ((\Equal0~35_combout\))) # (!\Mux2~4_combout\ & (\ShiftRight0~75_combout\)))) # (!\Mux14~5_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \ShiftRight0~75_combout\,
	datac => \Mux2~4_combout\,
	datad => \Equal0~35_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X42_Y31_N8
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux28~9_combout\ & (((\Mux28~10_combout\)))) # (!\Mux28~9_combout\ & ((\Mux28~10_combout\ & ((\Mux2~5_combout\))) # (!\Mux28~10_combout\ & (\Add0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~94_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux2~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X47_Y31_N24
\Mult0|auto_generated|add9_result[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[11]~22_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|mac_out6~DATAOUT11\ & (\Mult0|auto_generated|add9_result[10]~21\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\Mult0|auto_generated|add9_result[10]~21\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\Mult0|auto_generated|add9_result[10]~21\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- ((\Mult0|auto_generated|add9_result[10]~21\) # (GND)))))
-- \Mult0|auto_generated|add9_result[11]~23\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & !\Mult0|auto_generated|add9_result[10]~21\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\Mult0|auto_generated|add9_result[10]~21\) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[10]~21\,
	combout => \Mult0|auto_generated|add9_result[11]~22_combout\,
	cout => \Mult0|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X49_Y31_N24
\Mult0|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|add9_result[11]~22_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\Mult0|auto_generated|op_1~21\)))) # (!\Mult0|auto_generated|add9_result[11]~22_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|op_1~21\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~23\ = CARRY((\Mult0|auto_generated|add9_result[11]~22_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & !\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|add9_result[11]~22_combout\ & 
-- ((!\Mult0|auto_generated|op_1~21\) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[11]~22_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X42_Y31_N18
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux28~22_combout\ & ((\Mux2~6_combout\ & ((\Mult0|auto_generated|op_1~22_combout\))) # (!\Mux2~6_combout\ & (\Mult1|auto_generated|op_1~22_combout\)))) # (!\Mux28~22_combout\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~22_combout\,
	datab => \Mux28~22_combout\,
	datac => \Mux2~6_combout\,
	datad => \Mult0|auto_generated|op_1~22_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X42_Y31_N28
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Add0~10_combout\ & ((\Mux2~7_combout\) # ((\Mux3~4_combout\ & \Mux2~3_combout\)))) # (!\Add0~10_combout\ & (\Mux3~4_combout\ & (\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X41_Y33_N28
\ShiftLeft0~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (!\ir[1]~input_o\ & ((\ir[0]~input_o\ & ((\A[29]~input_o\))) # (!\ir[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[29]~input_o\,
	datac => \ir[0]~input_o\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~102_combout\);

-- Location: LCCOMB_X39_Y33_N2
\ShiftLeft0~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (!\ir[2]~input_o\ & ((\ShiftLeft0~102_combout\) # ((\ShiftLeft0~99_combout\ & \ir[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~99_combout\,
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~102_combout\,
	datad => \ir[1]~input_o\,
	combout => \ShiftLeft0~103_combout\);

-- Location: LCCOMB_X39_Y33_N24
\ShiftLeft0~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (\ir[2]~input_o\ & ((\ShiftLeft0~93_combout\) # ((!\ir[1]~input_o\ & \ShiftLeft0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~input_o\,
	datab => \ir[2]~input_o\,
	datac => \ShiftLeft0~93_combout\,
	datad => \ShiftLeft0~94_combout\,
	combout => \ShiftLeft0~101_combout\);

-- Location: LCCOMB_X39_Y33_N28
\ShiftLeft0~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (\ir[3]~input_o\ & (\ShiftLeft0~84_combout\)) # (!\ir[3]~input_o\ & (((\ShiftLeft0~103_combout\) # (\ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~84_combout\,
	datab => \ShiftLeft0~103_combout\,
	datac => \ir[3]~input_o\,
	datad => \ShiftLeft0~101_combout\,
	combout => \ShiftLeft0~104_combout\);

-- Location: LCCOMB_X39_Y30_N0
\Mux65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux65~3_combout\ = (\ir[4]~input_o\ & (((\opcode[0]~input_o\)))) # (!\ir[4]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftRight1~61_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftLeft0~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~61_combout\,
	datab => \ir[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftLeft0~104_combout\,
	combout => \Mux65~3_combout\);

-- Location: LCCOMB_X39_Y30_N18
\Mux65~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux65~4_combout\ = (\ir[4]~input_o\ & ((\Mux65~3_combout\ & ((\A[31]~input_o\))) # (!\Mux65~3_combout\ & (\ShiftLeft0~54_combout\)))) # (!\ir[4]~input_o\ & (((\Mux65~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \A[31]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \Mux65~3_combout\,
	combout => \Mux65~4_combout\);

-- Location: LCCOMB_X42_Y32_N12
\Mux65~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux65~5_combout\ = (\opcode[0]~input_o\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (!\opcode[0]~input_o\ & (\B[30]~input_o\ & \A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Mux65~5_combout\);

-- Location: LCCOMB_X42_Y32_N4
\Mux65~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux65~7_combout\ = (\opcode[0]~input_o\ & (!\ir[4]~input_o\ & (\ShiftRight0~76_combout\))) # (!\opcode[0]~input_o\ & (((\Equal0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~input_o\,
	datab => \ShiftRight0~76_combout\,
	datac => \Equal0~36_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux65~7_combout\);

-- Location: LCCOMB_X46_Y32_N28
\Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = \B[30]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X46_Y32_N14
\Add0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = (\A[30]~input_o\ & ((\Add0~96_combout\ & (\Add0~95\ & VCC)) # (!\Add0~96_combout\ & (!\Add0~95\)))) # (!\A[30]~input_o\ & ((\Add0~96_combout\ & (!\Add0~95\)) # (!\Add0~96_combout\ & ((\Add0~95\) # (GND)))))
-- \Add0~98\ = CARRY((\A[30]~input_o\ & (!\Add0~96_combout\ & !\Add0~95\)) # (!\A[30]~input_o\ & ((!\Add0~95\) # (!\Add0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Add0~96_combout\,
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~97_combout\,
	cout => \Add0~98\);

-- Location: LCCOMB_X49_Y34_N8
\Mult1|auto_generated|add9_result[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[12]~24_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT12\ $ (\Mult1|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult1|auto_generated|add9_result[11]~23\)))) # (GND)
-- \Mult1|auto_generated|add9_result[12]~25\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT12\ & ((\Mult1|auto_generated|mac_out4~DATAOUT12\) # (!\Mult1|auto_generated|add9_result[11]~23\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT12\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT12\ & !\Mult1|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT12\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[11]~23\,
	combout => \Mult1|auto_generated|add9_result[12]~24_combout\,
	cout => \Mult1|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X50_Y35_N26
\Mult1|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~24_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT30\ $ (\Mult1|auto_generated|add9_result[12]~24_combout\ $ (!\Mult1|auto_generated|op_1~23\)))) # (GND)
-- \Mult1|auto_generated|op_1~25\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT30\ & ((\Mult1|auto_generated|add9_result[12]~24_combout\) # (!\Mult1|auto_generated|op_1~23\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT30\ & 
-- (\Mult1|auto_generated|add9_result[12]~24_combout\ & !\Mult1|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult1|auto_generated|add9_result[12]~24_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~23\,
	combout => \Mult1|auto_generated|op_1~24_combout\,
	cout => \Mult1|auto_generated|op_1~25\);

-- Location: LCCOMB_X47_Y31_N26
\Mult0|auto_generated|add9_result[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[12]~24_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT12\ $ (\Mult0|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult0|auto_generated|add9_result[11]~23\)))) # (GND)
-- \Mult0|auto_generated|add9_result[12]~25\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT12\ & ((\Mult0|auto_generated|mac_out4~DATAOUT12\) # (!\Mult0|auto_generated|add9_result[11]~23\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT12\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT12\ & !\Mult0|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT12\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[11]~23\,
	combout => \Mult0|auto_generated|add9_result[12]~24_combout\,
	cout => \Mult0|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X49_Y31_N26
\Mult0|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT30\ $ (\Mult0|auto_generated|add9_result[12]~24_combout\ $ (!\Mult0|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|auto_generated|op_1~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\Mult0|auto_generated|add9_result[12]~24_combout\) # (!\Mult0|auto_generated|op_1~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & 
-- (\Mult0|auto_generated|add9_result[12]~24_combout\ & !\Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult0|auto_generated|add9_result[12]~24_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\,
	cout => \Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X42_Y32_N6
\Mux65~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux65~6_combout\ = (\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~24_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mult1|auto_generated|op_1~24_combout\,
	datad => \Mult0|auto_generated|op_1~24_combout\,
	combout => \Mux65~6_combout\);

-- Location: LCCOMB_X42_Y32_N0
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & ((\Mux65~6_combout\))) # (!\opcode[1]~input_o\ & (\Add0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Add0~97_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux65~6_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X42_Y32_N10
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\opcode[2]~input_o\ & ((\Mux1~0_combout\ & ((\Mux65~7_combout\))) # (!\Mux1~0_combout\ & (\Mux65~5_combout\)))) # (!\opcode[2]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~5_combout\,
	datab => \Mux65~7_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X42_Y31_N6
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux65~4_combout\ & ((\Mux3~4_combout\) # ((\Add0~10_combout\ & \Mux1~1_combout\)))) # (!\Mux65~4_combout\ & (((\Add0~10_combout\ & \Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~4_combout\,
	datab => \Mux3~4_combout\,
	datac => \Add0~10_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X42_Y31_N26
\Add0~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~103_combout\ = (\opcode[0]~input_o\) # ((\ShiftLeft0~11_combout\ & (!\ir[4]~input_o\ & \ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~11_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \ShiftRight0~37_combout\,
	combout => \Add0~103_combout\);

-- Location: LCCOMB_X38_Y32_N20
\Add0~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~99_combout\ = (\ir[1]~input_o\ & (((\ShiftLeft0~100_combout\)))) # (!\ir[1]~input_o\ & (\A[30]~input_o\ & ((\ir[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftLeft0~100_combout\,
	datac => \ir[1]~input_o\,
	datad => \ir[0]~input_o\,
	combout => \Add0~99_combout\);

-- Location: LCCOMB_X38_Y31_N12
\Add0~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (!\ir[3]~input_o\ & ((\ir[2]~input_o\ & (\ShiftLeft0~98_combout\)) # (!\ir[2]~input_o\ & ((\Add0~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~input_o\,
	datab => \ir[3]~input_o\,
	datac => \ShiftLeft0~98_combout\,
	datad => \Add0~99_combout\,
	combout => \Add0~100_combout\);

-- Location: LCCOMB_X38_Y31_N6
\Add0~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~101_combout\ = (!\ir[4]~input_o\ & ((\Add0~100_combout\) # ((\ShiftLeft0~88_combout\ & \ir[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~88_combout\,
	datab => \ir[3]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \Add0~100_combout\,
	combout => \Add0~101_combout\);

-- Location: LCCOMB_X42_Y31_N24
\Add0~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (!\opcode[0]~input_o\ & ((\Add0~101_combout\) # ((\ShiftLeft0~58_combout\ & \ir[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~58_combout\,
	datab => \Add0~101_combout\,
	datac => \ir[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~102_combout\);

-- Location: LCCOMB_X42_Y31_N4
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux3~4_combout\ & ((\Add0~102_combout\) # ((\A[31]~input_o\ & \Add0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \Add0~103_combout\,
	datad => \Add0~102_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X42_Y31_N14
\Add0~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (\opcode[0]~input_o\ & (\ShiftRight0~74_combout\ & (!\ir[4]~input_o\))) # (!\opcode[0]~input_o\ & (((\Equal0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ir[4]~input_o\,
	datad => \Equal0~37_combout\,
	combout => \Add0~110_combout\);

-- Location: LCCOMB_X46_Y32_N22
\Add0~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~107_combout\ = \opcode[0]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add0~107_combout\);

-- Location: LCCOMB_X45_Y33_N28
\Add0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = (!\opcode[1]~input_o\ & (\A[31]~input_o\ & (!\opcode[2]~input_o\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[31]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \Add0~10_combout\,
	combout => \Add0~106_combout\);

-- Location: LCCOMB_X46_Y32_N16
\Add0~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = \Add0~107_combout\ $ (\Add0~106_combout\ $ (!\Add0~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~107_combout\,
	datab => \Add0~106_combout\,
	cin => \Add0~98\,
	combout => \Add0~108_combout\);

-- Location: LCCOMB_X49_Y34_N10
\Mult1|auto_generated|add9_result[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[13]~26_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\Mult1|auto_generated|mac_out6~DATAOUT13\ & (\Mult1|auto_generated|add9_result[12]~25\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\Mult1|auto_generated|add9_result[12]~25\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\Mult1|auto_generated|mac_out6~DATAOUT13\ & (!\Mult1|auto_generated|add9_result[12]~25\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT13\ & 
-- ((\Mult1|auto_generated|add9_result[12]~25\) # (GND)))))
-- \Mult1|auto_generated|add9_result[13]~27\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT13\ & (!\Mult1|auto_generated|mac_out6~DATAOUT13\ & !\Mult1|auto_generated|add9_result[12]~25\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT13\ & 
-- ((!\Mult1|auto_generated|add9_result[12]~25\) # (!\Mult1|auto_generated|mac_out6~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT13\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT13\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[12]~25\,
	combout => \Mult1|auto_generated|add9_result[13]~26_combout\,
	cout => \Mult1|auto_generated|add9_result[13]~27\);

-- Location: LCCOMB_X50_Y35_N28
\Mult1|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~26_combout\ = (\Mult1|auto_generated|add9_result[13]~26_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT31\ & (\Mult1|auto_generated|op_1~25\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & 
-- (!\Mult1|auto_generated|op_1~25\)))) # (!\Mult1|auto_generated|add9_result[13]~26_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\Mult1|auto_generated|op_1~25\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & ((\Mult1|auto_generated|op_1~25\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~27\ = CARRY((\Mult1|auto_generated|add9_result[13]~26_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & !\Mult1|auto_generated|op_1~25\)) # (!\Mult1|auto_generated|add9_result[13]~26_combout\ & 
-- ((!\Mult1|auto_generated|op_1~25\) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[13]~26_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~25\,
	combout => \Mult1|auto_generated|op_1~26_combout\,
	cout => \Mult1|auto_generated|op_1~27\);

-- Location: LCCOMB_X47_Y31_N28
\Mult0|auto_generated|add9_result[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[13]~26_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|mac_out6~DATAOUT13\ & (\Mult0|auto_generated|add9_result[12]~25\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\Mult0|auto_generated|add9_result[12]~25\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|mac_out6~DATAOUT13\ & (!\Mult0|auto_generated|add9_result[12]~25\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- ((\Mult0|auto_generated|add9_result[12]~25\) # (GND)))))
-- \Mult0|auto_generated|add9_result[13]~27\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & !\Mult0|auto_generated|add9_result[12]~25\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- ((!\Mult0|auto_generated|add9_result[12]~25\) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT13\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[12]~25\,
	combout => \Mult0|auto_generated|add9_result[13]~26_combout\,
	cout => \Mult0|auto_generated|add9_result[13]~27\);

-- Location: LCCOMB_X49_Y31_N28
\Mult0|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|add9_result[13]~26_combout\ & (\Mult0|auto_generated|op_1~25\ & VCC)) # (!\Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- (!\Mult0|auto_generated|op_1~25\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|add9_result[13]~26_combout\ & (!\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- ((\Mult0|auto_generated|op_1~25\) # (GND)))))
-- \Mult0|auto_generated|op_1~27\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\Mult0|auto_generated|add9_result[13]~26_combout\ & !\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((!\Mult0|auto_generated|op_1~25\) 
-- # (!\Mult0|auto_generated|add9_result[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \Mult0|auto_generated|add9_result[13]~26_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~25\,
	combout => \Mult0|auto_generated|op_1~26_combout\,
	cout => \Mult0|auto_generated|op_1~27\);

-- Location: LCCOMB_X43_Y31_N12
\Add0~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~105_combout\ = (\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~26_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~26_combout\,
	datab => \Mult0|auto_generated|op_1~26_combout\,
	datac => \opcode[0]~input_o\,
	combout => \Add0~105_combout\);

-- Location: LCCOMB_X43_Y31_N14
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\opcode[1]~input_o\ & ((\opcode[2]~input_o\) # ((\Add0~105_combout\)))) # (!\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & (\Add0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \Add0~108_combout\,
	datad => \Add0~105_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X43_Y31_N26
\Add0~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (\opcode[0]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (!\opcode[0]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Add0~104_combout\);

-- Location: LCCOMB_X43_Y31_N0
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & ((\Add0~110_combout\) # ((!\opcode[2]~input_o\)))) # (!\Mux0~3_combout\ & (((\Add0~104_combout\ & \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~110_combout\,
	datab => \Mux0~3_combout\,
	datac => \Add0~104_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X43_Y31_N30
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~2_combout\) # ((!\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & \Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X47_Y31_N30
\Mult0|auto_generated|add9_result[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[14]~28_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT14\ $ (\Mult0|auto_generated|mac_out6~DATAOUT14\ $ (!\Mult0|auto_generated|add9_result[13]~27\)))) # (GND)
-- \Mult0|auto_generated|add9_result[14]~29\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT14\ & ((\Mult0|auto_generated|mac_out6~DATAOUT14\) # (!\Mult0|auto_generated|add9_result[13]~27\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT14\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT14\ & !\Mult0|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT14\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT14\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[13]~27\,
	combout => \Mult0|auto_generated|add9_result[14]~28_combout\,
	cout => \Mult0|auto_generated|add9_result[14]~29\);

-- Location: LCCOMB_X49_Y31_N30
\Mult0|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~28_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT32\ $ (\Mult0|auto_generated|add9_result[14]~28_combout\ $ (!\Mult0|auto_generated|op_1~27\)))) # (GND)
-- \Mult0|auto_generated|op_1~29\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT32\ & ((\Mult0|auto_generated|add9_result[14]~28_combout\) # (!\Mult0|auto_generated|op_1~27\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT32\ & 
-- (\Mult0|auto_generated|add9_result[14]~28_combout\ & !\Mult0|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT32\,
	datab => \Mult0|auto_generated|add9_result[14]~28_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~27\,
	combout => \Mult0|auto_generated|op_1~28_combout\,
	cout => \Mult0|auto_generated|op_1~29\);

-- Location: LCCOMB_X49_Y34_N12
\Mult1|auto_generated|add9_result[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[14]~28_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT14\ $ (\Mult1|auto_generated|mac_out4~DATAOUT14\ $ (!\Mult1|auto_generated|add9_result[13]~27\)))) # (GND)
-- \Mult1|auto_generated|add9_result[14]~29\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT14\ & ((\Mult1|auto_generated|mac_out4~DATAOUT14\) # (!\Mult1|auto_generated|add9_result[13]~27\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT14\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT14\ & !\Mult1|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT14\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[13]~27\,
	combout => \Mult1|auto_generated|add9_result[14]~28_combout\,
	cout => \Mult1|auto_generated|add9_result[14]~29\);

-- Location: LCCOMB_X50_Y35_N30
\Mult1|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~28_combout\ = ((\Mult1|auto_generated|add9_result[14]~28_combout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT32\ $ (!\Mult1|auto_generated|op_1~27\)))) # (GND)
-- \Mult1|auto_generated|op_1~29\ = CARRY((\Mult1|auto_generated|add9_result[14]~28_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT32\) # (!\Mult1|auto_generated|op_1~27\))) # (!\Mult1|auto_generated|add9_result[14]~28_combout\ & 
-- (\Mult1|auto_generated|mac_out2~DATAOUT32\ & !\Mult1|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[14]~28_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~27\,
	combout => \Mult1|auto_generated|op_1~28_combout\,
	cout => \Mult1|auto_generated|op_1~29\);

-- Location: LCCOMB_X46_Y31_N16
\Mux103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = (!\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & (!\opcode[2]~input_o\ & \opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux103~0_combout\);

-- Location: LCCOMB_X49_Y31_N0
\Mux127~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux127~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~28_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~28_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult1|auto_generated|op_1~28_combout\,
	datad => \Mux103~0_combout\,
	combout => \Mux127~0_combout\);

-- Location: LCCOMB_X47_Y30_N0
\Mult0|auto_generated|add9_result[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[15]~30_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT15\ & ((\Mult0|auto_generated|mac_out6~DATAOUT15\ & (\Mult0|auto_generated|add9_result[14]~29\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- (!\Mult0|auto_generated|add9_result[14]~29\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT15\ & ((\Mult0|auto_generated|mac_out6~DATAOUT15\ & (!\Mult0|auto_generated|add9_result[14]~29\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- ((\Mult0|auto_generated|add9_result[14]~29\) # (GND)))))
-- \Mult0|auto_generated|add9_result[15]~31\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT15\ & (!\Mult0|auto_generated|mac_out6~DATAOUT15\ & !\Mult0|auto_generated|add9_result[14]~29\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- ((!\Mult0|auto_generated|add9_result[14]~29\) # (!\Mult0|auto_generated|mac_out6~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT15\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT15\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[14]~29\,
	combout => \Mult0|auto_generated|add9_result[15]~30_combout\,
	cout => \Mult0|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X49_Y30_N0
\Mult0|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~30_combout\ = (\Mult0|auto_generated|add9_result[15]~30_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT33\ & (\Mult0|auto_generated|op_1~29\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- (!\Mult0|auto_generated|op_1~29\)))) # (!\Mult0|auto_generated|add9_result[15]~30_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT33\ & (!\Mult0|auto_generated|op_1~29\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\Mult0|auto_generated|op_1~29\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~31\ = CARRY((\Mult0|auto_generated|add9_result[15]~30_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & !\Mult0|auto_generated|op_1~29\)) # (!\Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- ((!\Mult0|auto_generated|op_1~29\) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[15]~30_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~29\,
	combout => \Mult0|auto_generated|op_1~30_combout\,
	cout => \Mult0|auto_generated|op_1~31\);

-- Location: LCCOMB_X49_Y34_N14
\Mult1|auto_generated|add9_result[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[15]~30_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT15\ & ((\Mult1|auto_generated|mac_out4~DATAOUT15\ & (\Mult1|auto_generated|add9_result[14]~29\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\ & 
-- (!\Mult1|auto_generated|add9_result[14]~29\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT15\ & ((\Mult1|auto_generated|mac_out4~DATAOUT15\ & (!\Mult1|auto_generated|add9_result[14]~29\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\ & 
-- ((\Mult1|auto_generated|add9_result[14]~29\) # (GND)))))
-- \Mult1|auto_generated|add9_result[15]~31\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT15\ & (!\Mult1|auto_generated|mac_out4~DATAOUT15\ & !\Mult1|auto_generated|add9_result[14]~29\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT15\ & 
-- ((!\Mult1|auto_generated|add9_result[14]~29\) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT15\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[14]~29\,
	combout => \Mult1|auto_generated|add9_result[15]~30_combout\,
	cout => \Mult1|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X50_Y34_N0
\Mult1|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~30_combout\ = (\Mult1|auto_generated|add9_result[15]~30_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT33\ & (\Mult1|auto_generated|op_1~29\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT33\ & 
-- (!\Mult1|auto_generated|op_1~29\)))) # (!\Mult1|auto_generated|add9_result[15]~30_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT33\ & (!\Mult1|auto_generated|op_1~29\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT33\ & ((\Mult1|auto_generated|op_1~29\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~31\ = CARRY((\Mult1|auto_generated|add9_result[15]~30_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT33\ & !\Mult1|auto_generated|op_1~29\)) # (!\Mult1|auto_generated|add9_result[15]~30_combout\ & 
-- ((!\Mult1|auto_generated|op_1~29\) # (!\Mult1|auto_generated|mac_out2~DATAOUT33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[15]~30_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~29\,
	combout => \Mult1|auto_generated|op_1~30_combout\,
	cout => \Mult1|auto_generated|op_1~31\);

-- Location: LCCOMB_X50_Y30_N24
\Mux126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~30_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult0|auto_generated|op_1~30_combout\,
	datad => \Mult1|auto_generated|op_1~30_combout\,
	combout => \Mux126~0_combout\);

-- Location: LCCOMB_X47_Y30_N2
\Mult0|auto_generated|add9_result[16]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[16]~32_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT16\ $ (\Mult0|auto_generated|mac_out6~DATAOUT16\ $ (!\Mult0|auto_generated|add9_result[15]~31\)))) # (GND)
-- \Mult0|auto_generated|add9_result[16]~33\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT16\ & ((\Mult0|auto_generated|mac_out6~DATAOUT16\) # (!\Mult0|auto_generated|add9_result[15]~31\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT16\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT16\ & !\Mult0|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT16\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT16\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[15]~31\,
	combout => \Mult0|auto_generated|add9_result[16]~32_combout\,
	cout => \Mult0|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X49_Y30_N2
\Mult0|auto_generated|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~32_combout\ = ((\Mult0|auto_generated|add9_result[16]~32_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT34\ $ (!\Mult0|auto_generated|op_1~31\)))) # (GND)
-- \Mult0|auto_generated|op_1~33\ = CARRY((\Mult0|auto_generated|add9_result[16]~32_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT34\) # (!\Mult0|auto_generated|op_1~31\))) # (!\Mult0|auto_generated|add9_result[16]~32_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT34\ & !\Mult0|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[16]~32_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT34\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~31\,
	combout => \Mult0|auto_generated|op_1~32_combout\,
	cout => \Mult0|auto_generated|op_1~33\);

-- Location: LCCOMB_X49_Y34_N16
\Mult1|auto_generated|add9_result[16]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[16]~32_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT16\ $ (\Mult1|auto_generated|mac_out4~DATAOUT16\ $ (!\Mult1|auto_generated|add9_result[15]~31\)))) # (GND)
-- \Mult1|auto_generated|add9_result[16]~33\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT16\ & ((\Mult1|auto_generated|mac_out4~DATAOUT16\) # (!\Mult1|auto_generated|add9_result[15]~31\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT16\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT16\ & !\Mult1|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT16\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[15]~31\,
	combout => \Mult1|auto_generated|add9_result[16]~32_combout\,
	cout => \Mult1|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X50_Y34_N2
\Mult1|auto_generated|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~32_combout\ = ((\Mult1|auto_generated|add9_result[16]~32_combout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT34\ $ (!\Mult1|auto_generated|op_1~31\)))) # (GND)
-- \Mult1|auto_generated|op_1~33\ = CARRY((\Mult1|auto_generated|add9_result[16]~32_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT34\) # (!\Mult1|auto_generated|op_1~31\))) # (!\Mult1|auto_generated|add9_result[16]~32_combout\ & 
-- (\Mult1|auto_generated|mac_out2~DATAOUT34\ & !\Mult1|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[16]~32_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT34\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~31\,
	combout => \Mult1|auto_generated|op_1~32_combout\,
	cout => \Mult1|auto_generated|op_1~33\);

-- Location: LCCOMB_X50_Y30_N26
\Mux125~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux125~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~32_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult0|auto_generated|op_1~32_combout\,
	datac => \Mult1|auto_generated|op_1~32_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux125~0_combout\);

-- Location: LCCOMB_X49_Y34_N18
\Mult1|auto_generated|add9_result[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[17]~34_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT17\ & ((\Mult1|auto_generated|mac_out6~DATAOUT17\ & (\Mult1|auto_generated|add9_result[16]~33\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT17\ & 
-- (!\Mult1|auto_generated|add9_result[16]~33\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\ & ((\Mult1|auto_generated|mac_out6~DATAOUT17\ & (!\Mult1|auto_generated|add9_result[16]~33\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT17\ & 
-- ((\Mult1|auto_generated|add9_result[16]~33\) # (GND)))))
-- \Mult1|auto_generated|add9_result[17]~35\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT17\ & (!\Mult1|auto_generated|mac_out6~DATAOUT17\ & !\Mult1|auto_generated|add9_result[16]~33\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\ & 
-- ((!\Mult1|auto_generated|add9_result[16]~33\) # (!\Mult1|auto_generated|mac_out6~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT17\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT17\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[16]~33\,
	combout => \Mult1|auto_generated|add9_result[17]~34_combout\,
	cout => \Mult1|auto_generated|add9_result[17]~35\);

-- Location: LCCOMB_X50_Y34_N4
\Mult1|auto_generated|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~34_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT35\ & ((\Mult1|auto_generated|add9_result[17]~34_combout\ & (\Mult1|auto_generated|op_1~33\ & VCC)) # (!\Mult1|auto_generated|add9_result[17]~34_combout\ & 
-- (!\Mult1|auto_generated|op_1~33\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT35\ & ((\Mult1|auto_generated|add9_result[17]~34_combout\ & (!\Mult1|auto_generated|op_1~33\)) # (!\Mult1|auto_generated|add9_result[17]~34_combout\ & 
-- ((\Mult1|auto_generated|op_1~33\) # (GND)))))
-- \Mult1|auto_generated|op_1~35\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT35\ & (!\Mult1|auto_generated|add9_result[17]~34_combout\ & !\Mult1|auto_generated|op_1~33\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT35\ & ((!\Mult1|auto_generated|op_1~33\) 
-- # (!\Mult1|auto_generated|add9_result[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT35\,
	datab => \Mult1|auto_generated|add9_result[17]~34_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~33\,
	combout => \Mult1|auto_generated|op_1~34_combout\,
	cout => \Mult1|auto_generated|op_1~35\);

-- Location: LCCOMB_X47_Y30_N4
\Mult0|auto_generated|add9_result[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[17]~34_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT17\ & ((\Mult0|auto_generated|mac_out6~DATAOUT17\ & (\Mult0|auto_generated|add9_result[16]~33\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- (!\Mult0|auto_generated|add9_result[16]~33\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\ & ((\Mult0|auto_generated|mac_out6~DATAOUT17\ & (!\Mult0|auto_generated|add9_result[16]~33\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- ((\Mult0|auto_generated|add9_result[16]~33\) # (GND)))))
-- \Mult0|auto_generated|add9_result[17]~35\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT17\ & (!\Mult0|auto_generated|mac_out6~DATAOUT17\ & !\Mult0|auto_generated|add9_result[16]~33\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- ((!\Mult0|auto_generated|add9_result[16]~33\) # (!\Mult0|auto_generated|mac_out6~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT17\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT17\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[16]~33\,
	combout => \Mult0|auto_generated|add9_result[17]~34_combout\,
	cout => \Mult0|auto_generated|add9_result[17]~35\);

-- Location: LCCOMB_X49_Y30_N4
\Mult0|auto_generated|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~34_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT35\ & ((\Mult0|auto_generated|add9_result[17]~34_combout\ & (\Mult0|auto_generated|op_1~33\ & VCC)) # (!\Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- (!\Mult0|auto_generated|op_1~33\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT35\ & ((\Mult0|auto_generated|add9_result[17]~34_combout\ & (!\Mult0|auto_generated|op_1~33\)) # (!\Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- ((\Mult0|auto_generated|op_1~33\) # (GND)))))
-- \Mult0|auto_generated|op_1~35\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT35\ & (!\Mult0|auto_generated|add9_result[17]~34_combout\ & !\Mult0|auto_generated|op_1~33\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT35\ & ((!\Mult0|auto_generated|op_1~33\) 
-- # (!\Mult0|auto_generated|add9_result[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT35\,
	datab => \Mult0|auto_generated|add9_result[17]~34_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~33\,
	combout => \Mult0|auto_generated|op_1~34_combout\,
	cout => \Mult0|auto_generated|op_1~35\);

-- Location: LCCOMB_X50_Y30_N20
\Mux124~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~34_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult1|auto_generated|op_1~34_combout\,
	datac => \Mult0|auto_generated|op_1~34_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux124~0_combout\);

-- Location: DSPMULT_X48_Y33_N0
\Mult1|auto_generated|mac_mult7\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult7_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y33_N2
\Mult1|auto_generated|mac_out8\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y34_N20
\Mult1|auto_generated|add9_result[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[18]~36_combout\ = ((\Mult1|auto_generated|mac_out8~dataout\ $ (\Mult1|auto_generated|mac_out6~DATAOUT18\ $ (!\Mult1|auto_generated|add9_result[17]~35\)))) # (GND)
-- \Mult1|auto_generated|add9_result[18]~37\ = CARRY((\Mult1|auto_generated|mac_out8~dataout\ & ((\Mult1|auto_generated|mac_out6~DATAOUT18\) # (!\Mult1|auto_generated|add9_result[17]~35\))) # (!\Mult1|auto_generated|mac_out8~dataout\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT18\ & !\Mult1|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~dataout\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT18\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[17]~35\,
	combout => \Mult1|auto_generated|add9_result[18]~36_combout\,
	cout => \Mult1|auto_generated|add9_result[18]~37\);

-- Location: LCCOMB_X50_Y34_N6
\Mult1|auto_generated|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~36_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT18\ $ (\Mult1|auto_generated|add9_result[18]~36_combout\ $ (!\Mult1|auto_generated|op_1~35\)))) # (GND)
-- \Mult1|auto_generated|op_1~37\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT18\ & ((\Mult1|auto_generated|add9_result[18]~36_combout\) # (!\Mult1|auto_generated|op_1~35\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT18\ & 
-- (\Mult1|auto_generated|add9_result[18]~36_combout\ & !\Mult1|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT18\,
	datab => \Mult1|auto_generated|add9_result[18]~36_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~35\,
	combout => \Mult1|auto_generated|op_1~36_combout\,
	cout => \Mult1|auto_generated|op_1~37\);

-- Location: DSPMULT_X48_Y29_N0
\Mult0|auto_generated|mac_mult7\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult7_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y29_N2
\Mult0|auto_generated|mac_out8\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y30_N6
\Mult0|auto_generated|add9_result[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[18]~36_combout\ = ((\Mult0|auto_generated|mac_out8~dataout\ $ (\Mult0|auto_generated|mac_out6~DATAOUT18\ $ (!\Mult0|auto_generated|add9_result[17]~35\)))) # (GND)
-- \Mult0|auto_generated|add9_result[18]~37\ = CARRY((\Mult0|auto_generated|mac_out8~dataout\ & ((\Mult0|auto_generated|mac_out6~DATAOUT18\) # (!\Mult0|auto_generated|add9_result[17]~35\))) # (!\Mult0|auto_generated|mac_out8~dataout\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT18\ & !\Mult0|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~dataout\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[17]~35\,
	combout => \Mult0|auto_generated|add9_result[18]~36_combout\,
	cout => \Mult0|auto_generated|add9_result[18]~37\);

-- Location: LCCOMB_X49_Y30_N6
\Mult0|auto_generated|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~36_combout\ = ((\Mult0|auto_generated|add9_result[18]~36_combout\ $ (\Mult0|auto_generated|mac_out4~DATAOUT18\ $ (!\Mult0|auto_generated|op_1~35\)))) # (GND)
-- \Mult0|auto_generated|op_1~37\ = CARRY((\Mult0|auto_generated|add9_result[18]~36_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT18\) # (!\Mult0|auto_generated|op_1~35\))) # (!\Mult0|auto_generated|add9_result[18]~36_combout\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT18\ & !\Mult0|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[18]~36_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~35\,
	combout => \Mult0|auto_generated|op_1~36_combout\,
	cout => \Mult0|auto_generated|op_1~37\);

-- Location: LCCOMB_X51_Y34_N10
\Mux123~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux123~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~36_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult1|auto_generated|op_1~36_combout\,
	datad => \Mult0|auto_generated|op_1~36_combout\,
	combout => \Mux123~0_combout\);

-- Location: LCCOMB_X47_Y30_N8
\Mult0|auto_generated|add9_result[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[19]~38_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT1\ & ((\Mult0|auto_generated|mac_out6~DATAOUT19\ & (\Mult0|auto_generated|add9_result[18]~37\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- (!\Mult0|auto_generated|add9_result[18]~37\)))) # (!\Mult0|auto_generated|mac_out8~DATAOUT1\ & ((\Mult0|auto_generated|mac_out6~DATAOUT19\ & (!\Mult0|auto_generated|add9_result[18]~37\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- ((\Mult0|auto_generated|add9_result[18]~37\) # (GND)))))
-- \Mult0|auto_generated|add9_result[19]~39\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT1\ & (!\Mult0|auto_generated|mac_out6~DATAOUT19\ & !\Mult0|auto_generated|add9_result[18]~37\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- ((!\Mult0|auto_generated|add9_result[18]~37\) # (!\Mult0|auto_generated|mac_out6~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT1\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[18]~37\,
	combout => \Mult0|auto_generated|add9_result[19]~38_combout\,
	cout => \Mult0|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X49_Y30_N8
\Mult0|auto_generated|op_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~38_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT19\ & ((\Mult0|auto_generated|add9_result[19]~38_combout\ & (\Mult0|auto_generated|op_1~37\ & VCC)) # (!\Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- (!\Mult0|auto_generated|op_1~37\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & ((\Mult0|auto_generated|add9_result[19]~38_combout\ & (!\Mult0|auto_generated|op_1~37\)) # (!\Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- ((\Mult0|auto_generated|op_1~37\) # (GND)))))
-- \Mult0|auto_generated|op_1~39\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT19\ & (!\Mult0|auto_generated|add9_result[19]~38_combout\ & !\Mult0|auto_generated|op_1~37\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & ((!\Mult0|auto_generated|op_1~37\) 
-- # (!\Mult0|auto_generated|add9_result[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT19\,
	datab => \Mult0|auto_generated|add9_result[19]~38_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~37\,
	combout => \Mult0|auto_generated|op_1~38_combout\,
	cout => \Mult0|auto_generated|op_1~39\);

-- Location: LCCOMB_X49_Y34_N22
\Mult1|auto_generated|add9_result[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[19]~38_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT19\ & (\Mult1|auto_generated|add9_result[18]~37\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT19\ & 
-- (!\Mult1|auto_generated|add9_result[18]~37\)))) # (!\Mult1|auto_generated|mac_out8~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT19\ & (!\Mult1|auto_generated|add9_result[18]~37\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT19\ & 
-- ((\Mult1|auto_generated|add9_result[18]~37\) # (GND)))))
-- \Mult1|auto_generated|add9_result[19]~39\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT1\ & (!\Mult1|auto_generated|mac_out6~DATAOUT19\ & !\Mult1|auto_generated|add9_result[18]~37\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT1\ & 
-- ((!\Mult1|auto_generated|add9_result[18]~37\) # (!\Mult1|auto_generated|mac_out6~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT1\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[18]~37\,
	combout => \Mult1|auto_generated|add9_result[19]~38_combout\,
	cout => \Mult1|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X50_Y34_N8
\Mult1|auto_generated|op_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~38_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\Mult1|auto_generated|add9_result[19]~38_combout\ & (\Mult1|auto_generated|op_1~37\ & VCC)) # (!\Mult1|auto_generated|add9_result[19]~38_combout\ & 
-- (!\Mult1|auto_generated|op_1~37\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\Mult1|auto_generated|add9_result[19]~38_combout\ & (!\Mult1|auto_generated|op_1~37\)) # (!\Mult1|auto_generated|add9_result[19]~38_combout\ & 
-- ((\Mult1|auto_generated|op_1~37\) # (GND)))))
-- \Mult1|auto_generated|op_1~39\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT19\ & (!\Mult1|auto_generated|add9_result[19]~38_combout\ & !\Mult1|auto_generated|op_1~37\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((!\Mult1|auto_generated|op_1~37\) 
-- # (!\Mult1|auto_generated|add9_result[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT19\,
	datab => \Mult1|auto_generated|add9_result[19]~38_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~37\,
	combout => \Mult1|auto_generated|op_1~38_combout\,
	cout => \Mult1|auto_generated|op_1~39\);

-- Location: LCCOMB_X51_Y34_N4
\Mux122~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~38_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult0|auto_generated|op_1~38_combout\,
	datad => \Mult1|auto_generated|op_1~38_combout\,
	combout => \Mux122~0_combout\);

-- Location: LCCOMB_X47_Y30_N10
\Mult0|auto_generated|add9_result[20]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[20]~40_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT20\ $ (\Mult0|auto_generated|mac_out8~DATAOUT2\ $ (!\Mult0|auto_generated|add9_result[19]~39\)))) # (GND)
-- \Mult0|auto_generated|add9_result[20]~41\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT20\ & ((\Mult0|auto_generated|mac_out8~DATAOUT2\) # (!\Mult0|auto_generated|add9_result[19]~39\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT20\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT2\ & !\Mult0|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT20\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT2\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[19]~39\,
	combout => \Mult0|auto_generated|add9_result[20]~40_combout\,
	cout => \Mult0|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X49_Y30_N10
\Mult0|auto_generated|op_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~40_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT20\ $ (\Mult0|auto_generated|add9_result[20]~40_combout\ $ (!\Mult0|auto_generated|op_1~39\)))) # (GND)
-- \Mult0|auto_generated|op_1~41\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT20\ & ((\Mult0|auto_generated|add9_result[20]~40_combout\) # (!\Mult0|auto_generated|op_1~39\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT20\ & 
-- (\Mult0|auto_generated|add9_result[20]~40_combout\ & !\Mult0|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT20\,
	datab => \Mult0|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~39\,
	combout => \Mult0|auto_generated|op_1~40_combout\,
	cout => \Mult0|auto_generated|op_1~41\);

-- Location: LCCOMB_X49_Y34_N24
\Mult1|auto_generated|add9_result[20]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[20]~40_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT20\ $ (\Mult1|auto_generated|mac_out8~DATAOUT2\ $ (!\Mult1|auto_generated|add9_result[19]~39\)))) # (GND)
-- \Mult1|auto_generated|add9_result[20]~41\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT20\ & ((\Mult1|auto_generated|mac_out8~DATAOUT2\) # (!\Mult1|auto_generated|add9_result[19]~39\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT20\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT2\ & !\Mult1|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT20\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT2\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[19]~39\,
	combout => \Mult1|auto_generated|add9_result[20]~40_combout\,
	cout => \Mult1|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X50_Y34_N10
\Mult1|auto_generated|op_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~40_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT20\ $ (\Mult1|auto_generated|add9_result[20]~40_combout\ $ (!\Mult1|auto_generated|op_1~39\)))) # (GND)
-- \Mult1|auto_generated|op_1~41\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT20\ & ((\Mult1|auto_generated|add9_result[20]~40_combout\) # (!\Mult1|auto_generated|op_1~39\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT20\ & 
-- (\Mult1|auto_generated|add9_result[20]~40_combout\ & !\Mult1|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT20\,
	datab => \Mult1|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~39\,
	combout => \Mult1|auto_generated|op_1~40_combout\,
	cout => \Mult1|auto_generated|op_1~41\);

-- Location: LCCOMB_X50_Y30_N14
\Mux121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux121~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~40_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mult0|auto_generated|op_1~40_combout\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~40_combout\,
	combout => \Mux121~0_combout\);

-- Location: LCCOMB_X49_Y34_N26
\Mult1|auto_generated|add9_result[21]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[21]~42_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT21\ & ((\Mult1|auto_generated|mac_out8~DATAOUT3\ & (\Mult1|auto_generated|add9_result[20]~41\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\Mult1|auto_generated|add9_result[20]~41\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT21\ & ((\Mult1|auto_generated|mac_out8~DATAOUT3\ & (!\Mult1|auto_generated|add9_result[20]~41\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT3\ & 
-- ((\Mult1|auto_generated|add9_result[20]~41\) # (GND)))))
-- \Mult1|auto_generated|add9_result[21]~43\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT21\ & (!\Mult1|auto_generated|mac_out8~DATAOUT3\ & !\Mult1|auto_generated|add9_result[20]~41\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT21\ & 
-- ((!\Mult1|auto_generated|add9_result[20]~41\) # (!\Mult1|auto_generated|mac_out8~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT21\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT3\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[20]~41\,
	combout => \Mult1|auto_generated|add9_result[21]~42_combout\,
	cout => \Mult1|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X50_Y34_N12
\Mult1|auto_generated|op_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~42_combout\ = (\Mult1|auto_generated|add9_result[21]~42_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT21\ & (\Mult1|auto_generated|op_1~41\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\ & 
-- (!\Mult1|auto_generated|op_1~41\)))) # (!\Mult1|auto_generated|add9_result[21]~42_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT21\ & (!\Mult1|auto_generated|op_1~41\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\ & ((\Mult1|auto_generated|op_1~41\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~43\ = CARRY((\Mult1|auto_generated|add9_result[21]~42_combout\ & (!\Mult1|auto_generated|mac_out4~DATAOUT21\ & !\Mult1|auto_generated|op_1~41\)) # (!\Mult1|auto_generated|add9_result[21]~42_combout\ & 
-- ((!\Mult1|auto_generated|op_1~41\) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[21]~42_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~41\,
	combout => \Mult1|auto_generated|op_1~42_combout\,
	cout => \Mult1|auto_generated|op_1~43\);

-- Location: LCCOMB_X47_Y30_N12
\Mult0|auto_generated|add9_result[21]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[21]~42_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT21\ & ((\Mult0|auto_generated|mac_out8~DATAOUT3\ & (\Mult0|auto_generated|add9_result[20]~41\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\Mult0|auto_generated|add9_result[20]~41\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT21\ & ((\Mult0|auto_generated|mac_out8~DATAOUT3\ & (!\Mult0|auto_generated|add9_result[20]~41\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- ((\Mult0|auto_generated|add9_result[20]~41\) # (GND)))))
-- \Mult0|auto_generated|add9_result[21]~43\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT21\ & (!\Mult0|auto_generated|mac_out8~DATAOUT3\ & !\Mult0|auto_generated|add9_result[20]~41\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- ((!\Mult0|auto_generated|add9_result[20]~41\) # (!\Mult0|auto_generated|mac_out8~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT21\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[20]~41\,
	combout => \Mult0|auto_generated|add9_result[21]~42_combout\,
	cout => \Mult0|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X49_Y30_N12
\Mult0|auto_generated|op_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~42_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT21\ & ((\Mult0|auto_generated|add9_result[21]~42_combout\ & (\Mult0|auto_generated|op_1~41\ & VCC)) # (!\Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- (!\Mult0|auto_generated|op_1~41\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT21\ & ((\Mult0|auto_generated|add9_result[21]~42_combout\ & (!\Mult0|auto_generated|op_1~41\)) # (!\Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- ((\Mult0|auto_generated|op_1~41\) # (GND)))))
-- \Mult0|auto_generated|op_1~43\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT21\ & (!\Mult0|auto_generated|add9_result[21]~42_combout\ & !\Mult0|auto_generated|op_1~41\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT21\ & ((!\Mult0|auto_generated|op_1~41\) 
-- # (!\Mult0|auto_generated|add9_result[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT21\,
	datab => \Mult0|auto_generated|add9_result[21]~42_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~41\,
	combout => \Mult0|auto_generated|op_1~42_combout\,
	cout => \Mult0|auto_generated|op_1~43\);

-- Location: LCCOMB_X51_Y34_N14
\Mux120~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~42_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~42_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult0|auto_generated|op_1~42_combout\,
	combout => \Mux120~0_combout\);

-- Location: LCCOMB_X49_Y34_N28
\Mult1|auto_generated|add9_result[22]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[22]~44_combout\ = ((\Mult1|auto_generated|mac_out8~DATAOUT4\ $ (\Mult1|auto_generated|mac_out6~DATAOUT22\ $ (!\Mult1|auto_generated|add9_result[21]~43\)))) # (GND)
-- \Mult1|auto_generated|add9_result[22]~45\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT4\ & ((\Mult1|auto_generated|mac_out6~DATAOUT22\) # (!\Mult1|auto_generated|add9_result[21]~43\))) # (!\Mult1|auto_generated|mac_out8~DATAOUT4\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT22\ & !\Mult1|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT4\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[21]~43\,
	combout => \Mult1|auto_generated|add9_result[22]~44_combout\,
	cout => \Mult1|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X50_Y34_N14
\Mult1|auto_generated|op_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~44_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT22\ $ (\Mult1|auto_generated|add9_result[22]~44_combout\ $ (!\Mult1|auto_generated|op_1~43\)))) # (GND)
-- \Mult1|auto_generated|op_1~45\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT22\ & ((\Mult1|auto_generated|add9_result[22]~44_combout\) # (!\Mult1|auto_generated|op_1~43\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT22\ & 
-- (\Mult1|auto_generated|add9_result[22]~44_combout\ & !\Mult1|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT22\,
	datab => \Mult1|auto_generated|add9_result[22]~44_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~43\,
	combout => \Mult1|auto_generated|op_1~44_combout\,
	cout => \Mult1|auto_generated|op_1~45\);

-- Location: LCCOMB_X47_Y30_N14
\Mult0|auto_generated|add9_result[22]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[22]~44_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT22\ $ (\Mult0|auto_generated|mac_out8~DATAOUT4\ $ (!\Mult0|auto_generated|add9_result[21]~43\)))) # (GND)
-- \Mult0|auto_generated|add9_result[22]~45\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT22\ & ((\Mult0|auto_generated|mac_out8~DATAOUT4\) # (!\Mult0|auto_generated|add9_result[21]~43\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT22\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT4\ & !\Mult0|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT22\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT4\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[21]~43\,
	combout => \Mult0|auto_generated|add9_result[22]~44_combout\,
	cout => \Mult0|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X49_Y30_N14
\Mult0|auto_generated|op_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~44_combout\ = ((\Mult0|auto_generated|add9_result[22]~44_combout\ $ (\Mult0|auto_generated|mac_out4~DATAOUT22\ $ (!\Mult0|auto_generated|op_1~43\)))) # (GND)
-- \Mult0|auto_generated|op_1~45\ = CARRY((\Mult0|auto_generated|add9_result[22]~44_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT22\) # (!\Mult0|auto_generated|op_1~43\))) # (!\Mult0|auto_generated|add9_result[22]~44_combout\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT22\ & !\Mult0|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[22]~44_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~43\,
	combout => \Mult0|auto_generated|op_1~44_combout\,
	cout => \Mult0|auto_generated|op_1~45\);

-- Location: LCCOMB_X50_Y30_N0
\Mux119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux119~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~44_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult1|auto_generated|op_1~44_combout\,
	datad => \Mult0|auto_generated|op_1~44_combout\,
	combout => \Mux119~0_combout\);

-- Location: LCCOMB_X49_Y34_N30
\Mult1|auto_generated|add9_result[23]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[23]~46_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT5\ & ((\Mult1|auto_generated|mac_out6~DATAOUT23\ & (\Mult1|auto_generated|add9_result[22]~45\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\Mult1|auto_generated|add9_result[22]~45\)))) # (!\Mult1|auto_generated|mac_out8~DATAOUT5\ & ((\Mult1|auto_generated|mac_out6~DATAOUT23\ & (!\Mult1|auto_generated|add9_result[22]~45\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT23\ & 
-- ((\Mult1|auto_generated|add9_result[22]~45\) # (GND)))))
-- \Mult1|auto_generated|add9_result[23]~47\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT5\ & (!\Mult1|auto_generated|mac_out6~DATAOUT23\ & !\Mult1|auto_generated|add9_result[22]~45\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT5\ & 
-- ((!\Mult1|auto_generated|add9_result[22]~45\) # (!\Mult1|auto_generated|mac_out6~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT5\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[22]~45\,
	combout => \Mult1|auto_generated|add9_result[23]~46_combout\,
	cout => \Mult1|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X50_Y34_N16
\Mult1|auto_generated|op_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~46_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT23\ & ((\Mult1|auto_generated|add9_result[23]~46_combout\ & (\Mult1|auto_generated|op_1~45\ & VCC)) # (!\Mult1|auto_generated|add9_result[23]~46_combout\ & 
-- (!\Mult1|auto_generated|op_1~45\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT23\ & ((\Mult1|auto_generated|add9_result[23]~46_combout\ & (!\Mult1|auto_generated|op_1~45\)) # (!\Mult1|auto_generated|add9_result[23]~46_combout\ & 
-- ((\Mult1|auto_generated|op_1~45\) # (GND)))))
-- \Mult1|auto_generated|op_1~47\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT23\ & (!\Mult1|auto_generated|add9_result[23]~46_combout\ & !\Mult1|auto_generated|op_1~45\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT23\ & ((!\Mult1|auto_generated|op_1~45\) 
-- # (!\Mult1|auto_generated|add9_result[23]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT23\,
	datab => \Mult1|auto_generated|add9_result[23]~46_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~45\,
	combout => \Mult1|auto_generated|op_1~46_combout\,
	cout => \Mult1|auto_generated|op_1~47\);

-- Location: LCCOMB_X47_Y30_N16
\Mult0|auto_generated|add9_result[23]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[23]~46_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT5\ & ((\Mult0|auto_generated|mac_out6~DATAOUT23\ & (\Mult0|auto_generated|add9_result[22]~45\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\Mult0|auto_generated|add9_result[22]~45\)))) # (!\Mult0|auto_generated|mac_out8~DATAOUT5\ & ((\Mult0|auto_generated|mac_out6~DATAOUT23\ & (!\Mult0|auto_generated|add9_result[22]~45\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- ((\Mult0|auto_generated|add9_result[22]~45\) # (GND)))))
-- \Mult0|auto_generated|add9_result[23]~47\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT5\ & (!\Mult0|auto_generated|mac_out6~DATAOUT23\ & !\Mult0|auto_generated|add9_result[22]~45\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- ((!\Mult0|auto_generated|add9_result[22]~45\) # (!\Mult0|auto_generated|mac_out6~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[22]~45\,
	combout => \Mult0|auto_generated|add9_result[23]~46_combout\,
	cout => \Mult0|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X49_Y30_N16
\Mult0|auto_generated|op_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~46_combout\ = (\Mult0|auto_generated|add9_result[23]~46_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT23\ & (\Mult0|auto_generated|op_1~45\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- (!\Mult0|auto_generated|op_1~45\)))) # (!\Mult0|auto_generated|add9_result[23]~46_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT23\ & (!\Mult0|auto_generated|op_1~45\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT23\ & ((\Mult0|auto_generated|op_1~45\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~47\ = CARRY((\Mult0|auto_generated|add9_result[23]~46_combout\ & (!\Mult0|auto_generated|mac_out4~DATAOUT23\ & !\Mult0|auto_generated|op_1~45\)) # (!\Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- ((!\Mult0|auto_generated|op_1~45\) # (!\Mult0|auto_generated|mac_out4~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[23]~46_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~45\,
	combout => \Mult0|auto_generated|op_1~46_combout\,
	cout => \Mult0|auto_generated|op_1~47\);

-- Location: LCCOMB_X51_Y34_N8
\Mux118~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~46_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult1|auto_generated|op_1~46_combout\,
	datad => \Mult0|auto_generated|op_1~46_combout\,
	combout => \Mux118~0_combout\);

-- Location: LCCOMB_X47_Y30_N18
\Mult0|auto_generated|add9_result[24]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[24]~48_combout\ = ((\Mult0|auto_generated|mac_out8~DATAOUT6\ $ (\Mult0|auto_generated|mac_out6~DATAOUT24\ $ (!\Mult0|auto_generated|add9_result[23]~47\)))) # (GND)
-- \Mult0|auto_generated|add9_result[24]~49\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT6\ & ((\Mult0|auto_generated|mac_out6~DATAOUT24\) # (!\Mult0|auto_generated|add9_result[23]~47\))) # (!\Mult0|auto_generated|mac_out8~DATAOUT6\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT24\ & !\Mult0|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[23]~47\,
	combout => \Mult0|auto_generated|add9_result[24]~48_combout\,
	cout => \Mult0|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X49_Y30_N18
\Mult0|auto_generated|op_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~48_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT24\ $ (\Mult0|auto_generated|add9_result[24]~48_combout\ $ (!\Mult0|auto_generated|op_1~47\)))) # (GND)
-- \Mult0|auto_generated|op_1~49\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT24\ & ((\Mult0|auto_generated|add9_result[24]~48_combout\) # (!\Mult0|auto_generated|op_1~47\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT24\ & 
-- (\Mult0|auto_generated|add9_result[24]~48_combout\ & !\Mult0|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT24\,
	datab => \Mult0|auto_generated|add9_result[24]~48_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~47\,
	combout => \Mult0|auto_generated|op_1~48_combout\,
	cout => \Mult0|auto_generated|op_1~49\);

-- Location: LCCOMB_X49_Y33_N0
\Mult1|auto_generated|add9_result[24]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[24]~48_combout\ = ((\Mult1|auto_generated|mac_out8~DATAOUT6\ $ (\Mult1|auto_generated|mac_out6~DATAOUT24\ $ (!\Mult1|auto_generated|add9_result[23]~47\)))) # (GND)
-- \Mult1|auto_generated|add9_result[24]~49\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT6\ & ((\Mult1|auto_generated|mac_out6~DATAOUT24\) # (!\Mult1|auto_generated|add9_result[23]~47\))) # (!\Mult1|auto_generated|mac_out8~DATAOUT6\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT24\ & !\Mult1|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT6\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT24\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[23]~47\,
	combout => \Mult1|auto_generated|add9_result[24]~48_combout\,
	cout => \Mult1|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X50_Y34_N18
\Mult1|auto_generated|op_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~48_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT24\ $ (\Mult1|auto_generated|add9_result[24]~48_combout\ $ (!\Mult1|auto_generated|op_1~47\)))) # (GND)
-- \Mult1|auto_generated|op_1~49\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT24\ & ((\Mult1|auto_generated|add9_result[24]~48_combout\) # (!\Mult1|auto_generated|op_1~47\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT24\ & 
-- (\Mult1|auto_generated|add9_result[24]~48_combout\ & !\Mult1|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT24\,
	datab => \Mult1|auto_generated|add9_result[24]~48_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~47\,
	combout => \Mult1|auto_generated|op_1~48_combout\,
	cout => \Mult1|auto_generated|op_1~49\);

-- Location: LCCOMB_X51_Y34_N2
\Mux117~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux117~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~48_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult0|auto_generated|op_1~48_combout\,
	datad => \Mult1|auto_generated|op_1~48_combout\,
	combout => \Mux117~0_combout\);

-- Location: LCCOMB_X47_Y30_N20
\Mult0|auto_generated|add9_result[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[25]~50_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT25\ & ((\Mult0|auto_generated|mac_out8~DATAOUT7\ & (\Mult0|auto_generated|add9_result[24]~49\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- (!\Mult0|auto_generated|add9_result[24]~49\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT25\ & ((\Mult0|auto_generated|mac_out8~DATAOUT7\ & (!\Mult0|auto_generated|add9_result[24]~49\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- ((\Mult0|auto_generated|add9_result[24]~49\) # (GND)))))
-- \Mult0|auto_generated|add9_result[25]~51\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT25\ & (!\Mult0|auto_generated|mac_out8~DATAOUT7\ & !\Mult0|auto_generated|add9_result[24]~49\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- ((!\Mult0|auto_generated|add9_result[24]~49\) # (!\Mult0|auto_generated|mac_out8~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT25\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT7\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[24]~49\,
	combout => \Mult0|auto_generated|add9_result[25]~50_combout\,
	cout => \Mult0|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X49_Y30_N20
\Mult0|auto_generated|op_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~50_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT25\ & ((\Mult0|auto_generated|add9_result[25]~50_combout\ & (\Mult0|auto_generated|op_1~49\ & VCC)) # (!\Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- (!\Mult0|auto_generated|op_1~49\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT25\ & ((\Mult0|auto_generated|add9_result[25]~50_combout\ & (!\Mult0|auto_generated|op_1~49\)) # (!\Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- ((\Mult0|auto_generated|op_1~49\) # (GND)))))
-- \Mult0|auto_generated|op_1~51\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT25\ & (!\Mult0|auto_generated|add9_result[25]~50_combout\ & !\Mult0|auto_generated|op_1~49\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT25\ & ((!\Mult0|auto_generated|op_1~49\) 
-- # (!\Mult0|auto_generated|add9_result[25]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT25\,
	datab => \Mult0|auto_generated|add9_result[25]~50_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~49\,
	combout => \Mult0|auto_generated|op_1~50_combout\,
	cout => \Mult0|auto_generated|op_1~51\);

-- Location: LCCOMB_X49_Y33_N2
\Mult1|auto_generated|add9_result[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[25]~50_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT25\ & ((\Mult1|auto_generated|mac_out8~DATAOUT7\ & (\Mult1|auto_generated|add9_result[24]~49\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT7\ & 
-- (!\Mult1|auto_generated|add9_result[24]~49\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT25\ & ((\Mult1|auto_generated|mac_out8~DATAOUT7\ & (!\Mult1|auto_generated|add9_result[24]~49\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT7\ & 
-- ((\Mult1|auto_generated|add9_result[24]~49\) # (GND)))))
-- \Mult1|auto_generated|add9_result[25]~51\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT25\ & (!\Mult1|auto_generated|mac_out8~DATAOUT7\ & !\Mult1|auto_generated|add9_result[24]~49\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT25\ & 
-- ((!\Mult1|auto_generated|add9_result[24]~49\) # (!\Mult1|auto_generated|mac_out8~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT25\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT7\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[24]~49\,
	combout => \Mult1|auto_generated|add9_result[25]~50_combout\,
	cout => \Mult1|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X50_Y34_N20
\Mult1|auto_generated|op_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~50_combout\ = (\Mult1|auto_generated|add9_result[25]~50_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT25\ & (\Mult1|auto_generated|op_1~49\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT25\ & 
-- (!\Mult1|auto_generated|op_1~49\)))) # (!\Mult1|auto_generated|add9_result[25]~50_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT25\ & (!\Mult1|auto_generated|op_1~49\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT25\ & ((\Mult1|auto_generated|op_1~49\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~51\ = CARRY((\Mult1|auto_generated|add9_result[25]~50_combout\ & (!\Mult1|auto_generated|mac_out4~DATAOUT25\ & !\Mult1|auto_generated|op_1~49\)) # (!\Mult1|auto_generated|add9_result[25]~50_combout\ & 
-- ((!\Mult1|auto_generated|op_1~49\) # (!\Mult1|auto_generated|mac_out4~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[25]~50_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~49\,
	combout => \Mult1|auto_generated|op_1~50_combout\,
	cout => \Mult1|auto_generated|op_1~51\);

-- Location: LCCOMB_X51_Y34_N20
\Mux116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~50_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~50_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~50_combout\,
	combout => \Mux116~0_combout\);

-- Location: LCCOMB_X47_Y30_N22
\Mult0|auto_generated|add9_result[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[26]~52_combout\ = ((\Mult0|auto_generated|mac_out8~DATAOUT8\ $ (\Mult0|auto_generated|mac_out6~DATAOUT26\ $ (!\Mult0|auto_generated|add9_result[25]~51\)))) # (GND)
-- \Mult0|auto_generated|add9_result[26]~53\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT8\ & ((\Mult0|auto_generated|mac_out6~DATAOUT26\) # (!\Mult0|auto_generated|add9_result[25]~51\))) # (!\Mult0|auto_generated|mac_out8~DATAOUT8\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT26\ & !\Mult0|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[25]~51\,
	combout => \Mult0|auto_generated|add9_result[26]~52_combout\,
	cout => \Mult0|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X49_Y30_N22
\Mult0|auto_generated|op_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~52_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT26\ $ (\Mult0|auto_generated|add9_result[26]~52_combout\ $ (!\Mult0|auto_generated|op_1~51\)))) # (GND)
-- \Mult0|auto_generated|op_1~53\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT26\ & ((\Mult0|auto_generated|add9_result[26]~52_combout\) # (!\Mult0|auto_generated|op_1~51\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT26\ & 
-- (\Mult0|auto_generated|add9_result[26]~52_combout\ & !\Mult0|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT26\,
	datab => \Mult0|auto_generated|add9_result[26]~52_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~51\,
	combout => \Mult0|auto_generated|op_1~52_combout\,
	cout => \Mult0|auto_generated|op_1~53\);

-- Location: LCCOMB_X49_Y33_N4
\Mult1|auto_generated|add9_result[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[26]~52_combout\ = ((\Mult1|auto_generated|mac_out8~DATAOUT8\ $ (\Mult1|auto_generated|mac_out6~DATAOUT26\ $ (!\Mult1|auto_generated|add9_result[25]~51\)))) # (GND)
-- \Mult1|auto_generated|add9_result[26]~53\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT8\ & ((\Mult1|auto_generated|mac_out6~DATAOUT26\) # (!\Mult1|auto_generated|add9_result[25]~51\))) # (!\Mult1|auto_generated|mac_out8~DATAOUT8\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT26\ & !\Mult1|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT8\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT26\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[25]~51\,
	combout => \Mult1|auto_generated|add9_result[26]~52_combout\,
	cout => \Mult1|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X50_Y34_N22
\Mult1|auto_generated|op_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~52_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT26\ $ (\Mult1|auto_generated|add9_result[26]~52_combout\ $ (!\Mult1|auto_generated|op_1~51\)))) # (GND)
-- \Mult1|auto_generated|op_1~53\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT26\ & ((\Mult1|auto_generated|add9_result[26]~52_combout\) # (!\Mult1|auto_generated|op_1~51\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT26\ & 
-- (\Mult1|auto_generated|add9_result[26]~52_combout\ & !\Mult1|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT26\,
	datab => \Mult1|auto_generated|add9_result[26]~52_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~51\,
	combout => \Mult1|auto_generated|op_1~52_combout\,
	cout => \Mult1|auto_generated|op_1~53\);

-- Location: LCCOMB_X51_Y34_N6
\Mux115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux115~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~52_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~52_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~52_combout\,
	combout => \Mux115~0_combout\);

-- Location: LCCOMB_X47_Y30_N24
\Mult0|auto_generated|add9_result[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[27]~54_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT27\ & ((\Mult0|auto_generated|mac_out8~DATAOUT9\ & (\Mult0|auto_generated|add9_result[26]~53\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- (!\Mult0|auto_generated|add9_result[26]~53\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT27\ & ((\Mult0|auto_generated|mac_out8~DATAOUT9\ & (!\Mult0|auto_generated|add9_result[26]~53\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- ((\Mult0|auto_generated|add9_result[26]~53\) # (GND)))))
-- \Mult0|auto_generated|add9_result[27]~55\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT27\ & (!\Mult0|auto_generated|mac_out8~DATAOUT9\ & !\Mult0|auto_generated|add9_result[26]~53\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- ((!\Mult0|auto_generated|add9_result[26]~53\) # (!\Mult0|auto_generated|mac_out8~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT27\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[26]~53\,
	combout => \Mult0|auto_generated|add9_result[27]~54_combout\,
	cout => \Mult0|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X49_Y30_N24
\Mult0|auto_generated|op_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~54_combout\ = (\Mult0|auto_generated|add9_result[27]~54_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT27\ & (\Mult0|auto_generated|op_1~53\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT27\ & 
-- (!\Mult0|auto_generated|op_1~53\)))) # (!\Mult0|auto_generated|add9_result[27]~54_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT27\ & (!\Mult0|auto_generated|op_1~53\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT27\ & ((\Mult0|auto_generated|op_1~53\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~55\ = CARRY((\Mult0|auto_generated|add9_result[27]~54_combout\ & (!\Mult0|auto_generated|mac_out4~DATAOUT27\ & !\Mult0|auto_generated|op_1~53\)) # (!\Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- ((!\Mult0|auto_generated|op_1~53\) # (!\Mult0|auto_generated|mac_out4~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[27]~54_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT27\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~53\,
	combout => \Mult0|auto_generated|op_1~54_combout\,
	cout => \Mult0|auto_generated|op_1~55\);

-- Location: LCCOMB_X49_Y33_N6
\Mult1|auto_generated|add9_result[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[27]~54_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT27\ & ((\Mult1|auto_generated|mac_out8~DATAOUT9\ & (\Mult1|auto_generated|add9_result[26]~53\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT9\ & 
-- (!\Mult1|auto_generated|add9_result[26]~53\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT27\ & ((\Mult1|auto_generated|mac_out8~DATAOUT9\ & (!\Mult1|auto_generated|add9_result[26]~53\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT9\ & 
-- ((\Mult1|auto_generated|add9_result[26]~53\) # (GND)))))
-- \Mult1|auto_generated|add9_result[27]~55\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT27\ & (!\Mult1|auto_generated|mac_out8~DATAOUT9\ & !\Mult1|auto_generated|add9_result[26]~53\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT27\ & 
-- ((!\Mult1|auto_generated|add9_result[26]~53\) # (!\Mult1|auto_generated|mac_out8~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT27\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT9\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[26]~53\,
	combout => \Mult1|auto_generated|add9_result[27]~54_combout\,
	cout => \Mult1|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X50_Y34_N24
\Mult1|auto_generated|op_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~54_combout\ = (\Mult1|auto_generated|add9_result[27]~54_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT27\ & (\Mult1|auto_generated|op_1~53\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT27\ & 
-- (!\Mult1|auto_generated|op_1~53\)))) # (!\Mult1|auto_generated|add9_result[27]~54_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT27\ & (!\Mult1|auto_generated|op_1~53\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT27\ & ((\Mult1|auto_generated|op_1~53\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~55\ = CARRY((\Mult1|auto_generated|add9_result[27]~54_combout\ & (!\Mult1|auto_generated|mac_out4~DATAOUT27\ & !\Mult1|auto_generated|op_1~53\)) # (!\Mult1|auto_generated|add9_result[27]~54_combout\ & 
-- ((!\Mult1|auto_generated|op_1~53\) # (!\Mult1|auto_generated|mac_out4~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[27]~54_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT27\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~53\,
	combout => \Mult1|auto_generated|op_1~54_combout\,
	cout => \Mult1|auto_generated|op_1~55\);

-- Location: LCCOMB_X51_Y34_N16
\Mux114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~54_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult0|auto_generated|op_1~54_combout\,
	datad => \Mult1|auto_generated|op_1~54_combout\,
	combout => \Mux114~0_combout\);

-- Location: LCCOMB_X49_Y33_N8
\Mult1|auto_generated|add9_result[28]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[28]~56_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT28\ $ (\Mult1|auto_generated|mac_out8~DATAOUT10\ $ (!\Mult1|auto_generated|add9_result[27]~55\)))) # (GND)
-- \Mult1|auto_generated|add9_result[28]~57\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT28\ & ((\Mult1|auto_generated|mac_out8~DATAOUT10\) # (!\Mult1|auto_generated|add9_result[27]~55\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT28\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT10\ & !\Mult1|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT28\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT10\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[27]~55\,
	combout => \Mult1|auto_generated|add9_result[28]~56_combout\,
	cout => \Mult1|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X50_Y34_N26
\Mult1|auto_generated|op_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~56_combout\ = ((\Mult1|auto_generated|add9_result[28]~56_combout\ $ (\Mult1|auto_generated|mac_out4~DATAOUT28\ $ (!\Mult1|auto_generated|op_1~55\)))) # (GND)
-- \Mult1|auto_generated|op_1~57\ = CARRY((\Mult1|auto_generated|add9_result[28]~56_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT28\) # (!\Mult1|auto_generated|op_1~55\))) # (!\Mult1|auto_generated|add9_result[28]~56_combout\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT28\ & !\Mult1|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[28]~56_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT28\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~55\,
	combout => \Mult1|auto_generated|op_1~56_combout\,
	cout => \Mult1|auto_generated|op_1~57\);

-- Location: LCCOMB_X47_Y30_N26
\Mult0|auto_generated|add9_result[28]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[28]~56_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT28\ $ (\Mult0|auto_generated|mac_out8~DATAOUT10\ $ (!\Mult0|auto_generated|add9_result[27]~55\)))) # (GND)
-- \Mult0|auto_generated|add9_result[28]~57\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT28\ & ((\Mult0|auto_generated|mac_out8~DATAOUT10\) # (!\Mult0|auto_generated|add9_result[27]~55\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT28\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT10\ & !\Mult0|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT28\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[27]~55\,
	combout => \Mult0|auto_generated|add9_result[28]~56_combout\,
	cout => \Mult0|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X49_Y30_N26
\Mult0|auto_generated|op_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~56_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT28\ $ (\Mult0|auto_generated|add9_result[28]~56_combout\ $ (!\Mult0|auto_generated|op_1~55\)))) # (GND)
-- \Mult0|auto_generated|op_1~57\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT28\ & ((\Mult0|auto_generated|add9_result[28]~56_combout\) # (!\Mult0|auto_generated|op_1~55\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT28\ & 
-- (\Mult0|auto_generated|add9_result[28]~56_combout\ & !\Mult0|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT28\,
	datab => \Mult0|auto_generated|add9_result[28]~56_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~55\,
	combout => \Mult0|auto_generated|op_1~56_combout\,
	cout => \Mult0|auto_generated|op_1~57\);

-- Location: LCCOMB_X50_Y30_N2
\Mux113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux113~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~56_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult1|auto_generated|op_1~56_combout\,
	datac => \Mult0|auto_generated|op_1~56_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux113~0_combout\);

-- Location: LCCOMB_X47_Y30_N28
\Mult0|auto_generated|add9_result[29]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[29]~58_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT29\ & ((\Mult0|auto_generated|mac_out8~DATAOUT11\ & (\Mult0|auto_generated|add9_result[28]~57\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- (!\Mult0|auto_generated|add9_result[28]~57\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT29\ & ((\Mult0|auto_generated|mac_out8~DATAOUT11\ & (!\Mult0|auto_generated|add9_result[28]~57\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- ((\Mult0|auto_generated|add9_result[28]~57\) # (GND)))))
-- \Mult0|auto_generated|add9_result[29]~59\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT29\ & (!\Mult0|auto_generated|mac_out8~DATAOUT11\ & !\Mult0|auto_generated|add9_result[28]~57\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- ((!\Mult0|auto_generated|add9_result[28]~57\) # (!\Mult0|auto_generated|mac_out8~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT29\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[28]~57\,
	combout => \Mult0|auto_generated|add9_result[29]~58_combout\,
	cout => \Mult0|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X49_Y30_N28
\Mult0|auto_generated|op_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~58_combout\ = (\Mult0|auto_generated|add9_result[29]~58_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT29\ & (\Mult0|auto_generated|op_1~57\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT29\ & 
-- (!\Mult0|auto_generated|op_1~57\)))) # (!\Mult0|auto_generated|add9_result[29]~58_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT29\ & (!\Mult0|auto_generated|op_1~57\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT29\ & ((\Mult0|auto_generated|op_1~57\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~59\ = CARRY((\Mult0|auto_generated|add9_result[29]~58_combout\ & (!\Mult0|auto_generated|mac_out4~DATAOUT29\ & !\Mult0|auto_generated|op_1~57\)) # (!\Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- ((!\Mult0|auto_generated|op_1~57\) # (!\Mult0|auto_generated|mac_out4~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[29]~58_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT29\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~57\,
	combout => \Mult0|auto_generated|op_1~58_combout\,
	cout => \Mult0|auto_generated|op_1~59\);

-- Location: LCCOMB_X49_Y33_N10
\Mult1|auto_generated|add9_result[29]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[29]~58_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT29\ & ((\Mult1|auto_generated|mac_out8~DATAOUT11\ & (\Mult1|auto_generated|add9_result[28]~57\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT11\ & 
-- (!\Mult1|auto_generated|add9_result[28]~57\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT29\ & ((\Mult1|auto_generated|mac_out8~DATAOUT11\ & (!\Mult1|auto_generated|add9_result[28]~57\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT11\ & 
-- ((\Mult1|auto_generated|add9_result[28]~57\) # (GND)))))
-- \Mult1|auto_generated|add9_result[29]~59\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT29\ & (!\Mult1|auto_generated|mac_out8~DATAOUT11\ & !\Mult1|auto_generated|add9_result[28]~57\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT29\ & 
-- ((!\Mult1|auto_generated|add9_result[28]~57\) # (!\Mult1|auto_generated|mac_out8~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT29\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT11\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[28]~57\,
	combout => \Mult1|auto_generated|add9_result[29]~58_combout\,
	cout => \Mult1|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X50_Y34_N28
\Mult1|auto_generated|op_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~58_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT29\ & ((\Mult1|auto_generated|add9_result[29]~58_combout\ & (\Mult1|auto_generated|op_1~57\ & VCC)) # (!\Mult1|auto_generated|add9_result[29]~58_combout\ & 
-- (!\Mult1|auto_generated|op_1~57\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT29\ & ((\Mult1|auto_generated|add9_result[29]~58_combout\ & (!\Mult1|auto_generated|op_1~57\)) # (!\Mult1|auto_generated|add9_result[29]~58_combout\ & 
-- ((\Mult1|auto_generated|op_1~57\) # (GND)))))
-- \Mult1|auto_generated|op_1~59\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT29\ & (!\Mult1|auto_generated|add9_result[29]~58_combout\ & !\Mult1|auto_generated|op_1~57\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT29\ & ((!\Mult1|auto_generated|op_1~57\) 
-- # (!\Mult1|auto_generated|add9_result[29]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT29\,
	datab => \Mult1|auto_generated|add9_result[29]~58_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~57\,
	combout => \Mult1|auto_generated|op_1~58_combout\,
	cout => \Mult1|auto_generated|op_1~59\);

-- Location: LCCOMB_X51_Y34_N26
\Mux112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux112~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~58_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~58_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~58_combout\,
	combout => \Mux112~0_combout\);

-- Location: LCCOMB_X47_Y30_N30
\Mult0|auto_generated|add9_result[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[30]~60_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT30\ $ (\Mult0|auto_generated|mac_out8~DATAOUT12\ $ (!\Mult0|auto_generated|add9_result[29]~59\)))) # (GND)
-- \Mult0|auto_generated|add9_result[30]~61\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT30\ & ((\Mult0|auto_generated|mac_out8~DATAOUT12\) # (!\Mult0|auto_generated|add9_result[29]~59\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT30\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT12\ & !\Mult0|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT30\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[29]~59\,
	combout => \Mult0|auto_generated|add9_result[30]~60_combout\,
	cout => \Mult0|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X49_Y30_N30
\Mult0|auto_generated|op_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~60_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT30\ $ (\Mult0|auto_generated|add9_result[30]~60_combout\ $ (!\Mult0|auto_generated|op_1~59\)))) # (GND)
-- \Mult0|auto_generated|op_1~61\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT30\ & ((\Mult0|auto_generated|add9_result[30]~60_combout\) # (!\Mult0|auto_generated|op_1~59\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT30\ & 
-- (\Mult0|auto_generated|add9_result[30]~60_combout\ & !\Mult0|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT30\,
	datab => \Mult0|auto_generated|add9_result[30]~60_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~59\,
	combout => \Mult0|auto_generated|op_1~60_combout\,
	cout => \Mult0|auto_generated|op_1~61\);

-- Location: LCCOMB_X49_Y33_N12
\Mult1|auto_generated|add9_result[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[30]~60_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT30\ $ (\Mult1|auto_generated|mac_out8~DATAOUT12\ $ (!\Mult1|auto_generated|add9_result[29]~59\)))) # (GND)
-- \Mult1|auto_generated|add9_result[30]~61\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT30\ & ((\Mult1|auto_generated|mac_out8~DATAOUT12\) # (!\Mult1|auto_generated|add9_result[29]~59\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT30\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT12\ & !\Mult1|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT30\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT12\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[29]~59\,
	combout => \Mult1|auto_generated|add9_result[30]~60_combout\,
	cout => \Mult1|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X50_Y34_N30
\Mult1|auto_generated|op_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~60_combout\ = ((\Mult1|auto_generated|add9_result[30]~60_combout\ $ (\Mult1|auto_generated|mac_out4~DATAOUT30\ $ (!\Mult1|auto_generated|op_1~59\)))) # (GND)
-- \Mult1|auto_generated|op_1~61\ = CARRY((\Mult1|auto_generated|add9_result[30]~60_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT30\) # (!\Mult1|auto_generated|op_1~59\))) # (!\Mult1|auto_generated|add9_result[30]~60_combout\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT30\ & !\Mult1|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[30]~60_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT30\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~59\,
	combout => \Mult1|auto_generated|op_1~60_combout\,
	cout => \Mult1|auto_generated|op_1~61\);

-- Location: LCCOMB_X51_Y34_N28
\Mux111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux111~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~60_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~60_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~60_combout\,
	combout => \Mux111~0_combout\);

-- Location: LCCOMB_X47_Y29_N0
\Mult0|auto_generated|add9_result[31]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[31]~62_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT31\ & ((\Mult0|auto_generated|mac_out8~DATAOUT13\ & (!\Mult0|auto_generated|add9_result[30]~61\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\Mult0|auto_generated|add9_result[30]~61\) # (GND))))) # (!\Mult0|auto_generated|mac_out6~DATAOUT31\ & ((\Mult0|auto_generated|mac_out8~DATAOUT13\ & (\Mult0|auto_generated|add9_result[30]~61\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- (!\Mult0|auto_generated|add9_result[30]~61\))))
-- \Mult0|auto_generated|add9_result[31]~63\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT31\ & ((!\Mult0|auto_generated|add9_result[30]~61\) # (!\Mult0|auto_generated|mac_out8~DATAOUT13\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- (!\Mult0|auto_generated|mac_out8~DATAOUT13\ & !\Mult0|auto_generated|add9_result[30]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT31\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[30]~61\,
	combout => \Mult0|auto_generated|add9_result[31]~62_combout\,
	cout => \Mult0|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X49_Y29_N0
\Mult0|auto_generated|op_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~62_combout\ = (\Mult0|auto_generated|add9_result[31]~62_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT31\ & (!\Mult0|auto_generated|op_1~61\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT31\ & (\Mult0|auto_generated|op_1~61\ 
-- & VCC)))) # (!\Mult0|auto_generated|add9_result[31]~62_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT31\ & ((\Mult0|auto_generated|op_1~61\) # (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT31\ & (!\Mult0|auto_generated|op_1~61\))))
-- \Mult0|auto_generated|op_1~63\ = CARRY((\Mult0|auto_generated|add9_result[31]~62_combout\ & (\Mult0|auto_generated|mac_out4~DATAOUT31\ & !\Mult0|auto_generated|op_1~61\)) # (!\Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- ((\Mult0|auto_generated|mac_out4~DATAOUT31\) # (!\Mult0|auto_generated|op_1~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[31]~62_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT31\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~61\,
	combout => \Mult0|auto_generated|op_1~62_combout\,
	cout => \Mult0|auto_generated|op_1~63\);

-- Location: LCCOMB_X49_Y33_N14
\Mult1|auto_generated|add9_result[31]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[31]~62_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT31\ & ((\Mult1|auto_generated|mac_out8~DATAOUT13\ & (\Mult1|auto_generated|add9_result[30]~61\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT13\ & 
-- (!\Mult1|auto_generated|add9_result[30]~61\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT31\ & ((\Mult1|auto_generated|mac_out8~DATAOUT13\ & (!\Mult1|auto_generated|add9_result[30]~61\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\Mult1|auto_generated|add9_result[30]~61\) # (GND)))))
-- \Mult1|auto_generated|add9_result[31]~63\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT31\ & (!\Mult1|auto_generated|mac_out8~DATAOUT13\ & !\Mult1|auto_generated|add9_result[30]~61\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT31\ & 
-- ((!\Mult1|auto_generated|add9_result[30]~61\) # (!\Mult1|auto_generated|mac_out8~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT31\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT13\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[30]~61\,
	combout => \Mult1|auto_generated|add9_result[31]~62_combout\,
	cout => \Mult1|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X50_Y33_N0
\Mult1|auto_generated|op_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~62_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT31\ & ((\Mult1|auto_generated|add9_result[31]~62_combout\ & (\Mult1|auto_generated|op_1~61\ & VCC)) # (!\Mult1|auto_generated|add9_result[31]~62_combout\ & 
-- (!\Mult1|auto_generated|op_1~61\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT31\ & ((\Mult1|auto_generated|add9_result[31]~62_combout\ & (!\Mult1|auto_generated|op_1~61\)) # (!\Mult1|auto_generated|add9_result[31]~62_combout\ & 
-- ((\Mult1|auto_generated|op_1~61\) # (GND)))))
-- \Mult1|auto_generated|op_1~63\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT31\ & (!\Mult1|auto_generated|add9_result[31]~62_combout\ & !\Mult1|auto_generated|op_1~61\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT31\ & ((!\Mult1|auto_generated|op_1~61\) 
-- # (!\Mult1|auto_generated|add9_result[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT31\,
	datab => \Mult1|auto_generated|add9_result[31]~62_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~61\,
	combout => \Mult1|auto_generated|op_1~62_combout\,
	cout => \Mult1|auto_generated|op_1~63\);

-- Location: LCCOMB_X50_Y30_N12
\Mux110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~62_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mult0|auto_generated|op_1~62_combout\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~62_combout\,
	combout => \Mux110~0_combout\);

-- Location: LCCOMB_X47_Y29_N2
\Mult0|auto_generated|add9_result[32]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[32]~64_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT14\ & (\Mult0|auto_generated|add9_result[31]~63\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT14\ & (!\Mult0|auto_generated|add9_result[31]~63\ & VCC))
-- \Mult0|auto_generated|add9_result[32]~65\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT14\ & !\Mult0|auto_generated|add9_result[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[31]~63\,
	combout => \Mult0|auto_generated|add9_result[32]~64_combout\,
	cout => \Mult0|auto_generated|add9_result[32]~65\);

-- Location: LCCOMB_X49_Y29_N2
\Mult0|auto_generated|op_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~64_combout\ = (\Mult0|auto_generated|add9_result[32]~64_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~63\))) # (!\Mult0|auto_generated|add9_result[32]~64_combout\ & (\Mult0|auto_generated|op_1~63\ $ (GND)))
-- \Mult0|auto_generated|op_1~65\ = CARRY((\Mult0|auto_generated|add9_result[32]~64_combout\) # (!\Mult0|auto_generated|op_1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[32]~64_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~63\,
	combout => \Mult0|auto_generated|op_1~64_combout\,
	cout => \Mult0|auto_generated|op_1~65\);

-- Location: LCCOMB_X49_Y33_N16
\Mult1|auto_generated|add9_result[32]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[32]~64_combout\ = !\Mult1|auto_generated|add9_result[31]~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult1|auto_generated|add9_result[31]~63\,
	combout => \Mult1|auto_generated|add9_result[32]~64_combout\);

-- Location: LCCOMB_X50_Y33_N2
\Mult1|auto_generated|op_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~64_combout\ = ((\Mult1|auto_generated|add9_result[32]~64_combout\ $ (\Mult1|auto_generated|mac_out8~DATAOUT14\ $ (!\Mult1|auto_generated|op_1~63\)))) # (GND)
-- \Mult1|auto_generated|op_1~65\ = CARRY((\Mult1|auto_generated|add9_result[32]~64_combout\ & ((\Mult1|auto_generated|mac_out8~DATAOUT14\) # (!\Mult1|auto_generated|op_1~63\))) # (!\Mult1|auto_generated|add9_result[32]~64_combout\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT14\ & !\Mult1|auto_generated|op_1~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[32]~64_combout\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~63\,
	combout => \Mult1|auto_generated|op_1~64_combout\,
	cout => \Mult1|auto_generated|op_1~65\);

-- Location: LCCOMB_X50_Y30_N30
\Mux109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~64_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mult0|auto_generated|op_1~64_combout\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~64_combout\,
	combout => \Mux109~0_combout\);

-- Location: LCCOMB_X47_Y29_N4
\Mult0|auto_generated|add9_result[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[33]~66_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT15\ & (!\Mult0|auto_generated|add9_result[32]~65\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT15\ & ((\Mult0|auto_generated|add9_result[32]~65\) # (GND)))
-- \Mult0|auto_generated|add9_result[33]~67\ = CARRY((!\Mult0|auto_generated|add9_result[32]~65\) # (!\Mult0|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[32]~65\,
	combout => \Mult0|auto_generated|add9_result[33]~66_combout\,
	cout => \Mult0|auto_generated|add9_result[33]~67\);

-- Location: LCCOMB_X49_Y29_N4
\Mult0|auto_generated|op_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~66_combout\ = (\Mult0|auto_generated|add9_result[33]~66_combout\ & (\Mult0|auto_generated|op_1~65\ & VCC)) # (!\Mult0|auto_generated|add9_result[33]~66_combout\ & (!\Mult0|auto_generated|op_1~65\))
-- \Mult0|auto_generated|op_1~67\ = CARRY((!\Mult0|auto_generated|add9_result[33]~66_combout\ & !\Mult0|auto_generated|op_1~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[33]~66_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~65\,
	combout => \Mult0|auto_generated|op_1~66_combout\,
	cout => \Mult0|auto_generated|op_1~67\);

-- Location: LCCOMB_X50_Y33_N4
\Mult1|auto_generated|op_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~66_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT15\ & (!\Mult1|auto_generated|op_1~65\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT15\ & ((\Mult1|auto_generated|op_1~65\) # (GND)))
-- \Mult1|auto_generated|op_1~67\ = CARRY((!\Mult1|auto_generated|op_1~65\) # (!\Mult1|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~65\,
	combout => \Mult1|auto_generated|op_1~66_combout\,
	cout => \Mult1|auto_generated|op_1~67\);

-- Location: LCCOMB_X50_Y30_N8
\Mux108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~66_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult0|auto_generated|op_1~66_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~66_combout\,
	combout => \Mux108~0_combout\);

-- Location: LCCOMB_X50_Y33_N6
\Mult1|auto_generated|op_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~68_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT16\ & (\Mult1|auto_generated|op_1~67\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT16\ & (!\Mult1|auto_generated|op_1~67\ & VCC))
-- \Mult1|auto_generated|op_1~69\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT16\ & !\Mult1|auto_generated|op_1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~67\,
	combout => \Mult1|auto_generated|op_1~68_combout\,
	cout => \Mult1|auto_generated|op_1~69\);

-- Location: LCCOMB_X47_Y29_N6
\Mult0|auto_generated|add9_result[34]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[34]~68_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT16\ & (\Mult0|auto_generated|add9_result[33]~67\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT16\ & (!\Mult0|auto_generated|add9_result[33]~67\ & VCC))
-- \Mult0|auto_generated|add9_result[34]~69\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT16\ & !\Mult0|auto_generated|add9_result[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[33]~67\,
	combout => \Mult0|auto_generated|add9_result[34]~68_combout\,
	cout => \Mult0|auto_generated|add9_result[34]~69\);

-- Location: LCCOMB_X49_Y29_N6
\Mult0|auto_generated|op_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~68_combout\ = (\Mult0|auto_generated|add9_result[34]~68_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~67\))) # (!\Mult0|auto_generated|add9_result[34]~68_combout\ & (\Mult0|auto_generated|op_1~67\ $ (GND)))
-- \Mult0|auto_generated|op_1~69\ = CARRY((\Mult0|auto_generated|add9_result[34]~68_combout\) # (!\Mult0|auto_generated|op_1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[34]~68_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~67\,
	combout => \Mult0|auto_generated|op_1~68_combout\,
	cout => \Mult0|auto_generated|op_1~69\);

-- Location: LCCOMB_X50_Y30_N10
\Mux107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~68_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult1|auto_generated|op_1~68_combout\,
	datac => \Mult0|auto_generated|op_1~68_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux107~0_combout\);

-- Location: LCCOMB_X50_Y33_N8
\Mult1|auto_generated|op_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~70_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT17\ & (!\Mult1|auto_generated|op_1~69\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT17\ & ((\Mult1|auto_generated|op_1~69\) # (GND)))
-- \Mult1|auto_generated|op_1~71\ = CARRY((!\Mult1|auto_generated|op_1~69\) # (!\Mult1|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~69\,
	combout => \Mult1|auto_generated|op_1~70_combout\,
	cout => \Mult1|auto_generated|op_1~71\);

-- Location: LCCOMB_X47_Y29_N8
\Mult0|auto_generated|add9_result[35]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[35]~70_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT17\ & (!\Mult0|auto_generated|add9_result[34]~69\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT17\ & ((\Mult0|auto_generated|add9_result[34]~69\) # (GND)))
-- \Mult0|auto_generated|add9_result[35]~71\ = CARRY((!\Mult0|auto_generated|add9_result[34]~69\) # (!\Mult0|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[34]~69\,
	combout => \Mult0|auto_generated|add9_result[35]~70_combout\,
	cout => \Mult0|auto_generated|add9_result[35]~71\);

-- Location: LCCOMB_X49_Y29_N8
\Mult0|auto_generated|op_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~70_combout\ = (\Mult0|auto_generated|add9_result[35]~70_combout\ & (\Mult0|auto_generated|op_1~69\ & VCC)) # (!\Mult0|auto_generated|add9_result[35]~70_combout\ & (!\Mult0|auto_generated|op_1~69\))
-- \Mult0|auto_generated|op_1~71\ = CARRY((!\Mult0|auto_generated|add9_result[35]~70_combout\ & !\Mult0|auto_generated|op_1~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[35]~70_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~69\,
	combout => \Mult0|auto_generated|op_1~70_combout\,
	cout => \Mult0|auto_generated|op_1~71\);

-- Location: LCCOMB_X50_Y30_N4
\Mux106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~70_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult1|auto_generated|op_1~70_combout\,
	datad => \Mult0|auto_generated|op_1~70_combout\,
	combout => \Mux106~0_combout\);

-- Location: LCCOMB_X47_Y29_N10
\Mult0|auto_generated|add9_result[36]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[36]~72_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT18\ & (\Mult0|auto_generated|add9_result[35]~71\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT18\ & (!\Mult0|auto_generated|add9_result[35]~71\ & VCC))
-- \Mult0|auto_generated|add9_result[36]~73\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT18\ & !\Mult0|auto_generated|add9_result[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[35]~71\,
	combout => \Mult0|auto_generated|add9_result[36]~72_combout\,
	cout => \Mult0|auto_generated|add9_result[36]~73\);

-- Location: LCCOMB_X49_Y29_N10
\Mult0|auto_generated|op_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~72_combout\ = (\Mult0|auto_generated|add9_result[36]~72_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~71\))) # (!\Mult0|auto_generated|add9_result[36]~72_combout\ & (\Mult0|auto_generated|op_1~71\ $ (GND)))
-- \Mult0|auto_generated|op_1~73\ = CARRY((\Mult0|auto_generated|add9_result[36]~72_combout\) # (!\Mult0|auto_generated|op_1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[36]~72_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~71\,
	combout => \Mult0|auto_generated|op_1~72_combout\,
	cout => \Mult0|auto_generated|op_1~73\);

-- Location: LCCOMB_X50_Y33_N10
\Mult1|auto_generated|op_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~72_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT18\ & (\Mult1|auto_generated|op_1~71\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT18\ & (!\Mult1|auto_generated|op_1~71\ & VCC))
-- \Mult1|auto_generated|op_1~73\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT18\ & !\Mult1|auto_generated|op_1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~71\,
	combout => \Mult1|auto_generated|op_1~72_combout\,
	cout => \Mult1|auto_generated|op_1~73\);

-- Location: LCCOMB_X51_Y34_N30
\Mux105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~72_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~72_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~72_combout\,
	combout => \Mux105~0_combout\);

-- Location: LCCOMB_X47_Y29_N12
\Mult0|auto_generated|add9_result[37]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[37]~74_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT19\ & (!\Mult0|auto_generated|add9_result[36]~73\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT19\ & ((\Mult0|auto_generated|add9_result[36]~73\) # (GND)))
-- \Mult0|auto_generated|add9_result[37]~75\ = CARRY((!\Mult0|auto_generated|add9_result[36]~73\) # (!\Mult0|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[36]~73\,
	combout => \Mult0|auto_generated|add9_result[37]~74_combout\,
	cout => \Mult0|auto_generated|add9_result[37]~75\);

-- Location: LCCOMB_X49_Y29_N12
\Mult0|auto_generated|op_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~74_combout\ = (\Mult0|auto_generated|add9_result[37]~74_combout\ & (\Mult0|auto_generated|op_1~73\ & VCC)) # (!\Mult0|auto_generated|add9_result[37]~74_combout\ & (!\Mult0|auto_generated|op_1~73\))
-- \Mult0|auto_generated|op_1~75\ = CARRY((!\Mult0|auto_generated|add9_result[37]~74_combout\ & !\Mult0|auto_generated|op_1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[37]~74_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~73\,
	combout => \Mult0|auto_generated|op_1~74_combout\,
	cout => \Mult0|auto_generated|op_1~75\);

-- Location: LCCOMB_X50_Y33_N12
\Mult1|auto_generated|op_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~74_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT19\ & (!\Mult1|auto_generated|op_1~73\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT19\ & ((\Mult1|auto_generated|op_1~73\) # (GND)))
-- \Mult1|auto_generated|op_1~75\ = CARRY((!\Mult1|auto_generated|op_1~73\) # (!\Mult1|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~73\,
	combout => \Mult1|auto_generated|op_1~74_combout\,
	cout => \Mult1|auto_generated|op_1~75\);

-- Location: LCCOMB_X50_Y30_N22
\Mux104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~74_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult0|auto_generated|op_1~74_combout\,
	datac => \Mult1|auto_generated|op_1~74_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: LCCOMB_X47_Y29_N14
\Mult0|auto_generated|add9_result[38]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[38]~76_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT20\ & (\Mult0|auto_generated|add9_result[37]~75\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT20\ & (!\Mult0|auto_generated|add9_result[37]~75\ & VCC))
-- \Mult0|auto_generated|add9_result[38]~77\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT20\ & !\Mult0|auto_generated|add9_result[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[37]~75\,
	combout => \Mult0|auto_generated|add9_result[38]~76_combout\,
	cout => \Mult0|auto_generated|add9_result[38]~77\);

-- Location: LCCOMB_X49_Y29_N14
\Mult0|auto_generated|op_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~76_combout\ = (\Mult0|auto_generated|add9_result[38]~76_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~75\))) # (!\Mult0|auto_generated|add9_result[38]~76_combout\ & (\Mult0|auto_generated|op_1~75\ $ (GND)))
-- \Mult0|auto_generated|op_1~77\ = CARRY((\Mult0|auto_generated|add9_result[38]~76_combout\) # (!\Mult0|auto_generated|op_1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[38]~76_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~75\,
	combout => \Mult0|auto_generated|op_1~76_combout\,
	cout => \Mult0|auto_generated|op_1~77\);

-- Location: LCCOMB_X50_Y33_N14
\Mult1|auto_generated|op_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~76_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT20\ & (\Mult1|auto_generated|op_1~75\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT20\ & (!\Mult1|auto_generated|op_1~75\ & VCC))
-- \Mult1|auto_generated|op_1~77\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT20\ & !\Mult1|auto_generated|op_1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~75\,
	combout => \Mult1|auto_generated|op_1~76_combout\,
	cout => \Mult1|auto_generated|op_1~77\);

-- Location: LCCOMB_X51_Y34_N24
\Mux103~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux103~1_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~76_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~76_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~76_combout\,
	combout => \Mux103~1_combout\);

-- Location: LCCOMB_X50_Y33_N16
\Mult1|auto_generated|op_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~78_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT21\ & (!\Mult1|auto_generated|op_1~77\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT21\ & ((\Mult1|auto_generated|op_1~77\) # (GND)))
-- \Mult1|auto_generated|op_1~79\ = CARRY((!\Mult1|auto_generated|op_1~77\) # (!\Mult1|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~77\,
	combout => \Mult1|auto_generated|op_1~78_combout\,
	cout => \Mult1|auto_generated|op_1~79\);

-- Location: LCCOMB_X47_Y29_N16
\Mult0|auto_generated|add9_result[39]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[39]~78_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT21\ & (!\Mult0|auto_generated|add9_result[38]~77\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT21\ & ((\Mult0|auto_generated|add9_result[38]~77\) # (GND)))
-- \Mult0|auto_generated|add9_result[39]~79\ = CARRY((!\Mult0|auto_generated|add9_result[38]~77\) # (!\Mult0|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[38]~77\,
	combout => \Mult0|auto_generated|add9_result[39]~78_combout\,
	cout => \Mult0|auto_generated|add9_result[39]~79\);

-- Location: LCCOMB_X49_Y29_N16
\Mult0|auto_generated|op_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~78_combout\ = (\Mult0|auto_generated|add9_result[39]~78_combout\ & (\Mult0|auto_generated|op_1~77\ & VCC)) # (!\Mult0|auto_generated|add9_result[39]~78_combout\ & (!\Mult0|auto_generated|op_1~77\))
-- \Mult0|auto_generated|op_1~79\ = CARRY((!\Mult0|auto_generated|add9_result[39]~78_combout\ & !\Mult0|auto_generated|op_1~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[39]~78_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~77\,
	combout => \Mult0|auto_generated|op_1~78_combout\,
	cout => \Mult0|auto_generated|op_1~79\);

-- Location: LCCOMB_X50_Y30_N16
\Mux102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~78_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult1|auto_generated|op_1~78_combout\,
	datac => \Mult0|auto_generated|op_1~78_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: LCCOMB_X50_Y33_N18
\Mult1|auto_generated|op_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~80_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT22\ & (\Mult1|auto_generated|op_1~79\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT22\ & (!\Mult1|auto_generated|op_1~79\ & VCC))
-- \Mult1|auto_generated|op_1~81\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT22\ & !\Mult1|auto_generated|op_1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~79\,
	combout => \Mult1|auto_generated|op_1~80_combout\,
	cout => \Mult1|auto_generated|op_1~81\);

-- Location: LCCOMB_X47_Y29_N18
\Mult0|auto_generated|add9_result[40]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[40]~80_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT22\ & (\Mult0|auto_generated|add9_result[39]~79\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT22\ & (!\Mult0|auto_generated|add9_result[39]~79\ & VCC))
-- \Mult0|auto_generated|add9_result[40]~81\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT22\ & !\Mult0|auto_generated|add9_result[39]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[39]~79\,
	combout => \Mult0|auto_generated|add9_result[40]~80_combout\,
	cout => \Mult0|auto_generated|add9_result[40]~81\);

-- Location: LCCOMB_X49_Y29_N18
\Mult0|auto_generated|op_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~80_combout\ = (\Mult0|auto_generated|add9_result[40]~80_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~79\))) # (!\Mult0|auto_generated|add9_result[40]~80_combout\ & (\Mult0|auto_generated|op_1~79\ $ (GND)))
-- \Mult0|auto_generated|op_1~81\ = CARRY((\Mult0|auto_generated|add9_result[40]~80_combout\) # (!\Mult0|auto_generated|op_1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[40]~80_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~79\,
	combout => \Mult0|auto_generated|op_1~80_combout\,
	cout => \Mult0|auto_generated|op_1~81\);

-- Location: LCCOMB_X49_Y29_N30
\Mux101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~80_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~80_combout\,
	datab => \Mux103~0_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~80_combout\,
	combout => \Mux101~0_combout\);

-- Location: LCCOMB_X50_Y33_N20
\Mult1|auto_generated|op_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~82_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT23\ & (!\Mult1|auto_generated|op_1~81\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT23\ & ((\Mult1|auto_generated|op_1~81\) # (GND)))
-- \Mult1|auto_generated|op_1~83\ = CARRY((!\Mult1|auto_generated|op_1~81\) # (!\Mult1|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~81\,
	combout => \Mult1|auto_generated|op_1~82_combout\,
	cout => \Mult1|auto_generated|op_1~83\);

-- Location: LCCOMB_X47_Y29_N20
\Mult0|auto_generated|add9_result[41]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[41]~82_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT23\ & (!\Mult0|auto_generated|add9_result[40]~81\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT23\ & ((\Mult0|auto_generated|add9_result[40]~81\) # (GND)))
-- \Mult0|auto_generated|add9_result[41]~83\ = CARRY((!\Mult0|auto_generated|add9_result[40]~81\) # (!\Mult0|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[40]~81\,
	combout => \Mult0|auto_generated|add9_result[41]~82_combout\,
	cout => \Mult0|auto_generated|add9_result[41]~83\);

-- Location: LCCOMB_X49_Y29_N20
\Mult0|auto_generated|op_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~82_combout\ = (\Mult0|auto_generated|add9_result[41]~82_combout\ & (\Mult0|auto_generated|op_1~81\ & VCC)) # (!\Mult0|auto_generated|add9_result[41]~82_combout\ & (!\Mult0|auto_generated|op_1~81\))
-- \Mult0|auto_generated|op_1~83\ = CARRY((!\Mult0|auto_generated|add9_result[41]~82_combout\ & !\Mult0|auto_generated|op_1~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[41]~82_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~81\,
	combout => \Mult0|auto_generated|op_1~82_combout\,
	cout => \Mult0|auto_generated|op_1~83\);

-- Location: LCCOMB_X51_Y34_N18
\Mux100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & (\Mult1|auto_generated|op_1~82_combout\)) # (!\opcode[0]~input_o\ & ((\Mult0|auto_generated|op_1~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mult1|auto_generated|op_1~82_combout\,
	datad => \Mult0|auto_generated|op_1~82_combout\,
	combout => \Mux100~0_combout\);

-- Location: LCCOMB_X47_Y29_N22
\Mult0|auto_generated|add9_result[42]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[42]~84_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT24\ & (\Mult0|auto_generated|add9_result[41]~83\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT24\ & (!\Mult0|auto_generated|add9_result[41]~83\ & VCC))
-- \Mult0|auto_generated|add9_result[42]~85\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT24\ & !\Mult0|auto_generated|add9_result[41]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[41]~83\,
	combout => \Mult0|auto_generated|add9_result[42]~84_combout\,
	cout => \Mult0|auto_generated|add9_result[42]~85\);

-- Location: LCCOMB_X49_Y29_N22
\Mult0|auto_generated|op_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~84_combout\ = (\Mult0|auto_generated|add9_result[42]~84_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~83\))) # (!\Mult0|auto_generated|add9_result[42]~84_combout\ & (\Mult0|auto_generated|op_1~83\ $ (GND)))
-- \Mult0|auto_generated|op_1~85\ = CARRY((\Mult0|auto_generated|add9_result[42]~84_combout\) # (!\Mult0|auto_generated|op_1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[42]~84_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~83\,
	combout => \Mult0|auto_generated|op_1~84_combout\,
	cout => \Mult0|auto_generated|op_1~85\);

-- Location: LCCOMB_X50_Y33_N22
\Mult1|auto_generated|op_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~84_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT24\ & (\Mult1|auto_generated|op_1~83\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT24\ & (!\Mult1|auto_generated|op_1~83\ & VCC))
-- \Mult1|auto_generated|op_1~85\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT24\ & !\Mult1|auto_generated|op_1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~83\,
	combout => \Mult1|auto_generated|op_1~84_combout\,
	cout => \Mult1|auto_generated|op_1~85\);

-- Location: LCCOMB_X51_Y34_N12
\Mux99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux99~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~84_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~84_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~84_combout\,
	combout => \Mux99~0_combout\);

-- Location: LCCOMB_X47_Y29_N24
\Mult0|auto_generated|add9_result[43]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[43]~86_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT25\ & (!\Mult0|auto_generated|add9_result[42]~85\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT25\ & ((\Mult0|auto_generated|add9_result[42]~85\) # (GND)))
-- \Mult0|auto_generated|add9_result[43]~87\ = CARRY((!\Mult0|auto_generated|add9_result[42]~85\) # (!\Mult0|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[42]~85\,
	combout => \Mult0|auto_generated|add9_result[43]~86_combout\,
	cout => \Mult0|auto_generated|add9_result[43]~87\);

-- Location: LCCOMB_X49_Y29_N24
\Mult0|auto_generated|op_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~86_combout\ = (\Mult0|auto_generated|add9_result[43]~86_combout\ & (\Mult0|auto_generated|op_1~85\ & VCC)) # (!\Mult0|auto_generated|add9_result[43]~86_combout\ & (!\Mult0|auto_generated|op_1~85\))
-- \Mult0|auto_generated|op_1~87\ = CARRY((!\Mult0|auto_generated|add9_result[43]~86_combout\ & !\Mult0|auto_generated|op_1~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[43]~86_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~85\,
	combout => \Mult0|auto_generated|op_1~86_combout\,
	cout => \Mult0|auto_generated|op_1~87\);

-- Location: LCCOMB_X50_Y33_N24
\Mult1|auto_generated|op_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~86_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT25\ & (!\Mult1|auto_generated|op_1~85\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT25\ & ((\Mult1|auto_generated|op_1~85\) # (GND)))
-- \Mult1|auto_generated|op_1~87\ = CARRY((!\Mult1|auto_generated|op_1~85\) # (!\Mult1|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~85\,
	combout => \Mult1|auto_generated|op_1~86_combout\,
	cout => \Mult1|auto_generated|op_1~87\);

-- Location: LCCOMB_X50_Y30_N18
\Mux98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~86_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mult0|auto_generated|op_1~86_combout\,
	datac => \Mux103~0_combout\,
	datad => \Mult1|auto_generated|op_1~86_combout\,
	combout => \Mux98~0_combout\);

-- Location: LCCOMB_X47_Y29_N26
\Mult0|auto_generated|add9_result[44]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[44]~88_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT26\ & (\Mult0|auto_generated|add9_result[43]~87\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT26\ & (!\Mult0|auto_generated|add9_result[43]~87\ & VCC))
-- \Mult0|auto_generated|add9_result[44]~89\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT26\ & !\Mult0|auto_generated|add9_result[43]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[43]~87\,
	combout => \Mult0|auto_generated|add9_result[44]~88_combout\,
	cout => \Mult0|auto_generated|add9_result[44]~89\);

-- Location: LCCOMB_X49_Y29_N26
\Mult0|auto_generated|op_1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~88_combout\ = (\Mult0|auto_generated|add9_result[44]~88_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~87\))) # (!\Mult0|auto_generated|add9_result[44]~88_combout\ & (\Mult0|auto_generated|op_1~87\ $ (GND)))
-- \Mult0|auto_generated|op_1~89\ = CARRY((\Mult0|auto_generated|add9_result[44]~88_combout\) # (!\Mult0|auto_generated|op_1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[44]~88_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~87\,
	combout => \Mult0|auto_generated|op_1~88_combout\,
	cout => \Mult0|auto_generated|op_1~89\);

-- Location: LCCOMB_X50_Y33_N26
\Mult1|auto_generated|op_1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~88_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT26\ & (\Mult1|auto_generated|op_1~87\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT26\ & (!\Mult1|auto_generated|op_1~87\ & VCC))
-- \Mult1|auto_generated|op_1~89\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT26\ & !\Mult1|auto_generated|op_1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~87\,
	combout => \Mult1|auto_generated|op_1~88_combout\,
	cout => \Mult1|auto_generated|op_1~89\);

-- Location: LCCOMB_X50_Y30_N28
\Mux97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~88_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~88_combout\,
	datab => \Mult1|auto_generated|op_1~88_combout\,
	datac => \Mux103~0_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux97~0_combout\);

-- Location: LCCOMB_X47_Y29_N28
\Mult0|auto_generated|add9_result[45]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[45]~90_combout\ = \Mult0|auto_generated|add9_result[44]~89\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add9_result[44]~89\,
	combout => \Mult0|auto_generated|add9_result[45]~90_combout\);

-- Location: LCCOMB_X49_Y29_N28
\Mult0|auto_generated|op_1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~90_combout\ = \Mult0|auto_generated|add9_result[45]~90_combout\ $ (\Mult0|auto_generated|op_1~89\ $ (!\Mult0|auto_generated|mac_out8~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[45]~90_combout\,
	datad => \Mult0|auto_generated|mac_out8~DATAOUT27\,
	cin => \Mult0|auto_generated|op_1~89\,
	combout => \Mult0|auto_generated|op_1~90_combout\);

-- Location: LCCOMB_X50_Y33_N28
\Mult1|auto_generated|op_1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~90_combout\ = \Mult1|auto_generated|mac_out8~DATAOUT27\ $ (\Mult1|auto_generated|op_1~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT27\,
	cin => \Mult1|auto_generated|op_1~89\,
	combout => \Mult1|auto_generated|op_1~90_combout\);

-- Location: LCCOMB_X50_Y33_N30
\Mux96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (\Mux103~0_combout\ & ((\opcode[0]~input_o\ & ((\Mult1|auto_generated|op_1~90_combout\))) # (!\opcode[0]~input_o\ & (\Mult0|auto_generated|op_1~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~0_combout\,
	datab => \Mult0|auto_generated|op_1~90_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~90_combout\,
	combout => \Mux96~0_combout\);

-- Location: LCCOMB_X43_Y31_N2
\Mux128~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~10_combout\ = (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & !\opcode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[4]~input_o\,
	combout => \Mux128~10_combout\);

-- Location: LCCOMB_X43_Y31_N28
\Mux128~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux128~11_combout\ = (\Mux31~1_combout\) # ((\Mux128~10_combout\ & \Mux128~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux128~10_combout\,
	datad => \Mux128~8_combout\,
	combout => \Mux128~11_combout\);

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

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;

ww_result_hi(0) <= \result_hi[0]~output_o\;

ww_result_hi(1) <= \result_hi[1]~output_o\;

ww_result_hi(2) <= \result_hi[2]~output_o\;

ww_result_hi(3) <= \result_hi[3]~output_o\;

ww_result_hi(4) <= \result_hi[4]~output_o\;

ww_result_hi(5) <= \result_hi[5]~output_o\;

ww_result_hi(6) <= \result_hi[6]~output_o\;

ww_result_hi(7) <= \result_hi[7]~output_o\;

ww_result_hi(8) <= \result_hi[8]~output_o\;

ww_result_hi(9) <= \result_hi[9]~output_o\;

ww_result_hi(10) <= \result_hi[10]~output_o\;

ww_result_hi(11) <= \result_hi[11]~output_o\;

ww_result_hi(12) <= \result_hi[12]~output_o\;

ww_result_hi(13) <= \result_hi[13]~output_o\;

ww_result_hi(14) <= \result_hi[14]~output_o\;

ww_result_hi(15) <= \result_hi[15]~output_o\;

ww_result_hi(16) <= \result_hi[16]~output_o\;

ww_result_hi(17) <= \result_hi[17]~output_o\;

ww_result_hi(18) <= \result_hi[18]~output_o\;

ww_result_hi(19) <= \result_hi[19]~output_o\;

ww_result_hi(20) <= \result_hi[20]~output_o\;

ww_result_hi(21) <= \result_hi[21]~output_o\;

ww_result_hi(22) <= \result_hi[22]~output_o\;

ww_result_hi(23) <= \result_hi[23]~output_o\;

ww_result_hi(24) <= \result_hi[24]~output_o\;

ww_result_hi(25) <= \result_hi[25]~output_o\;

ww_result_hi(26) <= \result_hi[26]~output_o\;

ww_result_hi(27) <= \result_hi[27]~output_o\;

ww_result_hi(28) <= \result_hi[28]~output_o\;

ww_result_hi(29) <= \result_hi[29]~output_o\;

ww_result_hi(30) <= \result_hi[30]~output_o\;

ww_result_hi(31) <= \result_hi[31]~output_o\;

ww_branch_taken <= \branch_taken~output_o\;
END structure;


