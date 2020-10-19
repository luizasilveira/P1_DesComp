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

-- DATE "10/19/2020 10:50:07"

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
	BarramentoSaida_t : OUT std_logic_vector(7 DOWNTO 0);
	enderecoRAMROM_DEBUG : OUT std_logic_vector(7 DOWNTO 0);
	ULA_t : OUT std_logic_vector(7 DOWNTO 0);
	opcode_t : OUT std_logic_vector(3 DOWNTO 0);
	BarramentoEntrada_t : OUT std_logic_vector(7 DOWNTO 0);
	habBaseTempo_t : OUT std_logic;
	LimpaBaseTempo_t : OUT std_logic
	);
END Clock;

-- Design Ports Information
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
-- habilita_t[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[7]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habBaseTempo_t	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LimpaBaseTempo_t	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_BarramentoSaida_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enderecoRAMROM_DEBUG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ULA_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_opcode_t : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BarramentoEntrada_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habBaseTempo_t : std_logic;
SIGNAL ww_LimpaBaseTempo_t : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~105_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~1_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~2\ : std_logic;
SIGNAL \processador|inc|Add0~5_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|inc|Add0~14\ : std_logic;
SIGNAL \processador|inc|Add0~17_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~18\ : std_logic;
SIGNAL \processador|inc|Add0~21_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~22\ : std_logic;
SIGNAL \processador|inc|Add0~25_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~6_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~7_combout\ : std_logic;
SIGNAL \processador|inc|Add0~26\ : std_logic;
SIGNAL \processador|inc|Add0~29_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~11_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~10_combout\ : std_logic;
SIGNAL \processador|inc|Add0~6\ : std_logic;
SIGNAL \processador|inc|Add0~9_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~10\ : std_logic;
SIGNAL \processador|inc|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~15_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~17_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~18_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~19_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~12_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~13_combout\ : std_logic;
SIGNAL \processador|UC|palavraControle[3]~0_combout\ : std_logic;
SIGNAL \processador|UC|Equal3~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~21_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~22_combout\ : std_logic;
SIGNAL \Decoder|LessThan0~0_combout\ : std_logic;
SIGNAL \Decoder|habilita[1]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal6~0_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~11_combout\ : std_logic;
SIGNAL \processador|UC|Equal5~0_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~23_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~24_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~223_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~25_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~225_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~65_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~226_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~73_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~213_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~227_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~228_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~229_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~214_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~222_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~81_q\ : std_logic;
SIGNAL \processador|ROM|memROM~28_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~20_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~221_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~89_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~224_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~97_q\ : std_logic;
SIGNAL \processador|ROM|memROM~27_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~26_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~189_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~157_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~212_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~88_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~80_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~96_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~185_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~153_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~210_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~79_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~87_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~95_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~181_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~149_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~78_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~86_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~94_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~177_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~145_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~208_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~85_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~93feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~93_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~77_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~13_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~173_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~141_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~206_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~34_cout\ : std_logic;
SIGNAL \processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~69_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~61_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~205_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~2\ : std_logic;
SIGNAL \processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~62feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~62_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~70_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~207_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~6\ : std_logic;
SIGNAL \processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~71_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~63_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~209_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~10\ : std_logic;
SIGNAL \processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~72_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~64_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~211_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~14\ : std_logic;
SIGNAL \processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~74_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~66_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~215_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~98_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~82_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~90_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~193_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~161_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~216_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~18\ : std_logic;
SIGNAL \processador|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|flipflop|data_out~2_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~0_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~3_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~75_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~67_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~217_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~218_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~22\ : std_logic;
SIGNAL \processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~91_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~83_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~99_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~35DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~197_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~165_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~68_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~76_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~219_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~220_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~26\ : std_logic;
SIGNAL \processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~92_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~84_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~100_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~201_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~169_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~4_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~1_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~5_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~q\ : std_logic;
SIGNAL \processador|comb~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~8_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~9_combout\ : std_logic;
SIGNAL \Decoder|Equal7~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~106\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~101_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~102\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~98\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~94\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~90\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~86\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~38\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~34\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~26\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~30\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~22\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~18\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~42\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~46\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~14\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~50\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~54\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~58\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~6\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~10\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~62\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~4_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~66\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~2\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~78\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~74\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~70\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~5_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~6_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~q\ : std_logic;
SIGNAL \Decoder|habilita[1]~1_combout\ : std_logic;
SIGNAL \Decoder|LessThan0~1_combout\ : std_logic;
SIGNAL \Decoder|Equal6~1_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~1_combout\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~8_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \interfaceChaves|Mux0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \interfaceChaves|Mux0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~9_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~10_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg[0]~feeder_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \processador|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \processador|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \processador|UC|palavraControle\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceBaseTempo|contador\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceBaseTempo|ALT_INV_contador\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \processador|Registradores|ALT_INV_registrador~201_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~197_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~193_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~189_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~185_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~181_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~173_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~169_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~165_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~161_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~157_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~153_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~149_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~145_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~141_combout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_palavraControle[3]~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~4_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~3_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~2_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~1_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~0_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~11_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~10_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~9_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~8_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~220_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~219_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~76_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~218_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~217_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~216_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~215_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~214_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~213_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~212_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~211_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~210_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~209_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~208_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~207_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~206_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~205_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~100_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~84_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~92_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~99_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~83_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~91_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~98_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~82_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~90_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~97_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~81_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~89_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~96_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~80_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~88_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~95_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~79_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~87_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~94_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~78_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~86_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~93_q\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~77_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~85_q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~35DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~5_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~4_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~223_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_palavraControle\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \processador|ROM|ALT_INV_memROM~24_combout\ : std_logic;

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
BarramentoSaida_t <= ww_BarramentoSaida_t;
enderecoRAMROM_DEBUG <= ww_enderecoRAMROM_DEBUG;
ULA_t <= ww_ULA_t;
opcode_t <= ww_opcode_t;
BarramentoEntrada_t <= ww_BarramentoEntrada_t;
habBaseTempo_t <= ww_habBaseTempo_t;
LimpaBaseTempo_t <= ww_LimpaBaseTempo_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\interfaceBaseTempo|ALT_INV_contador\(26) <= NOT \interfaceBaseTempo|contador\(26);
\interfaceBaseTempo|ALT_INV_contador\(23) <= NOT \interfaceBaseTempo|contador\(23);
\interfaceBaseTempo|ALT_INV_contador\(24) <= NOT \interfaceBaseTempo|contador\(24);
\interfaceBaseTempo|ALT_INV_contador\(25) <= NOT \interfaceBaseTempo|contador\(25);
\interfaceBaseTempo|ALT_INV_contador\(21) <= NOT \interfaceBaseTempo|contador\(21);
\interfaceBaseTempo|ALT_INV_contador\(20) <= NOT \interfaceBaseTempo|contador\(20);
\interfaceBaseTempo|ALT_INV_contador\(17) <= NOT \interfaceBaseTempo|contador\(17);
\interfaceBaseTempo|ALT_INV_contador\(16) <= NOT \interfaceBaseTempo|contador\(16);
\interfaceBaseTempo|ALT_INV_contador\(15) <= NOT \interfaceBaseTempo|contador\(15);
\interfaceBaseTempo|ALT_INV_contador\(13) <= NOT \interfaceBaseTempo|contador\(13);
\interfaceBaseTempo|ALT_INV_contador\(12) <= NOT \interfaceBaseTempo|contador\(12);
\interfaceBaseTempo|ALT_INV_contador\(6) <= NOT \interfaceBaseTempo|contador\(6);
\interfaceBaseTempo|ALT_INV_contador\(7) <= NOT \interfaceBaseTempo|contador\(7);
\interfaceBaseTempo|ALT_INV_contador\(9) <= NOT \interfaceBaseTempo|contador\(9);
\interfaceBaseTempo|ALT_INV_contador\(8) <= NOT \interfaceBaseTempo|contador\(8);
\interfaceBaseTempo|ALT_INV_contador\(10) <= NOT \interfaceBaseTempo|contador\(10);
\interfaceBaseTempo|ALT_INV_contador\(11) <= NOT \interfaceBaseTempo|contador\(11);
\interfaceBaseTempo|ALT_INV_contador\(14) <= NOT \interfaceBaseTempo|contador\(14);
\interfaceBaseTempo|ALT_INV_contador\(19) <= NOT \interfaceBaseTempo|contador\(19);
\interfaceBaseTempo|ALT_INV_contador\(18) <= NOT \interfaceBaseTempo|contador\(18);
\interfaceBaseTempo|ALT_INV_contador\(22) <= NOT \interfaceBaseTempo|contador\(22);
\processador|Registradores|ALT_INV_registrador~201_combout\ <= NOT \processador|Registradores|registrador~201_combout\;
\processador|Registradores|ALT_INV_registrador~197_combout\ <= NOT \processador|Registradores|registrador~197_combout\;
\processador|Registradores|ALT_INV_registrador~193_combout\ <= NOT \processador|Registradores|registrador~193_combout\;
\processador|Registradores|ALT_INV_registrador~189_combout\ <= NOT \processador|Registradores|registrador~189_combout\;
\processador|Registradores|ALT_INV_registrador~185_combout\ <= NOT \processador|Registradores|registrador~185_combout\;
\processador|Registradores|ALT_INV_registrador~181_combout\ <= NOT \processador|Registradores|registrador~181_combout\;
\processador|Registradores|ALT_INV_registrador~177_combout\ <= NOT \processador|Registradores|registrador~177_combout\;
\processador|Registradores|ALT_INV_registrador~173_combout\ <= NOT \processador|Registradores|registrador~173_combout\;
\processador|ULA|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA|Add0~29_sumout\;
\processador|ULA|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA|Add0~25_sumout\;
\processador|ULA|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA|Add0~21_sumout\;
\processador|ULA|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA|Add0~17_sumout\;
\processador|ULA|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA|Add0~13_sumout\;
\processador|ULA|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA|Add0~9_sumout\;
\processador|ULA|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA|Add0~5_sumout\;
\processador|ULA|ALT_INV_Add0~1_sumout\ <= NOT \processador|ULA|Add0~1_sumout\;
\processador|Registradores|ALT_INV_registrador~169_combout\ <= NOT \processador|Registradores|registrador~169_combout\;
\processador|Registradores|ALT_INV_registrador~165_combout\ <= NOT \processador|Registradores|registrador~165_combout\;
\processador|Registradores|ALT_INV_registrador~161_combout\ <= NOT \processador|Registradores|registrador~161_combout\;
\processador|Registradores|ALT_INV_registrador~157_combout\ <= NOT \processador|Registradores|registrador~157_combout\;
\processador|Registradores|ALT_INV_registrador~153_combout\ <= NOT \processador|Registradores|registrador~153_combout\;
\processador|Registradores|ALT_INV_registrador~149_combout\ <= NOT \processador|Registradores|registrador~149_combout\;
\processador|Registradores|ALT_INV_registrador~145_combout\ <= NOT \processador|Registradores|registrador~145_combout\;
\processador|Registradores|ALT_INV_registrador~141_combout\ <= NOT \processador|Registradores|registrador~141_combout\;
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[0]~0_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\;
\processador|ULA|ALT_INV_saida[1]~1_combout\ <= NOT \processador|ULA|saida[1]~1_combout\;
\processador|UC|ALT_INV_palavraControle[3]~0_combout\ <= NOT \processador|UC|palavraControle[3]~0_combout\;
\processador|ROM|ALT_INV_memROM~19_combout\ <= NOT \processador|ROM|memROM~19_combout\;
\processador|ROM|ALT_INV_memROM~18_combout\ <= NOT \processador|ROM|memROM~18_combout\;
\processador|ROM|ALT_INV_memROM~17_combout\ <= NOT \processador|ROM|memROM~17_combout\;
\processador|ROM|ALT_INV_memROM~16_combout\ <= NOT \processador|ROM|memROM~16_combout\;
\processador|ROM|ALT_INV_memROM~15_combout\ <= NOT \processador|ROM|memROM~15_combout\;
\processador|ROM|ALT_INV_memROM~14_combout\ <= NOT \processador|ROM|memROM~14_combout\;
\processador|ROM|ALT_INV_memROM~13_combout\ <= NOT \processador|ROM|memROM~13_combout\;
\processador|ROM|ALT_INV_memROM~12_combout\ <= NOT \processador|ROM|memROM~12_combout\;
\Decoder|ALT_INV_Equal6~1_combout\ <= NOT \Decoder|Equal6~1_combout\;
\Decoder|ALT_INV_Equal6~0_combout\ <= NOT \Decoder|Equal6~0_combout\;
\processador|ROM|ALT_INV_memROM~11_combout\ <= NOT \processador|ROM|memROM~11_combout\;
\processador|ROM|ALT_INV_memROM~10_combout\ <= NOT \processador|ROM|memROM~10_combout\;
\processador|ROM|ALT_INV_memROM~9_combout\ <= NOT \processador|ROM|memROM~9_combout\;
\processador|ROM|ALT_INV_memROM~8_combout\ <= NOT \processador|ROM|memROM~8_combout\;
\Decoder|ALT_INV_habilita[1]~1_combout\ <= NOT \Decoder|habilita[1]~1_combout\;
\Decoder|ALT_INV_habilita[1]~0_combout\ <= NOT \Decoder|habilita[1]~0_combout\;
\Decoder|ALT_INV_LessThan0~1_combout\ <= NOT \Decoder|LessThan0~1_combout\;
\processador|ROM|ALT_INV_memROM~7_combout\ <= NOT \processador|ROM|memROM~7_combout\;
\processador|ROM|ALT_INV_memROM~6_combout\ <= NOT \processador|ROM|memROM~6_combout\;
\processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \processador|ROM|memROM~5_combout\;
\processador|ROM|ALT_INV_memROM~4_combout\ <= NOT \processador|ROM|memROM~4_combout\;
\processador|ROM|ALT_INV_memROM~3_combout\ <= NOT \processador|ROM|memROM~3_combout\;
\processador|ROM|ALT_INV_memROM~2_combout\ <= NOT \processador|ROM|memROM~2_combout\;
\Decoder|ALT_INV_LessThan0~0_combout\ <= NOT \Decoder|LessThan0~0_combout\;
\processador|ROM|ALT_INV_memROM~1_combout\ <= NOT \processador|ROM|memROM~1_combout\;
\processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \processador|ROM|memROM~0_combout\;
\interfaceBaseTempo|ALT_INV_contador\(0) <= NOT \interfaceBaseTempo|contador\(0);
\interfaceBaseTempo|ALT_INV_contador\(1) <= NOT \interfaceBaseTempo|contador\(1);
\interfaceBaseTempo|ALT_INV_contador\(2) <= NOT \interfaceBaseTempo|contador\(2);
\interfaceBaseTempo|ALT_INV_contador\(3) <= NOT \interfaceBaseTempo|contador\(3);
\interfaceBaseTempo|ALT_INV_contador\(4) <= NOT \interfaceBaseTempo|contador\(4);
\interfaceBaseTempo|ALT_INV_contador\(5) <= NOT \interfaceBaseTempo|contador\(5);
\processador|ROM|ALT_INV_memROM~23_combout\ <= NOT \processador|ROM|memROM~23_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX_ULA|saida_MUX[0]~0_combout\;
\processador|UC|ALT_INV_Equal5~0_combout\ <= NOT \processador|UC|Equal5~0_combout\;
\processador|flipflop|ALT_INV_data_out~4_combout\ <= NOT \processador|flipflop|data_out~4_combout\;
\processador|flipflop|ALT_INV_data_out~3_combout\ <= NOT \processador|flipflop|data_out~3_combout\;
\processador|flipflop|ALT_INV_data_out~2_combout\ <= NOT \processador|flipflop|data_out~2_combout\;
\processador|flipflop|ALT_INV_data_out~1_combout\ <= NOT \processador|flipflop|data_out~1_combout\;
\processador|flipflop|ALT_INV_data_out~0_combout\ <= NOT \processador|flipflop|data_out~0_combout\;
\interfaceChaves|ALT_INV_saida[0]~11_combout\ <= NOT \interfaceChaves|saida[0]~11_combout\;
\interfaceChaves|ALT_INV_saida[0]~10_combout\ <= NOT \interfaceChaves|saida[0]~10_combout\;
\interfaceChaves|ALT_INV_saida[0]~9_combout\ <= NOT \interfaceChaves|saida[0]~9_combout\;
\interfaceChaves|ALT_INV_saida[0]~8_combout\ <= NOT \interfaceChaves|saida[0]~8_combout\;
\interfaceChaves|ALT_INV_Mux0~1_combout\ <= NOT \interfaceChaves|Mux0~1_combout\;
\interfaceChaves|ALT_INV_Mux0~0_combout\ <= NOT \interfaceChaves|Mux0~0_combout\;
\interfaceBtn|ALT_INV_saida[0]~2_combout\ <= NOT \interfaceBtn|saida[0]~2_combout\;
\interfaceBtn|ALT_INV_saida[0]~1_combout\ <= NOT \interfaceBtn|saida[0]~1_combout\;
\interfaceBtn|ALT_INV_saida[0]~0_combout\ <= NOT \interfaceBtn|saida[0]~0_combout\;
\processador|Registradores|ALT_INV_registrador~220_combout\ <= NOT \processador|Registradores|registrador~220_combout\;
\processador|Registradores|ALT_INV_registrador~36_q\ <= NOT \processador|Registradores|registrador~36_q\;
\processador|Registradores|ALT_INV_registrador~28_q\ <= NOT \processador|Registradores|registrador~28_q\;
\processador|Registradores|ALT_INV_registrador~20_q\ <= NOT \processador|Registradores|registrador~20_q\;
\processador|Registradores|ALT_INV_registrador~219_combout\ <= NOT \processador|Registradores|registrador~219_combout\;
\processador|Registradores|ALT_INV_registrador~76_q\ <= NOT \processador|Registradores|registrador~76_q\;
\processador|Registradores|ALT_INV_registrador~68_q\ <= NOT \processador|Registradores|registrador~68_q\;
\processador|Registradores|ALT_INV_registrador~218_combout\ <= NOT \processador|Registradores|registrador~218_combout\;
\processador|Registradores|ALT_INV_registrador~35_q\ <= NOT \processador|Registradores|registrador~35_q\;
\processador|Registradores|ALT_INV_registrador~27_q\ <= NOT \processador|Registradores|registrador~27_q\;
\processador|Registradores|ALT_INV_registrador~19_q\ <= NOT \processador|Registradores|registrador~19_q\;
\processador|Registradores|ALT_INV_registrador~217_combout\ <= NOT \processador|Registradores|registrador~217_combout\;
\processador|Registradores|ALT_INV_registrador~75_q\ <= NOT \processador|Registradores|registrador~75_q\;
\processador|Registradores|ALT_INV_registrador~67_q\ <= NOT \processador|Registradores|registrador~67_q\;
\processador|Registradores|ALT_INV_registrador~216_combout\ <= NOT \processador|Registradores|registrador~216_combout\;
\processador|Registradores|ALT_INV_registrador~34_q\ <= NOT \processador|Registradores|registrador~34_q\;
\processador|Registradores|ALT_INV_registrador~26_q\ <= NOT \processador|Registradores|registrador~26_q\;
\processador|Registradores|ALT_INV_registrador~18_q\ <= NOT \processador|Registradores|registrador~18_q\;
\processador|Registradores|ALT_INV_registrador~215_combout\ <= NOT \processador|Registradores|registrador~215_combout\;
\processador|Registradores|ALT_INV_registrador~74_q\ <= NOT \processador|Registradores|registrador~74_q\;
\processador|Registradores|ALT_INV_registrador~66_q\ <= NOT \processador|Registradores|registrador~66_q\;
\processador|Registradores|ALT_INV_registrador~214_combout\ <= NOT \processador|Registradores|registrador~214_combout\;
\processador|Registradores|ALT_INV_registrador~33_q\ <= NOT \processador|Registradores|registrador~33_q\;
\processador|Registradores|ALT_INV_registrador~25_q\ <= NOT \processador|Registradores|registrador~25_q\;
\processador|Registradores|ALT_INV_registrador~17_q\ <= NOT \processador|Registradores|registrador~17_q\;
\processador|Registradores|ALT_INV_registrador~213_combout\ <= NOT \processador|Registradores|registrador~213_combout\;
\processador|Registradores|ALT_INV_registrador~73_q\ <= NOT \processador|Registradores|registrador~73_q\;
\processador|Registradores|ALT_INV_registrador~65_q\ <= NOT \processador|Registradores|registrador~65_q\;
\processador|Registradores|ALT_INV_registrador~212_combout\ <= NOT \processador|Registradores|registrador~212_combout\;
\processador|Registradores|ALT_INV_registrador~32_q\ <= NOT \processador|Registradores|registrador~32_q\;
\processador|Registradores|ALT_INV_registrador~24_q\ <= NOT \processador|Registradores|registrador~24_q\;
\processador|Registradores|ALT_INV_registrador~16_q\ <= NOT \processador|Registradores|registrador~16_q\;
\processador|Registradores|ALT_INV_registrador~211_combout\ <= NOT \processador|Registradores|registrador~211_combout\;
\processador|Registradores|ALT_INV_registrador~72_q\ <= NOT \processador|Registradores|registrador~72_q\;
\processador|Registradores|ALT_INV_registrador~64_q\ <= NOT \processador|Registradores|registrador~64_q\;
\processador|Registradores|ALT_INV_registrador~210_combout\ <= NOT \processador|Registradores|registrador~210_combout\;
\processador|Registradores|ALT_INV_registrador~31_q\ <= NOT \processador|Registradores|registrador~31_q\;
\processador|Registradores|ALT_INV_registrador~23_q\ <= NOT \processador|Registradores|registrador~23_q\;
\processador|Registradores|ALT_INV_registrador~15_q\ <= NOT \processador|Registradores|registrador~15_q\;
\processador|Registradores|ALT_INV_registrador~209_combout\ <= NOT \processador|Registradores|registrador~209_combout\;
\processador|Registradores|ALT_INV_registrador~71_q\ <= NOT \processador|Registradores|registrador~71_q\;
\processador|Registradores|ALT_INV_registrador~63_q\ <= NOT \processador|Registradores|registrador~63_q\;
\processador|Registradores|ALT_INV_registrador~208_combout\ <= NOT \processador|Registradores|registrador~208_combout\;
\processador|Registradores|ALT_INV_registrador~30_q\ <= NOT \processador|Registradores|registrador~30_q\;
\processador|Registradores|ALT_INV_registrador~22_q\ <= NOT \processador|Registradores|registrador~22_q\;
\processador|Registradores|ALT_INV_registrador~14_q\ <= NOT \processador|Registradores|registrador~14_q\;
\processador|Registradores|ALT_INV_registrador~207_combout\ <= NOT \processador|Registradores|registrador~207_combout\;
\processador|Registradores|ALT_INV_registrador~70_q\ <= NOT \processador|Registradores|registrador~70_q\;
\processador|Registradores|ALT_INV_registrador~62_q\ <= NOT \processador|Registradores|registrador~62_q\;
\processador|Registradores|ALT_INV_registrador~206_combout\ <= NOT \processador|Registradores|registrador~206_combout\;
\processador|Registradores|ALT_INV_registrador~29_q\ <= NOT \processador|Registradores|registrador~29_q\;
\processador|Registradores|ALT_INV_registrador~21_q\ <= NOT \processador|Registradores|registrador~21_q\;
\processador|Registradores|ALT_INV_registrador~13_q\ <= NOT \processador|Registradores|registrador~13_q\;
\processador|Registradores|ALT_INV_registrador~205_combout\ <= NOT \processador|Registradores|registrador~205_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~q\ <= NOT \interfaceBaseTempo|passouUmSegundo~q\;
\processador|Registradores|ALT_INV_registrador~69_q\ <= NOT \processador|Registradores|registrador~69_q\;
\processador|Registradores|ALT_INV_registrador~61_q\ <= NOT \processador|Registradores|registrador~61_q\;
\processador|ROM|ALT_INV_memROM~22_combout\ <= NOT \processador|ROM|memROM~22_combout\;
\processador|ROM|ALT_INV_memROM~21_combout\ <= NOT \processador|ROM|memROM~21_combout\;
\processador|Registradores|ALT_INV_registrador~100_q\ <= NOT \processador|Registradores|registrador~100_q\;
\processador|Registradores|ALT_INV_registrador~84_q\ <= NOT \processador|Registradores|registrador~84_q\;
\processador|Registradores|ALT_INV_registrador~92_q\ <= NOT \processador|Registradores|registrador~92_q\;
\processador|Registradores|ALT_INV_registrador~99_q\ <= NOT \processador|Registradores|registrador~99_q\;
\processador|Registradores|ALT_INV_registrador~83_q\ <= NOT \processador|Registradores|registrador~83_q\;
\processador|Registradores|ALT_INV_registrador~91_q\ <= NOT \processador|Registradores|registrador~91_q\;
\processador|Registradores|ALT_INV_registrador~98_q\ <= NOT \processador|Registradores|registrador~98_q\;
\processador|Registradores|ALT_INV_registrador~82_q\ <= NOT \processador|Registradores|registrador~82_q\;
\processador|Registradores|ALT_INV_registrador~90_q\ <= NOT \processador|Registradores|registrador~90_q\;
\processador|Registradores|ALT_INV_registrador~97_q\ <= NOT \processador|Registradores|registrador~97_q\;
\processador|Registradores|ALT_INV_registrador~81_q\ <= NOT \processador|Registradores|registrador~81_q\;
\processador|Registradores|ALT_INV_registrador~89_q\ <= NOT \processador|Registradores|registrador~89_q\;
\processador|Registradores|ALT_INV_registrador~96_q\ <= NOT \processador|Registradores|registrador~96_q\;
\processador|Registradores|ALT_INV_registrador~80_q\ <= NOT \processador|Registradores|registrador~80_q\;
\processador|Registradores|ALT_INV_registrador~88_q\ <= NOT \processador|Registradores|registrador~88_q\;
\processador|Registradores|ALT_INV_registrador~95_q\ <= NOT \processador|Registradores|registrador~95_q\;
\processador|Registradores|ALT_INV_registrador~79_q\ <= NOT \processador|Registradores|registrador~79_q\;
\processador|Registradores|ALT_INV_registrador~87_q\ <= NOT \processador|Registradores|registrador~87_q\;
\processador|Registradores|ALT_INV_registrador~94_q\ <= NOT \processador|Registradores|registrador~94_q\;
\processador|Registradores|ALT_INV_registrador~78_q\ <= NOT \processador|Registradores|registrador~78_q\;
\processador|Registradores|ALT_INV_registrador~86_q\ <= NOT \processador|Registradores|registrador~86_q\;
\processador|Registradores|ALT_INV_registrador~93_q\ <= NOT \processador|Registradores|registrador~93_q\;
\processador|UC|ALT_INV_Equal3~0_combout\ <= NOT \processador|UC|Equal3~0_combout\;
\processador|Registradores|ALT_INV_registrador~77_q\ <= NOT \processador|Registradores|registrador~77_q\;
\processador|Registradores|ALT_INV_registrador~85_q\ <= NOT \processador|Registradores|registrador~85_q\;
\processador|ROM|ALT_INV_memROM~20_combout\ <= NOT \processador|ROM|memROM~20_combout\;
\processador|flipflop|ALT_INV_data_out~q\ <= NOT \processador|flipflop|data_out~q\;
\processador|Registradores|ALT_INV_registrador~35DUPLICATE_q\ <= NOT \processador|Registradores|registrador~35DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~19DUPLICATE_q\ <= NOT \processador|Registradores|registrador~19DUPLICATE_q\;
\interfaceBaseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \interfaceBaseTempo|contador[11]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\processador|ROM|ALT_INV_memROM~28_combout\ <= NOT \processador|ROM|memROM~28_combout\;
\processador|ROM|ALT_INV_memROM~27_combout\ <= NOT \processador|ROM|memROM~27_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~6_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~5_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~5_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~4_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~4_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~3_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~3_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~2_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~2_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~1_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~1_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~0_combout\;
\processador|Registradores|ALT_INV_registrador~223_combout\ <= NOT \processador|Registradores|registrador~223_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \processador|MUX_ULA|saida_MUX[1]~1_combout\;
\processador|ROM|ALT_INV_memROM~26_combout\ <= NOT \processador|ROM|memROM~26_combout\;
\processador|ROM|ALT_INV_memROM~25_combout\ <= NOT \processador|ROM|memROM~25_combout\;
\processador|UC|ALT_INV_palavraControle\(5) <= NOT \processador|UC|palavraControle\(5);
\processador|ROM|ALT_INV_memROM~24_combout\ <= NOT \processador|ROM|memROM~24_combout\;

-- Location: IOOBUF_X54_Y15_N5
\BarramentoEntrada_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|saida[0]~10_combout\,
	oe => \interfaceChaves|saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(0));

