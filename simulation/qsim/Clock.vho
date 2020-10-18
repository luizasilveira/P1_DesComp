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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/18/2020 19:42:20"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Clock IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	habilita_t : OUT std_logic_vector(7 DOWNTO 0);
	habilitahex_t : OUT std_logic_vector(7 DOWNTO 0);
	saidaDaodos_DEBUG : OUT std_logic_vector(7 DOWNTO 0);
	enderecoRAMROM_DEBUG : OUT std_logic_vector(7 DOWNTO 0)
	);
END Clock;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDaodos_DEBUG[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_habilita_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habilitahex_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaDaodos_DEBUG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enderecoRAMROM_DEBUG : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|inc|Add0~1_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~2\ : std_logic;
SIGNAL \processador|inc|Add0~25_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~26\ : std_logic;
SIGNAL \processador|inc|Add0~5_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~6\ : std_logic;
SIGNAL \processador|inc|Add0~29_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~30\ : std_logic;
SIGNAL \processador|inc|Add0~9_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|inc|Add0~10\ : std_logic;
SIGNAL \processador|inc|Add0~13_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~14\ : std_logic;
SIGNAL \processador|inc|Add0~17_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~18\ : std_logic;
SIGNAL \processador|inc|Add0~21_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~8_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~11_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~9_combout\ : std_logic;
SIGNAL \processador|UC|Equal2~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~10_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~12_combout\ : std_logic;
SIGNAL \processador|UC|Equal2~1_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~7_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~15_combout\ : std_logic;
SIGNAL \processador|UC|Equal2~2_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~13_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~151_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~149_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~30DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~152_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~38_q\ : std_logic;
SIGNAL \processador|ROM|memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~150_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~22_q\ : std_logic;
SIGNAL \processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~142_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Decoder|LessThan0~0_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~13_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~37_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~141_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~34_cout\ : std_logic;
SIGNAL \processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~6_combout\ : std_logic;
SIGNAL \interfaceChaves|Mux0~0_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~29_q\ : std_logic;
SIGNAL \processador|ULA|Add0~2\ : std_logic;
SIGNAL \processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~30_q\ : std_logic;
SIGNAL \processador|ULA|Add0~6\ : std_logic;
SIGNAL \processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~31DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~39_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~143_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~16_q\ : std_logic;
SIGNAL \processador|ULA|Add0~10\ : std_logic;
SIGNAL \processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~40_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~144_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg[2]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~42_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~146_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~41_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~145_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~14\ : std_logic;
SIGNAL \processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~33_q\ : std_logic;
SIGNAL \processador|ULA|Add0~18\ : std_logic;
SIGNAL \processador|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~34_q\ : std_logic;
SIGNAL \processador|ULA|Add0~22\ : std_logic;
SIGNAL \processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~35DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~43_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~147_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~36_q\ : std_logic;
SIGNAL \processador|ULA|Add0~26\ : std_logic;
SIGNAL \processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~44_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~148_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Decoder|Equal2~0_combout\ : std_logic;
SIGNAL \Decoder|habilita[1]~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex2|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|Registradores|ALT_INV_registrador~35DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~31DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~30DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~148_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~147_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~146_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~145_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~144_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~143_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~142_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~141_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
habilita_t <= ww_habilita_t;
habilitahex_t <= ww_habilitahex_t;
saidaDaodos_DEBUG <= ww_saidaDaodos_DEBUG;
enderecoRAMROM_DEBUG <= ww_enderecoRAMROM_DEBUG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|Registradores|ALT_INV_registrador~35DUPLICATE_q\ <= NOT \processador|Registradores|registrador~35DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~31DUPLICATE_q\ <= NOT \processador|Registradores|registrador~31DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~30DUPLICATE_q\ <= NOT \processador|Registradores|registrador~30DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\processador|ROM|ALT_INV_memROM~16_combout\ <= NOT \processador|ROM|memROM~16_combout\;
\processador|ROM|ALT_INV_memROM~15_combout\ <= NOT \processador|ROM|memROM~15_combout\;
\processador|UC|ALT_INV_Equal2~2_combout\ <= NOT \processador|UC|Equal2~2_combout\;
\processador|ROM|ALT_INV_memROM~14_combout\ <= NOT \processador|ROM|memROM~14_combout\;
\processador|ROM|ALT_INV_memROM~13_combout\ <= NOT \processador|ROM|memROM~13_combout\;
\interfaceChaves|ALT_INV_Mux0~0_combout\ <= NOT \interfaceChaves|Mux0~0_combout\;
\processador|UC|ALT_INV_Equal2~1_combout\ <= NOT \processador|UC|Equal2~1_combout\;
\processador|ROM|ALT_INV_memROM~12_combout\ <= NOT \processador|ROM|memROM~12_combout\;
\processador|UC|ALT_INV_Equal2~0_combout\ <= NOT \processador|UC|Equal2~0_combout\;
\processador|ROM|ALT_INV_memROM~11_combout\ <= NOT \processador|ROM|memROM~11_combout\;
\processador|ROM|ALT_INV_memROM~10_combout\ <= NOT \processador|ROM|memROM~10_combout\;
\processador|ROM|ALT_INV_memROM~9_combout\ <= NOT \processador|ROM|memROM~9_combout\;
\processador|ROM|ALT_INV_memROM~8_combout\ <= NOT \processador|ROM|memROM~8_combout\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\;
\processador|ROM|ALT_INV_memROM~7_combout\ <= NOT \processador|ROM|memROM~7_combout\;
\processador|ROM|ALT_INV_memROM~6_combout\ <= NOT \processador|ROM|memROM~6_combout\;
\processador|Registradores|ALT_INV_registrador~148_combout\ <= NOT \processador|Registradores|registrador~148_combout\;
\processador|Registradores|ALT_INV_registrador~44_q\ <= NOT \processador|Registradores|registrador~44_q\;
\processador|Registradores|ALT_INV_registrador~36_q\ <= NOT \processador|Registradores|registrador~36_q\;
\processador|Registradores|ALT_INV_registrador~28_q\ <= NOT \processador|Registradores|registrador~28_q\;
\processador|Registradores|ALT_INV_registrador~20_q\ <= NOT \processador|Registradores|registrador~20_q\;
\processador|Registradores|ALT_INV_registrador~147_combout\ <= NOT \processador|Registradores|registrador~147_combout\;
\processador|Registradores|ALT_INV_registrador~43_q\ <= NOT \processador|Registradores|registrador~43_q\;
\processador|Registradores|ALT_INV_registrador~35_q\ <= NOT \processador|Registradores|registrador~35_q\;
\processador|Registradores|ALT_INV_registrador~27_q\ <= NOT \processador|Registradores|registrador~27_q\;
\processador|Registradores|ALT_INV_registrador~19_q\ <= NOT \processador|Registradores|registrador~19_q\;
\processador|Registradores|ALT_INV_registrador~146_combout\ <= NOT \processador|Registradores|registrador~146_combout\;
\processador|Registradores|ALT_INV_registrador~42_q\ <= NOT \processador|Registradores|registrador~42_q\;
\processador|Registradores|ALT_INV_registrador~34_q\ <= NOT \processador|Registradores|registrador~34_q\;
\processador|Registradores|ALT_INV_registrador~26_q\ <= NOT \processador|Registradores|registrador~26_q\;
\processador|Registradores|ALT_INV_registrador~18_q\ <= NOT \processador|Registradores|registrador~18_q\;
\processador|Registradores|ALT_INV_registrador~145_combout\ <= NOT \processador|Registradores|registrador~145_combout\;
\processador|Registradores|ALT_INV_registrador~41_q\ <= NOT \processador|Registradores|registrador~41_q\;
\processador|Registradores|ALT_INV_registrador~33_q\ <= NOT \processador|Registradores|registrador~33_q\;
\processador|Registradores|ALT_INV_registrador~25_q\ <= NOT \processador|Registradores|registrador~25_q\;
\processador|Registradores|ALT_INV_registrador~17_q\ <= NOT \processador|Registradores|registrador~17_q\;
\processador|Registradores|ALT_INV_registrador~144_combout\ <= NOT \processador|Registradores|registrador~144_combout\;
\processador|Registradores|ALT_INV_registrador~40_q\ <= NOT \processador|Registradores|registrador~40_q\;
\processador|Registradores|ALT_INV_registrador~32_q\ <= NOT \processador|Registradores|registrador~32_q\;
\processador|Registradores|ALT_INV_registrador~24_q\ <= NOT \processador|Registradores|registrador~24_q\;
\processador|Registradores|ALT_INV_registrador~16_q\ <= NOT \processador|Registradores|registrador~16_q\;
\processador|Registradores|ALT_INV_registrador~143_combout\ <= NOT \processador|Registradores|registrador~143_combout\;
\processador|Registradores|ALT_INV_registrador~39_q\ <= NOT \processador|Registradores|registrador~39_q\;
\processador|Registradores|ALT_INV_registrador~31_q\ <= NOT \processador|Registradores|registrador~31_q\;
\processador|Registradores|ALT_INV_registrador~23_q\ <= NOT \processador|Registradores|registrador~23_q\;
\processador|Registradores|ALT_INV_registrador~15_q\ <= NOT \processador|Registradores|registrador~15_q\;
\processador|Registradores|ALT_INV_registrador~142_combout\ <= NOT \processador|Registradores|registrador~142_combout\;
\processador|Registradores|ALT_INV_registrador~38_q\ <= NOT \processador|Registradores|registrador~38_q\;
\processador|Registradores|ALT_INV_registrador~30_q\ <= NOT \processador|Registradores|registrador~30_q\;
\processador|Registradores|ALT_INV_registrador~22_q\ <= NOT \processador|Registradores|registrador~22_q\;
\processador|Registradores|ALT_INV_registrador~14_q\ <= NOT \processador|Registradores|registrador~14_q\;
\processador|Registradores|ALT_INV_registrador~141_combout\ <= NOT \processador|Registradores|registrador~141_combout\;
\processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \processador|ROM|memROM~5_combout\;
\processador|ROM|ALT_INV_memROM~4_combout\ <= NOT \processador|ROM|memROM~4_combout\;
\processador|Registradores|ALT_INV_registrador~37_q\ <= NOT \processador|Registradores|registrador~37_q\;
\processador|Registradores|ALT_INV_registrador~29_q\ <= NOT \processador|Registradores|registrador~29_q\;
\processador|Registradores|ALT_INV_registrador~21_q\ <= NOT \processador|Registradores|registrador~21_q\;
\processador|Registradores|ALT_INV_registrador~13_q\ <= NOT \processador|Registradores|registrador~13_q\;
\Decoder|ALT_INV_habilita[1]~0_combout\ <= NOT \Decoder|habilita[1]~0_combout\;
\processador|ROM|ALT_INV_memROM~3_combout\ <= NOT \processador|ROM|memROM~3_combout\;
\Decoder|ALT_INV_LessThan0~0_combout\ <= NOT \Decoder|LessThan0~0_combout\;
\processador|ROM|ALT_INV_memROM~2_combout\ <= NOT \processador|ROM|memROM~2_combout\;
\processador|ROM|ALT_INV_memROM~1_combout\ <= NOT \processador|ROM|memROM~1_combout\;
\processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \processador|ROM|memROM~0_combout\;
\processador|ULA|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA|Add0~29_sumout\;
\processador|ULA|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA|Add0~25_sumout\;
\processador|ULA|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA|Add0~21_sumout\;
\processador|ULA|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA|Add0~17_sumout\;
\processador|ULA|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA|Add0~13_sumout\;
\processador|ULA|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA|Add0~9_sumout\;
\processador|ULA|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA|Add0~5_sumout\;
\processador|ULA|ALT_INV_Add0~1_sumout\ <= NOT \processador|ULA|Add0~1_sumout\;
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex0|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex1|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceHEX|conversorHex2|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X38_Y45_N36
\habilita_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_habilita_t(0));

