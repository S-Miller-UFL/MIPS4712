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

-- DATE "11/20/2023 17:56:26"

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

ENTITY 	MIPS4712 IS
    PORT (
	inport_en : IN std_logic;
	input_sw : IN std_logic_vector(9 DOWNTO 0);
	outputs : OUT std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic
	);
END MIPS4712;

-- Design Ports Information
-- inport_en	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[5]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sw[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[14]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[15]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[16]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[17]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[18]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[19]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[20]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[21]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[22]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[24]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[25]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[26]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[27]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[28]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[30]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[31]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS4712 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inport_en : std_logic;
SIGNAL ww_input_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_outputs : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inport_en~input_o\ : std_logic;
SIGNAL \input_sw[0]~input_o\ : std_logic;
SIGNAL \input_sw[1]~input_o\ : std_logic;
SIGNAL \input_sw[2]~input_o\ : std_logic;
SIGNAL \input_sw[3]~input_o\ : std_logic;
SIGNAL \input_sw[4]~input_o\ : std_logic;
SIGNAL \input_sw[5]~input_o\ : std_logic;
SIGNAL \input_sw[6]~input_o\ : std_logic;
SIGNAL \input_sw[7]~input_o\ : std_logic;
SIGNAL \input_sw[8]~input_o\ : std_logic;
SIGNAL \input_sw[9]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \outputs[0]~output_o\ : std_logic;
SIGNAL \outputs[1]~output_o\ : std_logic;
SIGNAL \outputs[2]~output_o\ : std_logic;
SIGNAL \outputs[3]~output_o\ : std_logic;
SIGNAL \outputs[4]~output_o\ : std_logic;
SIGNAL \outputs[5]~output_o\ : std_logic;
SIGNAL \outputs[6]~output_o\ : std_logic;
SIGNAL \outputs[7]~output_o\ : std_logic;
SIGNAL \outputs[8]~output_o\ : std_logic;
SIGNAL \outputs[9]~output_o\ : std_logic;
SIGNAL \outputs[10]~output_o\ : std_logic;
SIGNAL \outputs[11]~output_o\ : std_logic;
SIGNAL \outputs[12]~output_o\ : std_logic;
SIGNAL \outputs[13]~output_o\ : std_logic;
SIGNAL \outputs[14]~output_o\ : std_logic;
SIGNAL \outputs[15]~output_o\ : std_logic;
SIGNAL \outputs[16]~output_o\ : std_logic;
SIGNAL \outputs[17]~output_o\ : std_logic;
SIGNAL \outputs[18]~output_o\ : std_logic;
SIGNAL \outputs[19]~output_o\ : std_logic;
SIGNAL \outputs[20]~output_o\ : std_logic;
SIGNAL \outputs[21]~output_o\ : std_logic;
SIGNAL \outputs[22]~output_o\ : std_logic;
SIGNAL \outputs[23]~output_o\ : std_logic;
SIGNAL \outputs[24]~output_o\ : std_logic;
SIGNAL \outputs[25]~output_o\ : std_logic;
SIGNAL \outputs[26]~output_o\ : std_logic;
SIGNAL \outputs[27]~output_o\ : std_logic;
SIGNAL \outputs[28]~output_o\ : std_logic;
SIGNAL \outputs[29]~output_o\ : std_logic;
SIGNAL \outputs[30]~output_o\ : std_logic;
SIGNAL \outputs[31]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inport_en <= inport_en;
ww_input_sw <= input_sw;
outputs <= ww_outputs;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: IOOBUF_X64_Y54_N2
\outputs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\outputs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\outputs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\outputs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\outputs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\outputs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\outputs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\outputs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\outputs[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[8]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\outputs[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[9]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\outputs[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\outputs[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[11]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\outputs[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\outputs[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[13]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\outputs[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\outputs[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\outputs[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[16]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\outputs[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[17]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\outputs[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[18]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\outputs[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[19]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\outputs[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[20]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\outputs[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[21]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\outputs[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[22]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\outputs[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\outputs[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[24]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\outputs[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[25]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\outputs[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[26]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\outputs[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[27]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\outputs[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[28]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\outputs[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\outputs[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[30]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\outputs[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[31]~output_o\);

-- Location: IOIBUF_X51_Y0_N29
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

-- Location: IOIBUF_X31_Y39_N8
\input_sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(0),
	o => \input_sw[0]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\input_sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(1),
	o => \input_sw[1]~input_o\);

-- Location: IOIBUF_X78_Y30_N15
\input_sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(2),
	o => \input_sw[2]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\input_sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(3),
	o => \input_sw[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\input_sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(4),
	o => \input_sw[4]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\input_sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(5),
	o => \input_sw[5]~input_o\);

-- Location: IOIBUF_X78_Y20_N8
\input_sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(6),
	o => \input_sw[6]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\input_sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(7),
	o => \input_sw[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\input_sw[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(8),
	o => \input_sw[8]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\input_sw[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sw(9),
	o => \input_sw[9]~input_o\);

-- Location: IOIBUF_X66_Y54_N8
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

-- Location: IOIBUF_X78_Y33_N1
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

ww_outputs(0) <= \outputs[0]~output_o\;

ww_outputs(1) <= \outputs[1]~output_o\;

ww_outputs(2) <= \outputs[2]~output_o\;

ww_outputs(3) <= \outputs[3]~output_o\;

ww_outputs(4) <= \outputs[4]~output_o\;

ww_outputs(5) <= \outputs[5]~output_o\;

ww_outputs(6) <= \outputs[6]~output_o\;

ww_outputs(7) <= \outputs[7]~output_o\;

ww_outputs(8) <= \outputs[8]~output_o\;

ww_outputs(9) <= \outputs[9]~output_o\;

ww_outputs(10) <= \outputs[10]~output_o\;

ww_outputs(11) <= \outputs[11]~output_o\;

ww_outputs(12) <= \outputs[12]~output_o\;

ww_outputs(13) <= \outputs[13]~output_o\;

ww_outputs(14) <= \outputs[14]~output_o\;

ww_outputs(15) <= \outputs[15]~output_o\;

ww_outputs(16) <= \outputs[16]~output_o\;

ww_outputs(17) <= \outputs[17]~output_o\;

ww_outputs(18) <= \outputs[18]~output_o\;

ww_outputs(19) <= \outputs[19]~output_o\;

ww_outputs(20) <= \outputs[20]~output_o\;

ww_outputs(21) <= \outputs[21]~output_o\;

ww_outputs(22) <= \outputs[22]~output_o\;

ww_outputs(23) <= \outputs[23]~output_o\;

ww_outputs(24) <= \outputs[24]~output_o\;

ww_outputs(25) <= \outputs[25]~output_o\;

ww_outputs(26) <= \outputs[26]~output_o\;

ww_outputs(27) <= \outputs[27]~output_o\;

ww_outputs(28) <= \outputs[28]~output_o\;

ww_outputs(29) <= \outputs[29]~output_o\;

ww_outputs(30) <= \outputs[30]~output_o\;

ww_outputs(31) <= \outputs[31]~output_o\;
END structure;