-- Location: IOOBUF_X43_Y45_N19
\BarramentoEntrada_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(1));

-- Location: IOOBUF_X54_Y21_N56
\BarramentoEntrada_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(2));

-- Location: IOOBUF_X44_Y45_N2
\BarramentoEntrada_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(3));

-- Location: IOOBUF_X48_Y45_N36
\BarramentoEntrada_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(4));

-- Location: IOOBUF_X36_Y45_N2
\BarramentoEntrada_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(5));

-- Location: IOOBUF_X52_Y45_N2
\BarramentoEntrada_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(6));

-- Location: IOOBUF_X36_Y45_N36
\BarramentoEntrada_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(7));

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X24_Y0_N2
\habilita_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|ALT_INV_LessThan0~1_combout\,
	devoe => ww_devoe,
	o => ww_habilita_t(0));

-- Location: IOOBUF_X23_Y0_N93
\habilita_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|ALT_INV_habilita[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_habilita_t(1));

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X14_Y45_N53
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

-- Location: IOOBUF_X10_Y45_N2
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

-- Location: IOOBUF_X38_Y45_N19
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

-- Location: IOOBUF_X8_Y45_N76
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

-- Location: IOOBUF_X14_Y45_N19
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X32_Y45_N93
\habilitahex_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habilitahex_t(2));

-- Location: IOOBUF_X10_Y45_N19
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X34_Y45_N53
\habilitahex_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal6~1_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(6));

-- Location: IOOBUF_X0_Y18_N96
\habilitahex_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(7));

-- Location: IOOBUF_X25_Y0_N53
\BarramentoSaida_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~141_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(0));

-- Location: IOOBUF_X25_Y0_N2
\BarramentoSaida_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~145_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(1));

-- Location: IOOBUF_X24_Y0_N19
\BarramentoSaida_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~149_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(2));

-- Location: IOOBUF_X54_Y14_N45
\BarramentoSaida_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~153_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(3));

-- Location: IOOBUF_X50_Y0_N2
\BarramentoSaida_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~157_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(4));

-- Location: IOOBUF_X19_Y0_N19
\BarramentoSaida_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~161_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(5));

-- Location: IOOBUF_X23_Y0_N42
\BarramentoSaida_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~165_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(6));

-- Location: IOOBUF_X34_Y45_N2
\BarramentoSaida_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~169_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(7));

-- Location: IOOBUF_X29_Y0_N53
\enderecoRAMROM_DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~9_combout\,
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
	i => \processador|ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(1));

-- Location: IOOBUF_X25_Y0_N36
\enderecoRAMROM_DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(2));

-- Location: IOOBUF_X24_Y0_N36
\enderecoRAMROM_DEBUG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(3));

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X25_Y0_N19
\enderecoRAMROM_DEBUG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(6));

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X19_Y0_N36
\ULA_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(0));

-- Location: IOOBUF_X36_Y45_N19
\ULA_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(1));

-- Location: IOOBUF_X22_Y0_N36
\ULA_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(2));

-- Location: IOOBUF_X54_Y14_N79
\ULA_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(3));

-- Location: IOOBUF_X36_Y45_N53
\ULA_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(4));

-- Location: IOOBUF_X54_Y15_N22
\ULA_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(5));

-- Location: IOOBUF_X34_Y45_N36
\ULA_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(6));

-- Location: IOOBUF_X24_Y0_N53
\ULA_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ULA_t(7));

-- Location: IOOBUF_X23_Y0_N59
\opcode_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|ALT_INV_memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(0));

-- Location: IOOBUF_X23_Y0_N76
\opcode_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(1));

-- Location: IOOBUF_X19_Y0_N2
\opcode_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~19_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(2));

-- Location: IOOBUF_X38_Y0_N2
\opcode_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(3));

-- Location: IOOBUF_X34_Y45_N19
\habBaseTempo_t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal6~1_combout\,
	devoe => ww_devoe,
	o => ww_habBaseTempo_t);

-- Location: IOOBUF_X0_Y18_N45
\LimpaBaseTempo_t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_LimpaBaseTempo_t);

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

-- Location: LABCELL_X32_Y4_N30
\interfaceBaseTempo|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~105_sumout\ = SUM(( \interfaceBaseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \interfaceBaseTempo|Add0~106\ = CARRY(( \interfaceBaseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(0),
	cin => GND,
	sumout => \interfaceBaseTempo|Add0~105_sumout\,
	cout => \interfaceBaseTempo|Add0~106\);

-- Location: LABCELL_X35_Y4_N30
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

-- Location: LABCELL_X35_Y4_N33
\processador|inc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|inc|Add0~2\ ))
-- \processador|inc|Add0~6\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|inc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|inc|Add0~2\,
	sumout => \processador|inc|Add0~5_sumout\,
	cout => \processador|inc|Add0~6\);

-- Location: LABCELL_X35_Y3_N48
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X35_Y4_N52
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X35_Y4_N39
\processador|inc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|inc|Add0~10\ ))
-- \processador|inc|Add0~14\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|inc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|inc|Add0~10\,
	sumout => \processador|inc|Add0~13_sumout\,
	cout => \processador|inc|Add0~14\);

-- Location: LABCELL_X35_Y4_N42
\processador|inc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|inc|Add0~14\ ))
-- \processador|inc|Add0~18\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|inc|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|inc|Add0~14\,
	sumout => \processador|inc|Add0~17_sumout\,
	cout => \processador|inc|Add0~18\);