-- Location: IOOBUF_X54_Y14_N45
\habilita_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|ALT_INV_habilita[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_habilita_t(1));

-- Location: IOOBUF_X54_Y19_N22
\habilita_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilita_t(2));

-- Location: IOOBUF_X16_Y45_N76
\habilita_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilita_t(3));

-- Location: IOOBUF_X24_Y0_N2
\habilita_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilita_t(4));

-- Location: IOOBUF_X54_Y19_N39
\habilita_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilita_t(5));

-- Location: IOOBUF_X14_Y0_N53
\habilita_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilita_t(6));

-- Location: IOOBUF_X18_Y0_N19
\habilita_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilita_t(7));

-- Location: IOOBUF_X54_Y14_N62
\habilitahex_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(0));

-- Location: IOOBUF_X24_Y0_N53
\habilitahex_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(1));

-- Location: IOOBUF_X25_Y0_N36
\habilitahex_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(2));

-- Location: IOOBUF_X44_Y45_N36
\habilitahex_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilitahex_t(3));

-- Location: IOOBUF_X54_Y15_N39
\habilitahex_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilitahex_t(4));

-- Location: IOOBUF_X50_Y45_N19
\habilitahex_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilitahex_t(5));

-- Location: IOOBUF_X0_Y19_N22
\habilitahex_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilitahex_t(6));

-- Location: IOOBUF_X16_Y0_N93
\habilitahex_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilitahex_t(7));

-- Location: IOOBUF_X25_Y0_N53
\saidaDaodos_DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~141_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(0));

-- Location: IOOBUF_X42_Y45_N36
\saidaDaodos_DEBUG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~142_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(1));

-- Location: IOOBUF_X54_Y14_N96
\saidaDaodos_DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~143_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(2));

-- Location: IOOBUF_X25_Y0_N19
\saidaDaodos_DEBUG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~144_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(3));

-- Location: IOOBUF_X24_Y0_N36
\saidaDaodos_DEBUG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~145_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(4));

-- Location: IOOBUF_X25_Y0_N2
\saidaDaodos_DEBUG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~146_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(5));

-- Location: IOOBUF_X50_Y0_N2
\saidaDaodos_DEBUG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~147_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(6));

-- Location: IOOBUF_X54_Y14_N79
\saidaDaodos_DEBUG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~148_combout\,
	devoe => ww_devoe,
	o => ww_saidaDaodos_DEBUG(7));

-- Location: IOOBUF_X29_Y0_N53
\enderecoRAMROM_DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(0));

-- Location: IOOBUF_X29_Y0_N36
\enderecoRAMROM_DEBUG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(1));

-- Location: IOOBUF_X38_Y45_N2
\enderecoRAMROM_DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(2));

-- Location: IOOBUF_X38_Y45_N19
\enderecoRAMROM_DEBUG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(3));

-- Location: IOOBUF_X0_Y20_N56
\enderecoRAMROM_DEBUG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(4));