-- Location: FF_X35_Y4_N44
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X35_Y4_N45
\processador|inc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|inc|Add0~18\ ))
-- \processador|inc|Add0~22\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|inc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|inc|Add0~18\,
	sumout => \processador|inc|Add0~21_sumout\,
	cout => \processador|inc|Add0~22\);

-- Location: FF_X35_Y4_N46
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X35_Y4_N48
\processador|inc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|inc|Add0~22\ ))
-- \processador|inc|Add0~26\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|inc|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|inc|Add0~22\,
	sumout => \processador|inc|Add0~25_sumout\,
	cout => \processador|inc|Add0~26\);

-- Location: FF_X35_Y4_N34
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~5_sumout\,
	asdata => \processador|ROM|memROM~10_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y5_N12
\processador|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~6_combout\ = ( !\processador|PC|DOUT\(4) & ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT\(0))) ) ) ) # ( \processador|PC|DOUT\(4) & ( 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(0),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~6_combout\);

-- Location: FF_X35_Y4_N47
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X35_Y4_N49
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~25_sumout\,
	asdata => \processador|ROM|memROM~7_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y5_N0
\processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~5_combout\ = ( !\processador|PC|DOUT[6]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~5_combout\);

-- Location: MLABCELL_X34_Y5_N9
\processador|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~7_combout\ = ( \processador|ROM|memROM~5_combout\ & ( \processador|ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~6_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|ROM|memROM~7_combout\);

-- Location: FF_X35_Y4_N50
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~25_sumout\,
	asdata => \processador|ROM|memROM~7_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X35_Y4_N51
\processador|inc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|inc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|inc|Add0~26\,
	sumout => \processador|inc|Add0~29_sumout\);

-- Location: FF_X35_Y4_N53
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N27
\processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~3_combout\ = ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~3_combout\);

-- Location: LABCELL_X35_Y4_N6
\processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~1_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) $ (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(1) & 
-- (!\processador|PC|DOUT\(3) $ (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|ROM|memROM~1_combout\);

-- Location: LABCELL_X35_Y4_N12
\processador|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~11_combout\ = ( \processador|ROM|memROM~1_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|ROM|memROM~11_combout\);

-- Location: FF_X35_Y4_N38
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~9_sumout\,
	asdata => \processador|ROM|memROM~11_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X35_Y4_N31
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~1_sumout\,
	asdata => \processador|ROM|memROM~9_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N21
\processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~0_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) $ (!\processador|PC|DOUT[2]~DUPLICATE_q\))) # (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) & 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010001000011001101000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~0_combout\);

-- Location: MLABCELL_X34_Y4_N39
\processador|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~10_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~10_combout\);

-- Location: FF_X35_Y4_N35
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~5_sumout\,
	asdata => \processador|ROM|memROM~10_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X35_Y4_N36
\processador|inc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|inc|Add0~6\ ))
-- \processador|inc|Add0~10\ = CARRY(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|inc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(2),
	cin => \processador|inc|Add0~6\,
	sumout => \processador|inc|Add0~9_sumout\,
	cout => \processador|inc|Add0~10\);

-- Location: FF_X35_Y4_N37
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~9_sumout\,
	asdata => \processador|ROM|memROM~11_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: MLABCELL_X34_Y4_N36
\processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~2_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(3)) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & ((\processador|PC|DOUT[2]~DUPLICATE_q\) 
-- # (\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~2_combout\);

-- Location: MLABCELL_X34_Y4_N9
\processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~4_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~4_combout\);

-- Location: FF_X35_Y4_N41
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~13_sumout\,
	asdata => \processador|ROM|memROM~4_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X35_Y5_N57
\processador|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~14_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(1) $ (((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT\(3) & ((\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~14_combout\);

-- Location: LABCELL_X35_Y5_N54
\processador|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~15_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~14_combout\ ) ) # ( !\processador|ROM|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~14_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~15_combout\);

-- Location: FF_X35_Y4_N43
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y5_N12
\processador|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~16_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( 
-- \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT[2]~DUPLICATE_q\))) # (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1)) # 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT[2]~DUPLICATE_q\))) # (\processador|PC|DOUT\(3) & 
-- (\processador|PC|DOUT\(1) & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111111000000111111000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~16_combout\);