-- Location: IOOBUF_X14_Y45_N19
\enderecoRAMROM_DEBUG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(5));

-- Location: IOOBUF_X38_Y0_N2
\enderecoRAMROM_DEBUG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(6));

-- Location: IOOBUF_X18_Y0_N53
\enderecoRAMROM_DEBUG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(7));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X39_Y1_N44
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X39_Y1_N30
\processador|inc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~1_sumout\ = SUM(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|inc|Add0~2\ = CARRY(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|inc|Add0~1_sumout\,
	cout => \processador|inc|Add0~2\);

-- Location: FF_X39_Y1_N32
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X39_Y1_N33
\processador|inc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|inc|Add0~2\ ))
-- \processador|inc|Add0~26\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|inc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|inc|Add0~2\,
	sumout => \processador|inc|Add0~25_sumout\,
	cout => \processador|inc|Add0~26\);

-- Location: FF_X39_Y1_N35
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X39_Y1_N36
\processador|inc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|inc|Add0~26\ ))
-- \processador|inc|Add0~6\ = CARRY(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|inc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(2),
	cin => \processador|inc|Add0~26\,
	sumout => \processador|inc|Add0~5_sumout\,
	cout => \processador|inc|Add0~6\);

-- Location: FF_X39_Y1_N37
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: LABCELL_X39_Y1_N39
\processador|inc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|inc|Add0~6\ ))
-- \processador|inc|Add0~30\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|inc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|inc|Add0~6\,
	sumout => \processador|inc|Add0~29_sumout\,
	cout => \processador|inc|Add0~30\);

-- Location: FF_X39_Y1_N40
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X39_Y1_N42
\processador|inc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|inc|Add0~30\ ))
-- \processador|inc|Add0~10\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|inc|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|inc|Add0~30\,
	sumout => \processador|inc|Add0~9_sumout\,
	cout => \processador|inc|Add0~10\);

-- Location: FF_X39_Y1_N43
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X39_Y1_N53
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X39_Y1_N45
\processador|inc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|inc|Add0~10\ ))
-- \processador|inc|Add0~14\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|inc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|inc|Add0~10\,
	sumout => \processador|inc|Add0~13_sumout\,
	cout => \processador|inc|Add0~14\);

-- Location: FF_X39_Y1_N47
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X39_Y1_N48
\processador|inc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|inc|Add0~14\ ))
-- \processador|inc|Add0~18\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|inc|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|inc|Add0~14\,
	sumout => \processador|inc|Add0~17_sumout\,
	cout => \processador|inc|Add0~18\);

-- Location: FF_X39_Y1_N49
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X39_Y1_N51
\processador|inc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|inc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|inc|Add0~18\,
	sumout => \processador|inc|Add0~21_sumout\);

-- Location: FF_X39_Y1_N52
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X39_Y1_N46
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N3
\processador|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~8_combout\ = ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & !\processador|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(6),
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~8_combout\);

-- Location: FF_X39_Y1_N31
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X39_Y1_N34
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N57
\processador|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~11_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(2)) ) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(3) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~11_combout\);

-- Location: LABCELL_X40_Y1_N33
\processador|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~9_combout\ = ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2)) # (!\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~9_combout\);

-- Location: LABCELL_X40_Y1_N30
\processador|UC|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal2~0_combout\ = ( \processador|ROM|memROM~9_combout\ & ( (\processador|ROM|memROM~8_combout\ & ((!\processador|ROM|memROM~11_combout\) # (\processador|PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	datad => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \processador|UC|Equal2~0_combout\);

-- Location: FF_X39_Y1_N50
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y1_N24
\processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~0_combout\ = ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~0_combout\);

-- Location: LABCELL_X40_Y1_N39
\processador|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~10_combout\ = ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~10_combout\);

-- Location: LABCELL_X40_Y1_N42
\processador|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~12_combout\ = ( \processador|ROM|memROM~9_combout\ & ( \processador|ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \processador|ROM|memROM~12_combout\);

-- Location: LABCELL_X40_Y1_N0
\processador|UC|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal2~1_combout\ = ( \processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~10_combout\ & \processador|ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|UC|Equal2~1_combout\);

-- Location: FF_X39_Y1_N38
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y1_N15
\processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~1_combout\ = ( !\processador|PC|DOUT[6]~DUPLICATE_q\ & ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~1_combout\);

-- Location: MLABCELL_X37_Y1_N51
\processador|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~7_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|ROM|memROM~1_combout\ & ( \processador|PC|DOUT[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|ROM|memROM~7_combout\);

-- Location: LABCELL_X40_Y1_N45
\processador|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~15_combout\ = ( \processador|ROM|memROM~0_combout\ & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|ROM|memROM~15_combout\);

-- Location: LABCELL_X41_Y1_N24
\processador|UC|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal2~2_combout\ = ( \processador|ROM|memROM~8_combout\ & ( (\processador|ROM|memROM~9_combout\ & (((!\processador|ROM|memROM~10_combout\ & !\processador|ROM|memROM~11_combout\)) # (\processador|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~8_combout\,
	combout => \processador|UC|Equal2~2_combout\);

-- Location: FF_X39_Y1_N41
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y1_N9
\processador|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~14_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ (!\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~14_combout\);

-- Location: LABCELL_X39_Y1_N18
\processador|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~13_combout\ = ( \processador|ROM|memROM~0_combout\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|ROM|memROM~13_combout\);

-- Location: MLABCELL_X37_Y1_N9
\processador|Registradores|registrador~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~151_combout\ = ( !\processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~14_combout\ & ((!\processador|ROM|memROM~11_combout\) # 
-- (\processador|ROM|memROM~10_combout\)))) ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (!\processador|ROM|memROM~11_combout\ & (\processador|ROM|memROM~10_combout\ & 
-- \processador|ROM|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|ROM|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|Registradores|registrador~151_combout\);

-- Location: FF_X40_Y1_N16
\processador|Registradores|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~31_q\);

-- Location: MLABCELL_X37_Y1_N0
\processador|Registradores|registrador~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~149_combout\ = ( !\processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (!\processador|ROM|memROM~0_combout\) # ((!\processador|ROM|memROM~14_combout\ & 
-- ((!\processador|ROM|memROM~11_combout\) # (\processador|ROM|memROM~10_combout\)))) ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~12_combout\ & ( (!\processador|ROM|memROM~14_combout\ & (\processador|ROM|memROM~10_combout\ & 
-- (\processador|ROM|memROM~0_combout\ & !\processador|ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000011111010111100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~14_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|ROM|ALT_INV_memROM~11_combout\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|Registradores|registrador~149_combout\);

-- Location: FF_X41_Y1_N38
\processador|Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~14_q\);

-- Location: FF_X40_Y1_N56
\processador|Registradores|registrador~30DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~30DUPLICATE_q\);

-- Location: LABCELL_X39_Y1_N3
\processador|Registradores|registrador~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~152_combout\ = ( \processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~13_combout\ & (\processador|ROM|memROM~10_combout\ & 
-- \processador|ROM|memROM~14_combout\))) ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~13_combout\ & \processador|ROM|memROM~14_combout\)) ) ) ) # ( 
-- !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~13_combout\ & (\processador|ROM|memROM~10_combout\ & \processador|ROM|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000100010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~13_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|ROM|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|Registradores|registrador~152_combout\);

-- Location: FF_X41_Y1_N22
\processador|Registradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[1]~0_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~38_q\);

-- Location: LABCELL_X39_Y1_N6
\processador|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~16_combout\ = ( \processador|PC|DOUT\(0) & ( !\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(1) & !\processador|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|ROM|memROM~16_combout\);

-- Location: LABCELL_X39_Y1_N12
\processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~4_combout\ = ( !\processador|PC|DOUT\(5) & ( \processador|ROM|memROM~16_combout\ & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|ROM|ALT_INV_memROM~16_combout\,
	combout => \processador|ROM|memROM~4_combout\);

-- Location: LABCELL_X39_Y1_N57
\processador|Registradores|registrador~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~150_combout\ = ( \processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((!\processador|ROM|memROM~0_combout\) # ((\processador|ROM|memROM~10_combout\ & 
-- !\processador|ROM|memROM~14_combout\)))) ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((!\processador|ROM|memROM~0_combout\) # (!\processador|ROM|memROM~14_combout\))) ) 
-- ) ) # ( !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~10_combout\ & (\processador|ROM|memROM~13_combout\ & !\processador|ROM|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000001111000010100000101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|Registradores|registrador~150_combout\);

-- Location: FF_X40_Y1_N8
\processador|Registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~22_q\);

-- Location: LABCELL_X39_Y1_N21
\processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~2_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(0) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT\(0) & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \processador|ROM|memROM~2_combout\);

-- Location: LABCELL_X39_Y1_N27
\processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~5_combout\ = ( \processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|ROM|memROM~5_combout\);

-- Location: LABCELL_X40_Y1_N6
\processador|Registradores|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~142_combout\ = ( \processador|Registradores|registrador~22_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~30DUPLICATE_q\)) # 
-- (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~38_q\))) ) ) ) # ( !\processador|Registradores|registrador~22_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- (\processador|Registradores|registrador~30DUPLICATE_q\)) # (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~38_q\))) ) ) ) # ( \processador|Registradores|registrador~22_q\ & ( !\processador|ROM|memROM~5_combout\ & ( 
-- (\processador|Registradores|registrador~14_q\) # (\processador|ROM|memROM~4_combout\) ) ) ) # ( !\processador|Registradores|registrador~22_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- \processador|Registradores|registrador~14_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~30DUPLICATE_q\,
	datab => \processador|Registradores|ALT_INV_registrador~38_q\,
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~14_q\,
	datae => \processador|Registradores|ALT_INV_registrador~22_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~142_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X37_Y1_N18
\Decoder|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~0_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|ROM|memROM~2_combout\ & ( ((\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|ROM|memROM~1_combout\)) # (\processador|ROM|memROM~0_combout\) ) ) ) # ( 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|ROM|memROM~2_combout\ & ( \processador|ROM|memROM~0_combout\ ) ) ) # ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|ROM|memROM~2_combout\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- \processador|ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111101010101010101010101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~1_combout\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~2_combout\,
	combout => \Decoder|LessThan0~0_combout\);

-- Location: FF_X40_Y1_N29
\processador|Registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~21_q\);

-- Location: FF_X41_Y1_N59
\processador|Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~13_q\);

-- Location: FF_X40_Y1_N44
\processador|Registradores|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~37_q\);

-- Location: LABCELL_X40_Y1_N21
\processador|Registradores|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~141_combout\ = ( \processador|ROM|memROM~5_combout\ & ( \processador|ROM|memROM~4_combout\ & ( \processador|Registradores|registrador~37_q\ ) ) ) # ( !\processador|ROM|memROM~5_combout\ & ( 
-- \processador|ROM|memROM~4_combout\ & ( \processador|Registradores|registrador~21_q\ ) ) ) # ( \processador|ROM|memROM~5_combout\ & ( !\processador|ROM|memROM~4_combout\ & ( \processador|Registradores|registrador~29_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~5_combout\ & ( !\processador|ROM|memROM~4_combout\ & ( \processador|Registradores|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~21_q\,
	datab => \processador|Registradores|ALT_INV_registrador~13_q\,
	datac => \processador|Registradores|ALT_INV_registrador~37_q\,
	datad => \processador|Registradores|ALT_INV_registrador~29_q\,
	datae => \processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \processador|Registradores|registrador~141_combout\);

-- Location: LABCELL_X41_Y1_N30
\processador|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~34_cout\ = CARRY(( !\processador|UC|Equal2~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_Equal2~2_combout\,
	cin => GND,
	cout => \processador|ULA|Add0~34_cout\);

-- Location: LABCELL_X41_Y1_N33
\processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~1_sumout\ = SUM(( \processador|Registradores|registrador~141_combout\ ) + ( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~13_q\))) # 
-- (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~29_q\)))) ) + ( \processador|ULA|Add0~34_cout\ ))
-- \processador|ULA|Add0~2\ = CARRY(( \processador|Registradores|registrador~141_combout\ ) + ( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~13_q\))) # 
-- (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~29_q\)))) ) + ( \processador|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~2_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~29_q\,
	datac => \processador|ROM|ALT_INV_memROM~15_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~13_q\,
	cin => \processador|ULA|Add0~34_cout\,
	sumout => \processador|ULA|Add0~1_sumout\,
	cout => \processador|ULA|Add0~2\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X37_Y1_N39
\processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~3_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ $ (\processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~3_combout\);

-- Location: MLABCELL_X37_Y1_N24
\processador|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~6_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~6_combout\);

-- Location: MLABCELL_X37_Y1_N30
\interfaceChaves|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~0_combout\ = ( \SW[2]~input_o\ & ( \processador|ROM|memROM~6_combout\ & ( (!\processador|ROM|memROM~1_combout\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \processador|ROM|memROM~6_combout\ & ( (\SW[3]~input_o\ & 
-- \processador|ROM|memROM~1_combout\) ) ) ) # ( \SW[2]~input_o\ & ( !\processador|ROM|memROM~6_combout\ & ( (!\processador|ROM|memROM~1_combout\ & ((\SW[0]~input_o\))) # (\processador|ROM|memROM~1_combout\ & (\SW[1]~input_o\)) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- !\processador|ROM|memROM~6_combout\ & ( (!\processador|ROM|memROM~1_combout\ & ((\SW[0]~input_o\))) # (\processador|ROM|memROM~1_combout\ & (\SW[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \processador|ROM|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \processador|ROM|ALT_INV_memROM~6_combout\,
	combout => \interfaceChaves|Mux0~0_combout\);

-- Location: LABCELL_X41_Y1_N0
\processador|MUX_ULA|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[0]~7_combout\ = ( !\Decoder|LessThan0~0_combout\ & ( (!\processador|UC|Equal2~0_combout\ & ((!\processador|UC|Equal2~1_combout\ & (\interfaceChaves|Mux0~0_combout\)) # (\processador|UC|Equal2~1_combout\ & 
-- (((\processador|ROM|memROM~1_combout\)))))) # (\processador|UC|Equal2~0_combout\ & ((((\processador|ULA|Add0~1_sumout\))))) ) ) # ( \Decoder|LessThan0~0_combout\ & ( (!\processador|UC|Equal2~0_combout\ & ((!\processador|UC|Equal2~1_combout\ & 
-- (\KEY[3]~input_o\)) # (\processador|UC|Equal2~1_combout\ & (((\processador|ROM|memROM~1_combout\)))))) # (\processador|UC|Equal2~0_combout\ & ((((\processador|ULA|Add0~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	datab => \processador|UC|ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \processador|ROM|ALT_INV_memROM~1_combout\,
	datae => \Decoder|ALT_INV_LessThan0~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~1_sumout\,
	datag => \interfaceChaves|ALT_INV_Mux0~0_combout\,
	combout => \processador|MUX_ULA|saida_MUX[0]~7_combout\);