-- Location: LABCELL_X35_Y5_N36
\processador|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~17_combout\ = ( \processador|ROM|memROM~16_combout\ & ( \processador|ROM|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~16_combout\,
	combout => \processador|ROM|memROM~17_combout\);

-- Location: LABCELL_X35_Y5_N30
\processador|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~18_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( 
-- \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) $ (\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(1)) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(3) $ (((!\processador|PC|DOUT\(1) & \processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111100111100110011111111000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~18_combout\);

-- Location: MLABCELL_X34_Y5_N45
\processador|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~19_combout\ = ( \processador|ROM|memROM~5_combout\ & ( \processador|ROM|memROM~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|ROM|memROM~19_combout\);

-- Location: LABCELL_X35_Y4_N18
\processador|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~12_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(3) & 
-- (\processador|PC|DOUT\(1) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|ROM|memROM~12_combout\);

-- Location: LABCELL_X35_Y4_N57
\processador|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~13_combout\ = (\processador|ROM|memROM~12_combout\ & \processador|ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~13_combout\);

-- Location: LABCELL_X35_Y5_N3
\processador|UC|palavraControle[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|palavraControle[3]~0_combout\ = (!\processador|ROM|memROM~19_combout\ & ((!\processador|ROM|memROM~17_combout\ & (\processador|ROM|memROM~13_combout\ & \processador|ROM|memROM~15_combout\)) # (\processador|ROM|memROM~17_combout\ & 
-- (!\processador|ROM|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001000010000000100100001000000010010000100000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~17_combout\,
	datab => \processador|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~15_combout\,
	combout => \processador|UC|palavraControle[3]~0_combout\);

-- Location: LABCELL_X36_Y5_N45
\processador|UC|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal3~0_combout\ = ( \processador|ROM|memROM~16_combout\ & ( \processador|ROM|memROM~12_combout\ & ( (\processador|PC|DOUT[4]~DUPLICATE_q\ & (\processador|ROM|memROM~5_combout\ & !\processador|ROM|memROM~18_combout\)) ) ) ) # ( 
-- \processador|ROM|memROM~16_combout\ & ( !\processador|ROM|memROM~12_combout\ & ( (\processador|ROM|memROM~5_combout\ & (!\processador|ROM|memROM~18_combout\ & ((\processador|ROM|memROM~14_combout\) # (\processador|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110000000000000000000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \processador|ROM|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM|ALT_INV_memROM~18_combout\,
	datae => \processador|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|UC|Equal3~0_combout\);

-- Location: LABCELL_X35_Y4_N54
\processador|ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~21_combout\ = ( \processador|PC|DOUT\(3) & ( (\processador|ROM|memROM~3_combout\ & ((!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & \processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(0) & 
-- (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[2]~DUPLICATE_q\)))) ) ) # ( !\processador|PC|DOUT\(3) & ( (\processador|ROM|memROM~3_combout\ & (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000010000000001000001000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~21_combout\);

-- Location: LABCELL_X35_Y4_N15
\processador|ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~22_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(3) $ (!\processador|PC|DOUT[2]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(1) & 
-- (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010000110000001001000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~22_combout\);

-- Location: LABCELL_X36_Y4_N27
\Decoder|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~0_combout\ = ( \processador|ROM|memROM~0_combout\ & ( (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & !\processador|PC|DOUT[6]~DUPLICATE_q\)) ) ) # ( !\processador|ROM|memROM~0_combout\ & ( 
-- (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & \processador|ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(5),
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Decoder|LessThan0~0_combout\);

-- Location: MLABCELL_X34_Y4_N48
\Decoder|habilita[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~0_combout\ = ( !\processador|PC|DOUT\(4) & ( \processador|ROM|memROM~1_combout\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) & (!\processador|ROM|memROM~0_combout\ & !\processador|PC|DOUT\(6)))) ) ) ) # ( 
-- !\processador|PC|DOUT\(4) & ( !\processador|ROM|memROM~1_combout\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) & (\processador|ROM|memROM~0_combout\ & !\processador|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(6),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \Decoder|habilita[1]~0_combout\);

-- Location: MLABCELL_X34_Y5_N48
\Decoder|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~0_combout\ = ( \processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~1_combout\ & ( (!\processador|PC|DOUT\(4) & (\processador|ROM|memROM~2_combout\ & (\processador|ROM|memROM~5_combout\ & !\processador|ROM|memROM~6_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \processador|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|ROM|ALT_INV_memROM~6_combout\,
	datae => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \Decoder|Equal6~0_combout\);

-- Location: LABCELL_X35_Y4_N0
\interfaceChaves|saida[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~11_combout\ = ( \processador|ROM|memROM~7_combout\ & ( \Decoder|Equal6~0_combout\ & ( !\processador|ROM|memROM~9_combout\ ) ) ) # ( !\processador|ROM|memROM~7_combout\ & ( \Decoder|Equal6~0_combout\ & ( 
-- (!\Decoder|LessThan0~0_combout\) # (((!\processador|ROM|memROM~9_combout\) # (!\processador|ROM|memROM~4_combout\)) # (\Decoder|habilita[1]~0_combout\)) ) ) ) # ( !\processador|ROM|memROM~7_combout\ & ( !\Decoder|Equal6~0_combout\ & ( 
-- (!\Decoder|LessThan0~0_combout\) # ((!\processador|ROM|memROM~4_combout\) # (\Decoder|habilita[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011000000000000000011111111111110111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_LessThan0~0_combout\,
	datab => \Decoder|ALT_INV_habilita[1]~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~9_combout\,
	datad => \processador|ROM|ALT_INV_memROM~4_combout\,
	datae => \processador|ROM|ALT_INV_memROM~7_combout\,
	dataf => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \interfaceChaves|saida[0]~11_combout\);

-- Location: LABCELL_X36_Y5_N6
\processador|UC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal5~0_combout\ = ( \processador|ROM|memROM~16_combout\ & ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~12_combout\ & (!\processador|ROM|memROM~14_combout\ & (\processador|ROM|memROM~18_combout\ & 
-- !\processador|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~12_combout\,
	datab => \processador|ROM|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM|ALT_INV_memROM~18_combout\,
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \processador|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|UC|Equal5~0_combout\);

-- Location: LABCELL_X36_Y5_N48
\processador|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[4]~4_combout\ = ( \processador|ULA|Add0~17_sumout\ & ( ((!\interfaceChaves|saida[0]~11_combout\ & !\processador|UC|Equal5~0_combout\)) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( 
-- !\processador|ULA|Add0~17_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\interfaceChaves|saida[0]~11_combout\ & !\processador|UC|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~17_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X36_Y3_N33
\processador|ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~23_combout\ = ( \processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT\(0))) ) ) # ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- \processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(0),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~23_combout\);

-- Location: LABCELL_X35_Y3_N57
\processador|ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~24_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT\(3)) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & 
-- (!\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(0) & ((\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001111110000000000111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~24_combout\);

-- Location: LABCELL_X36_Y3_N27
\processador|Registradores|registrador~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~223_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (\processador|ROM|memROM~23_combout\ & !\processador|ROM|memROM~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|ROM|ALT_INV_memROM~24_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|Registradores|registrador~223_combout\);

-- Location: LABCELL_X35_Y5_N9
\processador|UC|palavraControle[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|palavraControle\(5) = ( !\processador|ROM|memROM~12_combout\ & ( \processador|ROM|memROM~18_combout\ & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|ROM|memROM~14_combout\ & (\processador|ROM|memROM~16_combout\ & 
-- \processador|ROM|memROM~5_combout\))) ) ) ) # ( \processador|ROM|memROM~12_combout\ & ( !\processador|ROM|memROM~18_combout\ & ( (\processador|PC|DOUT[4]~DUPLICATE_q\ & (\processador|ROM|memROM~16_combout\ & \processador|ROM|memROM~5_combout\)) ) ) ) # ( 
-- !\processador|ROM|memROM~12_combout\ & ( !\processador|ROM|memROM~18_combout\ & ( (\processador|ROM|memROM~5_combout\ & (((!\processador|PC|DOUT[4]~DUPLICATE_q\ & !\processador|ROM|memROM~14_combout\)) # (\processador|ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001111000000000000010100000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \processador|ROM|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM|ALT_INV_memROM~16_combout\,
	datad => \processador|ROM|ALT_INV_memROM~5_combout\,
	datae => \processador|ROM|ALT_INV_memROM~12_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|UC|palavraControle\(5));

-- Location: LABCELL_X35_Y3_N42
\processador|ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~25_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~25_combout\);

-- Location: LABCELL_X35_Y3_N15
\processador|Registradores|registrador~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~225_combout\ = ( \processador|ROM|memROM~25_combout\ & ( (\processador|Registradores|registrador~223_combout\ & (!\processador|ROM|memROM~10_combout\ & \processador|UC|palavraControle\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~223_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|UC|ALT_INV_palavraControle\(5),
	dataf => \processador|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|Registradores|registrador~225_combout\);

-- Location: FF_X35_Y4_N56
\processador|Registradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~65_q\);

-- Location: LABCELL_X36_Y3_N0
\processador|Registradores|registrador~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~226_combout\ = ( \processador|UC|palavraControle\(5) & ( \processador|ROM|memROM~24_combout\ & ( (\processador|ROM|memROM~23_combout\ & (\processador|ROM|memROM~25_combout\ & (\processador|ROM|memROM~3_combout\ & 
-- !\processador|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \processador|ROM|ALT_INV_memROM~0_combout\,
	datae => \processador|UC|ALT_INV_palavraControle\(5),
	dataf => \processador|ROM|ALT_INV_memROM~24_combout\,
	combout => \processador|Registradores|registrador~226_combout\);

-- Location: FF_X36_Y3_N38
\processador|Registradores|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~73_q\);

-- Location: LABCELL_X36_Y4_N57
\processador|Registradores|registrador~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~213_combout\ = ( \processador|ROM|memROM~21_combout\ & ( (!\processador|ROM|memROM~22_combout\ & (\processador|Registradores|registrador~65_q\)) # (\processador|ROM|memROM~22_combout\ & 
-- ((\processador|Registradores|registrador~73_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~65_q\,
	datad => \processador|Registradores|ALT_INV_registrador~73_q\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~213_combout\);

-- Location: LABCELL_X36_Y3_N15
\processador|Registradores|registrador~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~227_combout\ = ( \processador|UC|palavraControle\(5) & ( \processador|ROM|memROM~24_combout\ & ( (!\processador|ROM|memROM~3_combout\ & !\processador|ROM|memROM~25_combout\) ) ) ) # ( 
-- \processador|UC|palavraControle\(5) & ( !\processador|ROM|memROM~24_combout\ & ( (!\processador|ROM|memROM~25_combout\ & ((!\processador|ROM|memROM~3_combout\) # ((!\processador|ROM|memROM~0_combout\ & !\processador|ROM|memROM~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010001000100000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|UC|ALT_INV_palavraControle\(5),
	dataf => \processador|ROM|ALT_INV_memROM~24_combout\,
	combout => \processador|Registradores|registrador~227_combout\);

-- Location: FF_X36_Y5_N8
\processador|Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~17_q\);

-- Location: LABCELL_X36_Y3_N39
\processador|Registradores|registrador~228\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~228_combout\ = ( \processador|UC|palavraControle\(5) & ( \processador|ROM|memROM~3_combout\ & ( (\processador|ROM|memROM~24_combout\ & (!\processador|ROM|memROM~25_combout\ & (!\processador|ROM|memROM~0_combout\ & 
-- !\processador|ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~24_combout\,
	datab => \processador|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|UC|ALT_INV_palavraControle\(5),
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|Registradores|registrador~228_combout\);

-- Location: FF_X36_Y5_N35
\processador|Registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~25_q\);

-- Location: LABCELL_X35_Y3_N12
\processador|Registradores|registrador~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~229_combout\ = ( !\processador|ROM|memROM~25_combout\ & ( (!\processador|ROM|memROM~10_combout\ & (\processador|UC|palavraControle\(5) & \processador|Registradores|registrador~223_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|Registradores|ALT_INV_registrador~223_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|Registradores|registrador~229_combout\);

-- Location: FF_X36_Y5_N50
\processador|Registradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~33_q\);

-- Location: LABCELL_X36_Y5_N33
\processador|Registradores|registrador~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~214_combout\ = ( \processador|Registradores|registrador~33_q\ & ( (!\processador|ROM|memROM~22_combout\ & (((\processador|Registradores|registrador~17_q\)) # (\processador|ROM|memROM~21_combout\))) # 
-- (\processador|ROM|memROM~22_combout\ & (!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~25_q\)))) ) ) # ( !\processador|Registradores|registrador~33_q\ & ( (!\processador|ROM|memROM~21_combout\ & 
-- ((!\processador|ROM|memROM~22_combout\ & (\processador|Registradores|registrador~17_q\)) # (\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~25_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~22_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~17_q\,
	datad => \processador|Registradores|ALT_INV_registrador~25_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~33_q\,
	combout => \processador|Registradores|registrador~214_combout\);

-- Location: LABCELL_X36_Y3_N18
\processador|Registradores|registrador~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~222_combout\ = ( \processador|UC|palavraControle\(5) & ( \processador|ROM|memROM~3_combout\ & ( (!\processador|ROM|memROM~24_combout\ & (!\processador|ROM|memROM~25_combout\ & (!\processador|ROM|memROM~23_combout\ & 
-- \processador|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~24_combout\,
	datab => \processador|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|ROM|ALT_INV_memROM~0_combout\,
	datae => \processador|UC|ALT_INV_palavraControle\(5),
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|Registradores|registrador~222_combout\);

-- Location: FF_X37_Y5_N25
\processador|Registradores|registrador~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~81_q\);

-- Location: LABCELL_X35_Y4_N9
\processador|ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~28_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(1) & 
-- (\processador|PC|DOUT\(3) & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~28_combout\);

-- Location: LABCELL_X35_Y4_N24
\processador|ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~20_combout\ = ( \processador|ROM|memROM~28_combout\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~28_combout\,
	combout => \processador|ROM|memROM~20_combout\);

-- Location: LABCELL_X35_Y3_N24
\processador|Registradores|registrador~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~221_combout\ = ( \processador|ROM|memROM~24_combout\ & ( !\processador|ROM|memROM~25_combout\ & ( (!\processador|ROM|memROM~23_combout\ & (\processador|ROM|memROM~0_combout\ & (\processador|UC|palavraControle\(5) & 
-- \processador|ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|ROM|ALT_INV_memROM~24_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|Registradores|registrador~221_combout\);

-- Location: FF_X35_Y5_N49
\processador|Registradores|registrador~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~89_q\);

-- Location: LABCELL_X36_Y3_N9
\processador|Registradores|registrador~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~224_combout\ = ( \processador|UC|palavraControle\(5) & ( (\processador|Registradores|registrador~223_combout\ & (!\processador|ROM|memROM~25_combout\ & \processador|ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~223_combout\,
	datac => \processador|ROM|ALT_INV_memROM~25_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \processador|UC|ALT_INV_palavraControle\(5),
	combout => \processador|Registradores|registrador~224_combout\);

-- Location: FF_X37_Y5_N32
\processador|Registradores|registrador~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~97_q\);

-- Location: LABCELL_X36_Y4_N24
\processador|ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~27_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(2) $ (\processador|PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(2) & 
-- \processador|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~27_combout\);

-- Location: LABCELL_X36_Y4_N30
\processador|ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~26_combout\ = ( !\processador|PC|DOUT[6]~DUPLICATE_q\ & ( \processador|ROM|memROM~27_combout\ & ( (!\processador|PC|DOUT\(7) & (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~27_combout\,
	combout => \processador|ROM|memROM~26_combout\);

-- Location: LABCELL_X36_Y5_N36
\processador|Registradores|registrador~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~189_combout\ = ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) # ( !\processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ & ( 
-- (\processador|Registradores|registrador~25_q\ & !\processador|ROM|memROM~20_combout\) ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~20_combout\ & 
-- (\processador|Registradores|registrador~17_q\)) # (\processador|ROM|memROM~20_combout\ & ((\processador|Registradores|registrador~33_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000000000001010101000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~25_q\,
	datab => \processador|Registradores|ALT_INV_registrador~17_q\,
	datac => \processador|Registradores|ALT_INV_registrador~33_q\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~189_combout\);

-- Location: MLABCELL_X37_Y5_N30
\processador|Registradores|registrador~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~157_combout\ = ( \processador|Registradores|registrador~97_q\ & ( \processador|Registradores|registrador~189_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((!\processador|ROM|memROM~20_combout\ & 
-- \processador|Registradores|registrador~89_q\)) ) ) ) # ( !\processador|Registradores|registrador~97_q\ & ( \processador|Registradores|registrador~189_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((!\processador|ROM|memROM~20_combout\ & 
-- \processador|Registradores|registrador~89_q\)) ) ) ) # ( \processador|Registradores|registrador~97_q\ & ( !\processador|Registradores|registrador~189_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((\processador|ROM|memROM~20_combout\) # 
-- (\processador|Registradores|registrador~81_q\))) ) ) ) # ( !\processador|Registradores|registrador~97_q\ & ( !\processador|Registradores|registrador~189_combout\ & ( (\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~81_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000101010001010110101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~81_q\,
	datac => \processador|ROM|ALT_INV_memROM~20_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~89_q\,
	datae => \processador|Registradores|ALT_INV_registrador~97_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~189_combout\,
	combout => \processador|Registradores|registrador~157_combout\);

-- Location: FF_X36_Y4_N50
\processador|Registradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~32_q\);

-- Location: FF_X36_Y4_N38
\processador|Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~16_q\);

-- Location: FF_X36_Y4_N14
\processador|Registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~24_q\);

-- Location: LABCELL_X36_Y4_N18
\processador|Registradores|registrador~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~212_combout\ = ( \processador|Registradores|registrador~24_q\ & ( (!\processador|ROM|memROM~21_combout\ & (((\processador|Registradores|registrador~16_q\)) # (\processador|ROM|memROM~22_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (!\processador|ROM|memROM~22_combout\ & (\processador|Registradores|registrador~32_q\))) ) ) # ( !\processador|Registradores|registrador~24_q\ & ( (!\processador|ROM|memROM~22_combout\ & 
-- ((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~32_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~21_combout\,
	datab => \processador|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~32_q\,
	datad => \processador|Registradores|ALT_INV_registrador~16_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~24_q\,
	combout => \processador|Registradores|registrador~212_combout\);

-- Location: FF_X34_Y4_N17
\processador|Registradores|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~88_q\);

-- Location: FF_X35_Y4_N14
\processador|Registradores|registrador~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~80_q\);

-- Location: FF_X37_Y4_N32
\processador|Registradores|registrador~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~96_q\);

-- Location: LABCELL_X36_Y4_N39
\processador|Registradores|registrador~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~185_combout\ = ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) # ( !\processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ & ( 
-- (\processador|Registradores|registrador~24_q\ & !\processador|ROM|memROM~20_combout\) ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~20_combout\ & 
-- ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~20_combout\ & (\processador|Registradores|registrador~32_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000000000000000110000001100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~32_q\,
	datab => \processador|Registradores|ALT_INV_registrador~24_q\,
	datac => \processador|ROM|ALT_INV_memROM~20_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~16_q\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~185_combout\);

-- Location: MLABCELL_X37_Y4_N30
\processador|Registradores|registrador~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~153_combout\ = ( \processador|Registradores|registrador~96_q\ & ( \processador|Registradores|registrador~185_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~88_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( !\processador|Registradores|registrador~96_q\ & ( \processador|Registradores|registrador~185_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~88_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( \processador|Registradores|registrador~96_q\ & ( !\processador|Registradores|registrador~185_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((\processador|ROM|memROM~20_combout\) # 
-- (\processador|Registradores|registrador~80_q\))) ) ) ) # ( !\processador|Registradores|registrador~96_q\ & ( !\processador|Registradores|registrador~185_combout\ & ( (\processador|Registradores|registrador~80_q\ & (\processador|ROM|memROM~13_combout\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000111111110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~88_q\,
	datab => \processador|Registradores|ALT_INV_registrador~80_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~96_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~185_combout\,
	combout => \processador|Registradores|registrador~153_combout\);

-- Location: FF_X36_Y4_N5
\processador|Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~15_q\);

-- Location: FF_X36_Y4_N8
\processador|Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~23_q\);

-- Location: FF_X36_Y4_N47
\processador|Registradores|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~31_q\);

-- Location: LABCELL_X36_Y4_N45
\processador|Registradores|registrador~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~210_combout\ = ( \processador|ROM|memROM~21_combout\ & ( (!\processador|ROM|memROM~22_combout\ & \processador|Registradores|registrador~31_q\) ) ) # ( !\processador|ROM|memROM~21_combout\ & ( 
-- (!\processador|ROM|memROM~22_combout\ & (\processador|Registradores|registrador~15_q\)) # (\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~23_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~15_q\,
	datab => \processador|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~23_q\,
	datad => \processador|Registradores|ALT_INV_registrador~31_q\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~210_combout\);

-- Location: FF_X35_Y4_N29
\processador|Registradores|registrador~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~79_q\);

-- Location: FF_X34_Y4_N59
\processador|Registradores|registrador~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~87_q\);

-- Location: FF_X37_Y4_N50
\processador|Registradores|registrador~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~95_q\);

-- Location: LABCELL_X36_Y4_N9
\processador|Registradores|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~181_combout\ = ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) # ( !\processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ & ( 
-- (\processador|Registradores|registrador~23_q\ & !\processador|ROM|memROM~20_combout\) ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~20_combout\ & 
-- (\processador|Registradores|registrador~15_q\)) # (\processador|ROM|memROM~20_combout\ & ((\processador|Registradores|registrador~31_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000000000001111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~15_q\,
	datab => \processador|Registradores|ALT_INV_registrador~31_q\,
	datac => \processador|Registradores|ALT_INV_registrador~23_q\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~181_combout\);

-- Location: MLABCELL_X37_Y4_N48
\processador|Registradores|registrador~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~149_combout\ = ( \processador|Registradores|registrador~95_q\ & ( \processador|Registradores|registrador~181_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~87_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( !\processador|Registradores|registrador~95_q\ & ( \processador|Registradores|registrador~181_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~87_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( \processador|Registradores|registrador~95_q\ & ( !\processador|Registradores|registrador~181_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((\processador|ROM|memROM~20_combout\) # 
-- (\processador|Registradores|registrador~79_q\))) ) ) ) # ( !\processador|Registradores|registrador~95_q\ & ( !\processador|Registradores|registrador~181_combout\ & ( (\processador|Registradores|registrador~79_q\ & (\processador|ROM|memROM~13_combout\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000111111110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~79_q\,
	datab => \processador|Registradores|ALT_INV_registrador~87_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~95_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~181_combout\,
	combout => \processador|Registradores|registrador~149_combout\);

-- Location: FF_X34_Y4_N4
\processador|Registradores|registrador~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~78_q\);

-- Location: FF_X34_Y4_N23
\processador|Registradores|registrador~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~86_q\);

-- Location: FF_X37_Y4_N2
\processador|Registradores|registrador~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~94_q\);

-- Location: FF_X36_Y4_N35
\processador|Registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~22_q\);

-- Location: FF_X36_Y4_N55
\processador|Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~14_q\);

-- Location: FF_X36_Y4_N20
\processador|Registradores|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~30_q\);

-- Location: LABCELL_X36_Y4_N15
\processador|Registradores|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~177_combout\ = ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) # ( !\processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ & ( 
-- (\processador|Registradores|registrador~22_q\ & !\processador|ROM|memROM~20_combout\) ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~20_combout\ & 
-- (\processador|Registradores|registrador~14_q\)) # (\processador|ROM|memROM~20_combout\ & ((\processador|Registradores|registrador~30_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000000000000000001010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~22_q\,
	datab => \processador|Registradores|ALT_INV_registrador~14_q\,
	datac => \processador|ROM|ALT_INV_memROM~20_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~30_q\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~177_combout\);

-- Location: MLABCELL_X37_Y4_N0
\processador|Registradores|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~145_combout\ = ( \processador|Registradores|registrador~94_q\ & ( \processador|Registradores|registrador~177_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~86_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( !\processador|Registradores|registrador~94_q\ & ( \processador|Registradores|registrador~177_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~86_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( \processador|Registradores|registrador~94_q\ & ( !\processador|Registradores|registrador~177_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((\processador|ROM|memROM~20_combout\) # 
-- (\processador|Registradores|registrador~78_q\))) ) ) ) # ( !\processador|Registradores|registrador~94_q\ & ( !\processador|Registradores|registrador~177_combout\ & ( (\processador|Registradores|registrador~78_q\ & (\processador|ROM|memROM~13_combout\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000111111110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~78_q\,
	datab => \processador|Registradores|ALT_INV_registrador~86_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~94_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~177_combout\,
	combout => \processador|Registradores|registrador~145_combout\);

-- Location: LABCELL_X36_Y4_N54
\processador|Registradores|registrador~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~208_combout\ = ( \processador|ROM|memROM~21_combout\ & ( (\processador|Registradores|registrador~30_q\ & !\processador|ROM|memROM~22_combout\) ) ) # ( !\processador|ROM|memROM~21_combout\ & ( 
-- (!\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~14_q\))) # (\processador|ROM|memROM~22_combout\ & (\processador|Registradores|registrador~22_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~30_q\,
	datab => \processador|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~22_q\,
	datad => \processador|Registradores|ALT_INV_registrador~14_q\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~208_combout\);

-- Location: FF_X35_Y3_N19
\processador|Registradores|registrador~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~85_q\);

-- Location: MLABCELL_X34_Y3_N51
\processador|Registradores|registrador~93feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~93feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \processador|Registradores|registrador~93feeder_combout\);

-- Location: FF_X34_Y3_N52
\processador|Registradores|registrador~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~93feeder_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~93_q\);

-- Location: FF_X35_Y5_N26
\processador|Registradores|registrador~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~77_q\);

-- Location: FF_X36_Y5_N11
\processador|Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~13_q\);

-- Location: FF_X36_Y5_N41
\processador|Registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~21_q\);

-- Location: FF_X35_Y3_N5
\processador|Registradores|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~29_q\);

-- Location: LABCELL_X35_Y5_N51
\processador|Registradores|registrador~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~173_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~29_q\ & !\processador|ROM|memROM~26_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~26_combout\ & (\processador|Registradores|registrador~13_q\)) # (\processador|ROM|memROM~26_combout\ & 
-- ((\processador|Registradores|registrador~21_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~13_q\,
	datab => \processador|Registradores|ALT_INV_registrador~21_q\,
	datac => \processador|Registradores|ALT_INV_registrador~29_q\,
	datad => \processador|ROM|ALT_INV_memROM~26_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~173_combout\);

-- Location: LABCELL_X35_Y5_N24
\processador|Registradores|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~141_combout\ = ( \processador|Registradores|registrador~77_q\ & ( \processador|Registradores|registrador~173_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~85_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( !\processador|Registradores|registrador~77_q\ & ( \processador|Registradores|registrador~173_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~85_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( \processador|Registradores|registrador~77_q\ & ( !\processador|Registradores|registrador~173_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((!\processador|ROM|memROM~20_combout\) # 
-- (\processador|Registradores|registrador~93_q\))) ) ) ) # ( !\processador|Registradores|registrador~77_q\ & ( !\processador|Registradores|registrador~173_combout\ & ( (\processador|Registradores|registrador~93_q\ & (\processador|ROM|memROM~13_combout\ & 
-- \processador|ROM|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001111110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~85_q\,
	datab => \processador|Registradores|ALT_INV_registrador~93_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~77_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~173_combout\,
	combout => \processador|Registradores|registrador~141_combout\);

-- Location: LABCELL_X36_Y5_N57
\processador|Registradores|registrador~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~206_combout\ = ( \processador|ROM|memROM~22_combout\ & ( (\processador|Registradores|registrador~21_q\ & !\processador|ROM|memROM~21_combout\) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( 
-- (!\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~13_q\)) # (\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~29_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~21_q\,
	datab => \processador|Registradores|ALT_INV_registrador~13_q\,
	datac => \processador|ROM|ALT_INV_memROM~21_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~29_q\,
	dataf => \processador|ROM|ALT_INV_memROM~22_combout\,
	combout => \processador|Registradores|registrador~206_combout\);

-- Location: MLABCELL_X37_Y5_N0
\processador|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~34_cout\ = CARRY(( !\processador|UC|Equal3~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_Equal3~0_combout\,
	cin => GND,
	cout => \processador|ULA|Add0~34_cout\);

-- Location: MLABCELL_X37_Y5_N3
\processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~1_sumout\ = SUM(( \processador|Registradores|registrador~141_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~206_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~205_combout\)))) ) + ( \processador|ULA|Add0~34_cout\ ))
-- \processador|ULA|Add0~2\ = CARRY(( \processador|Registradores|registrador~141_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~206_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~205_combout\)))) ) + ( \processador|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~205_combout\,
	datac => \processador|ROM|ALT_INV_memROM~21_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~206_combout\,
	cin => \processador|ULA|Add0~34_cout\,
	sumout => \processador|ULA|Add0~1_sumout\,
	cout => \processador|ULA|Add0~2\);

-- Location: LABCELL_X35_Y3_N9
\processador|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[0]~0_combout\ = ( \interfaceChaves|saida[0]~10_combout\ & ( \processador|ULA|Add0~1_sumout\ & ( (!\processador|UC|Equal5~0_combout\) # ((\processador|UC|palavraControle[3]~0_combout\) # (\processador|ROM|memROM~9_combout\)) 
-- ) ) ) # ( !\interfaceChaves|saida[0]~10_combout\ & ( \processador|ULA|Add0~1_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~11_combout\))) # (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~9_combout\))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) ) # ( \interfaceChaves|saida[0]~10_combout\ & ( !\processador|ULA|Add0~1_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\) # 
-- (\processador|ROM|memROM~9_combout\))) ) ) ) # ( !\interfaceChaves|saida[0]~10_combout\ & ( !\processador|ULA|Add0~1_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & 
-- ((!\interfaceChaves|saida[0]~11_combout\))) # (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000010000101100001011000010111111000111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal5~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	datae => \interfaceChaves|ALT_INV_saida[0]~10_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: FF_X36_Y3_N17
\processador|Registradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~69_q\);