-- Location: FF_X40_Y1_N38
\processador|Registradores|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~29_q\);

-- Location: LABCELL_X41_Y1_N36
\processador|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~5_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~14_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~30_q\)))) ) + ( \processador|Registradores|registrador~142_combout\ ) + ( \processador|ULA|Add0~2\ ))
-- \processador|ULA|Add0~6\ = CARRY(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~14_q\))) # (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~30_q\)))) 
-- ) + ( \processador|Registradores|registrador~142_combout\ ) + ( \processador|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~30_q\,
	datad => \processador|Registradores|ALT_INV_registrador~14_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~142_combout\,
	cin => \processador|ULA|Add0~2\,
	sumout => \processador|ULA|Add0~5_sumout\,
	cout => \processador|ULA|Add0~6\);

-- Location: LABCELL_X41_Y1_N21
\processador|MUX_ULA|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[1]~0_combout\ = ( \processador|ROM|memROM~6_combout\ & ( ((\processador|UC|Equal2~0_combout\ & \processador|ULA|Add0~5_sumout\)) # (\processador|UC|Equal2~1_combout\) ) ) # ( !\processador|ROM|memROM~6_combout\ & ( 
-- (\processador|UC|Equal2~0_combout\ & (!\processador|UC|Equal2~1_combout\ & \processador|ULA|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	datac => \processador|UC|ALT_INV_Equal2~1_combout\,
	datad => \processador|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \processador|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|MUX_ULA|saida_MUX[1]~0_combout\);

-- Location: FF_X40_Y1_N55
\processador|Registradores|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~30_q\);

-- Location: LABCELL_X41_Y1_N39
\processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~9_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~15_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~31_q\)))) ) + ( \processador|Registradores|registrador~143_combout\ ) + ( \processador|ULA|Add0~6\ ))
-- \processador|ULA|Add0~10\ = CARRY(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~15_q\))) # (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~31_q\)))) 
-- ) + ( \processador|Registradores|registrador~143_combout\ ) + ( \processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~31_q\,
	datad => \processador|Registradores|ALT_INV_registrador~15_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~143_combout\,
	cin => \processador|ULA|Add0~6\,
	sumout => \processador|ULA|Add0~9_sumout\,
	cout => \processador|ULA|Add0~10\);

-- Location: LABCELL_X41_Y1_N12
\processador|MUX_ULA|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[2]~1_combout\ = ( \processador|ULA|Add0~9_sumout\ & ( ((\processador|UC|Equal2~1_combout\ & \processador|ROM|memROM~7_combout\)) # (\processador|UC|Equal2~0_combout\) ) ) # ( !\processador|ULA|Add0~9_sumout\ & ( 
-- (!\processador|UC|Equal2~0_combout\ & (\processador|UC|Equal2~1_combout\ & \processador|ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	datab => \processador|UC|ALT_INV_Equal2~1_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[2]~1_combout\);

-- Location: FF_X41_Y1_N41
\processador|Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~15_q\);

-- Location: FF_X40_Y1_N17
\processador|Registradores|registrador~31DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~31DUPLICATE_q\);

-- Location: FF_X41_Y1_N13
\processador|Registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[2]~1_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~39_q\);

-- Location: FF_X40_Y1_N50
\processador|Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~23_q\);

-- Location: LABCELL_X40_Y1_N48
\processador|Registradores|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~143_combout\ = ( \processador|Registradores|registrador~23_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~31DUPLICATE_q\)) # 
-- (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~39_q\))) ) ) ) # ( !\processador|Registradores|registrador~23_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- (\processador|Registradores|registrador~31DUPLICATE_q\)) # (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~39_q\))) ) ) ) # ( \processador|Registradores|registrador~23_q\ & ( !\processador|ROM|memROM~5_combout\ & ( 
-- (\processador|ROM|memROM~4_combout\) # (\processador|Registradores|registrador~15_q\) ) ) ) # ( !\processador|Registradores|registrador~23_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (\processador|Registradores|registrador~15_q\ & 
-- !\processador|ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~15_q\,
	datab => \processador|Registradores|ALT_INV_registrador~31DUPLICATE_q\,
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~39_q\,
	datae => \processador|Registradores|ALT_INV_registrador~23_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~143_combout\);

-- Location: FF_X40_Y1_N14
\processador|Registradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~32_q\);

-- Location: FF_X41_Y1_N43
\processador|Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~16_q\);

-- Location: LABCELL_X41_Y1_N42
\processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~13_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~32_q\)))) ) + ( \processador|Registradores|registrador~144_combout\ ) + ( \processador|ULA|Add0~10\ ))
-- \processador|ULA|Add0~14\ = CARRY(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~32_q\)))) 
-- ) + ( \processador|Registradores|registrador~144_combout\ ) + ( \processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~32_q\,
	datad => \processador|Registradores|ALT_INV_registrador~16_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~144_combout\,
	cin => \processador|ULA|Add0~10\,
	sumout => \processador|ULA|Add0~13_sumout\,
	cout => \processador|ULA|Add0~14\);

-- Location: LABCELL_X41_Y1_N9
\processador|MUX_ULA|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[3]~2_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( ((\processador|UC|Equal2~1_combout\ & \processador|ROM|memROM~7_combout\)) # (\processador|UC|Equal2~0_combout\) ) ) # ( !\processador|ULA|Add0~13_sumout\ & ( 
-- (!\processador|UC|Equal2~0_combout\ & (\processador|UC|Equal2~1_combout\ & \processador|ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	datac => \processador|UC|ALT_INV_Equal2~1_combout\,
	datad => \processador|ROM|ALT_INV_memROM~7_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[3]~2_combout\);

-- Location: FF_X40_Y1_N20
\processador|Registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~24_q\);

-- Location: FF_X41_Y1_N11
\processador|Registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[3]~2_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~40_q\);

-- Location: LABCELL_X40_Y1_N12
\processador|Registradores|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~144_combout\ = ( \processador|Registradores|registrador~32_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\) # (\processador|Registradores|registrador~40_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~32_q\ & ( \processador|ROM|memROM~5_combout\ & ( (\processador|Registradores|registrador~40_q\ & \processador|ROM|memROM~4_combout\) ) ) ) # ( \processador|Registradores|registrador~32_q\ & ( 
-- !\processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~24_q\)) ) ) ) # ( 
-- !\processador|Registradores|registrador~32_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~4_combout\ & 
-- (\processador|Registradores|registrador~24_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~24_q\,
	datab => \processador|Registradores|ALT_INV_registrador~40_q\,
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~16_q\,
	datae => \processador|Registradores|ALT_INV_registrador~32_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~144_combout\);

-- Location: MLABCELL_X42_Y1_N27
\interfaceHEX|conversorHex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ = ( \processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~141_combout\ & ( (!\processador|Registradores|registrador~143_combout\ & 
-- \processador|Registradores|registrador~144_combout\) ) ) ) # ( !\processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~141_combout\ & ( !\processador|Registradores|registrador~143_combout\ $ 
-- (\processador|Registradores|registrador~144_combout\) ) ) ) # ( !\processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~141_combout\ & ( (\processador|Registradores|registrador~143_combout\ & 
-- !\processador|Registradores|registrador~144_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100101101001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~144_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~142_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~141_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y1_N27
\Decoder|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = ( \processador|ROM|memROM~2_combout\ & ( (\processador|ROM|memROM~0_combout\ & (!\processador|ROM|memROM~3_combout\ & !\processador|ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~2_combout\,
	combout => \Decoder|Equal0~0_combout\);

-- Location: FF_X42_Y1_N19
\interfaceHEX|conversorHex0|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(0));

-- Location: MLABCELL_X42_Y1_N54
\interfaceHEX|conversorHex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ = ( \processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~141_combout\ & ( \processador|Registradores|registrador~144_combout\ ) ) ) # ( 
-- !\processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~141_combout\ & ( (!\processador|Registradores|registrador~144_combout\ & \processador|Registradores|registrador~143_combout\) ) ) ) # ( 
-- \processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~141_combout\ & ( \processador|Registradores|registrador~143_combout\ ) ) ) # ( !\processador|Registradores|registrador~142_combout\ & ( 
-- !\processador|Registradores|registrador~141_combout\ & ( (\processador|Registradores|registrador~144_combout\ & \processador|Registradores|registrador~143_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~144_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~142_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~141_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\);

-- Location: FF_X42_Y1_N40
\interfaceHEX|conversorHex0|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(1));

-- Location: MLABCELL_X42_Y1_N12
\interfaceHEX|conversorHex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ = ( \processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~144_combout\ & ( \processador|Registradores|registrador~143_combout\ ) ) ) # ( 
-- !\processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~141_combout\ & \processador|Registradores|registrador~143_combout\) ) ) ) # ( 
-- \processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~141_combout\ & !\processador|Registradores|registrador~143_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000001010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~142_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~144_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y1_N18
\interfaceHEX|conversorHex0|saida7seg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|saida7seg[2]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \interfaceHEX|conversorHex0|saida7seg[2]~feeder_combout\);

-- Location: FF_X42_Y1_N20
\interfaceHEX|conversorHex0|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|saida7seg[2]~feeder_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(2));

-- Location: MLABCELL_X42_Y1_N36
\interfaceHEX|conversorHex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ = ( \processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~141_combout\ & ( \processador|Registradores|registrador~143_combout\ ) ) ) # ( 
-- !\processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~141_combout\ & ( (!\processador|Registradores|registrador~144_combout\ & !\processador|Registradores|registrador~143_combout\) ) ) ) # ( 
-- \processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~141_combout\ & ( (\processador|Registradores|registrador~144_combout\ & !\processador|Registradores|registrador~143_combout\) ) ) ) # ( 
-- !\processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~141_combout\ & ( (!\processador|Registradores|registrador~144_combout\ & \processador|Registradores|registrador~143_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~144_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~142_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~141_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\);

-- Location: FF_X42_Y1_N22
\interfaceHEX|conversorHex0|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(3));

-- Location: MLABCELL_X42_Y1_N9
\interfaceHEX|conversorHex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ = ( !\processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~143_combout\ & 
-- \processador|Registradores|registrador~141_combout\) ) ) ) # ( \processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( \processador|Registradores|registrador~141_combout\ ) ) ) # ( 
-- !\processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( (\processador|Registradores|registrador~141_combout\) # (\processador|Registradores|registrador~143_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000001111111100000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~142_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~144_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\);

-- Location: FF_X42_Y1_N55
\interfaceHEX|conversorHex0|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(4));

-- Location: MLABCELL_X42_Y1_N51
\interfaceHEX|conversorHex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ = ( !\processador|Registradores|registrador~142_combout\ & ( \processador|Registradores|registrador~144_combout\ & ( (\processador|Registradores|registrador~143_combout\ & 
-- \processador|Registradores|registrador~141_combout\) ) ) ) # ( \processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~143_combout\) # 
-- (\processador|Registradores|registrador~141_combout\) ) ) ) # ( !\processador|Registradores|registrador~142_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~143_combout\ & 
-- \processador|Registradores|registrador~141_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010101111111100000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~142_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~144_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\);

-- Location: FF_X42_Y1_N37
\interfaceHEX|conversorHex0|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(5));

-- Location: MLABCELL_X42_Y1_N21
\interfaceHEX|conversorHex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ = ( \processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~142_combout\ & (\processador|Registradores|registrador~143_combout\ & 
-- !\processador|Registradores|registrador~141_combout\)) ) ) # ( !\processador|Registradores|registrador~144_combout\ & ( (!\processador|Registradores|registrador~142_combout\ & (!\processador|Registradores|registrador~143_combout\)) # 
-- (\processador|Registradores|registrador~142_combout\ & (\processador|Registradores|registrador~143_combout\ & \processador|Registradores|registrador~141_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~142_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~141_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~144_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\);

-- Location: FF_X42_Y1_N58
\interfaceHEX|conversorHex0|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(6));

-- Location: FF_X41_Y1_N32
\processador|Registradores|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~35_q\);

-- Location: FF_X41_Y1_N52
\processador|Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~19_q\);

-- Location: FF_X41_Y1_N49
\processador|Registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~18_q\);

-- Location: FF_X41_Y1_N8
\processador|Registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[5]~4_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~42_q\);

-- Location: FF_X42_Y1_N2
\processador|Registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~26_q\);

-- Location: MLABCELL_X42_Y1_N0
\processador|Registradores|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~146_combout\ = ( \processador|Registradores|registrador~26_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~34_q\)) # 
-- (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~42_q\))) ) ) ) # ( !\processador|Registradores|registrador~26_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- (\processador|Registradores|registrador~34_q\)) # (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~42_q\))) ) ) ) # ( \processador|Registradores|registrador~26_q\ & ( !\processador|ROM|memROM~5_combout\ & ( 
-- (\processador|ROM|memROM~4_combout\) # (\processador|Registradores|registrador~18_q\) ) ) ) # ( !\processador|Registradores|registrador~26_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (\processador|Registradores|registrador~18_q\ & 
-- !\processador|ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~18_q\,
	datab => \processador|Registradores|ALT_INV_registrador~34_q\,
	datac => \processador|Registradores|ALT_INV_registrador~42_q\,
	datad => \processador|ROM|ALT_INV_memROM~4_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~26_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~146_combout\);

-- Location: FF_X41_Y1_N47
\processador|Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~17_q\);

-- Location: FF_X41_Y1_N28
\processador|Registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[4]~3_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~41_q\);

-- Location: FF_X40_Y1_N26
\processador|Registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~25_q\);

-- Location: LABCELL_X40_Y1_N24
\processador|Registradores|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~145_combout\ = ( \processador|Registradores|registrador~25_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~33_q\)) # 
-- (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~41_q\))) ) ) ) # ( !\processador|Registradores|registrador~25_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- (\processador|Registradores|registrador~33_q\)) # (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~41_q\))) ) ) ) # ( \processador|Registradores|registrador~25_q\ & ( !\processador|ROM|memROM~5_combout\ & ( 
-- (\processador|ROM|memROM~4_combout\) # (\processador|Registradores|registrador~17_q\) ) ) ) # ( !\processador|Registradores|registrador~25_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (\processador|Registradores|registrador~17_q\ & 
-- !\processador|ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~17_q\,
	datab => \processador|Registradores|ALT_INV_registrador~33_q\,
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~41_q\,
	datae => \processador|Registradores|ALT_INV_registrador~25_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~145_combout\);