-- Location: FF_X35_Y3_N28
\processador|Registradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~61_q\);

-- Location: LABCELL_X36_Y3_N30
\processador|Registradores|registrador~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~205_combout\ = ( \processador|ROM|memROM~21_combout\ & ( (!\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~61_q\))) # (\processador|ROM|memROM~22_combout\ & 
-- (\processador|Registradores|registrador~69_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~69_q\,
	datac => \processador|Registradores|ALT_INV_registrador~61_q\,
	datad => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~205_combout\);

-- Location: MLABCELL_X37_Y5_N6
\processador|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~5_sumout\ = SUM(( \processador|Registradores|registrador~145_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~208_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~207_combout\)))) ) + ( \processador|ULA|Add0~2\ ))
-- \processador|ULA|Add0~6\ = CARRY(( \processador|Registradores|registrador~145_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~208_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~207_combout\)))) ) + ( \processador|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~207_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~208_combout\,
	cin => \processador|ULA|Add0~2\,
	sumout => \processador|ULA|Add0~5_sumout\,
	cout => \processador|ULA|Add0~6\);

-- Location: LABCELL_X36_Y4_N0
\processador|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[1]~1_combout\ = ( \processador|ULA|Add0~5_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~11_combout\))) # (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~10_combout\))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~5_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~11_combout\))) # 
-- (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000100100011000000010010111111001101111011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal5~0_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X35_Y3_N33
\processador|Registradores|registrador~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~62feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \processador|Registradores|registrador~62feeder_combout\);

-- Location: FF_X35_Y3_N34
\processador|Registradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~62feeder_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~62_q\);

-- Location: FF_X36_Y3_N23
\processador|Registradores|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~70_q\);

-- Location: LABCELL_X36_Y3_N57
\processador|Registradores|registrador~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~207_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~70_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( 
-- \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|Registradores|ALT_INV_registrador~62_q\,
	datad => \processador|Registradores|ALT_INV_registrador~70_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~207_combout\);

-- Location: MLABCELL_X37_Y5_N9
\processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~9_sumout\ = SUM(( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~210_combout\))) # (\processador|ROM|memROM~21_combout\ & 
-- (\processador|Registradores|registrador~209_combout\)))) ) + ( \processador|Registradores|registrador~149_combout\ ) + ( \processador|ULA|Add0~6\ ))
-- \processador|ULA|Add0~10\ = CARRY(( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~210_combout\))) # (\processador|ROM|memROM~21_combout\ & 
-- (\processador|Registradores|registrador~209_combout\)))) ) + ( \processador|Registradores|registrador~149_combout\ ) + ( \processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~209_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~210_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~149_combout\,
	cin => \processador|ULA|Add0~6\,
	sumout => \processador|ULA|Add0~9_sumout\,
	cout => \processador|ULA|Add0~10\);

-- Location: LABCELL_X36_Y4_N3
\processador|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[2]~2_combout\ = ( \processador|ULA|Add0~9_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~11_combout\)) # (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~11_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~9_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~11_combout\)) # 
-- (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010110011111101111011001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal5~0_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	datad => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X36_Y3_N14
\processador|Registradores|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~71_q\);

-- Location: FF_X35_Y4_N5
\processador|Registradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~63_q\);

-- Location: LABCELL_X36_Y4_N21
\processador|Registradores|registrador~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~209_combout\ = (\processador|ROM|memROM~21_combout\ & ((!\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~63_q\))) # (\processador|ROM|memROM~22_combout\ & 
-- (\processador|Registradores|registrador~71_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~21_combout\,
	datab => \processador|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~71_q\,
	datad => \processador|Registradores|ALT_INV_registrador~63_q\,
	combout => \processador|Registradores|registrador~209_combout\);

-- Location: MLABCELL_X37_Y5_N12
\processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~13_sumout\ = SUM(( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~212_combout\))) # (\processador|ROM|memROM~21_combout\ & 
-- (\processador|Registradores|registrador~211_combout\)))) ) + ( \processador|Registradores|registrador~153_combout\ ) + ( \processador|ULA|Add0~10\ ))
-- \processador|ULA|Add0~14\ = CARRY(( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~212_combout\))) # (\processador|ROM|memROM~21_combout\ & 
-- (\processador|Registradores|registrador~211_combout\)))) ) + ( \processador|Registradores|registrador~153_combout\ ) + ( \processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~211_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~212_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~153_combout\,
	cin => \processador|ULA|Add0~10\,
	sumout => \processador|ULA|Add0~13_sumout\,
	cout => \processador|ULA|Add0~14\);

-- Location: LABCELL_X36_Y4_N48
\processador|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[3]~3_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~11_combout\))) # (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~4_combout\))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~11_combout\))) # 
-- (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000100100011000000010010111111001101111011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal5~0_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X36_Y3_N47
\processador|Registradores|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~72_q\);

-- Location: FF_X36_Y3_N5
\processador|Registradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~64_q\);

-- Location: LABCELL_X36_Y3_N42
\processador|Registradores|registrador~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~211_combout\ = ( \processador|ROM|memROM~22_combout\ & ( (\processador|Registradores|registrador~72_q\ & \processador|ROM|memROM~21_combout\) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( 
-- (\processador|Registradores|registrador~64_q\ & \processador|ROM|memROM~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000011001100000000000011110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~72_q\,
	datac => \processador|Registradores|ALT_INV_registrador~64_q\,
	datad => \processador|ROM|ALT_INV_memROM~21_combout\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	combout => \processador|Registradores|registrador~211_combout\);

-- Location: MLABCELL_X37_Y5_N15
\processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~17_sumout\ = SUM(( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~214_combout\))) # (\processador|ROM|memROM~21_combout\ & 
-- (\processador|Registradores|registrador~213_combout\)))) ) + ( \processador|Registradores|registrador~157_combout\ ) + ( \processador|ULA|Add0~14\ ))
-- \processador|ULA|Add0~18\ = CARRY(( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~214_combout\))) # (\processador|ROM|memROM~21_combout\ & 
-- (\processador|Registradores|registrador~213_combout\)))) ) + ( \processador|Registradores|registrador~157_combout\ ) + ( \processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~213_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~214_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~157_combout\,
	cin => \processador|ULA|Add0~14\,
	sumout => \processador|ULA|Add0~17_sumout\,
	cout => \processador|ULA|Add0~18\);

-- Location: LABCELL_X36_Y5_N3
\processador|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[5]~5_combout\ = ( \processador|ULA|Add0~21_sumout\ & ( ((!\interfaceChaves|saida[0]~11_combout\ & !\processador|UC|Equal5~0_combout\)) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( 
-- !\processador|ULA|Add0~21_sumout\ & ( (!\interfaceChaves|saida[0]~11_combout\ & (!\processador|UC|palavraControle[3]~0_combout\ & !\processador|UC|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010111011001100111011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X36_Y3_N28
\processador|Registradores|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~74_q\);

-- Location: FF_X36_Y3_N7
\processador|Registradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~66_q\);

-- Location: LABCELL_X36_Y4_N42
\processador|Registradores|registrador~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~215_combout\ = ( \processador|ROM|memROM~21_combout\ & ( (!\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~66_q\))) # (\processador|ROM|memROM~22_combout\ & 
-- (\processador|Registradores|registrador~74_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~74_q\,
	datad => \processador|Registradores|ALT_INV_registrador~66_q\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~215_combout\);

-- Location: FF_X35_Y5_N22
\processador|Registradores|registrador~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~98_q\);

-- Location: FF_X35_Y5_N29
\processador|Registradores|registrador~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~82_q\);

-- Location: FF_X35_Y5_N55
\processador|Registradores|registrador~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~90_q\);

-- Location: FF_X36_Y5_N23
\processador|Registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~18_q\);

-- Location: FF_X36_Y5_N5
\processador|Registradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~34_q\);

-- Location: FF_X36_Y5_N14
\processador|Registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~26_q\);

-- Location: LABCELL_X36_Y5_N15
\processador|Registradores|registrador~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~193_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~34_q\ & !\processador|ROM|memROM~26_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~26_combout\ & (\processador|Registradores|registrador~18_q\)) # (\processador|ROM|memROM~26_combout\ & 
-- ((\processador|Registradores|registrador~26_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~18_q\,
	datab => \processador|Registradores|ALT_INV_registrador~34_q\,
	datac => \processador|Registradores|ALT_INV_registrador~26_q\,
	datad => \processador|ROM|ALT_INV_memROM~26_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~193_combout\);

-- Location: LABCELL_X36_Y5_N27
\processador|Registradores|registrador~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~161_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~193_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~193_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~90_q\) ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~193_combout\ & ( 
-- (\processador|Registradores|registrador~98_q\ & \processador|ROM|memROM~13_combout\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~193_combout\ & ( (\processador|Registradores|registrador~82_q\ & 
-- \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001010000010111110000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~98_q\,
	datab => \processador|Registradores|ALT_INV_registrador~82_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~90_q\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~193_combout\,
	combout => \processador|Registradores|registrador~161_combout\);

-- Location: LABCELL_X36_Y5_N21
\processador|Registradores|registrador~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~216_combout\ = ( \processador|Registradores|registrador~34_q\ & ( (!\processador|ROM|memROM~22_combout\ & (((\processador|Registradores|registrador~18_q\)) # (\processador|ROM|memROM~21_combout\))) # 
-- (\processador|ROM|memROM~22_combout\ & (!\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~26_q\))) ) ) # ( !\processador|Registradores|registrador~34_q\ & ( (!\processador|ROM|memROM~21_combout\ & 
-- ((!\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~18_q\))) # (\processador|ROM|memROM~22_combout\ & (\processador|Registradores|registrador~26_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~22_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~26_q\,
	datad => \processador|Registradores|ALT_INV_registrador~18_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~34_q\,
	combout => \processador|Registradores|registrador~216_combout\);

-- Location: MLABCELL_X37_Y5_N18
\processador|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~21_sumout\ = SUM(( \processador|Registradores|registrador~161_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~216_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~215_combout\)))) ) + ( \processador|ULA|Add0~18\ ))
-- \processador|ULA|Add0~22\ = CARRY(( \processador|Registradores|registrador~161_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~216_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~215_combout\)))) ) + ( \processador|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~215_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~161_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~216_combout\,
	cin => \processador|ULA|Add0~18\,
	sumout => \processador|ULA|Add0~21_sumout\,
	cout => \processador|ULA|Add0~22\);

-- Location: MLABCELL_X37_Y5_N48
\processador|flipflop|data_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~2_combout\ = ( \processador|Registradores|registrador~157_combout\ & ( (\processador|UC|palavraControle[3]~0_combout\ & (!\processador|ULA|Add0~17_sumout\ & !\processador|ULA|Add0~21_sumout\)) ) ) # ( 
-- !\processador|Registradores|registrador~157_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|Registradores|registrador~161_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & (!\processador|ULA|Add0~17_sumout\ & 
-- (!\processador|ULA|Add0~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111010100100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~17_sumout\,
	datac => \processador|ULA|ALT_INV_Add0~21_sumout\,
	datad => \processador|Registradores|ALT_INV_registrador~161_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~157_combout\,
	combout => \processador|flipflop|data_out~2_combout\);

-- Location: MLABCELL_X34_Y5_N24
\processador|flipflop|data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~0_combout\ = ( \processador|ROM|memROM~19_combout\ & ( \processador|flipflop|data_out~q\ ) ) # ( !\processador|ROM|memROM~19_combout\ & ( (\processador|flipflop|data_out~q\ & (((!\processador|ROM|memROM~13_combout\) # 
-- (!\processador|ROM|memROM~15_combout\)) # (\processador|ROM|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flipflop|ALT_INV_data_out~q\,
	datab => \processador|ROM|ALT_INV_memROM~17_combout\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~15_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|flipflop|data_out~0_combout\);

-- Location: MLABCELL_X37_Y5_N51
\processador|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~1_combout\ = ( \processador|ULA|Add0~5_sumout\ & ( (\processador|Registradores|registrador~145_combout\) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~5_sumout\ & ( 
-- (!\processador|UC|palavraControle[3]~0_combout\ & \processador|Registradores|registrador~145_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~5_sumout\,
	combout => \processador|ULA|saida[1]~1_combout\);

-- Location: MLABCELL_X37_Y5_N54
\processador|flipflop|data_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~3_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~149_combout\ & !\processador|Registradores|registrador~153_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|Registradores|registrador~149_combout\ & !\processador|Registradores|registrador~153_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (!\processador|ULA|Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010001000100111001000100010010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~9_sumout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|flipflop|data_out~3_combout\);

-- Location: FF_X36_Y3_N49
\processador|Registradores|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~75_q\);

-- Location: FF_X36_Y3_N56
\processador|Registradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~67_q\);

-- Location: LABCELL_X36_Y3_N24
\processador|Registradores|registrador~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~217_combout\ = ( \processador|ROM|memROM~21_combout\ & ( (!\processador|ROM|memROM~22_combout\ & ((\processador|Registradores|registrador~67_q\))) # (\processador|ROM|memROM~22_combout\ & 
-- (\processador|Registradores|registrador~75_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~75_q\,
	datac => \processador|Registradores|ALT_INV_registrador~67_q\,
	datad => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~217_combout\);

-- Location: FF_X36_Y5_N56
\processador|Registradores|registrador~19DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~19DUPLICATE_q\);

-- Location: FF_X36_Y5_N43
\processador|Registradores|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~35_q\);

-- Location: FF_X36_Y5_N26
\processador|Registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~27_q\);

-- Location: LABCELL_X36_Y5_N18
\processador|Registradores|registrador~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~218_combout\ = ( \processador|Registradores|registrador~27_q\ & ( (!\processador|ROM|memROM~22_combout\ & ((!\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~19DUPLICATE_q\)) # 
-- (\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~35_q\))))) # (\processador|ROM|memROM~22_combout\ & (!\processador|ROM|memROM~21_combout\)) ) ) # ( !\processador|Registradores|registrador~27_q\ & ( 
-- (!\processador|ROM|memROM~22_combout\ & ((!\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~19DUPLICATE_q\)) # (\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~35_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~22_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~19DUPLICATE_q\,
	datad => \processador|Registradores|ALT_INV_registrador~35_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~27_q\,
	combout => \processador|Registradores|registrador~218_combout\);

-- Location: MLABCELL_X37_Y5_N21
\processador|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~25_sumout\ = SUM(( \processador|Registradores|registrador~165_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~218_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~217_combout\)))) ) + ( \processador|ULA|Add0~22\ ))
-- \processador|ULA|Add0~26\ = CARRY(( \processador|Registradores|registrador~165_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~218_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~217_combout\)))) ) + ( \processador|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~217_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~165_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~218_combout\,
	cin => \processador|ULA|Add0~22\,
	sumout => \processador|ULA|Add0~25_sumout\,
	cout => \processador|ULA|Add0~26\);

-- Location: LABCELL_X36_Y5_N0
\processador|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[6]~6_combout\ = ( \processador|ULA|Add0~25_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~11_combout\)) # (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~7_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~25_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~11_combout\)) # 
-- (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001100100010000000110010111011001111111011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X35_Y5_N59
\processador|Registradores|registrador~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~91_q\);

-- Location: FF_X35_Y5_N8
\processador|Registradores|registrador~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~83_q\);

-- Location: FF_X35_Y5_N20
\processador|Registradores|registrador~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~99_q\);

-- Location: FF_X36_Y5_N55
\processador|Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~19_q\);

-- Location: FF_X36_Y5_N44
\processador|Registradores|registrador~35DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~35DUPLICATE_q\);

-- Location: LABCELL_X35_Y5_N42
\processador|Registradores|registrador~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~197_combout\ = ( \processador|ROM|memROM~26_combout\ & ( \processador|ROM|memROM~13_combout\ ) ) # ( \processador|ROM|memROM~26_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( 
-- (\processador|Registradores|registrador~27_q\ & !\processador|ROM|memROM~20_combout\) ) ) ) # ( !\processador|ROM|memROM~26_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~20_combout\ & 
-- (\processador|Registradores|registrador~19_q\)) # (\processador|ROM|memROM~20_combout\ & ((\processador|Registradores|registrador~35DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~19_q\,
	datab => \processador|Registradores|ALT_INV_registrador~27_q\,
	datac => \processador|Registradores|ALT_INV_registrador~35DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|ROM|ALT_INV_memROM~26_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~197_combout\);