-- Location: LABCELL_X41_Y1_N45
\processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~17_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~17_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~33_q\)))) ) + ( \processador|Registradores|registrador~145_combout\ ) + ( \processador|ULA|Add0~14\ ))
-- \processador|ULA|Add0~18\ = CARRY(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~17_q\))) # (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~33_q\)))) 
-- ) + ( \processador|Registradores|registrador~145_combout\ ) + ( \processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~33_q\,
	datad => \processador|Registradores|ALT_INV_registrador~17_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~145_combout\,
	cin => \processador|ULA|Add0~14\,
	sumout => \processador|ULA|Add0~17_sumout\,
	cout => \processador|ULA|Add0~18\);

-- Location: LABCELL_X41_Y1_N27
\processador|MUX_ULA|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[4]~3_combout\ = ( \processador|ULA|Add0~17_sumout\ & ( \processador|UC|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|UC|ALT_INV_Equal2~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~17_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[4]~3_combout\);

-- Location: FF_X40_Y1_N41
\processador|Registradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~33_q\);

-- Location: LABCELL_X41_Y1_N48
\processador|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~21_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~18_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~34_q\)))) ) + ( \processador|Registradores|registrador~146_combout\ ) + ( \processador|ULA|Add0~18\ ))
-- \processador|ULA|Add0~22\ = CARRY(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~18_q\))) # (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~34_q\)))) 
-- ) + ( \processador|Registradores|registrador~146_combout\ ) + ( \processador|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~34_q\,
	datad => \processador|Registradores|ALT_INV_registrador~18_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~146_combout\,
	cin => \processador|ULA|Add0~18\,
	sumout => \processador|ULA|Add0~21_sumout\,
	cout => \processador|ULA|Add0~22\);

-- Location: LABCELL_X41_Y1_N6
\processador|MUX_ULA|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[5]~4_combout\ = ( \processador|ULA|Add0~21_sumout\ & ( \processador|UC|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[5]~4_combout\);

-- Location: FF_X41_Y1_N2
\processador|Registradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~34_q\);

-- Location: LABCELL_X41_Y1_N51
\processador|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~25_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~19_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~35_q\)))) ) + ( \processador|Registradores|registrador~147_combout\ ) + ( \processador|ULA|Add0~22\ ))
-- \processador|ULA|Add0~26\ = CARRY(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~19_q\))) # (\processador|ROM|memROM~15_combout\ & (\processador|Registradores|registrador~35_q\)))) 
-- ) + ( \processador|Registradores|registrador~147_combout\ ) + ( \processador|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~35_q\,
	datad => \processador|Registradores|ALT_INV_registrador~19_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~147_combout\,
	cin => \processador|ULA|Add0~22\,
	sumout => \processador|ULA|Add0~25_sumout\,
	cout => \processador|ULA|Add0~26\);

-- Location: LABCELL_X41_Y1_N18
\processador|MUX_ULA|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[6]~5_combout\ = ( \processador|ULA|Add0~25_sumout\ & ( (!\processador|UC|Equal2~1_combout\ & (\processador|UC|Equal2~0_combout\)) # (\processador|UC|Equal2~1_combout\ & ((\processador|ROM|memROM~5_combout\))) ) ) # ( 
-- !\processador|ULA|Add0~25_sumout\ & ( (\processador|UC|Equal2~1_combout\ & \processador|ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	datab => \processador|UC|ALT_INV_Equal2~1_combout\,
	datad => \processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[6]~5_combout\);

-- Location: FF_X41_Y1_N31
\processador|Registradores|registrador~35DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~35DUPLICATE_q\);

-- Location: FF_X41_Y1_N19
\processador|Registradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[6]~5_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~43_q\);

-- Location: FF_X42_Y1_N44
\processador|Registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~27_q\);

-- Location: MLABCELL_X42_Y1_N42
\processador|Registradores|registrador~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~147_combout\ = ( \processador|Registradores|registrador~27_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~35DUPLICATE_q\)) # 
-- (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~43_q\))) ) ) ) # ( !\processador|Registradores|registrador~27_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- (\processador|Registradores|registrador~35DUPLICATE_q\)) # (\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~43_q\))) ) ) ) # ( \processador|Registradores|registrador~27_q\ & ( !\processador|ROM|memROM~5_combout\ & ( 
-- (\processador|ROM|memROM~4_combout\) # (\processador|Registradores|registrador~19_q\) ) ) ) # ( !\processador|Registradores|registrador~27_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (\processador|Registradores|registrador~19_q\ & 
-- !\processador|ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~35DUPLICATE_q\,
	datab => \processador|Registradores|ALT_INV_registrador~43_q\,
	datac => \processador|Registradores|ALT_INV_registrador~19_q\,
	datad => \processador|ROM|ALT_INV_memROM~4_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~27_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~147_combout\);

-- Location: FF_X41_Y1_N35
\processador|Registradores|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~36_q\);

-- Location: LABCELL_X41_Y1_N54
\processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~29_sumout\ = SUM(( !\processador|UC|Equal2~2_combout\ $ (((!\processador|ROM|memROM~15_combout\ & ((\processador|Registradores|registrador~20_q\))) # (\processador|ROM|memROM~15_combout\ & 
-- (\processador|Registradores|registrador~36_q\)))) ) + ( \processador|Registradores|registrador~148_combout\ ) + ( \processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~36_q\,
	datab => \processador|UC|ALT_INV_Equal2~2_combout\,
	datac => \processador|ROM|ALT_INV_memROM~15_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~20_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~148_combout\,
	cin => \processador|ULA|Add0~26\,
	sumout => \processador|ULA|Add0~29_sumout\);

-- Location: LABCELL_X41_Y1_N15
\processador|MUX_ULA|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[7]~6_combout\ = (\processador|UC|Equal2~0_combout\ & \processador|ULA|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal2~0_combout\,
	datad => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[7]~6_combout\);

-- Location: FF_X41_Y1_N55
\processador|Registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~20_q\);

-- Location: FF_X41_Y1_N17
\processador|Registradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[7]~6_combout\,
	ena => \processador|Registradores|registrador~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~44_q\);

-- Location: FF_X42_Y1_N32
\processador|Registradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~28_q\);

-- Location: MLABCELL_X42_Y1_N30
\processador|Registradores|registrador~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~148_combout\ = ( \processador|Registradores|registrador~28_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & ((\processador|Registradores|registrador~36_q\))) # 
-- (\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~44_q\)) ) ) ) # ( !\processador|Registradores|registrador~28_q\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~4_combout\ & 
-- ((\processador|Registradores|registrador~36_q\))) # (\processador|ROM|memROM~4_combout\ & (\processador|Registradores|registrador~44_q\)) ) ) ) # ( \processador|Registradores|registrador~28_q\ & ( !\processador|ROM|memROM~5_combout\ & ( 
-- (\processador|ROM|memROM~4_combout\) # (\processador|Registradores|registrador~20_q\) ) ) ) # ( !\processador|Registradores|registrador~28_q\ & ( !\processador|ROM|memROM~5_combout\ & ( (\processador|Registradores|registrador~20_q\ & 
-- !\processador|ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~20_q\,
	datab => \processador|Registradores|ALT_INV_registrador~44_q\,
	datac => \processador|Registradores|ALT_INV_registrador~36_q\,
	datad => \processador|ROM|ALT_INV_memROM~4_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~28_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|Registradores|registrador~148_combout\);