-- Location: LABCELL_X35_Y5_N18
\processador|Registradores|registrador~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~165_combout\ = ( \processador|Registradores|registrador~99_q\ & ( \processador|Registradores|registrador~197_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~91_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( !\processador|Registradores|registrador~99_q\ & ( \processador|Registradores|registrador~197_combout\ & ( (!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~91_q\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) ) # ( \processador|Registradores|registrador~99_q\ & ( !\processador|Registradores|registrador~197_combout\ & ( (\processador|ROM|memROM~13_combout\ & ((\processador|ROM|memROM~20_combout\) # 
-- (\processador|Registradores|registrador~83_q\))) ) ) ) # ( !\processador|Registradores|registrador~99_q\ & ( !\processador|Registradores|registrador~197_combout\ & ( (\processador|Registradores|registrador~83_q\ & (\processador|ROM|memROM~13_combout\ & 
-- !\processador|ROM|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000111111110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~91_q\,
	datab => \processador|Registradores|ALT_INV_registrador~83_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~20_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~99_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~197_combout\,
	combout => \processador|Registradores|registrador~165_combout\);

-- Location: FF_X36_Y3_N59
\processador|Registradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~68_q\);

-- Location: FF_X36_Y3_N53
\processador|Registradores|registrador~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~76_q\);

-- Location: LABCELL_X36_Y3_N51
\processador|Registradores|registrador~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~219_combout\ = ( \processador|Registradores|registrador~76_q\ & ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ ) ) ) # ( \processador|Registradores|registrador~76_q\ & ( 
-- !\processador|ROM|memROM~22_combout\ & ( (\processador|ROM|memROM~21_combout\ & \processador|Registradores|registrador~68_q\) ) ) ) # ( !\processador|Registradores|registrador~76_q\ & ( !\processador|ROM|memROM~22_combout\ & ( 
-- (\processador|ROM|memROM~21_combout\ & \processador|Registradores|registrador~68_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~68_q\,
	datae => \processador|Registradores|ALT_INV_registrador~76_q\,
	dataf => \processador|ROM|ALT_INV_memROM~22_combout\,
	combout => \processador|Registradores|registrador~219_combout\);

-- Location: FF_X36_Y5_N53
\processador|Registradores|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~36_q\);

-- Location: FF_X36_Y5_N38
\processador|Registradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~28_q\);

-- Location: FF_X36_Y5_N59
\processador|Registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~20_q\);

-- Location: LABCELL_X36_Y5_N30
\processador|Registradores|registrador~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~220_combout\ = ( \processador|Registradores|registrador~20_q\ & ( (!\processador|ROM|memROM~22_combout\ & ((!\processador|ROM|memROM~21_combout\) # ((\processador|Registradores|registrador~36_q\)))) # 
-- (\processador|ROM|memROM~22_combout\ & (!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~28_q\)))) ) ) # ( !\processador|Registradores|registrador~20_q\ & ( (!\processador|ROM|memROM~22_combout\ & 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~36_q\))) # (\processador|ROM|memROM~22_combout\ & (!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~28_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~22_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~36_q\,
	datad => \processador|Registradores|ALT_INV_registrador~28_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~20_q\,
	combout => \processador|Registradores|registrador~220_combout\);

-- Location: MLABCELL_X37_Y5_N24
\processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~29_sumout\ = SUM(( \processador|Registradores|registrador~169_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~220_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~219_combout\)))) ) + ( \processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~219_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|UC|ALT_INV_Equal3~0_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~169_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~220_combout\,
	cin => \processador|ULA|Add0~26\,
	sumout => \processador|ULA|Add0~29_sumout\);

-- Location: LABCELL_X36_Y5_N51
\processador|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[7]~7_combout\ = ( \processador|ULA|Add0~29_sumout\ & ( ((!\interfaceChaves|saida[0]~11_combout\ & !\processador|UC|Equal5~0_combout\)) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( 
-- !\processador|ULA|Add0~29_sumout\ & ( (!\interfaceChaves|saida[0]~11_combout\ & (!\processador|UC|palavraControle[3]~0_combout\ & !\processador|UC|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010111011001100111011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: FF_X35_Y5_N35
\processador|Registradores|registrador~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~92_q\);

-- Location: FF_X35_Y5_N2
\processador|Registradores|registrador~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~84_q\);

-- Location: FF_X35_Y5_N46
\processador|Registradores|registrador~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~100_q\);

-- Location: MLABCELL_X34_Y5_N30
\processador|Registradores|registrador~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~201_combout\ = ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~26_combout\ ) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( 
-- \processador|ROM|memROM~20_combout\ & ( (!\processador|ROM|memROM~26_combout\ & \processador|Registradores|registrador~36_q\) ) ) ) # ( \processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~26_combout\ ) 
-- ) ) # ( !\processador|ROM|memROM~13_combout\ & ( !\processador|ROM|memROM~20_combout\ & ( (!\processador|ROM|memROM~26_combout\ & ((\processador|Registradores|registrador~20_q\))) # (\processador|ROM|memROM~26_combout\ & 
-- (\processador|Registradores|registrador~28_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000011110000111100000000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~28_q\,
	datab => \processador|Registradores|ALT_INV_registrador~20_q\,
	datac => \processador|ROM|ALT_INV_memROM~26_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~36_q\,
	datae => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~20_combout\,
	combout => \processador|Registradores|registrador~201_combout\);