-- Location: LABCELL_X43_Y1_N48
\interfaceHEX|conversorHex1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[0]~0_combout\ = ( \processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~147_combout\ & (\processador|Registradores|registrador~148_combout\ & 
-- \processador|Registradores|registrador~145_combout\)) ) ) # ( !\processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~147_combout\ & (!\processador|Registradores|registrador~148_combout\ & 
-- \processador|Registradores|registrador~145_combout\)) # (\processador|Registradores|registrador~147_combout\ & (!\processador|Registradores|registrador~148_combout\ $ (\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~147_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~148_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~146_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y1_N54
\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( \processador|ROM|memROM~0_combout\ & ( !\processador|ROM|memROM~3_combout\ & ( (\processador|ROM|memROM~1_combout\ & (\processador|ROM|memROM~2_combout\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # 
-- (!\processador|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~2_combout\,
	datae => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal1~0_combout\);

-- Location: FF_X43_Y1_N49
\interfaceHEX|conversorHex1|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[0]~0_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(0));

-- Location: LABCELL_X43_Y1_N6
\interfaceHEX|conversorHex1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[1]~1_combout\ = ( \processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~145_combout\ & (\processador|Registradores|registrador~147_combout\)) # 
-- (\processador|Registradores|registrador~145_combout\ & ((\processador|Registradores|registrador~148_combout\))) ) ) # ( !\processador|Registradores|registrador~146_combout\ & ( (\processador|Registradores|registrador~147_combout\ & 
-- (!\processador|Registradores|registrador~148_combout\ $ (!\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~147_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~148_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~146_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[1]~1_combout\);

-- Location: FF_X43_Y1_N7
\interfaceHEX|conversorHex1|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[1]~1_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(1));

-- Location: LABCELL_X43_Y1_N39
\interfaceHEX|conversorHex1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[2]~2_combout\ = ( \processador|Registradores|registrador~147_combout\ & ( \processador|Registradores|registrador~148_combout\ & ( (!\processador|Registradores|registrador~145_combout\) # 
-- (\processador|Registradores|registrador~146_combout\) ) ) ) # ( !\processador|Registradores|registrador~147_combout\ & ( !\processador|Registradores|registrador~148_combout\ & ( (!\processador|Registradores|registrador~145_combout\ & 
-- \processador|Registradores|registrador~146_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~146_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~147_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~148_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[2]~2_combout\);

-- Location: FF_X43_Y1_N40
\interfaceHEX|conversorHex1|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[2]~2_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(2));

-- Location: LABCELL_X43_Y1_N18
\interfaceHEX|conversorHex1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[3]~3_combout\ = ( \processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~147_combout\ & (\processador|Registradores|registrador~148_combout\ & 
-- !\processador|Registradores|registrador~145_combout\)) # (\processador|Registradores|registrador~147_combout\ & ((\processador|Registradores|registrador~145_combout\))) ) ) # ( !\processador|Registradores|registrador~146_combout\ & ( 
-- (!\processador|Registradores|registrador~148_combout\ & (!\processador|Registradores|registrador~147_combout\ $ (!\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~147_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~148_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~146_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[3]~3_combout\);

-- Location: FF_X43_Y1_N19
\interfaceHEX|conversorHex1|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[3]~3_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(3));

-- Location: LABCELL_X43_Y1_N27
\interfaceHEX|conversorHex1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[4]~4_combout\ = ( \processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~148_combout\ & \processador|Registradores|registrador~145_combout\) ) ) # ( 
-- !\processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~147_combout\ & ((\processador|Registradores|registrador~145_combout\))) # (\processador|Registradores|registrador~147_combout\ & 
-- (!\processador|Registradores|registrador~148_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~148_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~147_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~146_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[4]~4_combout\);

-- Location: FF_X43_Y1_N29
\interfaceHEX|conversorHex1|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[4]~4_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(4));

-- Location: LABCELL_X43_Y1_N42
\interfaceHEX|conversorHex1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[5]~5_combout\ = ( \processador|Registradores|registrador~146_combout\ & ( (!\processador|Registradores|registrador~148_combout\ & ((!\processador|Registradores|registrador~147_combout\) # 
-- (\processador|Registradores|registrador~145_combout\))) ) ) # ( !\processador|Registradores|registrador~146_combout\ & ( (\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~147_combout\ $ 
-- (\processador|Registradores|registrador~148_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~147_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~148_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~146_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[5]~5_combout\);

-- Location: FF_X43_Y1_N43
\interfaceHEX|conversorHex1|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[5]~5_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(5));

-- Location: LABCELL_X43_Y1_N15
\interfaceHEX|conversorHex1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|rascSaida7seg[6]~6_combout\ = ( \processador|Registradores|registrador~147_combout\ & ( \processador|Registradores|registrador~148_combout\ & ( (!\processador|Registradores|registrador~145_combout\ & 
-- !\processador|Registradores|registrador~146_combout\) ) ) ) # ( \processador|Registradores|registrador~147_combout\ & ( !\processador|Registradores|registrador~148_combout\ & ( (\processador|Registradores|registrador~145_combout\ & 
-- \processador|Registradores|registrador~146_combout\) ) ) ) # ( !\processador|Registradores|registrador~147_combout\ & ( !\processador|Registradores|registrador~148_combout\ & ( !\processador|Registradores|registrador~146_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000110000001100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~146_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~147_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~148_combout\,
	combout => \interfaceHEX|conversorHex1|rascSaida7seg[6]~6_combout\);

-- Location: FF_X43_Y1_N16
\interfaceHEX|conversorHex1|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|rascSaida7seg[6]~6_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(6));

-- Location: MLABCELL_X37_Y1_N36
\Decoder|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal2~0_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (!\processador|ROM|memROM~1_combout\ & (\processador|ROM|memROM~2_combout\ & \processador|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|ROM|ALT_INV_memROM~2_combout\,
	datad => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal2~0_combout\);

-- Location: FF_X42_Y1_N28
\interfaceHEX|conversorHex2|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(0));

-- Location: FF_X42_Y1_N7
\interfaceHEX|conversorHex2|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	sload => VCC,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(1));

-- Location: FF_X42_Y1_N13
\interfaceHEX|conversorHex2|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(2));

-- Location: FF_X42_Y1_N49
\interfaceHEX|conversorHex2|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(3));

-- Location: FF_X42_Y1_N10
\interfaceHEX|conversorHex2|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(4));

-- Location: FF_X42_Y1_N52
\interfaceHEX|conversorHex2|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(5));

-- Location: FF_X42_Y1_N25
\interfaceHEX|conversorHex2|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(6));

-- Location: MLABCELL_X37_Y1_N42
\Decoder|habilita[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~0_combout\ = ( \processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~3_combout\ ) ) # ( !\processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~3_combout\ & ( (!\processador|ROM|memROM~1_combout\) # 
-- ((!\processador|PC|DOUT[2]~DUPLICATE_q\) # (!\processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) ) # ( \processador|ROM|memROM~0_combout\ & ( !\processador|ROM|memROM~3_combout\ & ( ((!\processador|ROM|memROM~1_combout\) # ((!\processador|PC|DOUT[2]~DUPLICATE_q\) 
-- # (!\processador|PC|DOUT[0]~DUPLICATE_q\))) # (\processador|ROM|memROM~2_combout\) ) ) ) # ( !\processador|ROM|memROM~0_combout\ & ( !\processador|ROM|memROM~3_combout\ & ( (!\processador|ROM|memROM~1_combout\) # ((!\processador|PC|DOUT[2]~DUPLICATE_q\) # 
-- (!\processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110111111111111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~2_combout\,
	datab => \processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \Decoder|habilita[1]~0_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: MLABCELL_X37_Y7_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