-- Location: MLABCELL_X34_Y5_N36
\processador|Registradores|registrador~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~169_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~201_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~201_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~92_q\) ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~201_combout\ & ( 
-- (\processador|ROM|memROM~13_combout\ & \processador|Registradores|registrador~100_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~201_combout\ & ( (\processador|ROM|memROM~13_combout\ & 
-- \processador|Registradores|registrador~84_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000011001111011101110111011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~92_q\,
	datab => \processador|ROM|ALT_INV_memROM~13_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~84_q\,
	datad => \processador|Registradores|ALT_INV_registrador~100_q\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~201_combout\,
	combout => \processador|Registradores|registrador~169_combout\);

-- Location: MLABCELL_X37_Y5_N36
\processador|flipflop|data_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~4_combout\ = ( \processador|ULA|Add0~29_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~165_combout\ & !\processador|Registradores|registrador~169_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~29_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~165_combout\ & (!\processador|Registradores|registrador~169_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (((!\processador|ULA|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010110000000110101011000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~165_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~169_combout\,
	datad => \processador|ULA|ALT_INV_Add0~25_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|flipflop|data_out~4_combout\);

-- Location: LABCELL_X35_Y5_N39
\processador|flipflop|data_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~1_combout\ = ( !\processador|ULA|Add0~1_sumout\ & ( (\processador|ROM|memROM~15_combout\ & (!\processador|ROM|memROM~19_combout\ & (\processador|ROM|memROM~13_combout\ & !\processador|ROM|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \processador|flipflop|data_out~1_combout\);

-- Location: MLABCELL_X37_Y5_N42
\processador|flipflop|data_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~5_combout\ = ( \processador|flipflop|data_out~4_combout\ & ( \processador|flipflop|data_out~1_combout\ & ( ((\processador|flipflop|data_out~2_combout\ & (!\processador|ULA|saida[1]~1_combout\ & 
-- \processador|flipflop|data_out~3_combout\))) # (\processador|flipflop|data_out~0_combout\) ) ) ) # ( !\processador|flipflop|data_out~4_combout\ & ( \processador|flipflop|data_out~1_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( 
-- \processador|flipflop|data_out~4_combout\ & ( !\processador|flipflop|data_out~1_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( !\processador|flipflop|data_out~4_combout\ & ( !\processador|flipflop|data_out~1_combout\ & ( 
-- \processador|flipflop|data_out~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flipflop|ALT_INV_data_out~2_combout\,
	datab => \processador|flipflop|ALT_INV_data_out~0_combout\,
	datac => \processador|ULA|ALT_INV_saida[1]~1_combout\,
	datad => \processador|flipflop|ALT_INV_data_out~3_combout\,
	datae => \processador|flipflop|ALT_INV_data_out~4_combout\,
	dataf => \processador|flipflop|ALT_INV_data_out~1_combout\,
	combout => \processador|flipflop|data_out~5_combout\);

-- Location: FF_X37_Y5_N43
\processador|flipflop|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|flipflop|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|flipflop|data_out~q\);

-- Location: MLABCELL_X34_Y5_N18
\processador|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|comb~0_combout\ = ( !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|ROM|memROM~19_combout\ & ((!\processador|ROM|memROM~15_combout\) # (\processador|flipflop|data_out~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|flipflop|ALT_INV_data_out~q\,
	datad => \processador|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|comb~0_combout\);

-- Location: FF_X35_Y4_N32
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~1_sumout\,
	asdata => \processador|ROM|memROM~9_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: MLABCELL_X34_Y4_N33
\processador|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~8_combout\ = ( !\processador|PC|DOUT\(4) & ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(3)) ) ) ) # ( \processador|PC|DOUT\(4) & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(3)) ) ) ) # ( !\processador|PC|DOUT\(4) & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & \processador|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~8_combout\);

-- Location: MLABCELL_X34_Y4_N27
\processador|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~9_combout\ = ( \processador|ROM|memROM~5_combout\ & ( (\processador|ROM|memROM~8_combout\ & !\processador|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|ROM|memROM~9_combout\);

-- Location: LABCELL_X32_Y4_N12
\Decoder|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal7~0_combout\ = ( \Decoder|Equal6~0_combout\ & ( \processador|ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \Decoder|Equal7~0_combout\);

-- Location: FF_X32_Y4_N31
\interfaceBaseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~105_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(0));

-- Location: LABCELL_X32_Y4_N33
\interfaceBaseTempo|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~101_sumout\ = SUM(( \interfaceBaseTempo|contador\(1) ) + ( GND ) + ( \interfaceBaseTempo|Add0~106\ ))
-- \interfaceBaseTempo|Add0~102\ = CARRY(( \interfaceBaseTempo|contador\(1) ) + ( GND ) + ( \interfaceBaseTempo|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(1),
	cin => \interfaceBaseTempo|Add0~106\,
	sumout => \interfaceBaseTempo|Add0~101_sumout\,
	cout => \interfaceBaseTempo|Add0~102\);

-- Location: FF_X32_Y4_N35
\interfaceBaseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~101_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(1));

-- Location: LABCELL_X32_Y4_N36
\interfaceBaseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~97_sumout\ = SUM(( \interfaceBaseTempo|contador\(2) ) + ( GND ) + ( \interfaceBaseTempo|Add0~102\ ))
-- \interfaceBaseTempo|Add0~98\ = CARRY(( \interfaceBaseTempo|contador\(2) ) + ( GND ) + ( \interfaceBaseTempo|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(2),
	cin => \interfaceBaseTempo|Add0~102\,
	sumout => \interfaceBaseTempo|Add0~97_sumout\,
	cout => \interfaceBaseTempo|Add0~98\);

-- Location: FF_X32_Y4_N38
\interfaceBaseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~97_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(2));

-- Location: LABCELL_X32_Y4_N39
\interfaceBaseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~93_sumout\ = SUM(( \interfaceBaseTempo|contador\(3) ) + ( GND ) + ( \interfaceBaseTempo|Add0~98\ ))
-- \interfaceBaseTempo|Add0~94\ = CARRY(( \interfaceBaseTempo|contador\(3) ) + ( GND ) + ( \interfaceBaseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(3),
	cin => \interfaceBaseTempo|Add0~98\,
	sumout => \interfaceBaseTempo|Add0~93_sumout\,
	cout => \interfaceBaseTempo|Add0~94\);

-- Location: FF_X32_Y4_N41
\interfaceBaseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~93_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(3));

-- Location: LABCELL_X32_Y4_N42
\interfaceBaseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~89_sumout\ = SUM(( \interfaceBaseTempo|contador\(4) ) + ( GND ) + ( \interfaceBaseTempo|Add0~94\ ))
-- \interfaceBaseTempo|Add0~90\ = CARRY(( \interfaceBaseTempo|contador\(4) ) + ( GND ) + ( \interfaceBaseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(4),
	cin => \interfaceBaseTempo|Add0~94\,
	sumout => \interfaceBaseTempo|Add0~89_sumout\,
	cout => \interfaceBaseTempo|Add0~90\);

-- Location: FF_X32_Y4_N43
\interfaceBaseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~89_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(4));

-- Location: LABCELL_X32_Y4_N45
\interfaceBaseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~85_sumout\ = SUM(( \interfaceBaseTempo|contador\(5) ) + ( GND ) + ( \interfaceBaseTempo|Add0~90\ ))
-- \interfaceBaseTempo|Add0~86\ = CARRY(( \interfaceBaseTempo|contador\(5) ) + ( GND ) + ( \interfaceBaseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(5),
	cin => \interfaceBaseTempo|Add0~90\,
	sumout => \interfaceBaseTempo|Add0~85_sumout\,
	cout => \interfaceBaseTempo|Add0~86\);

-- Location: FF_X32_Y4_N47
\interfaceBaseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~85_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(5));

-- Location: LABCELL_X32_Y4_N48
\interfaceBaseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~37_sumout\ = SUM(( \interfaceBaseTempo|contador\(6) ) + ( GND ) + ( \interfaceBaseTempo|Add0~86\ ))
-- \interfaceBaseTempo|Add0~38\ = CARRY(( \interfaceBaseTempo|contador\(6) ) + ( GND ) + ( \interfaceBaseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(6),
	cin => \interfaceBaseTempo|Add0~86\,
	sumout => \interfaceBaseTempo|Add0~37_sumout\,
	cout => \interfaceBaseTempo|Add0~38\);

-- Location: FF_X32_Y4_N50
\interfaceBaseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~37_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(6));

-- Location: LABCELL_X32_Y4_N51
\interfaceBaseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~33_sumout\ = SUM(( \interfaceBaseTempo|contador\(7) ) + ( GND ) + ( \interfaceBaseTempo|Add0~38\ ))
-- \interfaceBaseTempo|Add0~34\ = CARRY(( \interfaceBaseTempo|contador\(7) ) + ( GND ) + ( \interfaceBaseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(7),
	cin => \interfaceBaseTempo|Add0~38\,
	sumout => \interfaceBaseTempo|Add0~33_sumout\,
	cout => \interfaceBaseTempo|Add0~34\);

-- Location: FF_X32_Y4_N52
\interfaceBaseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~33_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(7));

-- Location: LABCELL_X32_Y4_N54
\interfaceBaseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~25_sumout\ = SUM(( \interfaceBaseTempo|contador\(8) ) + ( GND ) + ( \interfaceBaseTempo|Add0~34\ ))
-- \interfaceBaseTempo|Add0~26\ = CARRY(( \interfaceBaseTempo|contador\(8) ) + ( GND ) + ( \interfaceBaseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(8),
	cin => \interfaceBaseTempo|Add0~34\,
	sumout => \interfaceBaseTempo|Add0~25_sumout\,
	cout => \interfaceBaseTempo|Add0~26\);

-- Location: FF_X32_Y4_N56
\interfaceBaseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~25_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(8));

-- Location: LABCELL_X32_Y4_N57
\interfaceBaseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~29_sumout\ = SUM(( \interfaceBaseTempo|contador\(9) ) + ( GND ) + ( \interfaceBaseTempo|Add0~26\ ))
-- \interfaceBaseTempo|Add0~30\ = CARRY(( \interfaceBaseTempo|contador\(9) ) + ( GND ) + ( \interfaceBaseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(9),
	cin => \interfaceBaseTempo|Add0~26\,
	sumout => \interfaceBaseTempo|Add0~29_sumout\,
	cout => \interfaceBaseTempo|Add0~30\);

-- Location: FF_X32_Y4_N58
\interfaceBaseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~29_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(9));

-- Location: LABCELL_X32_Y3_N0
\interfaceBaseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~21_sumout\ = SUM(( \interfaceBaseTempo|contador\(10) ) + ( GND ) + ( \interfaceBaseTempo|Add0~30\ ))
-- \interfaceBaseTempo|Add0~22\ = CARRY(( \interfaceBaseTempo|contador\(10) ) + ( GND ) + ( \interfaceBaseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(10),
	cin => \interfaceBaseTempo|Add0~30\,
	sumout => \interfaceBaseTempo|Add0~21_sumout\,
	cout => \interfaceBaseTempo|Add0~22\);

-- Location: FF_X32_Y3_N2
\interfaceBaseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~21_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(10));

-- Location: LABCELL_X32_Y3_N3
\interfaceBaseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~17_sumout\ = SUM(( \interfaceBaseTempo|contador\(11) ) + ( GND ) + ( \interfaceBaseTempo|Add0~22\ ))
-- \interfaceBaseTempo|Add0~18\ = CARRY(( \interfaceBaseTempo|contador\(11) ) + ( GND ) + ( \interfaceBaseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(11),
	cin => \interfaceBaseTempo|Add0~22\,
	sumout => \interfaceBaseTempo|Add0~17_sumout\,
	cout => \interfaceBaseTempo|Add0~18\);

-- Location: FF_X32_Y3_N5
\interfaceBaseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~17_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(11));

-- Location: LABCELL_X32_Y3_N6
\interfaceBaseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~41_sumout\ = SUM(( \interfaceBaseTempo|contador\(12) ) + ( GND ) + ( \interfaceBaseTempo|Add0~18\ ))
-- \interfaceBaseTempo|Add0~42\ = CARRY(( \interfaceBaseTempo|contador\(12) ) + ( GND ) + ( \interfaceBaseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(12),
	cin => \interfaceBaseTempo|Add0~18\,
	sumout => \interfaceBaseTempo|Add0~41_sumout\,
	cout => \interfaceBaseTempo|Add0~42\);

-- Location: FF_X32_Y3_N7
\interfaceBaseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~41_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(12));

-- Location: LABCELL_X32_Y3_N9
\interfaceBaseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~45_sumout\ = SUM(( \interfaceBaseTempo|contador\(13) ) + ( GND ) + ( \interfaceBaseTempo|Add0~42\ ))
-- \interfaceBaseTempo|Add0~46\ = CARRY(( \interfaceBaseTempo|contador\(13) ) + ( GND ) + ( \interfaceBaseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(13),
	cin => \interfaceBaseTempo|Add0~42\,
	sumout => \interfaceBaseTempo|Add0~45_sumout\,
	cout => \interfaceBaseTempo|Add0~46\);

-- Location: FF_X32_Y3_N11
\interfaceBaseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~45_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(13));

-- Location: LABCELL_X32_Y3_N12
\interfaceBaseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~13_sumout\ = SUM(( \interfaceBaseTempo|contador\(14) ) + ( GND ) + ( \interfaceBaseTempo|Add0~46\ ))
-- \interfaceBaseTempo|Add0~14\ = CARRY(( \interfaceBaseTempo|contador\(14) ) + ( GND ) + ( \interfaceBaseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(14),
	cin => \interfaceBaseTempo|Add0~46\,
	sumout => \interfaceBaseTempo|Add0~13_sumout\,
	cout => \interfaceBaseTempo|Add0~14\);

-- Location: FF_X32_Y3_N14
\interfaceBaseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~13_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(14));

-- Location: LABCELL_X32_Y3_N15
\interfaceBaseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~49_sumout\ = SUM(( \interfaceBaseTempo|contador\(15) ) + ( GND ) + ( \interfaceBaseTempo|Add0~14\ ))
-- \interfaceBaseTempo|Add0~50\ = CARRY(( \interfaceBaseTempo|contador\(15) ) + ( GND ) + ( \interfaceBaseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(15),
	cin => \interfaceBaseTempo|Add0~14\,
	sumout => \interfaceBaseTempo|Add0~49_sumout\,
	cout => \interfaceBaseTempo|Add0~50\);

-- Location: FF_X32_Y3_N17
\interfaceBaseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~49_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(15));

-- Location: LABCELL_X32_Y3_N18
\interfaceBaseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~53_sumout\ = SUM(( \interfaceBaseTempo|contador\(16) ) + ( GND ) + ( \interfaceBaseTempo|Add0~50\ ))
-- \interfaceBaseTempo|Add0~54\ = CARRY(( \interfaceBaseTempo|contador\(16) ) + ( GND ) + ( \interfaceBaseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(16),
	cin => \interfaceBaseTempo|Add0~50\,
	sumout => \interfaceBaseTempo|Add0~53_sumout\,
	cout => \interfaceBaseTempo|Add0~54\);

-- Location: FF_X32_Y3_N20
\interfaceBaseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~53_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(16));

-- Location: LABCELL_X32_Y3_N21
\interfaceBaseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~57_sumout\ = SUM(( \interfaceBaseTempo|contador\(17) ) + ( GND ) + ( \interfaceBaseTempo|Add0~54\ ))
-- \interfaceBaseTempo|Add0~58\ = CARRY(( \interfaceBaseTempo|contador\(17) ) + ( GND ) + ( \interfaceBaseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(17),
	cin => \interfaceBaseTempo|Add0~54\,
	sumout => \interfaceBaseTempo|Add0~57_sumout\,
	cout => \interfaceBaseTempo|Add0~58\);

-- Location: FF_X32_Y3_N22
\interfaceBaseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~57_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(17));

-- Location: LABCELL_X32_Y3_N24
\interfaceBaseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~5_sumout\ = SUM(( \interfaceBaseTempo|contador\(18) ) + ( GND ) + ( \interfaceBaseTempo|Add0~58\ ))
-- \interfaceBaseTempo|Add0~6\ = CARRY(( \interfaceBaseTempo|contador\(18) ) + ( GND ) + ( \interfaceBaseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(18),
	cin => \interfaceBaseTempo|Add0~58\,
	sumout => \interfaceBaseTempo|Add0~5_sumout\,
	cout => \interfaceBaseTempo|Add0~6\);

-- Location: FF_X32_Y3_N26
\interfaceBaseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~5_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(18));

-- Location: LABCELL_X32_Y3_N27
\interfaceBaseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~9_sumout\ = SUM(( \interfaceBaseTempo|contador\(19) ) + ( GND ) + ( \interfaceBaseTempo|Add0~6\ ))
-- \interfaceBaseTempo|Add0~10\ = CARRY(( \interfaceBaseTempo|contador\(19) ) + ( GND ) + ( \interfaceBaseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(19),
	cin => \interfaceBaseTempo|Add0~6\,
	sumout => \interfaceBaseTempo|Add0~9_sumout\,
	cout => \interfaceBaseTempo|Add0~10\);

-- Location: FF_X32_Y3_N29
\interfaceBaseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~9_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(19));

-- Location: LABCELL_X32_Y3_N30
\interfaceBaseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~61_sumout\ = SUM(( \interfaceBaseTempo|contador\(20) ) + ( GND ) + ( \interfaceBaseTempo|Add0~10\ ))
-- \interfaceBaseTempo|Add0~62\ = CARRY(( \interfaceBaseTempo|contador\(20) ) + ( GND ) + ( \interfaceBaseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(20),
	cin => \interfaceBaseTempo|Add0~10\,
	sumout => \interfaceBaseTempo|Add0~61_sumout\,
	cout => \interfaceBaseTempo|Add0~62\);

-- Location: FF_X32_Y3_N31
\interfaceBaseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~61_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(20));

-- Location: LABCELL_X32_Y3_N33
\interfaceBaseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~65_sumout\ = SUM(( \interfaceBaseTempo|contador\(21) ) + ( GND ) + ( \interfaceBaseTempo|Add0~62\ ))
-- \interfaceBaseTempo|Add0~66\ = CARRY(( \interfaceBaseTempo|contador\(21) ) + ( GND ) + ( \interfaceBaseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(21),
	cin => \interfaceBaseTempo|Add0~62\,
	sumout => \interfaceBaseTempo|Add0~65_sumout\,
	cout => \interfaceBaseTempo|Add0~66\);

-- Location: FF_X32_Y3_N35
\interfaceBaseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~65_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(21));

-- Location: LABCELL_X31_Y3_N0
\interfaceBaseTempo|passouUmSegundo~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~4_combout\ = ( !\interfaceBaseTempo|contador\(20) & ( !\interfaceBaseTempo|contador\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(21),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(20),
	combout => \interfaceBaseTempo|passouUmSegundo~4_combout\);

-- Location: LABCELL_X32_Y3_N36
\interfaceBaseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~1_sumout\ = SUM(( \interfaceBaseTempo|contador\(22) ) + ( GND ) + ( \interfaceBaseTempo|Add0~66\ ))
-- \interfaceBaseTempo|Add0~2\ = CARRY(( \interfaceBaseTempo|contador\(22) ) + ( GND ) + ( \interfaceBaseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(22),
	cin => \interfaceBaseTempo|Add0~66\,
	sumout => \interfaceBaseTempo|Add0~1_sumout\,
	cout => \interfaceBaseTempo|Add0~2\);

-- Location: FF_X32_Y3_N38
\interfaceBaseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~1_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(22));

-- Location: LABCELL_X32_Y3_N39
\interfaceBaseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~77_sumout\ = SUM(( \interfaceBaseTempo|contador\(23) ) + ( GND ) + ( \interfaceBaseTempo|Add0~2\ ))
-- \interfaceBaseTempo|Add0~78\ = CARRY(( \interfaceBaseTempo|contador\(23) ) + ( GND ) + ( \interfaceBaseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(23),
	cin => \interfaceBaseTempo|Add0~2\,
	sumout => \interfaceBaseTempo|Add0~77_sumout\,
	cout => \interfaceBaseTempo|Add0~78\);

-- Location: FF_X32_Y3_N41
\interfaceBaseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~77_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(23));

-- Location: LABCELL_X32_Y3_N42
\interfaceBaseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~73_sumout\ = SUM(( \interfaceBaseTempo|contador\(24) ) + ( GND ) + ( \interfaceBaseTempo|Add0~78\ ))
-- \interfaceBaseTempo|Add0~74\ = CARRY(( \interfaceBaseTempo|contador\(24) ) + ( GND ) + ( \interfaceBaseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(24),
	cin => \interfaceBaseTempo|Add0~78\,
	sumout => \interfaceBaseTempo|Add0~73_sumout\,
	cout => \interfaceBaseTempo|Add0~74\);

-- Location: FF_X32_Y3_N44
\interfaceBaseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~73_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(24));

-- Location: LABCELL_X32_Y3_N45
\interfaceBaseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~69_sumout\ = SUM(( \interfaceBaseTempo|contador\(25) ) + ( GND ) + ( \interfaceBaseTempo|Add0~74\ ))
-- \interfaceBaseTempo|Add0~70\ = CARRY(( \interfaceBaseTempo|contador\(25) ) + ( GND ) + ( \interfaceBaseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(25),
	cin => \interfaceBaseTempo|Add0~74\,
	sumout => \interfaceBaseTempo|Add0~69_sumout\,
	cout => \interfaceBaseTempo|Add0~70\);

-- Location: FF_X32_Y3_N47
\interfaceBaseTempo|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~69_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(25));

-- Location: LABCELL_X32_Y3_N48
\interfaceBaseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~81_sumout\ = SUM(( \interfaceBaseTempo|contador\(26) ) + ( GND ) + ( \interfaceBaseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(26),
	cin => \interfaceBaseTempo|Add0~70\,
	sumout => \interfaceBaseTempo|Add0~81_sumout\);

-- Location: FF_X32_Y3_N50
\interfaceBaseTempo|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~81_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(26));

-- Location: LABCELL_X32_Y3_N57
\interfaceBaseTempo|passouUmSegundo~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~5_combout\ = ( !\interfaceBaseTempo|contador\(23) & ( (!\interfaceBaseTempo|contador\(26) & (!\interfaceBaseTempo|contador\(24) & !\interfaceBaseTempo|contador\(25))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(26),
	datac => \interfaceBaseTempo|ALT_INV_contador\(24),
	datad => \interfaceBaseTempo|ALT_INV_contador\(25),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(23),
	combout => \interfaceBaseTempo|passouUmSegundo~5_combout\);

-- Location: LABCELL_X31_Y3_N24
\interfaceBaseTempo|passouUmSegundo~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~1_combout\ = ( !\interfaceBaseTempo|contador\(13) & ( !\interfaceBaseTempo|contador\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \interfaceBaseTempo|ALT_INV_contador\(13),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(12),
	combout => \interfaceBaseTempo|passouUmSegundo~1_combout\);

-- Location: LABCELL_X32_Y3_N54
\interfaceBaseTempo|passouUmSegundo~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~2_combout\ = ( !\interfaceBaseTempo|contador\(15) & ( (!\interfaceBaseTempo|contador\(17) & !\interfaceBaseTempo|contador\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(17),
	datac => \interfaceBaseTempo|ALT_INV_contador\(16),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(15),
	combout => \interfaceBaseTempo|passouUmSegundo~2_combout\);

-- Location: FF_X32_Y3_N4
\interfaceBaseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~17_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador[11]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y4_N3
\interfaceBaseTempo|passouUmSegundo~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~0_combout\ = ( \interfaceBaseTempo|contador\(8) & ( \interfaceBaseTempo|contador\(10) & ( \interfaceBaseTempo|contador[11]~DUPLICATE_q\ ) ) ) # ( !\interfaceBaseTempo|contador\(8) & ( \interfaceBaseTempo|contador\(10) & 
-- ( \interfaceBaseTempo|contador[11]~DUPLICATE_q\ ) ) ) # ( \interfaceBaseTempo|contador\(8) & ( !\interfaceBaseTempo|contador\(10) & ( (\interfaceBaseTempo|contador[11]~DUPLICATE_q\ & (\interfaceBaseTempo|contador\(9) & ((\interfaceBaseTempo|contador\(7)) 
-- # (\interfaceBaseTempo|contador\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(6),
	datab => \interfaceBaseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	datac => \interfaceBaseTempo|ALT_INV_contador\(7),
	datad => \interfaceBaseTempo|ALT_INV_contador\(9),
	datae => \interfaceBaseTempo|ALT_INV_contador\(8),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(10),
	combout => \interfaceBaseTempo|passouUmSegundo~0_combout\);

-- Location: LABCELL_X31_Y3_N33
\interfaceBaseTempo|passouUmSegundo~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~3_combout\ = ( \interfaceBaseTempo|passouUmSegundo~2_combout\ & ( \interfaceBaseTempo|passouUmSegundo~0_combout\ & ( (\interfaceBaseTempo|contador\(19) & (\interfaceBaseTempo|contador\(18) & 
-- \interfaceBaseTempo|contador\(14))) ) ) ) # ( !\interfaceBaseTempo|passouUmSegundo~2_combout\ & ( \interfaceBaseTempo|passouUmSegundo~0_combout\ & ( (\interfaceBaseTempo|contador\(19) & \interfaceBaseTempo|contador\(18)) ) ) ) # ( 
-- \interfaceBaseTempo|passouUmSegundo~2_combout\ & ( !\interfaceBaseTempo|passouUmSegundo~0_combout\ & ( (\interfaceBaseTempo|contador\(19) & (\interfaceBaseTempo|contador\(18) & (\interfaceBaseTempo|contador\(14) & 
-- !\interfaceBaseTempo|passouUmSegundo~1_combout\))) ) ) ) # ( !\interfaceBaseTempo|passouUmSegundo~2_combout\ & ( !\interfaceBaseTempo|passouUmSegundo~0_combout\ & ( (\interfaceBaseTempo|contador\(19) & \interfaceBaseTempo|contador\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000010000000000010001000100010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(19),
	datab => \interfaceBaseTempo|ALT_INV_contador\(18),
	datac => \interfaceBaseTempo|ALT_INV_contador\(14),
	datad => \interfaceBaseTempo|ALT_INV_passouUmSegundo~1_combout\,
	datae => \interfaceBaseTempo|ALT_INV_passouUmSegundo~2_combout\,
	dataf => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	combout => \interfaceBaseTempo|passouUmSegundo~3_combout\);

-- Location: LABCELL_X31_Y3_N21
\interfaceBaseTempo|passouUmSegundo~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~6_combout\ = ( !\processador|ROM|memROM~9_combout\ & ( \Decoder|Equal6~0_combout\ & ( (!\interfaceBaseTempo|passouUmSegundo~5_combout\) # ((\interfaceBaseTempo|contador\(22) & 
-- ((!\interfaceBaseTempo|passouUmSegundo~4_combout\) # (\interfaceBaseTempo|passouUmSegundo~3_combout\)))) ) ) ) # ( \processador|ROM|memROM~9_combout\ & ( !\Decoder|Equal6~0_combout\ & ( (!\interfaceBaseTempo|passouUmSegundo~5_combout\) # 
-- ((\interfaceBaseTempo|contador\(22) & ((!\interfaceBaseTempo|passouUmSegundo~4_combout\) # (\interfaceBaseTempo|passouUmSegundo~3_combout\)))) ) ) ) # ( !\processador|ROM|memROM~9_combout\ & ( !\Decoder|Equal6~0_combout\ & ( 
-- (!\interfaceBaseTempo|passouUmSegundo~5_combout\) # ((\interfaceBaseTempo|contador\(22) & ((!\interfaceBaseTempo|passouUmSegundo~4_combout\) # (\interfaceBaseTempo|passouUmSegundo~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011001111110011101100111111001110110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_passouUmSegundo~4_combout\,
	datab => \interfaceBaseTempo|ALT_INV_passouUmSegundo~5_combout\,
	datac => \interfaceBaseTempo|ALT_INV_contador\(22),
	datad => \interfaceBaseTempo|ALT_INV_passouUmSegundo~3_combout\,
	datae => \processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \interfaceBaseTempo|passouUmSegundo~6_combout\);

-- Location: FF_X32_Y3_N55
\interfaceBaseTempo|passouUmSegundo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceBaseTempo|passouUmSegundo~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|passouUmSegundo~q\);

-- Location: LABCELL_X35_Y3_N39
\Decoder|habilita[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~1_combout\ = ( \Decoder|habilita[1]~0_combout\ & ( \processador|ROM|memROM~7_combout\ ) ) # ( !\Decoder|habilita[1]~0_combout\ & ( \processador|ROM|memROM~7_combout\ ) ) # ( \Decoder|habilita[1]~0_combout\ & ( 
-- !\processador|ROM|memROM~7_combout\ & ( !\processador|ROM|memROM~4_combout\ ) ) ) # ( !\Decoder|habilita[1]~0_combout\ & ( !\processador|ROM|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datae => \Decoder|ALT_INV_habilita[1]~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Decoder|habilita[1]~1_combout\);

-- Location: LABCELL_X35_Y3_N45
\Decoder|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~1_combout\ = ( \processador|ROM|memROM~7_combout\ ) # ( !\processador|ROM|memROM~7_combout\ & ( (\processador|ROM|memROM~4_combout\ & \Decoder|LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \Decoder|ALT_INV_LessThan0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Decoder|LessThan0~1_combout\);

-- Location: LABCELL_X35_Y3_N54
\Decoder|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~1_combout\ = ( \Decoder|Equal6~0_combout\ & ( !\processador|ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \Decoder|Equal6~1_combout\);

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

-- Location: MLABCELL_X34_Y4_N6
\interfaceBtn|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~0_combout\ = ( \processador|ROM|memROM~5_combout\ & ( (!\processador|PC|DOUT\(2) & ((!\processador|ROM|memROM~8_combout\ & ((\KEY[2]~input_o\))) # (\processador|ROM|memROM~8_combout\ & (\KEY[3]~input_o\)))) # 
-- (\processador|PC|DOUT\(2) & (((\KEY[2]~input_o\)))) ) ) # ( !\processador|ROM|memROM~5_combout\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111101110000001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \interfaceBtn|saida[0]~0_combout\);

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

-- Location: MLABCELL_X34_Y4_N24
\interfaceBtn|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~1_combout\ = ( \processador|ROM|memROM~5_combout\ & ( (!\processador|ROM|memROM~8_combout\ & (((\KEY[0]~input_o\)))) # (\processador|ROM|memROM~8_combout\ & ((!\processador|PC|DOUT[2]~DUPLICATE_q\ & (\KEY[1]~input_o\)) # 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\ & ((\KEY[0]~input_o\))))) ) ) # ( !\processador|ROM|memROM~5_combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \interfaceBtn|saida[0]~1_combout\);

-- Location: MLABCELL_X34_Y4_N42
\interfaceBtn|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~2_combout\ = ( \processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~7_combout\ & ( (\processador|ROM|memROM~4_combout\ & (\interfaceBtn|saida[0]~0_combout\ & !\processador|ROM|memROM~10_combout\)) ) ) ) # ( 
-- !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~7_combout\ & ( (\processador|ROM|memROM~4_combout\ & (\interfaceBtn|saida[0]~1_combout\ & \processador|ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \interfaceBtn|ALT_INV_saida[0]~0_combout\,
	datac => \interfaceBtn|ALT_INV_saida[0]~1_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \interfaceBtn|saida[0]~2_combout\);

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

-- Location: MLABCELL_X34_Y4_N54
\interfaceChaves|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~8_combout\ = ( \processador|ROM|memROM~9_combout\ & ( \processador|ROM|memROM~4_combout\ & ( (\SW[9]~input_o\ & (!\processador|ROM|memROM~11_combout\ & !\processador|ROM|memROM~10_combout\)) ) ) ) # ( 
-- !\processador|ROM|memROM~9_combout\ & ( \processador|ROM|memROM~4_combout\ & ( (\SW[8]~input_o\ & (!\processador|ROM|memROM~11_combout\ & !\processador|ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \interfaceChaves|saida[0]~8_combout\);

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

-- Location: MLABCELL_X34_Y4_N0
\interfaceChaves|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~0_combout\ = ( \processador|ROM|memROM~9_combout\ & ( \processador|ROM|memROM~11_combout\ & ( \SW[5]~input_o\ ) ) ) # ( !\processador|ROM|memROM~9_combout\ & ( \processador|ROM|memROM~11_combout\ & ( \SW[4]~input_o\ ) ) ) # ( 
-- \processador|ROM|memROM~9_combout\ & ( !\processador|ROM|memROM~11_combout\ & ( \SW[1]~input_o\ ) ) ) # ( !\processador|ROM|memROM~9_combout\ & ( !\processador|ROM|memROM~11_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \interfaceChaves|Mux0~0_combout\);

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

-- Location: MLABCELL_X34_Y4_N12
\interfaceChaves|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~1_combout\ = ( \processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( \SW[3]~input_o\ ) ) ) # ( 
-- \processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \interfaceChaves|Mux0~1_combout\);

-- Location: MLABCELL_X34_Y4_N18
\interfaceChaves|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~9_combout\ = ( \interfaceChaves|Mux0~0_combout\ & ( \interfaceChaves|Mux0~1_combout\ & ( (!\processador|ROM|memROM~7_combout\ & ((!\processador|ROM|memROM~4_combout\) # (\interfaceChaves|saida[0]~8_combout\))) ) ) ) # ( 
-- !\interfaceChaves|Mux0~0_combout\ & ( \interfaceChaves|Mux0~1_combout\ & ( (!\processador|ROM|memROM~7_combout\ & (((!\processador|ROM|memROM~4_combout\ & \processador|ROM|memROM~10_combout\)) # (\interfaceChaves|saida[0]~8_combout\))) ) ) ) # ( 
-- \interfaceChaves|Mux0~0_combout\ & ( !\interfaceChaves|Mux0~1_combout\ & ( (!\processador|ROM|memROM~7_combout\ & (((!\processador|ROM|memROM~4_combout\ & !\processador|ROM|memROM~10_combout\)) # (\interfaceChaves|saida[0]~8_combout\))) ) ) ) # ( 
-- !\interfaceChaves|Mux0~0_combout\ & ( !\interfaceChaves|Mux0~1_combout\ & ( (\interfaceChaves|saida[0]~8_combout\ & !\processador|ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000100011110000000000101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \interfaceChaves|ALT_INV_saida[0]~8_combout\,
	datad => \processador|ROM|ALT_INV_memROM~7_combout\,
	datae => \interfaceChaves|ALT_INV_Mux0~0_combout\,
	dataf => \interfaceChaves|ALT_INV_Mux0~1_combout\,
	combout => \interfaceChaves|saida[0]~9_combout\);

-- Location: LABCELL_X35_Y3_N21
\interfaceChaves|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~10_combout\ = ( \interfaceBtn|saida[0]~2_combout\ & ( \interfaceChaves|saida[0]~9_combout\ & ( (!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\) ) ) ) # ( !\interfaceBtn|saida[0]~2_combout\ & ( 
-- \interfaceChaves|saida[0]~9_combout\ & ( (\Decoder|habilita[1]~1_combout\ & ((!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\))) ) ) ) # ( \interfaceBtn|saida[0]~2_combout\ & ( !\interfaceChaves|saida[0]~9_combout\ & ( 
-- (\Decoder|LessThan0~1_combout\ & ((!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\))) ) ) ) # ( !\interfaceBtn|saida[0]~2_combout\ & ( !\interfaceChaves|saida[0]~9_combout\ & ( (\Decoder|habilita[1]~1_combout\ & 
-- (\Decoder|LessThan0~1_combout\ & ((!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001000011110000010100110011000100011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_passouUmSegundo~q\,
	datab => \Decoder|ALT_INV_habilita[1]~1_combout\,
	datac => \Decoder|ALT_INV_LessThan0~1_combout\,
	datad => \Decoder|ALT_INV_Equal6~1_combout\,
	datae => \interfaceBtn|ALT_INV_saida[0]~2_combout\,
	dataf => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	combout => \interfaceChaves|saida[0]~10_combout\);

-- Location: MLABCELL_X37_Y3_N42
\interfaceHEX|conversorHex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ = ( !\processador|Registradores|registrador~145_combout\ & ( \processador|Registradores|registrador~149_combout\ & ( !\processador|Registradores|registrador~153_combout\ $ 
-- (\processador|Registradores|registrador~141_combout\) ) ) ) # ( \processador|Registradores|registrador~145_combout\ & ( !\processador|Registradores|registrador~149_combout\ & ( (\processador|Registradores|registrador~153_combout\ & 
-- \processador|Registradores|registrador~141_combout\) ) ) ) # ( !\processador|Registradores|registrador~145_combout\ & ( !\processador|Registradores|registrador~149_combout\ & ( (!\processador|Registradores|registrador~153_combout\ & 
-- \processador|Registradores|registrador~141_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000011001111001100001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~149_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y3_N24
\interfaceHEX|conversorHex0|saida7seg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|saida7seg[0]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \interfaceHEX|conversorHex0|saida7seg[0]~feeder_combout\);

-- Location: MLABCELL_X37_Y4_N21
\Decoder|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = ( !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (!\processador|ROM|memROM~10_combout\ & \processador|ROM|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \Decoder|Equal0~0_combout\);

-- Location: FF_X37_Y3_N25
\interfaceHEX|conversorHex0|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|saida7seg[0]~feeder_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(0));

-- Location: MLABCELL_X37_Y4_N54
\interfaceHEX|conversorHex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ = ( \processador|Registradores|registrador~153_combout\ & ( (!\processador|Registradores|registrador~141_combout\ & (\processador|Registradores|registrador~149_combout\)) # 
-- (\processador|Registradores|registrador~141_combout\ & ((\processador|Registradores|registrador~145_combout\))) ) ) # ( !\processador|Registradores|registrador~153_combout\ & ( (\processador|Registradores|registrador~149_combout\ & 
-- (!\processador|Registradores|registrador~141_combout\ $ (!\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\);

-- Location: FF_X37_Y4_N46
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

-- Location: MLABCELL_X37_Y4_N9
\interfaceHEX|conversorHex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ = ( \processador|Registradores|registrador~145_combout\ & ( \processador|Registradores|registrador~149_combout\ & ( \processador|Registradores|registrador~153_combout\ ) ) ) # ( 
-- !\processador|Registradores|registrador~145_combout\ & ( \processador|Registradores|registrador~149_combout\ & ( (\processador|Registradores|registrador~153_combout\ & !\processador|Registradores|registrador~141_combout\) ) ) ) # ( 
-- \processador|Registradores|registrador~145_combout\ & ( !\processador|Registradores|registrador~149_combout\ & ( (!\processador|Registradores|registrador~153_combout\ & !\processador|Registradores|registrador~141_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~149_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\);

-- Location: FF_X37_Y4_N37
\interfaceHEX|conversorHex0|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	sload => VCC,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(2));

-- Location: MLABCELL_X37_Y4_N42
\interfaceHEX|conversorHex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ = ( \processador|Registradores|registrador~149_combout\ & ( (!\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~153_combout\ & 
-- !\processador|Registradores|registrador~141_combout\)) # (\processador|Registradores|registrador~145_combout\ & ((\processador|Registradores|registrador~141_combout\))) ) ) # ( !\processador|Registradores|registrador~149_combout\ & ( 
-- (!\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~153_combout\ & \processador|Registradores|registrador~141_combout\)) # (\processador|Registradores|registrador~145_combout\ & 
-- (\processador|Registradores|registrador~153_combout\ & !\processador|Registradores|registrador~141_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~149_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\);

-- Location: FF_X37_Y4_N22
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

-- Location: MLABCELL_X37_Y4_N27
\interfaceHEX|conversorHex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ = (!\processador|Registradores|registrador~145_combout\ & ((!\processador|Registradores|registrador~149_combout\ & (\processador|Registradores|registrador~141_combout\)) # 
-- (\processador|Registradores|registrador~149_combout\ & ((!\processador|Registradores|registrador~153_combout\))))) # (\processador|Registradores|registrador~145_combout\ & (\processador|Registradores|registrador~141_combout\ & 
-- (!\processador|Registradores|registrador~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010110000001100101011000000110010101100000011001010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~149_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\);

-- Location: FF_X37_Y4_N40
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

-- Location: MLABCELL_X37_Y4_N36
\interfaceHEX|conversorHex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ = ( \processador|Registradores|registrador~149_combout\ & ( (\processador|Registradores|registrador~141_combout\ & (!\processador|Registradores|registrador~145_combout\ $ 
-- (!\processador|Registradores|registrador~153_combout\))) ) ) # ( !\processador|Registradores|registrador~149_combout\ & ( (!\processador|Registradores|registrador~153_combout\ & ((\processador|Registradores|registrador~141_combout\) # 
-- (\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~149_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\);

-- Location: FF_X37_Y4_N16
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

-- Location: MLABCELL_X37_Y4_N57
\interfaceHEX|conversorHex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ = ( \processador|Registradores|registrador~153_combout\ & ( (\processador|Registradores|registrador~149_combout\ & (!\processador|Registradores|registrador~141_combout\ & 
-- !\processador|Registradores|registrador~145_combout\)) ) ) # ( !\processador|Registradores|registrador~153_combout\ & ( (!\processador|Registradores|registrador~149_combout\ & ((!\processador|Registradores|registrador~145_combout\))) # 
-- (\processador|Registradores|registrador~149_combout\ & (\processador|Registradores|registrador~141_combout\ & \processador|Registradores|registrador~145_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\);

-- Location: FF_X37_Y4_N19
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

-- Location: MLABCELL_X37_Y4_N12
\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( !\processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|ROM|memROM~7_combout\ & !\processador|ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|ROM|ALT_INV_memROM~7_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \Decoder|Equal1~0_combout\);

-- Location: FF_X37_Y3_N43
\interfaceHEX|conversorHex1|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(0));

-- Location: FF_X37_Y4_N55
\interfaceHEX|conversorHex1|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(1));

-- Location: FF_X37_Y4_N10
\interfaceHEX|conversorHex1|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(2));

-- Location: FF_X37_Y4_N25
\interfaceHEX|conversorHex1|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(3));

-- Location: FF_X37_Y4_N28
\interfaceHEX|conversorHex1|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(4));

-- Location: FF_X37_Y4_N8
\interfaceHEX|conversorHex1|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(5));

-- Location: FF_X37_Y4_N58
\interfaceHEX|conversorHex1|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(6));

-- Location: LABCELL_X35_Y3_N3
\processador|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[0]~0_combout\ = ( \processador|Registradores|registrador~141_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\) # (\processador|ULA|Add0~1_sumout\) ) ) # ( !\processador|Registradores|registrador~141_combout\ & ( 
-- (\processador|UC|palavraControle[3]~0_combout\ & \processador|ULA|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~1_sumout\,
	dataf => \processador|Registradores|ALT_INV_registrador~141_combout\,
	combout => \processador|ULA|saida[0]~0_combout\);

-- Location: LABCELL_X32_Y4_N6
\processador|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[2]~2_combout\ = ( \processador|ULA|Add0~9_sumout\ & ( (\processador|UC|palavraControle[3]~0_combout\) # (\processador|Registradores|registrador~149_combout\) ) ) # ( !\processador|ULA|Add0~9_sumout\ & ( 
-- (\processador|Registradores|registrador~149_combout\ & !\processador|UC|palavraControle[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \processador|ULA|saida[2]~2_combout\);

-- Location: LABCELL_X39_Y5_N27
\processador|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[3]~3_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( \processador|Registradores|registrador~153_combout\ ) ) # ( !\processador|ULA|Add0~13_sumout\ & ( \processador|Registradores|registrador~153_combout\ & ( 
-- !\processador|UC|palavraControle[3]~0_combout\ ) ) ) # ( \processador|ULA|Add0~13_sumout\ & ( !\processador|Registradores|registrador~153_combout\ & ( \processador|UC|palavraControle[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datae => \processador|ULA|ALT_INV_Add0~13_sumout\,
	dataf => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \processador|ULA|saida[3]~3_combout\);

-- Location: MLABCELL_X37_Y5_N39
\processador|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[4]~4_combout\ = ( \processador|Registradores|registrador~157_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\) # (\processador|ULA|Add0~17_sumout\) ) ) # ( !\processador|Registradores|registrador~157_combout\ & ( 
-- (\processador|UC|palavraControle[3]~0_combout\ & \processador|ULA|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~17_sumout\,
	dataf => \processador|Registradores|ALT_INV_registrador~157_combout\,
	combout => \processador|ULA|saida[4]~4_combout\);

-- Location: MLABCELL_X37_Y5_N57
\processador|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[5]~5_combout\ = ( \processador|ULA|Add0~21_sumout\ & ( (\processador|Registradores|registrador~161_combout\) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~21_sumout\ & ( 
-- (!\processador|UC|palavraControle[3]~0_combout\ & \processador|Registradores|registrador~161_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~161_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|ULA|saida[5]~5_combout\);

-- Location: MLABCELL_X34_Y5_N27
\processador|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[6]~6_combout\ = ( \processador|ULA|Add0~25_sumout\ & ( (\processador|UC|palavraControle[3]~0_combout\) # (\processador|Registradores|registrador~165_combout\) ) ) # ( !\processador|ULA|Add0~25_sumout\ & ( 
-- (\processador|Registradores|registrador~165_combout\ & !\processador|UC|palavraControle[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|Registradores|ALT_INV_registrador~165_combout\,
	datad => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|ULA|saida[6]~6_combout\);

-- Location: LABCELL_X36_Y4_N51
\processador|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[7]~7_combout\ = ( \processador|Registradores|registrador~169_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\) # (\processador|ULA|Add0~29_sumout\) ) ) # ( !\processador|Registradores|registrador~169_combout\ & ( 
-- (\processador|UC|palavraControle[3]~0_combout\ & \processador|ULA|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|ULA|ALT_INV_Add0~29_sumout\,
	dataf => \processador|Registradores|ALT_INV_registrador~169_combout\,
	combout => \processador|ULA|saida[7]~7_combout\);

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
END structure;


