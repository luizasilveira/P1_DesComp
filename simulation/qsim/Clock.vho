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

-- DATE "10/19/2020 12:43:40"

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
-- habilita_t[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita_t[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitahex_t[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoSaida_t[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoRAMROM_DEBUG[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_t[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_t[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BarramentoEntrada_t[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habBaseTempo_t	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LimpaBaseTempo_t	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \processador|inc|Add0~17_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~6\ : std_logic;
SIGNAL \processador|inc|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ROM|memROM~35_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~36_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~8_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~33_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~34_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~31_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~32_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~25_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~26_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~24_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~27_combout\ : std_logic;
SIGNAL \processador|UC|palavraControle[3]~0_combout\ : std_logic;
SIGNAL \processador|UC|Equal3~0_combout\ : std_logic;
SIGNAL \processador|inc|Add0~22\ : std_logic;
SIGNAL \processador|inc|Add0~26\ : std_logic;
SIGNAL \processador|inc|Add0~2\ : std_logic;
SIGNAL \processador|inc|Add0~29_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|ROM|memROM~48_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~43_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Decoder|habilita[1]~0_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal6~1_combout\ : std_logic;
SIGNAL \Decoder|LessThan0~0_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~9_combout\ : std_logic;
SIGNAL \processador|UC|Equal5~0_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~39_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~40_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~41_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~42_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~183_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~37_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~38_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~190_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~71_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~181_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~189_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~63DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~188_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~55_q\ : std_logic;
SIGNAL \processador|ROM|memROM~46_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~44_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~186_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~39_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~23feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~184_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~185_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~31_q\ : std_logic;
SIGNAL \processador|ROM|memROM~47_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~45_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~182_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~238_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~187_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~47_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~206_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~15_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~17_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~193_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~87_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~79feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~191_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~192_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~79_q\ : std_logic;
SIGNAL \processador|ROM|memROM~22_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~18_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~21_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~19_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~20_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~23_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~196_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~111_q\ : std_logic;
SIGNAL \processador|ROM|memROM~12_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~13_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~152_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~151_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~63_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~153_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~195_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~103_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~194_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~95_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~197_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~127_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~154_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~155_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~22DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~38_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~54_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~148_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~126_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~94_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~110_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~78_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~147_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~62_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~14DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~46_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~146_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~102_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~86_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~149_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~150_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~61_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~69_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~37_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~13_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~230_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~45_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~198_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~34_cout\ : std_logic;
SIGNAL \processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~53_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~142_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~141_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~101_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~85feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~85_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~93feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~93_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~77_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~143_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~125_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~109_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~144_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~145_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~2\ : std_logic;
SIGNAL \processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~70_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~62DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~234_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~202_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~6\ : std_logic;
SIGNAL \processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|Registradores|registrador~56_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~72_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~64DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~24DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~40_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~32feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~242_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~48_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~210_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~10\ : std_logic;
SIGNAL \processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~64_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~157_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~40DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~156_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~80_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~96_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~104_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~88feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~88_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~158_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~128_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~112_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~159_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~160_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~3_combout\ : std_logic;
SIGNAL \processador|UC|Equal0~0_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~0_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~73_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~65_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~57_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~41_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~246_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~49DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~214_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~81_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~49_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~113_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~161_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~97_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~129_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~163_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~105_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~164_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~89_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~162_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~165_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~14\ : std_logic;
SIGNAL \processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|Registradores|registrador~74DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~58_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~66_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~42_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~26DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~250_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~50_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~218_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~18\ : std_logic;
SIGNAL \processador|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~82_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~106_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~90_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~98feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~98_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~168_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~114_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~130_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~169_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~166_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~74_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~167_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~170_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~2_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~1_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~60_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~76_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~44_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~28feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~36feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~258_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~52_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~226_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~99_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~67_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~131_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~173_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~107_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~43_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~174_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~51_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~83_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~115_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~171_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~59_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~91_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~172_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~175_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~22\ : std_logic;
SIGNAL \processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~75_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~254_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~222_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~26\ : std_logic;
SIGNAL \processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~68_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~177_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~116_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~132_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~179_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~36DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~28DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~176_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~84feeder_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~84_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~100_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~92_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~108_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~178_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~180_combout\ : std_logic;
SIGNAL \processador|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \processador|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~4_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~q\ : std_logic;
SIGNAL \processador|comb~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~6_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~29_combout\ : std_logic;
SIGNAL \processador|inc|Add0~25_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~11_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~7_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~28_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~30_combout\ : std_logic;
SIGNAL \processador|inc|Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~9_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~10_combout\ : std_logic;
SIGNAL \processador|inc|Add0~18\ : std_logic;
SIGNAL \processador|inc|Add0~13_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~14\ : std_logic;
SIGNAL \processador|inc|Add0~9_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~10\ : std_logic;
SIGNAL \processador|inc|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Decoder|Equal6~0_combout\ : std_logic;
SIGNAL \Decoder|Equal6~2_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \interfaceBtn|Mux0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \interfaceBtn|Mux0~1_combout\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \Decoder|Equal7~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~10\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~6\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|LessThan0~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~2\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~62\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~66\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~46\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~14\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~18\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~22\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~26\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~30\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~58\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~34\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~74\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~78\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~70\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|contador[16]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|contador[15]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~86\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~38\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~90\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~94\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~98\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~101_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~102\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~105_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~106\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|LessThan0~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~82\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~54\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~50\ : std_logic;
SIGNAL \interfaceBaseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|LessThan0~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|LessThan0~4_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|LessThan0~5_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|LessThan0~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|passouUmSegundo~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~10_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \interfaceChaves|Mux0~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \interfaceChaves|Mux0~0_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~11_combout\ : std_logic;
SIGNAL \Decoder|LessThan0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~12_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \Decoder|Equal0~1_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg[1]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg[2]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg[4]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg[6]~feeder_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|saida7seg[1]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|saida7seg[2]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|saida7seg[4]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex1|saida7seg[6]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex2|saida7seg[0]~feeder_combout\ : std_logic;
SIGNAL \Decoder|Equal2~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex2|saida7seg[4]~feeder_combout\ : std_logic;
SIGNAL \Decoder|Equal3~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex3|saida7seg[1]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex3|saida7seg[2]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex3|saida7seg[3]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex3|saida7seg[4]~feeder_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex3|saida7seg[6]~feeder_combout\ : std_logic;
SIGNAL \Decoder|Equal4~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex4|saida7seg[4]~feeder_combout\ : std_logic;
SIGNAL \Decoder|Equal5~0_combout\ : std_logic;
SIGNAL \Decoder|habilita[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \processador|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex5|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex4|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex2|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex3|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interfaceBaseTempo|contador\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~258_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~254_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~250_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~246_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~242_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~238_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~234_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~230_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~96_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~88_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~80_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~157_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~156_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~155_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~154_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~95_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~153_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~152_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~87_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~79_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~151_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~150_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~149_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~102_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~86_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~148_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~147_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~94_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~78_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~146_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~145_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~144_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~143_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~101_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~93_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~85_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~77_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~142_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~141_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_palavraControle[3]~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~180_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~179_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~178_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~100_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~92_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~84_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~76_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~176_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~175_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~174_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~173_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~99_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~172_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~91_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~171_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~83_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~170_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~169_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~114_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~168_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~98_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~90_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~82_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~167_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~166_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~165_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~164_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~163_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~97_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~162_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~89_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~161_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~81_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~160_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~159_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~158_combout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~48_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~3_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~2_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~1_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~191_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~183_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~181_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~12_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~11_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~10_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_passouUmSegundo~q\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~9_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~q\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~36DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~28DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~74DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~26DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~49DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~64DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~40DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~24DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~63DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~22DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~62DUPLICATE_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~14DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_contador[16]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_contador[15]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceBaseTempo|ALT_INV_contador\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \processador|Registradores|ALT_INV_registrador~226_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~222_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~218_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~214_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~210_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~206_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~202_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~198_combout\ : std_logic;
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
\processador|ROM|ALT_INV_memROM~8_combout\ <= NOT \processador|ROM|memROM~8_combout\;
\Decoder|ALT_INV_habilita[1]~1_combout\ <= NOT \Decoder|habilita[1]~1_combout\;
\Decoder|ALT_INV_habilita[1]~0_combout\ <= NOT \Decoder|habilita[1]~0_combout\;
\Decoder|ALT_INV_Equal6~0_combout\ <= NOT \Decoder|Equal6~0_combout\;
\Decoder|ALT_INV_LessThan0~1_combout\ <= NOT \Decoder|LessThan0~1_combout\;
\interfaceChaves|ALT_INV_saida[0]~0_combout\ <= NOT \interfaceChaves|saida[0]~0_combout\;
\processador|ROM|ALT_INV_memROM~7_combout\ <= NOT \processador|ROM|memROM~7_combout\;
\processador|ROM|ALT_INV_memROM~6_combout\ <= NOT \processador|ROM|memROM~6_combout\;
\processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \processador|ROM|memROM~5_combout\;
\processador|ROM|ALT_INV_memROM~4_combout\ <= NOT \processador|ROM|memROM~4_combout\;
\processador|ROM|ALT_INV_memROM~3_combout\ <= NOT \processador|ROM|memROM~3_combout\;
\processador|ROM|ALT_INV_memROM~2_combout\ <= NOT \processador|ROM|memROM~2_combout\;
\Decoder|ALT_INV_LessThan0~0_combout\ <= NOT \Decoder|LessThan0~0_combout\;
\processador|ROM|ALT_INV_memROM~1_combout\ <= NOT \processador|ROM|memROM~1_combout\;
\processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \processador|ROM|memROM~0_combout\;
\processador|Registradores|ALT_INV_registrador~258_combout\ <= NOT \processador|Registradores|registrador~258_combout\;
\processador|Registradores|ALT_INV_registrador~254_combout\ <= NOT \processador|Registradores|registrador~254_combout\;
\processador|Registradores|ALT_INV_registrador~250_combout\ <= NOT \processador|Registradores|registrador~250_combout\;
\processador|Registradores|ALT_INV_registrador~246_combout\ <= NOT \processador|Registradores|registrador~246_combout\;
\processador|Registradores|ALT_INV_registrador~242_combout\ <= NOT \processador|Registradores|registrador~242_combout\;
\processador|Registradores|ALT_INV_registrador~238_combout\ <= NOT \processador|Registradores|registrador~238_combout\;
\processador|Registradores|ALT_INV_registrador~234_combout\ <= NOT \processador|Registradores|registrador~234_combout\;
\processador|Registradores|ALT_INV_registrador~230_combout\ <= NOT \processador|Registradores|registrador~230_combout\;
\processador|Registradores|ALT_INV_registrador~104_q\ <= NOT \processador|Registradores|registrador~104_q\;
\processador|Registradores|ALT_INV_registrador~96_q\ <= NOT \processador|Registradores|registrador~96_q\;
\processador|Registradores|ALT_INV_registrador~88_q\ <= NOT \processador|Registradores|registrador~88_q\;
\processador|Registradores|ALT_INV_registrador~80_q\ <= NOT \processador|Registradores|registrador~80_q\;
\processador|Registradores|ALT_INV_registrador~157_combout\ <= NOT \processador|Registradores|registrador~157_combout\;
\processador|Registradores|ALT_INV_registrador~72_q\ <= NOT \processador|Registradores|registrador~72_q\;
\processador|Registradores|ALT_INV_registrador~64_q\ <= NOT \processador|Registradores|registrador~64_q\;
\processador|Registradores|ALT_INV_registrador~56_q\ <= NOT \processador|Registradores|registrador~56_q\;
\processador|Registradores|ALT_INV_registrador~48_q\ <= NOT \processador|Registradores|registrador~48_q\;
\processador|Registradores|ALT_INV_registrador~156_combout\ <= NOT \processador|Registradores|registrador~156_combout\;
\processador|Registradores|ALT_INV_registrador~40_q\ <= NOT \processador|Registradores|registrador~40_q\;
\processador|Registradores|ALT_INV_registrador~32_q\ <= NOT \processador|Registradores|registrador~32_q\;
\processador|Registradores|ALT_INV_registrador~24_q\ <= NOT \processador|Registradores|registrador~24_q\;
\processador|Registradores|ALT_INV_registrador~16_q\ <= NOT \processador|Registradores|registrador~16_q\;
\processador|Registradores|ALT_INV_registrador~155_combout\ <= NOT \processador|Registradores|registrador~155_combout\;
\processador|Registradores|ALT_INV_registrador~154_combout\ <= NOT \processador|Registradores|registrador~154_combout\;
\processador|Registradores|ALT_INV_registrador~103_q\ <= NOT \processador|Registradores|registrador~103_q\;
\processador|Registradores|ALT_INV_registrador~127_q\ <= NOT \processador|Registradores|registrador~127_q\;
\processador|Registradores|ALT_INV_registrador~95_q\ <= NOT \processador|Registradores|registrador~95_q\;
\processador|Registradores|ALT_INV_registrador~153_combout\ <= NOT \processador|Registradores|registrador~153_combout\;
\processador|Registradores|ALT_INV_registrador~71_q\ <= NOT \processador|Registradores|registrador~71_q\;
\processador|Registradores|ALT_INV_registrador~39_q\ <= NOT \processador|Registradores|registrador~39_q\;
\processador|Registradores|ALT_INV_registrador~63_q\ <= NOT \processador|Registradores|registrador~63_q\;
\processador|Registradores|ALT_INV_registrador~31_q\ <= NOT \processador|Registradores|registrador~31_q\;
\processador|Registradores|ALT_INV_registrador~152_combout\ <= NOT \processador|Registradores|registrador~152_combout\;
\processador|Registradores|ALT_INV_registrador~87_q\ <= NOT \processador|Registradores|registrador~87_q\;
\processador|Registradores|ALT_INV_registrador~111_q\ <= NOT \processador|Registradores|registrador~111_q\;
\processador|Registradores|ALT_INV_registrador~79_q\ <= NOT \processador|Registradores|registrador~79_q\;
\processador|Registradores|ALT_INV_registrador~151_combout\ <= NOT \processador|Registradores|registrador~151_combout\;
\processador|Registradores|ALT_INV_registrador~55_q\ <= NOT \processador|Registradores|registrador~55_q\;
\processador|Registradores|ALT_INV_registrador~23_q\ <= NOT \processador|Registradores|registrador~23_q\;
\processador|Registradores|ALT_INV_registrador~47_q\ <= NOT \processador|Registradores|registrador~47_q\;
\processador|Registradores|ALT_INV_registrador~15_q\ <= NOT \processador|Registradores|registrador~15_q\;
\processador|Registradores|ALT_INV_registrador~150_combout\ <= NOT \processador|Registradores|registrador~150_combout\;
\processador|Registradores|ALT_INV_registrador~149_combout\ <= NOT \processador|Registradores|registrador~149_combout\;
\processador|Registradores|ALT_INV_registrador~102_q\ <= NOT \processador|Registradores|registrador~102_q\;
\processador|Registradores|ALT_INV_registrador~86_q\ <= NOT \processador|Registradores|registrador~86_q\;
\processador|Registradores|ALT_INV_registrador~148_combout\ <= NOT \processador|Registradores|registrador~148_combout\;
\processador|Registradores|ALT_INV_registrador~70_q\ <= NOT \processador|Registradores|registrador~70_q\;
\processador|Registradores|ALT_INV_registrador~38_q\ <= NOT \processador|Registradores|registrador~38_q\;
\processador|Registradores|ALT_INV_registrador~54_q\ <= NOT \processador|Registradores|registrador~54_q\;
\processador|Registradores|ALT_INV_registrador~22_q\ <= NOT \processador|Registradores|registrador~22_q\;
\processador|Registradores|ALT_INV_registrador~147_combout\ <= NOT \processador|Registradores|registrador~147_combout\;
\processador|Registradores|ALT_INV_registrador~126_q\ <= NOT \processador|Registradores|registrador~126_q\;
\processador|Registradores|ALT_INV_registrador~94_q\ <= NOT \processador|Registradores|registrador~94_q\;
\processador|Registradores|ALT_INV_registrador~110_q\ <= NOT \processador|Registradores|registrador~110_q\;
\processador|Registradores|ALT_INV_registrador~78_q\ <= NOT \processador|Registradores|registrador~78_q\;
\processador|Registradores|ALT_INV_registrador~146_combout\ <= NOT \processador|Registradores|registrador~146_combout\;
\processador|Registradores|ALT_INV_registrador~62_q\ <= NOT \processador|Registradores|registrador~62_q\;
\processador|Registradores|ALT_INV_registrador~30_q\ <= NOT \processador|Registradores|registrador~30_q\;
\processador|Registradores|ALT_INV_registrador~46_q\ <= NOT \processador|Registradores|registrador~46_q\;
\processador|Registradores|ALT_INV_registrador~14_q\ <= NOT \processador|Registradores|registrador~14_q\;
\processador|Registradores|ALT_INV_registrador~145_combout\ <= NOT \processador|Registradores|registrador~145_combout\;
\processador|ROM|ALT_INV_memROM~27_combout\ <= NOT \processador|ROM|memROM~27_combout\;
\processador|ROM|ALT_INV_memROM~26_combout\ <= NOT \processador|ROM|memROM~26_combout\;
\processador|ROM|ALT_INV_memROM~25_combout\ <= NOT \processador|ROM|memROM~25_combout\;
\processador|ROM|ALT_INV_memROM~24_combout\ <= NOT \processador|ROM|memROM~24_combout\;
\processador|ROM|ALT_INV_memROM~23_combout\ <= NOT \processador|ROM|memROM~23_combout\;
\processador|ROM|ALT_INV_memROM~22_combout\ <= NOT \processador|ROM|memROM~22_combout\;
\processador|ROM|ALT_INV_memROM~21_combout\ <= NOT \processador|ROM|memROM~21_combout\;
\processador|ROM|ALT_INV_memROM~20_combout\ <= NOT \processador|ROM|memROM~20_combout\;
\processador|ROM|ALT_INV_memROM~19_combout\ <= NOT \processador|ROM|memROM~19_combout\;
\processador|Registradores|ALT_INV_registrador~144_combout\ <= NOT \processador|Registradores|registrador~144_combout\;
\processador|Registradores|ALT_INV_registrador~125_q\ <= NOT \processador|Registradores|registrador~125_q\;
\processador|Registradores|ALT_INV_registrador~109_q\ <= NOT \processador|Registradores|registrador~109_q\;
\processador|Registradores|ALT_INV_registrador~143_combout\ <= NOT \processador|Registradores|registrador~143_combout\;
\processador|Registradores|ALT_INV_registrador~101_q\ <= NOT \processador|Registradores|registrador~101_q\;
\processador|Registradores|ALT_INV_registrador~93_q\ <= NOT \processador|Registradores|registrador~93_q\;
\processador|Registradores|ALT_INV_registrador~85_q\ <= NOT \processador|Registradores|registrador~85_q\;
\processador|Registradores|ALT_INV_registrador~77_q\ <= NOT \processador|Registradores|registrador~77_q\;
\processador|Registradores|ALT_INV_registrador~142_combout\ <= NOT \processador|Registradores|registrador~142_combout\;
\processador|Registradores|ALT_INV_registrador~69_q\ <= NOT \processador|Registradores|registrador~69_q\;
\processador|Registradores|ALT_INV_registrador~61_q\ <= NOT \processador|Registradores|registrador~61_q\;
\processador|Registradores|ALT_INV_registrador~53_q\ <= NOT \processador|Registradores|registrador~53_q\;
\processador|Registradores|ALT_INV_registrador~45_q\ <= NOT \processador|Registradores|registrador~45_q\;
\processador|Registradores|ALT_INV_registrador~141_combout\ <= NOT \processador|Registradores|registrador~141_combout\;
\processador|ROM|ALT_INV_memROM~18_combout\ <= NOT \processador|ROM|memROM~18_combout\;
\processador|ROM|ALT_INV_memROM~17_combout\ <= NOT \processador|ROM|memROM~17_combout\;
\processador|ROM|ALT_INV_memROM~16_combout\ <= NOT \processador|ROM|memROM~16_combout\;
\processador|ROM|ALT_INV_memROM~15_combout\ <= NOT \processador|ROM|memROM~15_combout\;
\processador|ROM|ALT_INV_memROM~14_combout\ <= NOT \processador|ROM|memROM~14_combout\;
\processador|ROM|ALT_INV_memROM~13_combout\ <= NOT \processador|ROM|memROM~13_combout\;
\processador|Registradores|ALT_INV_registrador~37_q\ <= NOT \processador|Registradores|registrador~37_q\;
\processador|Registradores|ALT_INV_registrador~29_q\ <= NOT \processador|Registradores|registrador~29_q\;
\processador|Registradores|ALT_INV_registrador~21_q\ <= NOT \processador|Registradores|registrador~21_q\;
\processador|Registradores|ALT_INV_registrador~13_q\ <= NOT \processador|Registradores|registrador~13_q\;
\processador|ROM|ALT_INV_memROM~12_combout\ <= NOT \processador|ROM|memROM~12_combout\;
\Decoder|ALT_INV_Equal6~2_combout\ <= NOT \Decoder|Equal6~2_combout\;
\Decoder|ALT_INV_Equal6~1_combout\ <= NOT \Decoder|Equal6~1_combout\;
\Decoder|ALT_INV_Equal0~0_combout\ <= NOT \Decoder|Equal0~0_combout\;
\processador|ROM|ALT_INV_memROM~11_combout\ <= NOT \processador|ROM|memROM~11_combout\;
\processador|ROM|ALT_INV_memROM~10_combout\ <= NOT \processador|ROM|memROM~10_combout\;
\processador|ROM|ALT_INV_memROM~9_combout\ <= NOT \processador|ROM|memROM~9_combout\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[0]~0_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\;
\processador|ULA|ALT_INV_saida[7]~7_combout\ <= NOT \processador|ULA|saida[7]~7_combout\;
\processador|ULA|ALT_INV_saida[6]~6_combout\ <= NOT \processador|ULA|saida[6]~6_combout\;
\processador|UC|ALT_INV_palavraControle[3]~0_combout\ <= NOT \processador|UC|palavraControle[3]~0_combout\;
\processador|ROM|ALT_INV_memROM~36_combout\ <= NOT \processador|ROM|memROM~36_combout\;
\processador|ROM|ALT_INV_memROM~35_combout\ <= NOT \processador|ROM|memROM~35_combout\;
\processador|ROM|ALT_INV_memROM~34_combout\ <= NOT \processador|ROM|memROM~34_combout\;
\processador|ROM|ALT_INV_memROM~33_combout\ <= NOT \processador|ROM|memROM~33_combout\;
\processador|ROM|ALT_INV_memROM~32_combout\ <= NOT \processador|ROM|memROM~32_combout\;
\processador|ROM|ALT_INV_memROM~31_combout\ <= NOT \processador|ROM|memROM~31_combout\;
\processador|ROM|ALT_INV_memROM~30_combout\ <= NOT \processador|ROM|memROM~30_combout\;
\processador|ROM|ALT_INV_memROM~29_combout\ <= NOT \processador|ROM|memROM~29_combout\;
\processador|Registradores|ALT_INV_registrador~180_combout\ <= NOT \processador|Registradores|registrador~180_combout\;
\processador|Registradores|ALT_INV_registrador~179_combout\ <= NOT \processador|Registradores|registrador~179_combout\;
\processador|Registradores|ALT_INV_registrador~132_q\ <= NOT \processador|Registradores|registrador~132_q\;
\processador|Registradores|ALT_INV_registrador~116_q\ <= NOT \processador|Registradores|registrador~116_q\;
\processador|Registradores|ALT_INV_registrador~178_combout\ <= NOT \processador|Registradores|registrador~178_combout\;
\processador|Registradores|ALT_INV_registrador~108_q\ <= NOT \processador|Registradores|registrador~108_q\;
\processador|Registradores|ALT_INV_registrador~100_q\ <= NOT \processador|Registradores|registrador~100_q\;
\processador|Registradores|ALT_INV_registrador~92_q\ <= NOT \processador|Registradores|registrador~92_q\;
\processador|Registradores|ALT_INV_registrador~84_q\ <= NOT \processador|Registradores|registrador~84_q\;
\processador|Registradores|ALT_INV_registrador~177_combout\ <= NOT \processador|Registradores|registrador~177_combout\;
\processador|Registradores|ALT_INV_registrador~76_q\ <= NOT \processador|Registradores|registrador~76_q\;
\processador|Registradores|ALT_INV_registrador~68_q\ <= NOT \processador|Registradores|registrador~68_q\;
\processador|Registradores|ALT_INV_registrador~60_q\ <= NOT \processador|Registradores|registrador~60_q\;
\processador|Registradores|ALT_INV_registrador~52_q\ <= NOT \processador|Registradores|registrador~52_q\;
\processador|Registradores|ALT_INV_registrador~176_combout\ <= NOT \processador|Registradores|registrador~176_combout\;
\processador|Registradores|ALT_INV_registrador~44_q\ <= NOT \processador|Registradores|registrador~44_q\;
\processador|Registradores|ALT_INV_registrador~36_q\ <= NOT \processador|Registradores|registrador~36_q\;
\processador|Registradores|ALT_INV_registrador~28_q\ <= NOT \processador|Registradores|registrador~28_q\;
\processador|Registradores|ALT_INV_registrador~20_q\ <= NOT \processador|Registradores|registrador~20_q\;
\processador|Registradores|ALT_INV_registrador~175_combout\ <= NOT \processador|Registradores|registrador~175_combout\;
\processador|Registradores|ALT_INV_registrador~174_combout\ <= NOT \processador|Registradores|registrador~174_combout\;
\processador|Registradores|ALT_INV_registrador~107_q\ <= NOT \processador|Registradores|registrador~107_q\;
\processador|Registradores|ALT_INV_registrador~75_q\ <= NOT \processador|Registradores|registrador~75_q\;
\processador|Registradores|ALT_INV_registrador~43_q\ <= NOT \processador|Registradores|registrador~43_q\;
\processador|Registradores|ALT_INV_registrador~173_combout\ <= NOT \processador|Registradores|registrador~173_combout\;
\processador|Registradores|ALT_INV_registrador~131_q\ <= NOT \processador|Registradores|registrador~131_q\;
\processador|Registradores|ALT_INV_registrador~99_q\ <= NOT \processador|Registradores|registrador~99_q\;
\processador|Registradores|ALT_INV_registrador~67_q\ <= NOT \processador|Registradores|registrador~67_q\;
\processador|Registradores|ALT_INV_registrador~35_q\ <= NOT \processador|Registradores|registrador~35_q\;
\processador|Registradores|ALT_INV_registrador~172_combout\ <= NOT \processador|Registradores|registrador~172_combout\;
\processador|Registradores|ALT_INV_registrador~91_q\ <= NOT \processador|Registradores|registrador~91_q\;
\processador|Registradores|ALT_INV_registrador~59_q\ <= NOT \processador|Registradores|registrador~59_q\;
\processador|Registradores|ALT_INV_registrador~27_q\ <= NOT \processador|Registradores|registrador~27_q\;
\processador|Registradores|ALT_INV_registrador~171_combout\ <= NOT \processador|Registradores|registrador~171_combout\;
\processador|Registradores|ALT_INV_registrador~115_q\ <= NOT \processador|Registradores|registrador~115_q\;
\processador|Registradores|ALT_INV_registrador~83_q\ <= NOT \processador|Registradores|registrador~83_q\;
\processador|Registradores|ALT_INV_registrador~51_q\ <= NOT \processador|Registradores|registrador~51_q\;
\processador|Registradores|ALT_INV_registrador~19_q\ <= NOT \processador|Registradores|registrador~19_q\;
\processador|Registradores|ALT_INV_registrador~170_combout\ <= NOT \processador|Registradores|registrador~170_combout\;
\processador|Registradores|ALT_INV_registrador~169_combout\ <= NOT \processador|Registradores|registrador~169_combout\;
\processador|Registradores|ALT_INV_registrador~130_q\ <= NOT \processador|Registradores|registrador~130_q\;
\processador|Registradores|ALT_INV_registrador~114_q\ <= NOT \processador|Registradores|registrador~114_q\;
\processador|Registradores|ALT_INV_registrador~168_combout\ <= NOT \processador|Registradores|registrador~168_combout\;
\processador|Registradores|ALT_INV_registrador~106_q\ <= NOT \processador|Registradores|registrador~106_q\;
\processador|Registradores|ALT_INV_registrador~98_q\ <= NOT \processador|Registradores|registrador~98_q\;
\processador|Registradores|ALT_INV_registrador~90_q\ <= NOT \processador|Registradores|registrador~90_q\;
\processador|Registradores|ALT_INV_registrador~82_q\ <= NOT \processador|Registradores|registrador~82_q\;
\processador|Registradores|ALT_INV_registrador~167_combout\ <= NOT \processador|Registradores|registrador~167_combout\;
\processador|Registradores|ALT_INV_registrador~74_q\ <= NOT \processador|Registradores|registrador~74_q\;
\processador|Registradores|ALT_INV_registrador~66_q\ <= NOT \processador|Registradores|registrador~66_q\;
\processador|Registradores|ALT_INV_registrador~58_q\ <= NOT \processador|Registradores|registrador~58_q\;
\processador|Registradores|ALT_INV_registrador~50_q\ <= NOT \processador|Registradores|registrador~50_q\;
\processador|Registradores|ALT_INV_registrador~166_combout\ <= NOT \processador|Registradores|registrador~166_combout\;
\processador|Registradores|ALT_INV_registrador~42_q\ <= NOT \processador|Registradores|registrador~42_q\;
\processador|Registradores|ALT_INV_registrador~34_q\ <= NOT \processador|Registradores|registrador~34_q\;
\processador|Registradores|ALT_INV_registrador~26_q\ <= NOT \processador|Registradores|registrador~26_q\;
\processador|Registradores|ALT_INV_registrador~18_q\ <= NOT \processador|Registradores|registrador~18_q\;
\processador|Registradores|ALT_INV_registrador~165_combout\ <= NOT \processador|Registradores|registrador~165_combout\;
\processador|Registradores|ALT_INV_registrador~164_combout\ <= NOT \processador|Registradores|registrador~164_combout\;
\processador|Registradores|ALT_INV_registrador~105_q\ <= NOT \processador|Registradores|registrador~105_q\;
\processador|Registradores|ALT_INV_registrador~73_q\ <= NOT \processador|Registradores|registrador~73_q\;
\processador|Registradores|ALT_INV_registrador~41_q\ <= NOT \processador|Registradores|registrador~41_q\;
\processador|Registradores|ALT_INV_registrador~163_combout\ <= NOT \processador|Registradores|registrador~163_combout\;
\processador|Registradores|ALT_INV_registrador~129_q\ <= NOT \processador|Registradores|registrador~129_q\;
\processador|Registradores|ALT_INV_registrador~97_q\ <= NOT \processador|Registradores|registrador~97_q\;
\processador|Registradores|ALT_INV_registrador~65_q\ <= NOT \processador|Registradores|registrador~65_q\;
\processador|Registradores|ALT_INV_registrador~33_q\ <= NOT \processador|Registradores|registrador~33_q\;
\processador|Registradores|ALT_INV_registrador~162_combout\ <= NOT \processador|Registradores|registrador~162_combout\;
\processador|Registradores|ALT_INV_registrador~89_q\ <= NOT \processador|Registradores|registrador~89_q\;
\processador|Registradores|ALT_INV_registrador~57_q\ <= NOT \processador|Registradores|registrador~57_q\;
\processador|Registradores|ALT_INV_registrador~25_q\ <= NOT \processador|Registradores|registrador~25_q\;
\processador|Registradores|ALT_INV_registrador~161_combout\ <= NOT \processador|Registradores|registrador~161_combout\;
\processador|Registradores|ALT_INV_registrador~113_q\ <= NOT \processador|Registradores|registrador~113_q\;
\processador|Registradores|ALT_INV_registrador~81_q\ <= NOT \processador|Registradores|registrador~81_q\;
\processador|Registradores|ALT_INV_registrador~49_q\ <= NOT \processador|Registradores|registrador~49_q\;
\processador|Registradores|ALT_INV_registrador~17_q\ <= NOT \processador|Registradores|registrador~17_q\;
\processador|Registradores|ALT_INV_registrador~160_combout\ <= NOT \processador|Registradores|registrador~160_combout\;
\processador|Registradores|ALT_INV_registrador~159_combout\ <= NOT \processador|Registradores|registrador~159_combout\;
\processador|Registradores|ALT_INV_registrador~128_q\ <= NOT \processador|Registradores|registrador~128_q\;
\processador|Registradores|ALT_INV_registrador~112_q\ <= NOT \processador|Registradores|registrador~112_q\;
\processador|ROM|ALT_INV_memROM~28_combout\ <= NOT \processador|ROM|memROM~28_combout\;
\processador|Registradores|ALT_INV_registrador~158_combout\ <= NOT \processador|Registradores|registrador~158_combout\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\processador|ROM|ALT_INV_memROM~48_combout\ <= NOT \processador|ROM|memROM~48_combout\;
\processador|ROM|ALT_INV_memROM~47_combout\ <= NOT \processador|ROM|memROM~47_combout\;
\processador|ROM|ALT_INV_memROM~46_combout\ <= NOT \processador|ROM|memROM~46_combout\;
\processador|ROM|ALT_INV_memROM~45_combout\ <= NOT \processador|ROM|memROM~45_combout\;
\processador|ROM|ALT_INV_memROM~44_combout\ <= NOT \processador|ROM|memROM~44_combout\;
\processador|ROM|ALT_INV_memROM~43_combout\ <= NOT \processador|ROM|memROM~43_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\ <= NOT \interfaceBaseTempo|passouUmSegundo~0_combout\;
\interfaceBaseTempo|ALT_INV_LessThan0~5_combout\ <= NOT \interfaceBaseTempo|LessThan0~5_combout\;
\interfaceBaseTempo|ALT_INV_LessThan0~4_combout\ <= NOT \interfaceBaseTempo|LessThan0~4_combout\;
\interfaceBaseTempo|ALT_INV_LessThan0~3_combout\ <= NOT \interfaceBaseTempo|LessThan0~3_combout\;
\interfaceBaseTempo|ALT_INV_LessThan0~2_combout\ <= NOT \interfaceBaseTempo|LessThan0~2_combout\;
\interfaceBaseTempo|ALT_INV_LessThan0~1_combout\ <= NOT \interfaceBaseTempo|LessThan0~1_combout\;
\interfaceBaseTempo|ALT_INV_LessThan0~0_combout\ <= NOT \interfaceBaseTempo|LessThan0~0_combout\;
\processador|flipflop|ALT_INV_data_out~3_combout\ <= NOT \processador|flipflop|data_out~3_combout\;
\processador|flipflop|ALT_INV_data_out~2_combout\ <= NOT \processador|flipflop|data_out~2_combout\;
\processador|flipflop|ALT_INV_data_out~1_combout\ <= NOT \processador|flipflop|data_out~1_combout\;
\processador|flipflop|ALT_INV_data_out~0_combout\ <= NOT \processador|flipflop|data_out~0_combout\;
\processador|UC|ALT_INV_Equal0~0_combout\ <= NOT \processador|UC|Equal0~0_combout\;
\processador|UC|ALT_INV_Equal3~0_combout\ <= NOT \processador|UC|Equal3~0_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \processador|MUX_ULA|saida_MUX[7]~7_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \processador|MUX_ULA|saida_MUX[5]~5_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \processador|MUX_ULA|saida_MUX[3]~3_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \processador|MUX_ULA|saida_MUX[2]~2_combout\;
\processador|Registradores|ALT_INV_registrador~191_combout\ <= NOT \processador|Registradores|registrador~191_combout\;
\processador|Registradores|ALT_INV_registrador~183_combout\ <= NOT \processador|Registradores|registrador~183_combout\;
\processador|Registradores|ALT_INV_registrador~181_combout\ <= NOT \processador|Registradores|registrador~181_combout\;
\processador|ROM|ALT_INV_memROM~42_combout\ <= NOT \processador|ROM|memROM~42_combout\;
\processador|ROM|ALT_INV_memROM~41_combout\ <= NOT \processador|ROM|memROM~41_combout\;
\processador|ROM|ALT_INV_memROM~40_combout\ <= NOT \processador|ROM|memROM~40_combout\;
\processador|ROM|ALT_INV_memROM~39_combout\ <= NOT \processador|ROM|memROM~39_combout\;
\processador|ROM|ALT_INV_memROM~38_combout\ <= NOT \processador|ROM|memROM~38_combout\;
\processador|ROM|ALT_INV_memROM~37_combout\ <= NOT \processador|ROM|memROM~37_combout\;
\processador|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX_ULA|saida_MUX[0]~0_combout\;
\interfaceChaves|ALT_INV_saida[0]~12_combout\ <= NOT \interfaceChaves|saida[0]~12_combout\;
\interfaceChaves|ALT_INV_saida[0]~11_combout\ <= NOT \interfaceChaves|saida[0]~11_combout\;
\interfaceChaves|ALT_INV_saida[0]~10_combout\ <= NOT \interfaceChaves|saida[0]~10_combout\;
\interfaceChaves|ALT_INV_Mux0~1_combout\ <= NOT \interfaceChaves|Mux0~1_combout\;
\interfaceChaves|ALT_INV_Mux0~0_combout\ <= NOT \interfaceChaves|Mux0~0_combout\;
\interfaceBaseTempo|ALT_INV_passouUmSegundo~q\ <= NOT \interfaceBaseTempo|passouUmSegundo~q\;
\interfaceBtn|ALT_INV_saida[0]~0_combout\ <= NOT \interfaceBtn|saida[0]~0_combout\;
\interfaceBtn|ALT_INV_Mux0~1_combout\ <= NOT \interfaceBtn|Mux0~1_combout\;
\interfaceBtn|ALT_INV_Mux0~0_combout\ <= NOT \interfaceBtn|Mux0~0_combout\;
\interfaceChaves|ALT_INV_saida[0]~9_combout\ <= NOT \interfaceChaves|saida[0]~9_combout\;
\processador|UC|ALT_INV_Equal5~0_combout\ <= NOT \processador|UC|Equal5~0_combout\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[6]~6_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[3]~3_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\;
\processador|flipflop|ALT_INV_data_out~q\ <= NOT \processador|flipflop|data_out~q\;
\interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\;
\processador|Registradores|ALT_INV_registrador~36DUPLICATE_q\ <= NOT \processador|Registradores|registrador~36DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~28DUPLICATE_q\ <= NOT \processador|Registradores|registrador~28DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~74DUPLICATE_q\ <= NOT \processador|Registradores|registrador~74DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~26DUPLICATE_q\ <= NOT \processador|Registradores|registrador~26DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~49DUPLICATE_q\ <= NOT \processador|Registradores|registrador~49DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~64DUPLICATE_q\ <= NOT \processador|Registradores|registrador~64DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~40DUPLICATE_q\ <= NOT \processador|Registradores|registrador~40DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~24DUPLICATE_q\ <= NOT \processador|Registradores|registrador~24DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~63DUPLICATE_q\ <= NOT \processador|Registradores|registrador~63DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~22DUPLICATE_q\ <= NOT \processador|Registradores|registrador~22DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~62DUPLICATE_q\ <= NOT \processador|Registradores|registrador~62DUPLICATE_q\;
\processador|Registradores|ALT_INV_registrador~14DUPLICATE_q\ <= NOT \processador|Registradores|registrador~14DUPLICATE_q\;
\interfaceBaseTempo|ALT_INV_contador[16]~DUPLICATE_q\ <= NOT \interfaceBaseTempo|contador[16]~DUPLICATE_q\;
\interfaceBaseTempo|ALT_INV_contador[15]~DUPLICATE_q\ <= NOT \interfaceBaseTempo|contador[15]~DUPLICATE_q\;
\interfaceBaseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \interfaceBaseTempo|contador[11]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\interfaceBaseTempo|ALT_INV_contador\(22) <= NOT \interfaceBaseTempo|contador\(22);
\interfaceBaseTempo|ALT_INV_contador\(21) <= NOT \interfaceBaseTempo|contador\(21);
\interfaceBaseTempo|ALT_INV_contador\(20) <= NOT \interfaceBaseTempo|contador\(20);
\interfaceBaseTempo|ALT_INV_contador\(19) <= NOT \interfaceBaseTempo|contador\(19);
\interfaceBaseTempo|ALT_INV_contador\(18) <= NOT \interfaceBaseTempo|contador\(18);
\interfaceBaseTempo|ALT_INV_contador\(16) <= NOT \interfaceBaseTempo|contador\(16);
\interfaceBaseTempo|ALT_INV_contador\(23) <= NOT \interfaceBaseTempo|contador\(23);
\interfaceBaseTempo|ALT_INV_contador\(14) <= NOT \interfaceBaseTempo|contador\(14);
\interfaceBaseTempo|ALT_INV_contador\(13) <= NOT \interfaceBaseTempo|contador\(13);
\interfaceBaseTempo|ALT_INV_contador\(15) <= NOT \interfaceBaseTempo|contador\(15);
\interfaceBaseTempo|ALT_INV_contador\(4) <= NOT \interfaceBaseTempo|contador\(4);
\interfaceBaseTempo|ALT_INV_contador\(3) <= NOT \interfaceBaseTempo|contador\(3);
\interfaceBaseTempo|ALT_INV_contador\(11) <= NOT \interfaceBaseTempo|contador\(11);
\interfaceBaseTempo|ALT_INV_contador\(24) <= NOT \interfaceBaseTempo|contador\(24);
\interfaceBaseTempo|ALT_INV_contador\(25) <= NOT \interfaceBaseTempo|contador\(25);
\interfaceBaseTempo|ALT_INV_contador\(5) <= NOT \interfaceBaseTempo|contador\(5);
\interfaceBaseTempo|ALT_INV_contador\(26) <= NOT \interfaceBaseTempo|contador\(26);
\interfaceBaseTempo|ALT_INV_contador\(17) <= NOT \interfaceBaseTempo|contador\(17);
\interfaceBaseTempo|ALT_INV_contador\(12) <= NOT \interfaceBaseTempo|contador\(12);
\interfaceBaseTempo|ALT_INV_contador\(10) <= NOT \interfaceBaseTempo|contador\(10);
\interfaceBaseTempo|ALT_INV_contador\(9) <= NOT \interfaceBaseTempo|contador\(9);
\interfaceBaseTempo|ALT_INV_contador\(8) <= NOT \interfaceBaseTempo|contador\(8);
\interfaceBaseTempo|ALT_INV_contador\(7) <= NOT \interfaceBaseTempo|contador\(7);
\interfaceBaseTempo|ALT_INV_contador\(6) <= NOT \interfaceBaseTempo|contador\(6);
\interfaceBaseTempo|ALT_INV_contador\(0) <= NOT \interfaceBaseTempo|contador\(0);
\interfaceBaseTempo|ALT_INV_contador\(1) <= NOT \interfaceBaseTempo|contador\(1);
\processador|Registradores|ALT_INV_registrador~226_combout\ <= NOT \processador|Registradores|registrador~226_combout\;
\processador|Registradores|ALT_INV_registrador~222_combout\ <= NOT \processador|Registradores|registrador~222_combout\;
\processador|Registradores|ALT_INV_registrador~218_combout\ <= NOT \processador|Registradores|registrador~218_combout\;
\processador|Registradores|ALT_INV_registrador~214_combout\ <= NOT \processador|Registradores|registrador~214_combout\;
\processador|Registradores|ALT_INV_registrador~210_combout\ <= NOT \processador|Registradores|registrador~210_combout\;
\processador|Registradores|ALT_INV_registrador~206_combout\ <= NOT \processador|Registradores|registrador~206_combout\;
\processador|Registradores|ALT_INV_registrador~202_combout\ <= NOT \processador|Registradores|registrador~202_combout\;
\interfaceBaseTempo|ALT_INV_contador\(2) <= NOT \interfaceBaseTempo|contador\(2);
\processador|Registradores|ALT_INV_registrador~198_combout\ <= NOT \processador|Registradores|registrador~198_combout\;
\processador|ULA|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA|Add0~29_sumout\;
\processador|ULA|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA|Add0~25_sumout\;
\processador|ULA|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA|Add0~21_sumout\;
\processador|ULA|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA|Add0~17_sumout\;
\processador|ULA|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA|Add0~13_sumout\;
\processador|ULA|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA|Add0~9_sumout\;
\processador|ULA|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA|Add0~5_sumout\;
\processador|ULA|ALT_INV_Add0~1_sumout\ <= NOT \processador|ULA|Add0~1_sumout\;
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);

-- Location: IOOBUF_X34_Y45_N2
\BarramentoEntrada_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|saida[0]~12_combout\,
	oe => \interfaceChaves|saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(0));

-- Location: IOOBUF_X44_Y45_N53
\BarramentoEntrada_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(1));

-- Location: IOOBUF_X44_Y45_N36
\BarramentoEntrada_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(2));

-- Location: IOOBUF_X46_Y45_N59
\BarramentoEntrada_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(3));

-- Location: IOOBUF_X42_Y45_N53
\BarramentoEntrada_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(4));

-- Location: IOOBUF_X46_Y45_N76
\BarramentoEntrada_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(5));

-- Location: IOOBUF_X44_Y45_N2
\BarramentoEntrada_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoEntrada_t(6));

-- Location: IOOBUF_X38_Y45_N2
\BarramentoEntrada_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
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
	i => \interfaceHEX|conversorHex3|saida7seg\(0),
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
	i => \interfaceHEX|conversorHex3|saida7seg\(1),
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
	i => \interfaceHEX|conversorHex3|saida7seg\(2),
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
	i => \interfaceHEX|conversorHex3|saida7seg\(3),
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
	i => \interfaceHEX|conversorHex3|saida7seg\(4),
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
	i => \interfaceHEX|conversorHex3|saida7seg\(5),
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
	i => \interfaceHEX|conversorHex3|saida7seg\(6),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(0),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(1),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(2),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(3),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(4),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(5),
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
	i => \interfaceHEX|conversorHex4|saida7seg\(6),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(0),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(1),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(2),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(3),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(4),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(5),
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
	i => \interfaceHEX|conversorHex5|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X44_Y45_N19
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X42_Y45_N2
\habilitahex_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(0));

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X50_Y0_N2
\habilitahex_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(3));

-- Location: IOOBUF_X54_Y15_N56
\habilitahex_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(4));

-- Location: IOOBUF_X54_Y15_N22
\habilitahex_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(5));

-- Location: IOOBUF_X14_Y0_N53
\habilitahex_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal6~2_combout\,
	devoe => ww_devoe,
	o => ww_habilitahex_t(6));

-- Location: IOOBUF_X20_Y45_N2
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

-- Location: IOOBUF_X24_Y0_N2
\BarramentoSaida_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~145_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(0));

-- Location: IOOBUF_X25_Y0_N36
\BarramentoSaida_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~150_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(1));

-- Location: IOOBUF_X29_Y0_N36
\BarramentoSaida_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~155_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(2));

-- Location: IOOBUF_X25_Y0_N19
\BarramentoSaida_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~160_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(3));

-- Location: IOOBUF_X24_Y0_N53
\BarramentoSaida_t[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~165_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(4));

-- Location: IOOBUF_X32_Y45_N42
\BarramentoSaida_t[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~170_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(5));

-- Location: IOOBUF_X54_Y14_N45
\BarramentoSaida_t[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(6));

-- Location: IOOBUF_X54_Y17_N22
\BarramentoSaida_t[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|Registradores|registrador~180_combout\,
	devoe => ww_devoe,
	o => ww_BarramentoSaida_t(7));

-- Location: IOOBUF_X25_Y0_N53
\enderecoRAMROM_DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(0));

-- Location: IOOBUF_X29_Y0_N53
\enderecoRAMROM_DEBUG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(1));

-- Location: IOOBUF_X38_Y0_N2
\enderecoRAMROM_DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(2));

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N19
\enderecoRAMROM_DEBUG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~28_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(4));

-- Location: IOOBUF_X54_Y16_N22
\enderecoRAMROM_DEBUG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~29_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(5));

-- Location: IOOBUF_X23_Y0_N93
\enderecoRAMROM_DEBUG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~30_combout\,
	devoe => ww_devoe,
	o => ww_enderecoRAMROM_DEBUG(6));

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X54_Y15_N39
\opcode_t[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~32_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(0));

-- Location: IOOBUF_X54_Y14_N96
\opcode_t[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~34_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(1));

-- Location: IOOBUF_X54_Y14_N79
\opcode_t[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~36_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(2));

-- Location: IOOBUF_X54_Y14_N62
\opcode_t[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ROM|memROM~27_combout\,
	devoe => ww_devoe,
	o => ww_opcode_t(3));

-- Location: IOOBUF_X14_Y0_N36
\habBaseTempo_t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal6~2_combout\,
	devoe => ww_devoe,
	o => ww_habBaseTempo_t);

-- Location: IOOBUF_X20_Y45_N53
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

-- Location: LABCELL_X36_Y5_N30
\processador|inc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|inc|Add0~18\ = CARRY(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|inc|Add0~17_sumout\,
	cout => \processador|inc|Add0~18\);

-- Location: LABCELL_X36_Y5_N39
\processador|inc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|inc|Add0~10\ ))
-- \processador|inc|Add0~6\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|inc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|inc|Add0~10\,
	sumout => \processador|inc|Add0~5_sumout\,
	cout => \processador|inc|Add0~6\);

-- Location: LABCELL_X36_Y5_N42
\processador|inc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|inc|Add0~6\ ))
-- \processador|inc|Add0~22\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|inc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|inc|Add0~6\,
	sumout => \processador|inc|Add0~21_sumout\,
	cout => \processador|inc|Add0~22\);

-- Location: MLABCELL_X37_Y6_N18
\processador|ROM|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~35_combout\ = ( \processador|PC|DOUT\(4) & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & (\processador|PC|DOUT[5]~DUPLICATE_q\))) # (\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(2) $ 
-- (\processador|PC|DOUT[5]~DUPLICATE_q\)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(4) & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\)) # (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT[0]~DUPLICATE_q\))))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) $ (((!\processador|PC|DOUT[0]~DUPLICATE_q\) # 
-- (\processador|PC|DOUT\(2)))))) ) ) ) # ( \processador|PC|DOUT\(4) & ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) $ (((\processador|PC|DOUT\(2) & !\processador|PC|DOUT[0]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\processador|PC|DOUT\(4) & ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000010100100001010000000100101010110010100001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~35_combout\);

-- Location: MLABCELL_X37_Y4_N27
\processador|ROM|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~36_combout\ = ( !\processador|ROM|memROM~35_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~35_combout\,
	combout => \processador|ROM|memROM~36_combout\);

-- Location: LABCELL_X35_Y6_N12
\processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~1_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(2)))) # 
-- (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2))))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[5]~DUPLICATE_q\ & 
-- \processador|PC|DOUT[0]~DUPLICATE_q\)) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(2) & 
-- ((!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT[5]~DUPLICATE_q\))) # (\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((\processador|PC|DOUT[0]~DUPLICATE_q\))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(4) & ( 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) $ (\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001110000100101110001000000011000001010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~1_combout\);

-- Location: LABCELL_X35_Y6_N6
\processador|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~8_combout\ = ( \processador|ROM|memROM~1_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|ROM|memROM~8_combout\);

-- Location: FF_X36_Y5_N37
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~9_sumout\,
	asdata => \processador|ROM|memROM~8_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N36
\processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~4_combout\ = ( \processador|ROM|memROM~2_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~2_combout\,
	combout => \processador|ROM|memROM~4_combout\);

-- Location: FF_X36_Y5_N41
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~5_sumout\,
	asdata => \processador|ROM|memROM~4_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y4_N33
\processador|ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~33_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(5) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(4)))) # (\processador|PC|DOUT\(5) & 
-- (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (!\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(5) & 
-- ((!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(4)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\))))) # (\processador|PC|DOUT\(5) & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) ) # ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(5) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # ((!\processador|PC|DOUT\(4))))) # 
-- (\processador|PC|DOUT\(5) & (((!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)) # (\processador|PC|DOUT\(4)))) ) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT\(5) & ((!\processador|PC|DOUT\(4)) # ((!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(5) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT[0]~DUPLICATE_q\) # 
-- (\processador|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110110001111011011010110111100110110011000001001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(5),
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~33_combout\);

-- Location: MLABCELL_X37_Y4_N9
\processador|ROM|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~34_combout\ = ( \processador|ROM|memROM~33_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~33_combout\,
	combout => \processador|ROM|memROM~34_combout\);

-- Location: MLABCELL_X37_Y6_N42
\processador|ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~31_combout\ = ( \processador|PC|DOUT\(4) & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) $ (((\processador|PC|DOUT\(2) & !\processador|PC|DOUT[0]~DUPLICATE_q\))))) # 
-- (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(1) & !\processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(4) & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((!\processador|PC|DOUT\(2)) # ((\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(2))))) ) ) ) # ( \processador|PC|DOUT\(4) & ( 
-- !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(1) & \processador|PC|DOUT[0]~DUPLICATE_q\)) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(1) & 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\)))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & ((\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(1))))) ) ) ) # ( !\processador|PC|DOUT\(4) & ( !\processador|PC|DOUT\(3) & ( 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\) # ((\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101111001001000100110011011010100110101000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~31_combout\);

-- Location: MLABCELL_X37_Y4_N12
\processador|ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~32_combout\ = ( \processador|ROM|memROM~31_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~31_combout\,
	combout => \processador|ROM|memROM~32_combout\);

-- Location: MLABCELL_X37_Y4_N36
\processador|ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~25_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~25_combout\);

-- Location: MLABCELL_X37_Y4_N15
\processador|ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~26_combout\ = ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~26_combout\);

-- Location: MLABCELL_X37_Y4_N42
\processador|ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~24_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~24_combout\);

-- Location: MLABCELL_X37_Y4_N48
\processador|ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~27_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~24_combout\ & ( (!\processador|PC|DOUT\(5) & ((!\processador|PC|DOUT\(4) & ((\processador|ROM|memROM~26_combout\))) # (\processador|PC|DOUT\(4) & 
-- (\processador|ROM|memROM~25_combout\)))) # (\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(4))) ) ) ) # ( \processador|ROM|memROM~3_combout\ & ( !\processador|ROM|memROM~24_combout\ & ( (!\processador|PC|DOUT\(5) & ((!\processador|PC|DOUT\(4) & 
-- ((\processador|ROM|memROM~26_combout\))) # (\processador|PC|DOUT\(4) & (\processador|ROM|memROM~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101000101000000000000000000100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(5),
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|ROM|ALT_INV_memROM~25_combout\,
	datad => \processador|ROM|ALT_INV_memROM~26_combout\,
	datae => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~24_combout\,
	combout => \processador|ROM|memROM~27_combout\);

-- Location: LABCELL_X35_Y4_N33
\processador|UC|palavraControle[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|palavraControle[3]~0_combout\ = ( \processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~36_combout\ & (!\processador|ROM|memROM~34_combout\ & !\processador|ROM|memROM~32_combout\)) ) ) # ( !\processador|ROM|memROM~27_combout\ & 
-- ( (!\processador|ROM|memROM~36_combout\ & \processador|ROM|memROM~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~36_combout\,
	datab => \processador|ROM|ALT_INV_memROM~34_combout\,
	datac => \processador|ROM|ALT_INV_memROM~32_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~27_combout\,
	combout => \processador|UC|palavraControle[3]~0_combout\);

-- Location: MLABCELL_X37_Y4_N39
\processador|UC|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal3~0_combout\ = ( !\processador|ROM|memROM~32_combout\ & ( (!\processador|ROM|memROM~27_combout\ & (\processador|ROM|memROM~34_combout\ & !\processador|ROM|memROM~36_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~27_combout\,
	datac => \processador|ROM|ALT_INV_memROM~34_combout\,
	datad => \processador|ROM|ALT_INV_memROM~36_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~32_combout\,
	combout => \processador|UC|Equal3~0_combout\);

-- Location: LABCELL_X36_Y5_N45
\processador|inc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|inc|Add0~22\ ))
-- \processador|inc|Add0~26\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|inc|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|inc|Add0~22\,
	sumout => \processador|inc|Add0~25_sumout\,
	cout => \processador|inc|Add0~26\);

-- Location: LABCELL_X36_Y5_N48
\processador|inc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~1_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|inc|Add0~26\ ))
-- \processador|inc|Add0~2\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|inc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|inc|Add0~26\,
	sumout => \processador|inc|Add0~1_sumout\,
	cout => \processador|inc|Add0~2\);

-- Location: LABCELL_X36_Y5_N51
\processador|inc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|inc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|inc|Add0~2\,
	sumout => \processador|inc|Add0~29_sumout\);

-- Location: MLABCELL_X34_Y3_N42
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

-- Location: FF_X36_Y5_N53
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

-- Location: LABCELL_X36_Y5_N54
\processador|ROM|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~48_combout\ = ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))))) 
-- ) ) ) # ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(0)))) # 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(2) $ (\processador|PC|DOUT\(0))))) ) ) ) # ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2))))) ) ) ) # ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(2) $ (\processador|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010100010000000100000011000000000010100010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	datae => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~48_combout\);

-- Location: LABCELL_X36_Y5_N15
\processador|ROM|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~43_combout\ = (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & \processador|ROM|memROM~48_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~48_combout\,
	combout => \processador|ROM|memROM~43_combout\);

-- Location: FF_X36_Y5_N52
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

-- Location: LABCELL_X36_Y7_N9
\Decoder|habilita[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~0_combout\ = ( !\processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~1_combout\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & !\processador|PC|DOUT[6]~DUPLICATE_q\) ) ) ) # ( \processador|ROM|memROM~0_combout\ & ( 
-- !\processador|ROM|memROM~1_combout\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & !\processador|PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \Decoder|habilita[1]~0_combout\);

-- Location: LABCELL_X35_Y6_N9
\interfaceChaves|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~0_combout\ = ( \processador|ROM|memROM~5_combout\ & ( (\processador|ROM|memROM~3_combout\ & (((\processador|ROM|memROM~6_combout\) # (\processador|ROM|memROM~7_combout\)) # (\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) # ( 
-- !\processador|ROM|memROM~5_combout\ & ( (\processador|ROM|memROM~3_combout\ & ((\processador|ROM|memROM~6_combout\) # (\processador|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100010011001100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	datad => \processador|ROM|ALT_INV_memROM~6_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \interfaceChaves|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y6_N51
\Decoder|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~1_combout\ = ( \processador|ROM|memROM~1_combout\ & ( (\processador|ROM|memROM~3_combout\ & \processador|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \Decoder|Equal6~1_combout\);

-- Location: LABCELL_X36_Y7_N39
\Decoder|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~0_combout\ = ( \processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~1_combout\ & ( !\processador|PC|DOUT[6]~DUPLICATE_q\ ) ) ) # ( !\processador|ROM|memROM~0_combout\ & ( \processador|ROM|memROM~1_combout\ & ( 
-- !\processador|PC|DOUT[6]~DUPLICATE_q\ ) ) ) # ( \processador|ROM|memROM~0_combout\ & ( !\processador|ROM|memROM~1_combout\ & ( !\processador|PC|DOUT[6]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \Decoder|LessThan0~0_combout\);

-- Location: LABCELL_X36_Y7_N24
\interfaceChaves|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~9_combout\ = ( \processador|ROM|memROM~10_combout\ & ( \Decoder|LessThan0~0_combout\ & ( (!\interfaceChaves|saida[0]~0_combout\ & ((!\processador|ROM|memROM~4_combout\) # (\Decoder|habilita[1]~0_combout\))) ) ) ) # ( 
-- !\processador|ROM|memROM~10_combout\ & ( \Decoder|LessThan0~0_combout\ & ( (!\interfaceChaves|saida[0]~0_combout\ & ((!\processador|ROM|memROM~4_combout\) # ((\Decoder|Equal6~1_combout\) # (\Decoder|habilita[1]~0_combout\)))) ) ) ) # ( 
-- \processador|ROM|memROM~10_combout\ & ( !\Decoder|LessThan0~0_combout\ & ( !\interfaceChaves|saida[0]~0_combout\ ) ) ) # ( !\processador|ROM|memROM~10_combout\ & ( !\Decoder|LessThan0~0_combout\ & ( !\interfaceChaves|saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010110000111100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \Decoder|ALT_INV_habilita[1]~0_combout\,
	datac => \interfaceChaves|ALT_INV_saida[0]~0_combout\,
	datad => \Decoder|ALT_INV_Equal6~1_combout\,
	datae => \processador|ROM|ALT_INV_memROM~10_combout\,
	dataf => \Decoder|ALT_INV_LessThan0~0_combout\,
	combout => \interfaceChaves|saida[0]~9_combout\);

-- Location: LABCELL_X35_Y4_N42
\processador|UC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal5~0_combout\ = ( \processador|ROM|memROM~36_combout\ & ( \processador|ROM|memROM~32_combout\ & ( (\processador|ROM|memROM~34_combout\ & !\processador|ROM|memROM~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~34_combout\,
	datac => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~36_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~32_combout\,
	combout => \processador|UC|Equal5~0_combout\);

-- Location: MLABCELL_X37_Y4_N21
\processador|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[2]~2_combout\ = ( \processador|ULA|Add0~9_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~8_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~9_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # 
-- (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100000000100010110000000010001011111111111000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	datad => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X35_Y6_N3
\processador|ROM|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~39_combout\ = ( \processador|PC|DOUT\(2) & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT\(2) & ( \processador|PC|DOUT\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM|memROM~39_combout\);

-- Location: LABCELL_X35_Y6_N48
\processador|ROM|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~40_combout\ = ( !\processador|PC|DOUT\(4) & ( (\processador|ROM|memROM~3_combout\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & \processador|ROM|memROM~39_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~39_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~40_combout\);

-- Location: FF_X36_Y5_N43
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~21_sumout\,
	asdata => \processador|ROM|memROM~28_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y4_N36
\processador|ROM|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~41_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) ) # ( 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & ((!\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) $ (!\processador|PC|DOUT[0]~DUPLICATE_q\))) # 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT\(5) & \processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT[4]~DUPLICATE_q\ $ (\processador|PC|DOUT\(5))))) # (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5)))) ) ) ) # ( 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(5)) # ((\processador|PC|DOUT[2]~DUPLICATE_q\ & !\processador|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010000000000110000100100000000001000100001000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~41_combout\);

-- Location: LABCELL_X36_Y6_N21
\processador|ROM|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~42_combout\ = ( \processador|ROM|memROM~41_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~41_combout\,
	combout => \processador|ROM|memROM~42_combout\);

-- Location: LABCELL_X36_Y6_N54
\processador|Registradores|registrador~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~183_combout\ = ( \processador|ROM|memROM~34_combout\ & ( (\processador|ROM|memROM~42_combout\ & (!\processador|ROM|memROM~27_combout\ & ((!\processador|ROM|memROM~36_combout\) # 
-- (\processador|ROM|memROM~32_combout\)))) ) ) # ( !\processador|ROM|memROM~34_combout\ & ( (\processador|ROM|memROM~42_combout\ & (!\processador|ROM|memROM~27_combout\ & (!\processador|ROM|memROM~36_combout\ & \processador|ROM|memROM~32_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000001000000010001000100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~42_combout\,
	datab => \processador|ROM|ALT_INV_memROM~27_combout\,
	datac => \processador|ROM|ALT_INV_memROM~36_combout\,
	datad => \processador|ROM|ALT_INV_memROM~32_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~34_combout\,
	combout => \processador|Registradores|registrador~183_combout\);

-- Location: LABCELL_X39_Y5_N36
\processador|ROM|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~37_combout\ = ( \processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\))) # 
-- (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(4) & 
-- (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(4) $ 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT[3]~DUPLICATE_q\ & ((\processador|PC|DOUT[0]~DUPLICATE_q\))) # 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(4) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101110001100101000000101000000000000000010000000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \processador|ROM|memROM~37_combout\);

-- Location: LABCELL_X39_Y5_N6
\processador|ROM|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~38_combout\ = ( \processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & ((\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(4))))) # 
-- (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(4) & 
-- (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))))) ) ) ) # ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT\(2) & 
-- (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ (!\processador|PC|DOUT[3]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[3]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(2) & 
-- (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(2) & !\processador|PC|DOUT[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001010001000000100100000100010100100110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \processador|ROM|memROM~38_combout\);

-- Location: LABCELL_X36_Y6_N42
\processador|Registradores|registrador~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~190_combout\ = ( \processador|ROM|memROM~38_combout\ & ( (!\processador|ROM|memROM~40_combout\ & (\processador|ROM|memROM~3_combout\ & (\processador|Registradores|registrador~183_combout\ & 
-- \processador|ROM|memROM~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~40_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~183_combout\,
	datad => \processador|ROM|ALT_INV_memROM~37_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~38_combout\,
	combout => \processador|Registradores|registrador~190_combout\);

-- Location: FF_X37_Y6_N8
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~71_q\);

-- Location: MLABCELL_X34_Y6_N18
\processador|Registradores|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~181_combout\ = ( !\processador|ROM|memROM~40_combout\ & ( !\processador|ROM|memROM~42_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((!\processador|ROM|memROM~36_combout\ & 
-- ((\processador|ROM|memROM~34_combout\) # (\processador|ROM|memROM~32_combout\))) # (\processador|ROM|memROM~36_combout\ & (\processador|ROM|memROM~32_combout\ & \processador|ROM|memROM~34_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~36_combout\,
	datab => \processador|ROM|ALT_INV_memROM~27_combout\,
	datac => \processador|ROM|ALT_INV_memROM~32_combout\,
	datad => \processador|ROM|ALT_INV_memROM~34_combout\,
	datae => \processador|ROM|ALT_INV_memROM~40_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~42_combout\,
	combout => \processador|Registradores|registrador~181_combout\);

-- Location: MLABCELL_X34_Y6_N57
\processador|Registradores|registrador~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~189_combout\ = ( \processador|ROM|memROM~38_combout\ & ( \processador|Registradores|registrador~181_combout\ & ( (\processador|ROM|memROM~3_combout\ & \processador|ROM|memROM~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~37_combout\,
	datae => \processador|ROM|ALT_INV_memROM~38_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~181_combout\,
	combout => \processador|Registradores|registrador~189_combout\);

-- Location: FF_X36_Y3_N43
\processador|Registradores|registrador~63DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~63DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N45
\processador|Registradores|registrador~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~188_combout\ = ( \processador|ROM|memROM~38_combout\ & ( (!\processador|ROM|memROM~40_combout\ & (\processador|ROM|memROM~3_combout\ & (!\processador|ROM|memROM~37_combout\ & 
-- \processador|Registradores|registrador~183_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~40_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~37_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~183_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~38_combout\,
	combout => \processador|Registradores|registrador~188_combout\);

-- Location: FF_X37_Y4_N4
\processador|Registradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~55_q\);

-- Location: MLABCELL_X37_Y5_N6
\processador|ROM|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~46_combout\ = ( \processador|PC|DOUT\(1) & ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( !\processador|PC|DOUT\(1) 
-- & ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & ((!\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & \processador|PC|DOUT[0]~DUPLICATE_q\)) # (\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \processador|PC|DOUT\(1) & ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( (\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3) $ 
-- (((!\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[0]~DUPLICATE_q\))))) ) ) ) # ( !\processador|PC|DOUT\(1) & ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[4]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[2]~DUPLICATE_q\ $ (\processador|PC|DOUT[0]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010000100000000000110001101000010000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~46_combout\);

-- Location: MLABCELL_X37_Y5_N12
\processador|ROM|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~44_combout\ = ( \processador|ROM|memROM~46_combout\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & !\processador|PC|DOUT[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~46_combout\,
	combout => \processador|ROM|memROM~44_combout\);

-- Location: LABCELL_X36_Y6_N0
\processador|Registradores|registrador~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~186_combout\ = ( !\processador|ROM|memROM~38_combout\ & ( (\processador|Registradores|registrador~183_combout\ & (\processador|ROM|memROM~3_combout\ & (!\processador|ROM|memROM~40_combout\ & 
-- \processador|ROM|memROM~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~183_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~40_combout\,
	datad => \processador|ROM|ALT_INV_memROM~37_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~38_combout\,
	combout => \processador|Registradores|registrador~186_combout\);

-- Location: FF_X37_Y6_N2
\processador|Registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~39_q\);

-- Location: LABCELL_X39_Y4_N3
\processador|Registradores|registrador~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~23feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \processador|Registradores|registrador~23feeder_combout\);

-- Location: LABCELL_X36_Y6_N24
\processador|Registradores|registrador~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~184_combout\ = ( \processador|ROM|memROM~38_combout\ & ( (!\processador|ROM|memROM~40_combout\ & (!\processador|ROM|memROM~3_combout\ & \processador|Registradores|registrador~183_combout\)) ) ) # ( 
-- !\processador|ROM|memROM~38_combout\ & ( (!\processador|ROM|memROM~40_combout\ & (\processador|Registradores|registrador~183_combout\ & ((!\processador|ROM|memROM~3_combout\) # (!\processador|ROM|memROM~37_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001000000010100000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~40_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~183_combout\,
	datad => \processador|ROM|ALT_INV_memROM~37_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~38_combout\,
	combout => \processador|Registradores|registrador~184_combout\);

-- Location: FF_X39_Y4_N5
\processador|Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~23feeder_combout\,
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~23_q\);

-- Location: MLABCELL_X34_Y6_N42
\processador|Registradores|registrador~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~185_combout\ = ( !\processador|ROM|memROM~38_combout\ & ( \processador|Registradores|registrador~181_combout\ & ( (\processador|ROM|memROM~37_combout\ & \processador|ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~37_combout\,
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|ROM|ALT_INV_memROM~38_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~181_combout\,
	combout => \processador|Registradores|registrador~185_combout\);

-- Location: FF_X37_Y6_N26
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
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~31_q\);

-- Location: LABCELL_X36_Y5_N24
\processador|ROM|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~47_combout\ = ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT[3]~DUPLICATE_q\))) # 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & \processador|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(4) & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(2) & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (\processador|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- (\processador|PC|DOUT\(2) & \processador|PC|DOUT[3]~DUPLICATE_q\))) # (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (\processador|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000011000000010000000010000100010000100010000100010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|ROM|memROM~47_combout\);

-- Location: LABCELL_X36_Y5_N6
\processador|ROM|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~45_combout\ = ( \processador|ROM|memROM~47_combout\ & ( (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	dataf => \processador|ROM|ALT_INV_memROM~47_combout\,
	combout => \processador|ROM|memROM~45_combout\);

-- Location: MLABCELL_X34_Y6_N51
\processador|Registradores|registrador~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~182_combout\ = ( \processador|ROM|memROM~38_combout\ & ( \processador|Registradores|registrador~181_combout\ & ( !\processador|ROM|memROM~3_combout\ ) ) ) # ( !\processador|ROM|memROM~38_combout\ & ( 
-- \processador|Registradores|registrador~181_combout\ & ( (!\processador|ROM|memROM~3_combout\) # (!\processador|ROM|memROM~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~37_combout\,
	datae => \processador|ROM|ALT_INV_memROM~38_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~181_combout\,
	combout => \processador|Registradores|registrador~182_combout\);

-- Location: FF_X36_Y4_N20
\processador|Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~15_q\);

-- Location: MLABCELL_X37_Y6_N24
\processador|Registradores|registrador~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~238_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~45_combout\ & (((\processador|Registradores|registrador~15_q\ & !\processador|ROM|memROM~43_combout\)))) # 
-- (\processador|ROM|memROM~45_combout\ & (((\processador|ROM|memROM~43_combout\)) # (\processador|Registradores|registrador~23_q\)))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~45_combout\ & 
-- (((\processador|Registradores|registrador~31_q\ & !\processador|ROM|memROM~43_combout\)))) # (\processador|ROM|memROM~45_combout\ & (((\processador|ROM|memROM~43_combout\)) # (\processador|Registradores|registrador~39_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~39_q\,
	datab => \processador|Registradores|ALT_INV_registrador~23_q\,
	datac => \processador|Registradores|ALT_INV_registrador~31_q\,
	datad => \processador|ROM|ALT_INV_memROM~45_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~43_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~15_q\,
	combout => \processador|Registradores|registrador~238_combout\);

-- Location: MLABCELL_X34_Y6_N24
\processador|Registradores|registrador~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~187_combout\ = ( \processador|ROM|memROM~38_combout\ & ( \processador|Registradores|registrador~181_combout\ & ( (!\processador|ROM|memROM~37_combout\ & \processador|ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~37_combout\,
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|ROM|ALT_INV_memROM~38_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~181_combout\,
	combout => \processador|Registradores|registrador~187_combout\);

-- Location: FF_X36_Y3_N37
\processador|Registradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~47_q\);

-- Location: MLABCELL_X37_Y6_N48
\processador|Registradores|registrador~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~206_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( (!\processador|ROM|memROM~43_combout\ & ((((\processador|Registradores|registrador~238_combout\))))) # (\processador|ROM|memROM~43_combout\ & 
-- (((!\processador|Registradores|registrador~238_combout\ & (\processador|Registradores|registrador~47_q\)) # (\processador|Registradores|registrador~238_combout\ & ((\processador|Registradores|registrador~55_q\)))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( (!\processador|ROM|memROM~43_combout\ & ((((\processador|Registradores|registrador~238_combout\))))) # (\processador|ROM|memROM~43_combout\ & (((!\processador|Registradores|registrador~238_combout\ & 
-- ((\processador|Registradores|registrador~63DUPLICATE_q\))) # (\processador|Registradores|registrador~238_combout\ & (\processador|Registradores|registrador~71_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~43_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~71_q\,
	datac => \processador|Registradores|ALT_INV_registrador~63DUPLICATE_q\,
	datad => \processador|Registradores|ALT_INV_registrador~55_q\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~238_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~47_q\,
	combout => \processador|Registradores|registrador~206_combout\);

-- Location: LABCELL_X36_Y5_N18
\processador|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~16_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT\(0) & ( 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|ROM|memROM~16_combout\);

-- Location: LABCELL_X36_Y5_N9
\processador|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~15_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(0) & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~15_combout\);

-- Location: LABCELL_X36_Y5_N12
\processador|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~14_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ 
-- & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT\(2))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000011110000110000001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|ROM|memROM~14_combout\);

-- Location: LABCELL_X36_Y5_N0
\processador|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~17_combout\ = ( \processador|ROM|memROM~15_combout\ & ( \processador|ROM|memROM~14_combout\ & ( (\processador|ROM|memROM~3_combout\ & ((!\processador|PC|DOUT\(4) & ((\processador|PC|DOUT\(5)))) # (\processador|PC|DOUT\(4) & 
-- ((!\processador|PC|DOUT\(5)) # (\processador|ROM|memROM~16_combout\))))) ) ) ) # ( !\processador|ROM|memROM~15_combout\ & ( \processador|ROM|memROM~14_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|PC|DOUT\(5) & 
-- ((!\processador|PC|DOUT\(4)) # (\processador|ROM|memROM~16_combout\)))) ) ) ) # ( \processador|ROM|memROM~15_combout\ & ( !\processador|ROM|memROM~14_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|PC|DOUT\(4) & 
-- ((!\processador|PC|DOUT\(5)) # (\processador|ROM|memROM~16_combout\)))) ) ) ) # ( !\processador|ROM|memROM~15_combout\ & ( !\processador|ROM|memROM~14_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|PC|DOUT\(4) & 
-- (\processador|ROM|memROM~16_combout\ & \processador|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100010000000100000000010001010001000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|ROM|ALT_INV_memROM~16_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(5),
	datae => \processador|ROM|ALT_INV_memROM~15_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~14_combout\,
	combout => \processador|ROM|memROM~17_combout\);

-- Location: MLABCELL_X34_Y3_N39
\processador|Registradores|registrador~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~193_combout\ = ( \processador|ROM|memROM~40_combout\ & ( \processador|Registradores|registrador~183_combout\ & ( (!\processador|ROM|memROM~3_combout\) # ((!\processador|ROM|memROM~38_combout\ & 
-- !\processador|ROM|memROM~37_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~38_combout\,
	datab => \processador|ROM|ALT_INV_memROM~37_combout\,
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|ROM|ALT_INV_memROM~40_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~183_combout\,
	combout => \processador|Registradores|registrador~193_combout\);

-- Location: FF_X35_Y4_N1
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
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~87_q\);

-- Location: LABCELL_X35_Y3_N24
\processador|Registradores|registrador~79feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~79feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \processador|Registradores|registrador~79feeder_combout\);

-- Location: MLABCELL_X34_Y4_N3
\processador|Registradores|registrador~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~191_combout\ = ( \processador|ROM|memROM~32_combout\ & ( !\processador|ROM|memROM~42_combout\ & ( (!\processador|ROM|memROM~27_combout\ & (\processador|ROM|memROM~40_combout\ & ((!\processador|ROM|memROM~36_combout\) 
-- # (\processador|ROM|memROM~34_combout\)))) ) ) ) # ( !\processador|ROM|memROM~32_combout\ & ( !\processador|ROM|memROM~42_combout\ & ( (!\processador|ROM|memROM~27_combout\ & (!\processador|ROM|memROM~36_combout\ & (\processador|ROM|memROM~34_combout\ & 
-- \processador|ROM|memROM~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000001000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~27_combout\,
	datab => \processador|ROM|ALT_INV_memROM~36_combout\,
	datac => \processador|ROM|ALT_INV_memROM~34_combout\,
	datad => \processador|ROM|ALT_INV_memROM~40_combout\,
	datae => \processador|ROM|ALT_INV_memROM~32_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~42_combout\,
	combout => \processador|Registradores|registrador~191_combout\);

-- Location: MLABCELL_X34_Y4_N33
\processador|Registradores|registrador~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~192_combout\ = ( \processador|Registradores|registrador~191_combout\ & ( \processador|ROM|memROM~37_combout\ & ( !\processador|ROM|memROM~3_combout\ ) ) ) # ( \processador|Registradores|registrador~191_combout\ & ( 
-- !\processador|ROM|memROM~37_combout\ & ( (!\processador|ROM|memROM~3_combout\) # (!\processador|ROM|memROM~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~38_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~191_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~37_combout\,
	combout => \processador|Registradores|registrador~192_combout\);

-- Location: FF_X35_Y3_N25
\processador|Registradores|registrador~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~79feeder_combout\,
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~79_q\);

-- Location: LABCELL_X36_Y3_N54
\processador|ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~22_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[3]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~22_combout\);

-- Location: LABCELL_X36_Y3_N33
\processador|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~18_combout\ = ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~18_combout\);

-- Location: LABCELL_X36_Y3_N57
\processador|ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~21_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[4]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- ((\processador|PC|DOUT[4]~DUPLICATE_q\) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~21_combout\);

-- Location: LABCELL_X36_Y3_N27
\processador|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~19_combout\ = ( !\processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & \processador|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~19_combout\);

-- Location: LABCELL_X36_Y3_N24
\processador|ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~20_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[0]~DUPLICATE_q\)) # (\processador|PC|DOUT[4]~DUPLICATE_q\ & 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~20_combout\);

-- Location: LABCELL_X36_Y3_N0
\processador|ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~23_combout\ = ( \processador|ROM|memROM~19_combout\ & ( \processador|ROM|memROM~20_combout\ & ( ((\processador|ROM|memROM~18_combout\ & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|ROM|memROM~21_combout\)))) # 
-- (\processador|ROM|memROM~22_combout\) ) ) ) # ( !\processador|ROM|memROM~19_combout\ & ( \processador|ROM|memROM~20_combout\ & ( (\processador|ROM|memROM~18_combout\ & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|ROM|memROM~21_combout\))) ) ) 
-- ) # ( \processador|ROM|memROM~19_combout\ & ( !\processador|ROM|memROM~20_combout\ & ( ((\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|ROM|memROM~18_combout\ & \processador|ROM|memROM~21_combout\))) # (\processador|ROM|memROM~22_combout\) ) ) ) # ( 
-- !\processador|ROM|memROM~19_combout\ & ( !\processador|ROM|memROM~20_combout\ & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|ROM|memROM~18_combout\ & \processador|ROM|memROM~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010101010101011100001100000011110101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~22_combout\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|ROM|ALT_INV_memROM~18_combout\,
	datad => \processador|ROM|ALT_INV_memROM~21_combout\,
	datae => \processador|ROM|ALT_INV_memROM~19_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~20_combout\,
	combout => \processador|ROM|memROM~23_combout\);

-- Location: MLABCELL_X34_Y4_N51
\processador|Registradores|registrador~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~196_combout\ = ( !\processador|ROM|memROM~37_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|ROM|memROM~38_combout\ & \processador|Registradores|registrador~191_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~38_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~191_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~37_combout\,
	combout => \processador|Registradores|registrador~196_combout\);

-- Location: FF_X36_Y3_N32
\processador|Registradores|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~111_q\);

-- Location: LABCELL_X35_Y5_N42
\processador|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~12_combout\ = ( !\processador|PC|DOUT\(2) & ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT\(4))))) # 
-- (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(4))))) ) ) ) # ( \processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT\(0)))))) ) ) ) # ( !\processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000010001000101000000010000011000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~12_combout\);

-- Location: LABCELL_X35_Y5_N48
\processador|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~13_combout\ = ( \processador|ROM|memROM~12_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|ROM|memROM~13_combout\);

-- Location: LABCELL_X36_Y3_N30
\processador|Registradores|registrador~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~152_combout\ = ( \processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~87_q\ & !\processador|ROM|memROM~23_combout\) ) ) # ( !\processador|ROM|memROM~13_combout\ & ( 
-- (!\processador|ROM|memROM~23_combout\ & (\processador|Registradores|registrador~79_q\)) # (\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~111_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~87_q\,
	datab => \processador|Registradores|ALT_INV_registrador~79_q\,
	datac => \processador|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~111_q\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~152_combout\);

-- Location: LABCELL_X36_Y3_N39
\processador|Registradores|registrador~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~151_combout\ = ( \processador|ROM|memROM~23_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~55_q\ ) ) ) # ( !\processador|ROM|memROM~23_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~23_q\ ) ) ) # ( \processador|ROM|memROM~23_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~47_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~23_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~23_q\,
	datab => \processador|Registradores|ALT_INV_registrador~47_q\,
	datac => \processador|Registradores|ALT_INV_registrador~15_q\,
	datad => \processador|Registradores|ALT_INV_registrador~55_q\,
	datae => \processador|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~151_combout\);

-- Location: FF_X36_Y3_N44
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~63_q\);

-- Location: LABCELL_X36_Y3_N45
\processador|Registradores|registrador~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~153_combout\ = ( \processador|ROM|memROM~23_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~71_q\ ) ) ) # ( !\processador|ROM|memROM~23_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~39_q\ ) ) ) # ( \processador|ROM|memROM~23_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~63_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~23_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~31_q\,
	datab => \processador|Registradores|ALT_INV_registrador~63_q\,
	datac => \processador|Registradores|ALT_INV_registrador~71_q\,
	datad => \processador|Registradores|ALT_INV_registrador~39_q\,
	datae => \processador|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~153_combout\);

-- Location: LABCELL_X36_Y6_N27
\processador|Registradores|registrador~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~195_combout\ = ( !\processador|ROM|memROM~38_combout\ & ( (\processador|ROM|memROM~40_combout\ & (\processador|ROM|memROM~3_combout\ & (\processador|ROM|memROM~37_combout\ & 
-- \processador|Registradores|registrador~183_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~40_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~37_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~183_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~38_combout\,
	combout => \processador|Registradores|registrador~195_combout\);

-- Location: FF_X37_Y4_N23
\processador|Registradores|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~103_q\);

-- Location: LABCELL_X35_Y3_N15
\processador|Registradores|registrador~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~194_combout\ = ( \processador|ROM|memROM~37_combout\ & ( \processador|Registradores|registrador~191_combout\ & ( (\processador|ROM|memROM~3_combout\ & !\processador|ROM|memROM~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~38_combout\,
	datae => \processador|ROM|ALT_INV_memROM~37_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~191_combout\,
	combout => \processador|Registradores|registrador~194_combout\);

-- Location: FF_X35_Y4_N47
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
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~95_q\);

-- Location: MLABCELL_X34_Y4_N57
\processador|Registradores|registrador~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~197_combout\ = ( \processador|Registradores|registrador~191_combout\ & ( \processador|ROM|memROM~37_combout\ & ( (\processador|ROM|memROM~3_combout\ & \processador|ROM|memROM~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|ROM|ALT_INV_memROM~38_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~191_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~37_combout\,
	combout => \processador|Registradores|registrador~197_combout\);

-- Location: FF_X35_Y4_N50
\processador|Registradores|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~127_q\);

-- Location: LABCELL_X35_Y4_N48
\processador|Registradores|registrador~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~154_combout\ = ( \processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~13_combout\ & \processador|Registradores|registrador~127_q\) ) ) # ( !\processador|ROM|memROM~23_combout\ & ( 
-- (!\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~95_q\))) # (\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~103_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~103_q\,
	datab => \processador|Registradores|ALT_INV_registrador~95_q\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~127_q\,
	dataf => \processador|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|Registradores|registrador~154_combout\);

-- Location: LABCELL_X36_Y3_N6
\processador|Registradores|registrador~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~155_combout\ = ( \processador|Registradores|registrador~153_combout\ & ( \processador|Registradores|registrador~154_combout\ & ( ((!\processador|ROM|memROM~27_combout\ & 
-- ((\processador|Registradores|registrador~151_combout\))) # (\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~152_combout\))) # (\processador|ROM|memROM~17_combout\) ) ) ) # ( 
-- !\processador|Registradores|registrador~153_combout\ & ( \processador|Registradores|registrador~154_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~151_combout\))) # 
-- (\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~152_combout\)))) # (\processador|ROM|memROM~17_combout\ & (((\processador|ROM|memROM~27_combout\)))) ) ) ) # ( \processador|Registradores|registrador~153_combout\ & ( 
-- !\processador|Registradores|registrador~154_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~151_combout\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~152_combout\)))) # (\processador|ROM|memROM~17_combout\ & (((!\processador|ROM|memROM~27_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~153_combout\ & ( 
-- !\processador|Registradores|registrador~154_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~151_combout\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~152_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~17_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~152_combout\,
	datac => \processador|ROM|ALT_INV_memROM~27_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~151_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~153_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~154_combout\,
	combout => \processador|Registradores|registrador~155_combout\);

-- Location: FF_X37_Y4_N31
\processador|Registradores|registrador~22DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~22DUPLICATE_q\);

-- Location: FF_X37_Y5_N19
\processador|Registradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~38_q\);

-- Location: FF_X37_Y4_N1
\processador|Registradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~54_q\);

-- Location: MLABCELL_X37_Y4_N0
\processador|Registradores|registrador~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~148_combout\ = ( \processador|Registradores|registrador~54_q\ & ( \processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~17_combout\) # (\processador|Registradores|registrador~70_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~54_q\ & ( \processador|ROM|memROM~23_combout\ & ( (\processador|Registradores|registrador~70_q\ & \processador|ROM|memROM~17_combout\) ) ) ) # ( \processador|Registradores|registrador~54_q\ & ( 
-- !\processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~22DUPLICATE_q\)) # (\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~38_q\))) ) ) ) # ( 
-- !\processador|Registradores|registrador~54_q\ & ( !\processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~22DUPLICATE_q\)) # (\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~38_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~22DUPLICATE_q\,
	datab => \processador|Registradores|ALT_INV_registrador~70_q\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~38_q\,
	datae => \processador|Registradores|ALT_INV_registrador~54_q\,
	dataf => \processador|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|Registradores|registrador~148_combout\);

-- Location: FF_X34_Y5_N35
\processador|Registradores|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~126_q\);

-- Location: FF_X35_Y3_N4
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
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~94_q\);

-- Location: FF_X36_Y3_N49
\processador|Registradores|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~110_q\);

-- Location: FF_X35_Y3_N46
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
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~78_q\);

-- Location: LABCELL_X36_Y3_N51
\processador|Registradores|registrador~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~147_combout\ = ( \processador|ROM|memROM~23_combout\ & ( \processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~126_q\ ) ) ) # ( !\processador|ROM|memROM~23_combout\ & ( 
-- \processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~94_q\ ) ) ) # ( \processador|ROM|memROM~23_combout\ & ( !\processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~110_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~23_combout\ & ( !\processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~126_q\,
	datab => \processador|Registradores|ALT_INV_registrador~94_q\,
	datac => \processador|Registradores|ALT_INV_registrador~110_q\,
	datad => \processador|Registradores|ALT_INV_registrador~78_q\,
	datae => \processador|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~17_combout\,
	combout => \processador|Registradores|registrador~147_combout\);

-- Location: FF_X36_Y3_N5
\processador|Registradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~62_q\);

-- Location: FF_X37_Y5_N17
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
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~30_q\);

-- Location: FF_X36_Y5_N5
\processador|Registradores|registrador~14DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~14DUPLICATE_q\);

-- Location: FF_X36_Y3_N20
\processador|Registradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~46_q\);

-- Location: LABCELL_X36_Y3_N18
\processador|Registradores|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~146_combout\ = ( \processador|Registradores|registrador~46_q\ & ( \processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~17_combout\) # (\processador|Registradores|registrador~62_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~46_q\ & ( \processador|ROM|memROM~23_combout\ & ( (\processador|Registradores|registrador~62_q\ & \processador|ROM|memROM~17_combout\) ) ) ) # ( \processador|Registradores|registrador~46_q\ & ( 
-- !\processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~14DUPLICATE_q\))) # (\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~30_q\)) ) ) ) # ( 
-- !\processador|Registradores|registrador~46_q\ & ( !\processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~14DUPLICATE_q\))) # (\processador|ROM|memROM~17_combout\ & 
-- (\processador|Registradores|registrador~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~62_q\,
	datab => \processador|ROM|ALT_INV_memROM~17_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~30_q\,
	datad => \processador|Registradores|ALT_INV_registrador~14DUPLICATE_q\,
	datae => \processador|Registradores|ALT_INV_registrador~46_q\,
	dataf => \processador|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|Registradores|registrador~146_combout\);

-- Location: FF_X37_Y4_N20
\processador|Registradores|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~102_q\);

-- Location: FF_X35_Y3_N14
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
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~86_q\);

-- Location: LABCELL_X35_Y3_N30
\processador|Registradores|registrador~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~149_combout\ = ( !\processador|ROM|memROM~23_combout\ & ( \processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~102_q\ ) ) ) # ( !\processador|ROM|memROM~23_combout\ & ( 
-- !\processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|Registradores|ALT_INV_registrador~102_q\,
	datad => \processador|Registradores|ALT_INV_registrador~86_q\,
	datae => \processador|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~17_combout\,
	combout => \processador|Registradores|registrador~149_combout\);

-- Location: MLABCELL_X37_Y4_N54
\processador|Registradores|registrador~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~150_combout\ = ( \processador|Registradores|registrador~146_combout\ & ( \processador|Registradores|registrador~149_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((!\processador|ROM|memROM~13_combout\) # 
-- ((\processador|Registradores|registrador~148_combout\)))) # (\processador|ROM|memROM~27_combout\ & (((\processador|Registradores|registrador~147_combout\)) # (\processador|ROM|memROM~13_combout\))) ) ) ) # ( 
-- !\processador|Registradores|registrador~146_combout\ & ( \processador|Registradores|registrador~149_combout\ & ( (!\processador|ROM|memROM~27_combout\ & (\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~148_combout\))) # 
-- (\processador|ROM|memROM~27_combout\ & (((\processador|Registradores|registrador~147_combout\)) # (\processador|ROM|memROM~13_combout\))) ) ) ) # ( \processador|Registradores|registrador~146_combout\ & ( 
-- !\processador|Registradores|registrador~149_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((!\processador|ROM|memROM~13_combout\) # ((\processador|Registradores|registrador~148_combout\)))) # (\processador|ROM|memROM~27_combout\ & 
-- (!\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~147_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~146_combout\ & ( !\processador|Registradores|registrador~149_combout\ & ( 
-- (!\processador|ROM|memROM~27_combout\ & (\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~148_combout\))) # (\processador|ROM|memROM~27_combout\ & (!\processador|ROM|memROM~13_combout\ & 
-- ((\processador|Registradores|registrador~147_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~27_combout\,
	datab => \processador|ROM|ALT_INV_memROM~13_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~148_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~147_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~146_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~149_combout\,
	combout => \processador|Registradores|registrador~150_combout\);

-- Location: FF_X34_Y5_N47
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~61_q\);

-- Location: FF_X37_Y6_N11
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~69_q\);

-- Location: FF_X37_Y6_N23
\processador|Registradores|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~37_q\);

-- Location: FF_X35_Y5_N14
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
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~21_q\);

-- Location: FF_X37_Y6_N47
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
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~29_q\);

-- Location: FF_X36_Y5_N14
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
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~13_q\);

-- Location: MLABCELL_X37_Y6_N30
\processador|Registradores|registrador~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~230_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~45_combout\ & (((\processador|Registradores|registrador~13_q\ & !\processador|ROM|memROM~43_combout\)))) # 
-- (\processador|ROM|memROM~45_combout\ & (((\processador|ROM|memROM~43_combout\)) # (\processador|Registradores|registrador~21_q\)))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~45_combout\ & 
-- (((\processador|Registradores|registrador~29_q\ & !\processador|ROM|memROM~43_combout\)))) # (\processador|ROM|memROM~45_combout\ & (((\processador|ROM|memROM~43_combout\)) # (\processador|Registradores|registrador~37_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~37_q\,
	datab => \processador|Registradores|ALT_INV_registrador~21_q\,
	datac => \processador|Registradores|ALT_INV_registrador~29_q\,
	datad => \processador|ROM|ALT_INV_memROM~45_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~43_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~13_q\,
	combout => \processador|Registradores|registrador~230_combout\);

-- Location: FF_X32_Y5_N23
\processador|Registradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~45_q\);

-- Location: MLABCELL_X37_Y6_N0
\processador|Registradores|registrador~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~198_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( (!\processador|ROM|memROM~43_combout\ & ((((\processador|Registradores|registrador~230_combout\))))) # (\processador|ROM|memROM~43_combout\ & 
-- (((!\processador|Registradores|registrador~230_combout\ & ((\processador|Registradores|registrador~45_q\))) # (\processador|Registradores|registrador~230_combout\ & (\processador|Registradores|registrador~53_q\))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( (!\processador|ROM|memROM~43_combout\ & ((((\processador|Registradores|registrador~230_combout\))))) # (\processador|ROM|memROM~43_combout\ & (((!\processador|Registradores|registrador~230_combout\ & 
-- (\processador|Registradores|registrador~61_q\)) # (\processador|Registradores|registrador~230_combout\ & ((\processador|Registradores|registrador~69_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~43_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~53_q\,
	datac => \processador|Registradores|ALT_INV_registrador~61_q\,
	datad => \processador|Registradores|ALT_INV_registrador~69_q\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~230_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~45_q\,
	combout => \processador|Registradores|registrador~198_combout\);

-- Location: LABCELL_X36_Y4_N30
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

-- Location: LABCELL_X36_Y4_N33
\processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~1_sumout\ = SUM(( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~198_combout\) ) + ( \processador|Registradores|registrador~145_combout\ ) + ( \processador|ULA|Add0~34_cout\ ))
-- \processador|ULA|Add0~2\ = CARRY(( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~198_combout\) ) + ( \processador|Registradores|registrador~145_combout\ ) + ( \processador|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~198_combout\,
	cin => \processador|ULA|Add0~34_cout\,
	sumout => \processador|ULA|Add0~1_sumout\,
	cout => \processador|ULA|Add0~2\);

-- Location: MLABCELL_X34_Y5_N21
\processador|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[0]~0_combout\ = ( \processador|UC|Equal5~0_combout\ & ( \processador|ULA|Add0~1_sumout\ & ( (\processador|UC|palavraControle[3]~0_combout\) # (\processador|ROM|memROM~10_combout\) ) ) ) # ( !\processador|UC|Equal5~0_combout\ 
-- & ( \processador|ULA|Add0~1_sumout\ & ( ((!\interfaceChaves|saida[0]~9_combout\) # (\processador|UC|palavraControle[3]~0_combout\)) # (\interfaceChaves|saida[0]~12_combout\) ) ) ) # ( \processador|UC|Equal5~0_combout\ & ( !\processador|ULA|Add0~1_sumout\ 
-- & ( (\processador|ROM|memROM~10_combout\ & !\processador|UC|palavraControle[3]~0_combout\) ) ) ) # ( !\processador|UC|Equal5~0_combout\ & ( !\processador|ULA|Add0~1_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & 
-- ((!\interfaceChaves|saida[0]~9_combout\) # (\interfaceChaves|saida[0]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000010100000101000011111111001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~10_combout\,
	datab => \interfaceChaves|ALT_INV_saida[0]~12_combout\,
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	datae => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: FF_X35_Y5_N2
\processador|Registradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~53_q\);

-- Location: LABCELL_X35_Y5_N3
\processador|Registradores|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~142_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~69_q\ ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~53_q\ ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~61_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~53_q\,
	datab => \processador|Registradores|ALT_INV_registrador~45_q\,
	datac => \processador|Registradores|ALT_INV_registrador~69_q\,
	datad => \processador|Registradores|ALT_INV_registrador~61_q\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~142_combout\);

-- Location: LABCELL_X35_Y5_N15
\processador|Registradores|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~141_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~37_q\ ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~21_q\ ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~29_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~13_q\,
	datab => \processador|Registradores|ALT_INV_registrador~29_q\,
	datac => \processador|Registradores|ALT_INV_registrador~21_q\,
	datad => \processador|Registradores|ALT_INV_registrador~37_q\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~141_combout\);

-- Location: FF_X35_Y5_N26
\processador|Registradores|registrador~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~101_q\);

-- Location: LABCELL_X35_Y3_N48
\processador|Registradores|registrador~85feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~85feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \processador|Registradores|registrador~85feeder_combout\);

-- Location: FF_X35_Y3_N50
\processador|Registradores|registrador~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~85feeder_combout\,
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~85_q\);

-- Location: LABCELL_X35_Y3_N54
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

-- Location: FF_X35_Y3_N55
\processador|Registradores|registrador~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~93feeder_combout\,
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~93_q\);

-- Location: FF_X34_Y4_N43
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
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~77_q\);

-- Location: LABCELL_X35_Y5_N27
\processador|Registradores|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~143_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~101_q\ ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~85_q\ ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~93_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~77_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~101_q\,
	datab => \processador|Registradores|ALT_INV_registrador~85_q\,
	datac => \processador|Registradores|ALT_INV_registrador~93_q\,
	datad => \processador|Registradores|ALT_INV_registrador~77_q\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~143_combout\);

-- Location: FF_X34_Y5_N20
\processador|Registradores|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~125_q\);

-- Location: FF_X34_Y5_N53
\processador|Registradores|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~109_q\);

-- Location: MLABCELL_X34_Y5_N36
\processador|Registradores|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~144_combout\ = ( \processador|ROM|memROM~17_combout\ & ( (\processador|Registradores|registrador~125_q\ & !\processador|ROM|memROM~13_combout\) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- (\processador|Registradores|registrador~109_q\ & !\processador|ROM|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~125_q\,
	datac => \processador|Registradores|ALT_INV_registrador~109_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~17_combout\,
	combout => \processador|Registradores|registrador~144_combout\);

-- Location: LABCELL_X35_Y5_N18
\processador|Registradores|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~145_combout\ = ( \processador|ROM|memROM~27_combout\ & ( \processador|Registradores|registrador~144_combout\ & ( (\processador|ROM|memROM~23_combout\) # (\processador|Registradores|registrador~143_combout\) ) ) ) # ( 
-- !\processador|ROM|memROM~27_combout\ & ( \processador|Registradores|registrador~144_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~141_combout\))) # (\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~142_combout\)) ) ) ) # ( \processador|ROM|memROM~27_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( (\processador|Registradores|registrador~143_combout\ & !\processador|ROM|memROM~23_combout\) 
-- ) ) ) # ( !\processador|ROM|memROM~27_combout\ & ( !\processador|Registradores|registrador~144_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~141_combout\))) # (\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~142_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~142_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~143_combout\,
	datad => \processador|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|ROM|ALT_INV_memROM~27_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~144_combout\,
	combout => \processador|Registradores|registrador~145_combout\);

-- Location: LABCELL_X36_Y4_N36
\processador|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~5_sumout\ = SUM(( \processador|Registradores|registrador~150_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~202_combout\) ) + ( \processador|ULA|Add0~2\ ))
-- \processador|ULA|Add0~6\ = CARRY(( \processador|Registradores|registrador~150_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~202_combout\) ) + ( \processador|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~202_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~150_combout\,
	cin => \processador|ULA|Add0~2\,
	sumout => \processador|ULA|Add0~5_sumout\,
	cout => \processador|ULA|Add0~6\);

-- Location: MLABCELL_X37_Y4_N18
\processador|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[1]~1_combout\ = ( \processador|ULA|Add0~5_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~11_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~5_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # 
-- (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100000000100010110000000010001011111111111000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: FF_X37_Y5_N38
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~70_q\);

-- Location: FF_X36_Y3_N4
\processador|Registradores|registrador~62DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~62DUPLICATE_q\);

-- Location: FF_X37_Y4_N32
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
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~22_q\);

-- Location: FF_X36_Y5_N4
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
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~14_q\);

-- Location: MLABCELL_X37_Y5_N30
\processador|Registradores|registrador~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~234_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~14_q\))) # 
-- (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~22_q\)))) # (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( 
-- ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~30_q\))) # (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~38_q\)))) # 
-- (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~22_q\,
	datab => \processador|Registradores|ALT_INV_registrador~38_q\,
	datac => \processador|Registradores|ALT_INV_registrador~30_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~45_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~14_q\,
	combout => \processador|Registradores|registrador~234_combout\);

-- Location: MLABCELL_X37_Y5_N36
\processador|Registradores|registrador~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~202_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~234_combout\)))) # (\processador|ROM|memROM~43_combout\ & 
-- ((!\processador|Registradores|registrador~234_combout\ & ((\processador|Registradores|registrador~46_q\))) # (\processador|Registradores|registrador~234_combout\ & (\processador|Registradores|registrador~54_q\))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~234_combout\)))) # (\processador|ROM|memROM~43_combout\ & ((!\processador|Registradores|registrador~234_combout\ & 
-- ((\processador|Registradores|registrador~62DUPLICATE_q\))) # (\processador|Registradores|registrador~234_combout\ & (\processador|Registradores|registrador~70_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~70_q\,
	datab => \processador|Registradores|ALT_INV_registrador~54_q\,
	datac => \processador|Registradores|ALT_INV_registrador~62DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~234_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~46_q\,
	combout => \processador|Registradores|registrador~202_combout\);

-- Location: LABCELL_X36_Y4_N39
\processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~9_sumout\ = SUM(( \processador|Registradores|registrador~155_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~206_combout\) ) + ( \processador|ULA|Add0~6\ ))
-- \processador|ULA|Add0~10\ = CARRY(( \processador|Registradores|registrador~155_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~206_combout\) ) + ( \processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~206_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~155_combout\,
	cin => \processador|ULA|Add0~6\,
	sumout => \processador|ULA|Add0~9_sumout\,
	cout => \processador|ULA|Add0~10\);

-- Location: FF_X35_Y5_N32
\processador|Registradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~56_q\);

-- Location: FF_X37_Y5_N2
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~72_q\);

-- Location: FF_X36_Y5_N59
\processador|Registradores|registrador~64DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~64DUPLICATE_q\);

-- Location: FF_X35_Y5_N37
\processador|Registradores|registrador~24DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~24DUPLICATE_q\);

-- Location: FF_X37_Y5_N11
\processador|Registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~40_q\);

-- Location: MLABCELL_X37_Y5_N15
\processador|Registradores|registrador~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~32feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \processador|Registradores|registrador~32feeder_combout\);

-- Location: FF_X37_Y5_N16
\processador|Registradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~32feeder_combout\,
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~32_q\);

-- Location: FF_X36_Y4_N10
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
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~16_q\);

-- Location: MLABCELL_X37_Y5_N48
\processador|Registradores|registrador~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~242_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~16_q\))) # 
-- (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~24DUPLICATE_q\)))) # (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( 
-- ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~32_q\))) # (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~40_q\)))) # 
-- (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~24DUPLICATE_q\,
	datab => \processador|Registradores|ALT_INV_registrador~40_q\,
	datac => \processador|Registradores|ALT_INV_registrador~32_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~45_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~16_q\,
	combout => \processador|Registradores|registrador~242_combout\);

-- Location: FF_X32_Y5_N16
\processador|Registradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~48_q\);

-- Location: MLABCELL_X37_Y5_N0
\processador|Registradores|registrador~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~210_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~242_combout\)))) # (\processador|ROM|memROM~43_combout\ & 
-- ((!\processador|Registradores|registrador~242_combout\ & ((\processador|Registradores|registrador~48_q\))) # (\processador|Registradores|registrador~242_combout\ & (\processador|Registradores|registrador~56_q\))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~242_combout\)))) # (\processador|ROM|memROM~43_combout\ & ((!\processador|Registradores|registrador~242_combout\ & 
-- ((\processador|Registradores|registrador~64DUPLICATE_q\))) # (\processador|Registradores|registrador~242_combout\ & (\processador|Registradores|registrador~72_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~56_q\,
	datab => \processador|Registradores|ALT_INV_registrador~72_q\,
	datac => \processador|Registradores|ALT_INV_registrador~64DUPLICATE_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~242_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~48_q\,
	combout => \processador|Registradores|registrador~210_combout\);

-- Location: LABCELL_X36_Y4_N42
\processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~13_sumout\ = SUM(( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~210_combout\) ) + ( \processador|Registradores|registrador~160_combout\ ) + ( \processador|ULA|Add0~10\ ))
-- \processador|ULA|Add0~14\ = CARRY(( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~210_combout\) ) + ( \processador|Registradores|registrador~160_combout\ ) + ( \processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~210_combout\,
	cin => \processador|ULA|Add0~10\,
	sumout => \processador|ULA|Add0~13_sumout\,
	cout => \processador|ULA|Add0~14\);

-- Location: LABCELL_X35_Y4_N6
\processador|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[3]~3_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~9_combout\))) # (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~4_combout\))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & ((!\interfaceChaves|saida[0]~9_combout\))) # 
-- (\processador|UC|Equal5~0_combout\ & (\processador|ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000010100010100000001011011111010101111101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X36_Y5_N58
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~64_q\);

-- Location: LABCELL_X35_Y5_N33
\processador|Registradores|registrador~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~157_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~48_q\ & ( (!\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~64_q\)) # 
-- (\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~72_q\))) ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~48_q\ & ( (!\processador|ROM|memROM~13_combout\) # 
-- (\processador|Registradores|registrador~56_q\) ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|Registradores|registrador~48_q\ & ( (!\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~64_q\)) # 
-- (\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~72_q\))) ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( !\processador|Registradores|registrador~48_q\ & ( (\processador|Registradores|registrador~56_q\ & 
-- \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~64_q\,
	datab => \processador|Registradores|ALT_INV_registrador~56_q\,
	datac => \processador|Registradores|ALT_INV_registrador~72_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~48_q\,
	combout => \processador|Registradores|registrador~157_combout\);

-- Location: FF_X35_Y5_N38
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
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~24_q\);

-- Location: FF_X37_Y5_N10
\processador|Registradores|registrador~40DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~40DUPLICATE_q\);

-- Location: LABCELL_X35_Y5_N39
\processador|Registradores|registrador~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~156_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~32_q\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~40DUPLICATE_q\) ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~32_q\ & ( (!\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~13_combout\ & 
-- (\processador|Registradores|registrador~24_q\)) ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|Registradores|registrador~32_q\ & ( (\processador|Registradores|registrador~40DUPLICATE_q\ & \processador|ROM|memROM~13_combout\) ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|Registradores|registrador~32_q\ & ( (!\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~13_combout\ & 
-- (\processador|Registradores|registrador~24_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~24_q\,
	datab => \processador|Registradores|ALT_INV_registrador~40DUPLICATE_q\,
	datac => \processador|Registradores|ALT_INV_registrador~16_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~32_q\,
	combout => \processador|Registradores|registrador~156_combout\);

-- Location: FF_X34_Y4_N55
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
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~80_q\);

-- Location: FF_X35_Y4_N43
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
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~96_q\);

-- Location: FF_X35_Y5_N55
\processador|Registradores|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~104_q\);

-- Location: LABCELL_X35_Y3_N21
\processador|Registradores|registrador~88feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~88feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \processador|Registradores|registrador~88feeder_combout\);

-- Location: FF_X35_Y3_N22
\processador|Registradores|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~88feeder_combout\,
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~88_q\);

-- Location: LABCELL_X35_Y5_N57
\processador|Registradores|registrador~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~158_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~88_q\ & ( (!\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~96_q\)) # 
-- (\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~104_q\))) ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( \processador|Registradores|registrador~88_q\ & ( (\processador|ROM|memROM~13_combout\) # 
-- (\processador|Registradores|registrador~80_q\) ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|Registradores|registrador~88_q\ & ( (!\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~96_q\)) # 
-- (\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~104_q\))) ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( !\processador|Registradores|registrador~88_q\ & ( (\processador|Registradores|registrador~80_q\ & 
-- !\processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~80_q\,
	datab => \processador|Registradores|ALT_INV_registrador~96_q\,
	datac => \processador|Registradores|ALT_INV_registrador~104_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~88_q\,
	combout => \processador|Registradores|registrador~158_combout\);

-- Location: FF_X35_Y4_N59
\processador|Registradores|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~128_q\);

-- Location: FF_X34_Y4_N41
\processador|Registradores|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~112_q\);

-- Location: MLABCELL_X34_Y4_N39
\processador|Registradores|registrador~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~159_combout\ = ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~112_q\))) # (\processador|ROM|memROM~17_combout\ & 
-- (\processador|Registradores|registrador~128_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~128_q\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~112_q\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~159_combout\);

-- Location: LABCELL_X35_Y5_N9
\processador|Registradores|registrador~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~160_combout\ = ( \processador|ROM|memROM~27_combout\ & ( \processador|Registradores|registrador~159_combout\ & ( (\processador|Registradores|registrador~158_combout\) # (\processador|ROM|memROM~23_combout\) ) ) ) # ( 
-- !\processador|ROM|memROM~27_combout\ & ( \processador|Registradores|registrador~159_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~156_combout\))) # (\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~157_combout\)) ) ) ) # ( \processador|ROM|memROM~27_combout\ & ( !\processador|Registradores|registrador~159_combout\ & ( (!\processador|ROM|memROM~23_combout\ & \processador|Registradores|registrador~158_combout\) 
-- ) ) ) # ( !\processador|ROM|memROM~27_combout\ & ( !\processador|Registradores|registrador~159_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~156_combout\))) # (\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~157_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~157_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~156_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~158_combout\,
	datae => \processador|ROM|ALT_INV_memROM~27_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~159_combout\,
	combout => \processador|Registradores|registrador~160_combout\);

-- Location: LABCELL_X36_Y4_N24
\processador|flipflop|data_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~3_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~160_combout\ & !\processador|Registradores|registrador~155_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|Registradores|registrador~160_combout\ & !\processador|Registradores|registrador~155_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & 
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
	datac => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~155_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|flipflop|data_out~3_combout\);

-- Location: LABCELL_X35_Y4_N30
\processador|UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal0~0_combout\ = ( !\processador|ROM|memROM~32_combout\ & ( (!\processador|ROM|memROM~36_combout\ & (!\processador|ROM|memROM~34_combout\ & \processador|ROM|memROM~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~36_combout\,
	datab => \processador|ROM|ALT_INV_memROM~34_combout\,
	datac => \processador|ROM|ALT_INV_memROM~27_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~32_combout\,
	combout => \processador|UC|Equal0~0_combout\);

-- Location: LABCELL_X35_Y4_N51
\processador|flipflop|data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~0_combout\ = ( \processador|flipflop|data_out~q\ & ( !\processador|UC|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_Equal0~0_combout\,
	dataf => \processador|flipflop|ALT_INV_data_out~q\,
	combout => \processador|flipflop|data_out~0_combout\);

-- Location: LABCELL_X36_Y4_N3
\processador|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[4]~4_combout\ = ( \interfaceChaves|saida[0]~9_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((\processador|UC|Equal5~0_combout\ & \processador|ROM|memROM~28_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\ & (\processador|ULA|Add0~17_sumout\)) ) ) # ( !\interfaceChaves|saida[0]~9_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\) # 
-- (\processador|ROM|memROM~28_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & (\processador|ULA|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110111011101100011011101100010001000110110001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~17_sumout\,
	datac => \processador|UC|ALT_INV_Equal5~0_combout\,
	datad => \processador|ROM|ALT_INV_memROM~28_combout\,
	dataf => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	combout => \processador|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: FF_X37_Y5_N56
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~73_q\);

-- Location: FF_X36_Y5_N29
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~65_q\);

-- Location: FF_X37_Y4_N59
\processador|Registradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~57_q\);

-- Location: FF_X37_Y5_N44
\processador|Registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~41_q\);

-- Location: FF_X37_Y4_N52
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
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~25_q\);

-- Location: FF_X37_Y5_N50
\processador|Registradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~33_q\);

-- Location: FF_X36_Y4_N5
\processador|Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~17_q\);

-- Location: MLABCELL_X37_Y5_N42
\processador|Registradores|registrador~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~246_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~17_q\))) # 
-- (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~25_q\)))) # (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( 
-- ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~33_q\))) # (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~41_q\)))) # 
-- (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~41_q\,
	datab => \processador|Registradores|ALT_INV_registrador~25_q\,
	datac => \processador|Registradores|ALT_INV_registrador~33_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~45_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~17_q\,
	combout => \processador|Registradores|registrador~246_combout\);

-- Location: FF_X36_Y3_N11
\processador|Registradores|registrador~49DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~49DUPLICATE_q\);

-- Location: MLABCELL_X37_Y5_N54
\processador|Registradores|registrador~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~214_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~246_combout\)))) # (\processador|ROM|memROM~43_combout\ & 
-- ((!\processador|Registradores|registrador~246_combout\ & (\processador|Registradores|registrador~49DUPLICATE_q\)) # (\processador|Registradores|registrador~246_combout\ & ((\processador|Registradores|registrador~57_q\)))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( (!\processador|ROM|memROM~43_combout\ & ((((\processador|Registradores|registrador~246_combout\))))) # (\processador|ROM|memROM~43_combout\ & (((!\processador|Registradores|registrador~246_combout\ & 
-- ((\processador|Registradores|registrador~65_q\))) # (\processador|Registradores|registrador~246_combout\ & (\processador|Registradores|registrador~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~73_q\,
	datab => \processador|ROM|ALT_INV_memROM~43_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~65_q\,
	datad => \processador|Registradores|ALT_INV_registrador~57_q\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~246_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~49DUPLICATE_q\,
	combout => \processador|Registradores|registrador~214_combout\);

-- Location: FF_X34_Y4_N5
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
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~81_q\);

-- Location: FF_X36_Y3_N10
\processador|Registradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~49_q\);

-- Location: FF_X34_Y4_N26
\processador|Registradores|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~113_q\);

-- Location: MLABCELL_X34_Y4_N24
\processador|Registradores|registrador~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~161_combout\ = ( \processador|Registradores|registrador~113_q\ & ( \processador|ROM|memROM~23_combout\ & ( (\processador|ROM|memROM~27_combout\) # (\processador|Registradores|registrador~49_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~113_q\ & ( \processador|ROM|memROM~23_combout\ & ( (\processador|Registradores|registrador~49_q\ & !\processador|ROM|memROM~27_combout\) ) ) ) # ( \processador|Registradores|registrador~113_q\ & ( 
-- !\processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~17_q\)) # (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~81_q\))) ) ) ) # ( 
-- !\processador|Registradores|registrador~113_q\ & ( !\processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~17_q\)) # (\processador|ROM|memROM~27_combout\ & 
-- ((\processador|Registradores|registrador~81_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~17_q\,
	datab => \processador|Registradores|ALT_INV_registrador~81_q\,
	datac => \processador|Registradores|ALT_INV_registrador~49_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~113_q\,
	dataf => \processador|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|Registradores|registrador~161_combout\);

-- Location: FF_X35_Y4_N19
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
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~97_q\);

-- Location: FF_X35_Y4_N56
\processador|Registradores|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~129_q\);

-- Location: LABCELL_X35_Y4_N54
\processador|Registradores|registrador~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~163_combout\ = ( \processador|Registradores|registrador~129_q\ & ( \processador|ROM|memROM~27_combout\ & ( (\processador|ROM|memROM~23_combout\) # (\processador|Registradores|registrador~97_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~129_q\ & ( \processador|ROM|memROM~27_combout\ & ( (\processador|Registradores|registrador~97_q\ & !\processador|ROM|memROM~23_combout\) ) ) ) # ( \processador|Registradores|registrador~129_q\ & ( 
-- !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & (\processador|Registradores|registrador~33_q\)) # (\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~65_q\))) ) ) ) # ( 
-- !\processador|Registradores|registrador~129_q\ & ( !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & (\processador|Registradores|registrador~33_q\)) # (\processador|ROM|memROM~23_combout\ & 
-- ((\processador|Registradores|registrador~65_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~33_q\,
	datab => \processador|Registradores|ALT_INV_registrador~97_q\,
	datac => \processador|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~65_q\,
	datae => \processador|Registradores|ALT_INV_registrador~129_q\,
	dataf => \processador|ROM|ALT_INV_memROM~27_combout\,
	combout => \processador|Registradores|registrador~163_combout\);

-- Location: FF_X36_Y4_N25
\processador|Registradores|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~105_q\);

-- Location: MLABCELL_X34_Y4_N21
\processador|Registradores|registrador~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~164_combout\ = ( !\processador|ROM|memROM~27_combout\ & ( \processador|ROM|memROM~23_combout\ & ( \processador|Registradores|registrador~73_q\ ) ) ) # ( \processador|ROM|memROM~27_combout\ & ( 
-- !\processador|ROM|memROM~23_combout\ & ( \processador|Registradores|registrador~105_q\ ) ) ) # ( !\processador|ROM|memROM~27_combout\ & ( !\processador|ROM|memROM~23_combout\ & ( \processador|Registradores|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~41_q\,
	datac => \processador|Registradores|ALT_INV_registrador~73_q\,
	datad => \processador|Registradores|ALT_INV_registrador~105_q\,
	datae => \processador|ROM|ALT_INV_memROM~27_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|Registradores|registrador~164_combout\);

-- Location: FF_X35_Y4_N41
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
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~89_q\);

-- Location: LABCELL_X35_Y4_N39
\processador|Registradores|registrador~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~162_combout\ = ( \processador|Registradores|registrador~57_q\ & ( (!\processador|ROM|memROM~23_combout\ & ((!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~25_q\)) # 
-- (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~89_q\))))) # (\processador|ROM|memROM~23_combout\ & (!\processador|ROM|memROM~27_combout\)) ) ) # ( !\processador|Registradores|registrador~57_q\ & ( 
-- (!\processador|ROM|memROM~23_combout\ & ((!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~25_q\)) # (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~89_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|ROM|ALT_INV_memROM~27_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~25_q\,
	datad => \processador|Registradores|ALT_INV_registrador~89_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~57_q\,
	combout => \processador|Registradores|registrador~162_combout\);

-- Location: LABCELL_X35_Y4_N21
\processador|Registradores|registrador~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~165_combout\ = ( \processador|Registradores|registrador~164_combout\ & ( \processador|Registradores|registrador~162_combout\ & ( ((!\processador|ROM|memROM~17_combout\ & 
-- (\processador|Registradores|registrador~161_combout\)) # (\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~163_combout\)))) # (\processador|ROM|memROM~13_combout\) ) ) ) # ( 
-- !\processador|Registradores|registrador~164_combout\ & ( \processador|Registradores|registrador~162_combout\ & ( (!\processador|ROM|memROM~13_combout\ & ((!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~161_combout\)) # 
-- (\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~163_combout\))))) # (\processador|ROM|memROM~13_combout\ & (!\processador|ROM|memROM~17_combout\)) ) ) ) # ( \processador|Registradores|registrador~164_combout\ & ( 
-- !\processador|Registradores|registrador~162_combout\ & ( (!\processador|ROM|memROM~13_combout\ & ((!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~161_combout\)) # (\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~163_combout\))))) # (\processador|ROM|memROM~13_combout\ & (\processador|ROM|memROM~17_combout\)) ) ) ) # ( !\processador|Registradores|registrador~164_combout\ & ( 
-- !\processador|Registradores|registrador~162_combout\ & ( (!\processador|ROM|memROM~13_combout\ & ((!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~161_combout\)) # (\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~163_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM|ALT_INV_memROM~17_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~161_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~163_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~164_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~162_combout\,
	combout => \processador|Registradores|registrador~165_combout\);

-- Location: LABCELL_X36_Y4_N45
\processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~17_sumout\ = SUM(( \processador|Registradores|registrador~165_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~214_combout\) ) + ( \processador|ULA|Add0~14\ ))
-- \processador|ULA|Add0~18\ = CARRY(( \processador|Registradores|registrador~165_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~214_combout\) ) + ( \processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~214_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~165_combout\,
	cin => \processador|ULA|Add0~14\,
	sumout => \processador|ULA|Add0~17_sumout\,
	cout => \processador|ULA|Add0~18\);

-- Location: FF_X36_Y6_N31
\processador|Registradores|registrador~74DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~74DUPLICATE_q\);

-- Location: FF_X36_Y6_N14
\processador|Registradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~58_q\);

-- Location: FF_X36_Y6_N2
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~66_q\);

-- Location: FF_X37_Y5_N26
\processador|Registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~42_q\);

-- Location: FF_X34_Y4_N31
\processador|Registradores|registrador~26DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~26DUPLICATE_q\);

-- Location: FF_X37_Y5_N32
\processador|Registradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~34_q\);

-- Location: FF_X36_Y4_N23
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
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~18_q\);

-- Location: MLABCELL_X37_Y5_N24
\processador|Registradores|registrador~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~250_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~18_q\))) # 
-- (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~26DUPLICATE_q\)))) # (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( 
-- ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~34_q\))) # (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~42_q\)))) # 
-- (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~42_q\,
	datab => \processador|Registradores|ALT_INV_registrador~26DUPLICATE_q\,
	datac => \processador|Registradores|ALT_INV_registrador~34_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~45_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~18_q\,
	combout => \processador|Registradores|registrador~250_combout\);

-- Location: FF_X36_Y3_N8
\processador|Registradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~50_q\);

-- Location: LABCELL_X36_Y6_N48
\processador|Registradores|registrador~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~218_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~250_combout\)))) # (\processador|ROM|memROM~43_combout\ & 
-- ((!\processador|Registradores|registrador~250_combout\ & ((\processador|Registradores|registrador~50_q\))) # (\processador|Registradores|registrador~250_combout\ & (\processador|Registradores|registrador~58_q\))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~250_combout\)))) # (\processador|ROM|memROM~43_combout\ & ((!\processador|Registradores|registrador~250_combout\ & 
-- ((\processador|Registradores|registrador~66_q\))) # (\processador|Registradores|registrador~250_combout\ & (\processador|Registradores|registrador~74DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~74DUPLICATE_q\,
	datab => \processador|Registradores|ALT_INV_registrador~58_q\,
	datac => \processador|Registradores|ALT_INV_registrador~66_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~250_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~50_q\,
	combout => \processador|Registradores|registrador~218_combout\);

-- Location: LABCELL_X36_Y4_N48
\processador|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~21_sumout\ = SUM(( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~218_combout\) ) + ( \processador|Registradores|registrador~170_combout\ ) + ( \processador|ULA|Add0~18\ ))
-- \processador|ULA|Add0~22\ = CARRY(( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~218_combout\) ) + ( \processador|Registradores|registrador~170_combout\ ) + ( \processador|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~170_combout\,
	datac => \processador|UC|ALT_INV_Equal3~0_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~218_combout\,
	cin => \processador|ULA|Add0~18\,
	sumout => \processador|ULA|Add0~21_sumout\,
	cout => \processador|ULA|Add0~22\);

-- Location: LABCELL_X35_Y4_N9
\processador|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[5]~5_combout\ = ( \processador|ULA|Add0~21_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~29_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~21_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # 
-- (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~29_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010100000001010001011010101111101111101010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	datad => \processador|ROM|ALT_INV_memROM~29_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X34_Y4_N2
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
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~82_q\);

-- Location: FF_X35_Y5_N8
\processador|Registradores|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~106_q\);

-- Location: FF_X35_Y4_N32
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
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~90_q\);

-- Location: LABCELL_X35_Y3_N36
\processador|Registradores|registrador~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~98feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \processador|Registradores|registrador~98feeder_combout\);

-- Location: FF_X35_Y3_N37
\processador|Registradores|registrador~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~98feeder_combout\,
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~98_q\);

-- Location: MLABCELL_X34_Y4_N9
\processador|Registradores|registrador~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~168_combout\ = ( \processador|Registradores|registrador~98_q\ & ( \processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~90_q\))) # 
-- (\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~106_q\)) ) ) ) # ( !\processador|Registradores|registrador~98_q\ & ( \processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~90_q\))) # (\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~106_q\)) ) ) ) # ( \processador|Registradores|registrador~98_q\ & ( !\processador|ROM|memROM~13_combout\ & ( 
-- (\processador|ROM|memROM~17_combout\) # (\processador|Registradores|registrador~82_q\) ) ) ) # ( !\processador|Registradores|registrador~98_q\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~82_q\ & 
-- !\processador|ROM|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~82_q\,
	datab => \processador|Registradores|ALT_INV_registrador~106_q\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~90_q\,
	datae => \processador|Registradores|ALT_INV_registrador~98_q\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~168_combout\);

-- Location: FF_X34_Y4_N20
\processador|Registradores|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~114_q\);

-- Location: FF_X35_Y4_N29
\processador|Registradores|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~130_q\);

-- Location: MLABCELL_X34_Y4_N48
\processador|Registradores|registrador~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~169_combout\ = ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~114_q\)) # (\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~130_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~17_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~114_q\,
	datad => \processador|Registradores|ALT_INV_registrador~130_q\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~169_combout\);

-- Location: FF_X34_Y4_N32
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
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~26_q\);

-- Location: MLABCELL_X34_Y4_N12
\processador|Registradores|registrador~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~166_combout\ = ( \processador|Registradores|registrador~42_q\ & ( \processador|ROM|memROM~13_combout\ & ( (\processador|ROM|memROM~17_combout\) # (\processador|Registradores|registrador~26_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~42_q\ & ( \processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~26_q\ & !\processador|ROM|memROM~17_combout\) ) ) ) # ( \processador|Registradores|registrador~42_q\ & ( 
-- !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~18_q\)) # (\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~34_q\))) ) ) ) # ( 
-- !\processador|Registradores|registrador~42_q\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~18_q\)) # (\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~34_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~18_q\,
	datab => \processador|Registradores|ALT_INV_registrador~34_q\,
	datac => \processador|Registradores|ALT_INV_registrador~26_q\,
	datad => \processador|ROM|ALT_INV_memROM~17_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~42_q\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~166_combout\);

-- Location: FF_X36_Y6_N32
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~74_q\);

-- Location: LABCELL_X36_Y6_N15
\processador|Registradores|registrador~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~167_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~74_q\ ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~58_q\ ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~66_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~66_q\,
	datab => \processador|Registradores|ALT_INV_registrador~58_q\,
	datac => \processador|Registradores|ALT_INV_registrador~74_q\,
	datad => \processador|Registradores|ALT_INV_registrador~50_q\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~167_combout\);

-- Location: LABCELL_X35_Y4_N15
\processador|Registradores|registrador~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~170_combout\ = ( \processador|Registradores|registrador~166_combout\ & ( \processador|Registradores|registrador~167_combout\ & ( (!\processador|ROM|memROM~27_combout\) # ((!\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~168_combout\)) # (\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~169_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~166_combout\ & ( 
-- \processador|Registradores|registrador~167_combout\ & ( (!\processador|ROM|memROM~23_combout\ & (\processador|Registradores|registrador~168_combout\ & ((\processador|ROM|memROM~27_combout\)))) # (\processador|ROM|memROM~23_combout\ & 
-- (((!\processador|ROM|memROM~27_combout\) # (\processador|Registradores|registrador~169_combout\)))) ) ) ) # ( \processador|Registradores|registrador~166_combout\ & ( !\processador|Registradores|registrador~167_combout\ & ( 
-- (!\processador|ROM|memROM~23_combout\ & (((!\processador|ROM|memROM~27_combout\)) # (\processador|Registradores|registrador~168_combout\))) # (\processador|ROM|memROM~23_combout\ & (((\processador|Registradores|registrador~169_combout\ & 
-- \processador|ROM|memROM~27_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~166_combout\ & ( !\processador|Registradores|registrador~167_combout\ & ( (\processador|ROM|memROM~27_combout\ & ((!\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~168_combout\)) # (\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~169_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~168_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~169_combout\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~166_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~167_combout\,
	combout => \processador|Registradores|registrador~170_combout\);

-- Location: LABCELL_X36_Y4_N0
\processador|flipflop|data_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~2_combout\ = ( \processador|ULA|Add0~21_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~170_combout\ & !\processador|Registradores|registrador~165_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~21_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|Registradores|registrador~170_combout\ & !\processador|Registradores|registrador~165_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (!\processador|ULA|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010001000100111001000100010010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~17_sumout\,
	datac => \processador|Registradores|ALT_INV_registrador~170_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~165_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|flipflop|data_out~2_combout\);

-- Location: LABCELL_X36_Y4_N6
\processador|flipflop|data_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~1_combout\ = ( \processador|ULA|Add0~5_sumout\ & ( \processador|ULA|Add0~1_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~145_combout\ & 
-- (\processador|UC|Equal0~0_combout\ & !\processador|Registradores|registrador~150_combout\))) ) ) ) # ( !\processador|ULA|Add0~5_sumout\ & ( \processador|ULA|Add0~1_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & 
-- (!\processador|Registradores|registrador~145_combout\ & (\processador|UC|Equal0~0_combout\ & !\processador|Registradores|registrador~150_combout\))) ) ) ) # ( \processador|ULA|Add0~5_sumout\ & ( !\processador|ULA|Add0~1_sumout\ & ( 
-- (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~145_combout\ & (\processador|UC|Equal0~0_combout\ & !\processador|Registradores|registrador~150_combout\))) ) ) ) # ( !\processador|ULA|Add0~5_sumout\ & ( 
-- !\processador|ULA|Add0~1_sumout\ & ( (\processador|UC|Equal0~0_combout\ & (((!\processador|Registradores|registrador~145_combout\ & !\processador|Registradores|registrador~150_combout\)) # (\processador|UC|palavraControle[3]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000101000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|UC|ALT_INV_Equal0~0_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~150_combout\,
	datae => \processador|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \processador|flipflop|data_out~1_combout\);

-- Location: FF_X36_Y6_N38
\processador|Registradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~60_q\);

-- Location: FF_X36_Y6_N8
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~76_q\);

-- Location: FF_X37_Y6_N38
\processador|Registradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~44_q\);

-- Location: MLABCELL_X34_Y6_N39
\processador|Registradores|registrador~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~28feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \processador|Registradores|registrador~28feeder_combout\);

-- Location: FF_X34_Y6_N40
\processador|Registradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~28feeder_combout\,
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~28_q\);

-- Location: MLABCELL_X34_Y6_N33
\processador|Registradores|registrador~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~36feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \processador|Registradores|registrador~36feeder_combout\);

-- Location: FF_X34_Y6_N34
\processador|Registradores|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~36feeder_combout\,
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~36_q\);

-- Location: FF_X36_Y5_N23
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
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~20_q\);

-- Location: MLABCELL_X37_Y6_N36
\processador|Registradores|registrador~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~258_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~20_q\))) # 
-- (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~28_q\)))) # (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( 
-- ((!\processador|ROM|memROM~43_combout\ & ((!\processador|ROM|memROM~45_combout\ & ((\processador|Registradores|registrador~36_q\))) # (\processador|ROM|memROM~45_combout\ & (\processador|Registradores|registrador~44_q\)))) # 
-- (\processador|ROM|memROM~43_combout\ & (((\processador|ROM|memROM~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~44_q\,
	datab => \processador|Registradores|ALT_INV_registrador~28_q\,
	datac => \processador|Registradores|ALT_INV_registrador~36_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~45_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~20_q\,
	combout => \processador|Registradores|registrador~258_combout\);

-- Location: FF_X35_Y6_N25
\processador|Registradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~52_q\);

-- Location: LABCELL_X36_Y6_N36
\processador|Registradores|registrador~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~226_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~258_combout\)))) # (\processador|ROM|memROM~43_combout\ & 
-- ((!\processador|Registradores|registrador~258_combout\ & ((\processador|Registradores|registrador~52_q\))) # (\processador|Registradores|registrador~258_combout\ & (\processador|Registradores|registrador~60_q\))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~258_combout\)))) # (\processador|ROM|memROM~43_combout\ & ((!\processador|Registradores|registrador~258_combout\ & 
-- ((\processador|Registradores|registrador~68_q\))) # (\processador|Registradores|registrador~258_combout\ & (\processador|Registradores|registrador~76_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~60_q\,
	datab => \processador|Registradores|ALT_INV_registrador~76_q\,
	datac => \processador|Registradores|ALT_INV_registrador~68_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~258_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~52_q\,
	combout => \processador|Registradores|registrador~226_combout\);

-- Location: FF_X35_Y4_N17
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
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~99_q\);

-- Location: FF_X36_Y6_N4
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~67_q\);

-- Location: FF_X37_Y6_N32
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
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~35_q\);

-- Location: FF_X35_Y4_N26
\processador|Registradores|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~131_q\);

-- Location: LABCELL_X35_Y4_N24
\processador|Registradores|registrador~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~173_combout\ = ( \processador|Registradores|registrador~131_q\ & ( \processador|ROM|memROM~27_combout\ & ( (\processador|Registradores|registrador~99_q\) # (\processador|ROM|memROM~23_combout\) ) ) ) # ( 
-- !\processador|Registradores|registrador~131_q\ & ( \processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & \processador|Registradores|registrador~99_q\) ) ) ) # ( \processador|Registradores|registrador~131_q\ & ( 
-- !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~35_q\))) # (\processador|ROM|memROM~23_combout\ & (\processador|Registradores|registrador~67_q\)) ) ) ) # ( 
-- !\processador|Registradores|registrador~131_q\ & ( !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~35_q\))) # (\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~67_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~99_q\,
	datac => \processador|Registradores|ALT_INV_registrador~67_q\,
	datad => \processador|Registradores|ALT_INV_registrador~35_q\,
	datae => \processador|Registradores|ALT_INV_registrador~131_q\,
	dataf => \processador|ROM|ALT_INV_memROM~27_combout\,
	combout => \processador|Registradores|registrador~173_combout\);

-- Location: FF_X37_Y4_N8
\processador|Registradores|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~107_q\);

-- Location: FF_X37_Y6_N14
\processador|Registradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~43_q\);

-- Location: MLABCELL_X37_Y4_N24
\processador|Registradores|registrador~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~174_combout\ = ( \processador|ROM|memROM~23_combout\ & ( (!\processador|ROM|memROM~27_combout\ & \processador|Registradores|registrador~75_q\) ) ) # ( !\processador|ROM|memROM~23_combout\ & ( 
-- (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~43_q\))) # (\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~107_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~27_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~107_q\,
	datac => \processador|Registradores|ALT_INV_registrador~43_q\,
	datad => \processador|Registradores|ALT_INV_registrador~75_q\,
	dataf => \processador|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|Registradores|registrador~174_combout\);

-- Location: FF_X36_Y3_N23
\processador|Registradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~51_q\);

-- Location: FF_X34_Y4_N17
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
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~83_q\);

-- Location: FF_X36_Y5_N20
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
	ena => \processador|Registradores|registrador~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~19_q\);

-- Location: FF_X36_Y3_N14
\processador|Registradores|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~115_q\);

-- Location: LABCELL_X36_Y3_N12
\processador|Registradores|registrador~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~171_combout\ = ( \processador|Registradores|registrador~115_q\ & ( \processador|ROM|memROM~27_combout\ & ( (\processador|ROM|memROM~23_combout\) # (\processador|Registradores|registrador~83_q\) ) ) ) # ( 
-- !\processador|Registradores|registrador~115_q\ & ( \processador|ROM|memROM~27_combout\ & ( (\processador|Registradores|registrador~83_q\ & !\processador|ROM|memROM~23_combout\) ) ) ) # ( \processador|Registradores|registrador~115_q\ & ( 
-- !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~19_q\))) # (\processador|ROM|memROM~23_combout\ & (\processador|Registradores|registrador~51_q\)) ) ) ) # ( 
-- !\processador|Registradores|registrador~115_q\ & ( !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~23_combout\ & ((\processador|Registradores|registrador~19_q\))) # (\processador|ROM|memROM~23_combout\ & 
-- (\processador|Registradores|registrador~51_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~51_q\,
	datab => \processador|Registradores|ALT_INV_registrador~83_q\,
	datac => \processador|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~19_q\,
	datae => \processador|Registradores|ALT_INV_registrador~115_q\,
	dataf => \processador|ROM|ALT_INV_memROM~27_combout\,
	combout => \processador|Registradores|registrador~171_combout\);

-- Location: FF_X37_Y4_N29
\processador|Registradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~59_q\);

-- Location: FF_X35_Y4_N38
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
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~91_q\);

-- Location: FF_X37_Y4_N35
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
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~27_q\);

-- Location: LABCELL_X35_Y4_N36
\processador|Registradores|registrador~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~172_combout\ = ( \processador|Registradores|registrador~27_q\ & ( (!\processador|ROM|memROM~23_combout\ & ((!\processador|ROM|memROM~27_combout\) # ((\processador|Registradores|registrador~91_q\)))) # 
-- (\processador|ROM|memROM~23_combout\ & (!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~59_q\))) ) ) # ( !\processador|Registradores|registrador~27_q\ & ( (!\processador|ROM|memROM~23_combout\ & 
-- (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~91_q\)))) # (\processador|ROM|memROM~23_combout\ & (!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~59_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|ROM|ALT_INV_memROM~27_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~59_q\,
	datad => \processador|Registradores|ALT_INV_registrador~91_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~27_q\,
	combout => \processador|Registradores|registrador~172_combout\);

-- Location: LABCELL_X36_Y4_N21
\processador|Registradores|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~175_combout\ = ( \processador|Registradores|registrador~171_combout\ & ( \processador|Registradores|registrador~172_combout\ & ( (!\processador|ROM|memROM~17_combout\) # ((!\processador|ROM|memROM~13_combout\ & 
-- (\processador|Registradores|registrador~173_combout\)) # (\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~174_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~171_combout\ & ( 
-- \processador|Registradores|registrador~172_combout\ & ( (!\processador|ROM|memROM~13_combout\ & (\processador|Registradores|registrador~173_combout\ & ((\processador|ROM|memROM~17_combout\)))) # (\processador|ROM|memROM~13_combout\ & 
-- (((!\processador|ROM|memROM~17_combout\) # (\processador|Registradores|registrador~174_combout\)))) ) ) ) # ( \processador|Registradores|registrador~171_combout\ & ( !\processador|Registradores|registrador~172_combout\ & ( 
-- (!\processador|ROM|memROM~13_combout\ & (((!\processador|ROM|memROM~17_combout\)) # (\processador|Registradores|registrador~173_combout\))) # (\processador|ROM|memROM~13_combout\ & (((\processador|Registradores|registrador~174_combout\ & 
-- \processador|ROM|memROM~17_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~171_combout\ & ( !\processador|Registradores|registrador~172_combout\ & ( (\processador|ROM|memROM~17_combout\ & ((!\processador|ROM|memROM~13_combout\ & 
-- (\processador|Registradores|registrador~173_combout\)) # (\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~174_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~173_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~174_combout\,
	datad => \processador|ROM|ALT_INV_memROM~17_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~171_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~172_combout\,
	combout => \processador|Registradores|registrador~175_combout\);

-- Location: LABCELL_X36_Y4_N51
\processador|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~25_sumout\ = SUM(( \processador|Registradores|registrador~175_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~222_combout\) ) + ( \processador|ULA|Add0~22\ ))
-- \processador|ULA|Add0~26\ = CARRY(( \processador|Registradores|registrador~175_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~222_combout\) ) + ( \processador|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~222_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~175_combout\,
	cin => \processador|ULA|Add0~22\,
	sumout => \processador|ULA|Add0~25_sumout\,
	cout => \processador|ULA|Add0~26\);

-- Location: MLABCELL_X37_Y4_N6
\processador|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[6]~6_combout\ = ( \processador|ULA|Add0~25_sumout\ & ( ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~30_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~25_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & ((!\processador|UC|Equal5~0_combout\ & (!\interfaceChaves|saida[0]~9_combout\)) # 
-- (\processador|UC|Equal5~0_combout\ & ((\processador|ROM|memROM~30_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100000000100010110000000010001011111111111000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~30_combout\,
	datad => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X37_Y6_N56
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
	ena => \processador|Registradores|registrador~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~75_q\);

-- Location: MLABCELL_X37_Y6_N12
\processador|Registradores|registrador~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~254_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~45_combout\ & (((\processador|Registradores|registrador~19_q\ & !\processador|ROM|memROM~43_combout\)))) # 
-- (\processador|ROM|memROM~45_combout\ & (((\processador|ROM|memROM~43_combout\)) # (\processador|Registradores|registrador~27_q\)))) ) ) # ( \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~45_combout\ & 
-- (((\processador|Registradores|registrador~35_q\ & !\processador|ROM|memROM~43_combout\)))) # (\processador|ROM|memROM~45_combout\ & (((\processador|ROM|memROM~43_combout\)) # (\processador|Registradores|registrador~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~27_q\,
	datab => \processador|Registradores|ALT_INV_registrador~43_q\,
	datac => \processador|Registradores|ALT_INV_registrador~35_q\,
	datad => \processador|ROM|ALT_INV_memROM~45_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~43_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~19_q\,
	combout => \processador|Registradores|registrador~254_combout\);

-- Location: MLABCELL_X37_Y6_N54
\processador|Registradores|registrador~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~222_combout\ = ( !\processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~254_combout\)))) # (\processador|ROM|memROM~43_combout\ & 
-- ((!\processador|Registradores|registrador~254_combout\ & ((\processador|Registradores|registrador~51_q\))) # (\processador|Registradores|registrador~254_combout\ & (\processador|Registradores|registrador~59_q\))))) ) ) # ( 
-- \processador|ROM|memROM~44_combout\ & ( ((!\processador|ROM|memROM~43_combout\ & (((\processador|Registradores|registrador~254_combout\)))) # (\processador|ROM|memROM~43_combout\ & ((!\processador|Registradores|registrador~254_combout\ & 
-- ((\processador|Registradores|registrador~67_q\))) # (\processador|Registradores|registrador~254_combout\ & (\processador|Registradores|registrador~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~75_q\,
	datab => \processador|Registradores|ALT_INV_registrador~59_q\,
	datac => \processador|Registradores|ALT_INV_registrador~67_q\,
	datad => \processador|ROM|ALT_INV_memROM~43_combout\,
	datae => \processador|ROM|ALT_INV_memROM~44_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~254_combout\,
	datag => \processador|Registradores|ALT_INV_registrador~51_q\,
	combout => \processador|Registradores|registrador~222_combout\);

-- Location: LABCELL_X36_Y4_N54
\processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~29_sumout\ = SUM(( \processador|Registradores|registrador~180_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (\processador|Registradores|registrador~226_combout\) ) + ( \processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~180_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~226_combout\,
	cin => \processador|ULA|Add0~26\,
	sumout => \processador|ULA|Add0~29_sumout\);

-- Location: LABCELL_X35_Y6_N0
\processador|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[7]~7_combout\ = ( \processador|ULA|Add0~29_sumout\ & ( ((!\interfaceChaves|saida[0]~9_combout\ & !\processador|UC|Equal5~0_combout\)) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( 
-- !\processador|ULA|Add0~29_sumout\ & ( (!\interfaceChaves|saida[0]~9_combout\ & (!\processador|UC|Equal5~0_combout\ & !\processador|UC|palavraControle[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	datac => \processador|UC|ALT_INV_Equal5~0_combout\,
	datad => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: FF_X36_Y6_N23
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
	ena => \processador|Registradores|registrador~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~68_q\);

-- Location: LABCELL_X36_Y6_N9
\processador|Registradores|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~177_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~76_q\ ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~60_q\ ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~68_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~68_q\,
	datab => \processador|Registradores|ALT_INV_registrador~76_q\,
	datac => \processador|Registradores|ALT_INV_registrador~52_q\,
	datad => \processador|Registradores|ALT_INV_registrador~60_q\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~177_combout\);

-- Location: FF_X34_Y4_N38
\processador|Registradores|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~116_q\);

-- Location: FF_X35_Y6_N2
\processador|Registradores|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~132_q\);

-- Location: MLABCELL_X34_Y4_N36
\processador|Registradores|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~179_combout\ = ( \processador|Registradores|registrador~132_q\ & ( (!\processador|ROM|memROM~13_combout\ & ((\processador|Registradores|registrador~116_q\) # (\processador|ROM|memROM~17_combout\))) ) ) # ( 
-- !\processador|Registradores|registrador~132_q\ & ( (!\processador|ROM|memROM~17_combout\ & (!\processador|ROM|memROM~13_combout\ & \processador|Registradores|registrador~116_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~17_combout\,
	datac => \processador|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~116_q\,
	dataf => \processador|Registradores|ALT_INV_registrador~132_q\,
	combout => \processador|Registradores|registrador~179_combout\);

-- Location: FF_X34_Y6_N35
\processador|Registradores|registrador~36DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~36feeder_combout\,
	ena => \processador|Registradores|registrador~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~36DUPLICATE_q\);

-- Location: FF_X34_Y6_N41
\processador|Registradores|registrador~28DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~28feeder_combout\,
	ena => \processador|Registradores|registrador~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~28DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N12
\processador|Registradores|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~176_combout\ = ( \processador|ROM|memROM~17_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~44_q\ ) ) ) # ( !\processador|ROM|memROM~17_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~28DUPLICATE_q\ ) ) ) # ( \processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~36DUPLICATE_q\ ) ) ) # ( 
-- !\processador|ROM|memROM~17_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( \processador|Registradores|registrador~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~36DUPLICATE_q\,
	datab => \processador|Registradores|ALT_INV_registrador~20_q\,
	datac => \processador|Registradores|ALT_INV_registrador~44_q\,
	datad => \processador|Registradores|ALT_INV_registrador~28DUPLICATE_q\,
	datae => \processador|ROM|ALT_INV_memROM~17_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~176_combout\);

-- Location: MLABCELL_X34_Y6_N6
\processador|Registradores|registrador~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~84feeder_combout\ = ( \processador|MUX_ULA|saida_MUX[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \processador|Registradores|registrador~84feeder_combout\);

-- Location: FF_X34_Y6_N7
\processador|Registradores|registrador~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|Registradores|registrador~84feeder_combout\,
	ena => \processador|Registradores|registrador~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~84_q\);

-- Location: FF_X35_Y4_N13
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
	ena => \processador|Registradores|registrador~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~100_q\);

-- Location: FF_X35_Y4_N34
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
	ena => \processador|Registradores|registrador~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~92_q\);

-- Location: FF_X35_Y6_N20
\processador|Registradores|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => VCC,
	ena => \processador|Registradores|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~108_q\);

-- Location: LABCELL_X35_Y6_N18
\processador|Registradores|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~178_combout\ = ( \processador|Registradores|registrador~108_q\ & ( \processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~92_q\) # (\processador|ROM|memROM~17_combout\) ) ) ) # ( 
-- !\processador|Registradores|registrador~108_q\ & ( \processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & \processador|Registradores|registrador~92_q\) ) ) ) # ( \processador|Registradores|registrador~108_q\ & ( 
-- !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~84_q\)) # (\processador|ROM|memROM~17_combout\ & ((\processador|Registradores|registrador~100_q\))) ) ) ) # ( 
-- !\processador|Registradores|registrador~108_q\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~17_combout\ & (\processador|Registradores|registrador~84_q\)) # (\processador|ROM|memROM~17_combout\ & 
-- ((\processador|Registradores|registrador~100_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~84_q\,
	datab => \processador|Registradores|ALT_INV_registrador~100_q\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~92_q\,
	datae => \processador|Registradores|ALT_INV_registrador~108_q\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~178_combout\);

-- Location: LABCELL_X35_Y4_N3
\processador|Registradores|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~180_combout\ = ( \processador|Registradores|registrador~176_combout\ & ( \processador|Registradores|registrador~178_combout\ & ( (!\processador|ROM|memROM~23_combout\) # ((!\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~177_combout\)) # (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~179_combout\)))) ) ) ) # ( !\processador|Registradores|registrador~176_combout\ & ( 
-- \processador|Registradores|registrador~178_combout\ & ( (!\processador|ROM|memROM~23_combout\ & (((\processador|ROM|memROM~27_combout\)))) # (\processador|ROM|memROM~23_combout\ & ((!\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~177_combout\)) # (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~179_combout\))))) ) ) ) # ( \processador|Registradores|registrador~176_combout\ & ( 
-- !\processador|Registradores|registrador~178_combout\ & ( (!\processador|ROM|memROM~23_combout\ & (((!\processador|ROM|memROM~27_combout\)))) # (\processador|ROM|memROM~23_combout\ & ((!\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~177_combout\)) # (\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~179_combout\))))) ) ) ) # ( !\processador|Registradores|registrador~176_combout\ & ( 
-- !\processador|Registradores|registrador~178_combout\ & ( (\processador|ROM|memROM~23_combout\ & ((!\processador|ROM|memROM~27_combout\ & (\processador|Registradores|registrador~177_combout\)) # (\processador|ROM|memROM~27_combout\ & 
-- ((\processador|Registradores|registrador~179_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~177_combout\,
	datac => \processador|ROM|ALT_INV_memROM~27_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~179_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~176_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~178_combout\,
	combout => \processador|Registradores|registrador~180_combout\);

-- Location: LABCELL_X36_Y4_N27
\processador|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[7]~7_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~180_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~180_combout\,
	datad => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|ULA|saida[7]~7_combout\);

-- Location: MLABCELL_X37_Y4_N45
\processador|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[6]~6_combout\ = ( \processador|ULA|Add0~25_sumout\ & ( (\processador|Registradores|registrador~175_combout\) # (\processador|UC|palavraControle[3]~0_combout\) ) ) # ( !\processador|ULA|Add0~25_sumout\ & ( 
-- (!\processador|UC|palavraControle[3]~0_combout\ & \processador|Registradores|registrador~175_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~175_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|ULA|saida[6]~6_combout\);

-- Location: LABCELL_X36_Y4_N12
\processador|flipflop|data_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~4_combout\ = ( \processador|ULA|saida[7]~7_combout\ & ( \processador|ULA|saida[6]~6_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( !\processador|ULA|saida[7]~7_combout\ & ( 
-- \processador|ULA|saida[6]~6_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( \processador|ULA|saida[7]~7_combout\ & ( !\processador|ULA|saida[6]~6_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( 
-- !\processador|ULA|saida[7]~7_combout\ & ( !\processador|ULA|saida[6]~6_combout\ & ( ((\processador|flipflop|data_out~3_combout\ & (\processador|flipflop|data_out~2_combout\ & \processador|flipflop|data_out~1_combout\))) # 
-- (\processador|flipflop|data_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flipflop|ALT_INV_data_out~3_combout\,
	datab => \processador|flipflop|ALT_INV_data_out~0_combout\,
	datac => \processador|flipflop|ALT_INV_data_out~2_combout\,
	datad => \processador|flipflop|ALT_INV_data_out~1_combout\,
	datae => \processador|ULA|ALT_INV_saida[7]~7_combout\,
	dataf => \processador|ULA|ALT_INV_saida[6]~6_combout\,
	combout => \processador|flipflop|data_out~4_combout\);

-- Location: FF_X36_Y4_N14
\processador|flipflop|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|flipflop|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|flipflop|data_out~q\);

-- Location: MLABCELL_X34_Y4_N42
\processador|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|comb~0_combout\ = ( !\processador|ROM|memROM~27_combout\ & ( (!\processador|ROM|memROM~34_combout\ & (\processador|ROM|memROM~36_combout\ & ((\processador|ROM|memROM~32_combout\) # (\processador|flipflop|data_out~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001100000000000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flipflop|ALT_INV_data_out~q\,
	datab => \processador|ROM|ALT_INV_memROM~34_combout\,
	datac => \processador|ROM|ALT_INV_memROM~32_combout\,
	datad => \processador|ROM|ALT_INV_memROM~36_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~27_combout\,
	combout => \processador|comb~0_combout\);

-- Location: FF_X36_Y5_N31
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~17_sumout\,
	asdata => \processador|ROM|memROM~10_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y6_N42
\processador|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~6_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & \processador|PC|DOUT\(4)))) # 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(4)))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT\(3) & ( 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(4))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(4))))) ) ) ) # ( 
-- \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(4) & (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(4) & 
-- (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (!\processador|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((!\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(4))) # (\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100000001000010110000000000010100000000001000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~6_combout\);

-- Location: LABCELL_X36_Y6_N57
\processador|ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~29_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~6_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~29_combout\);

-- Location: FF_X36_Y5_N46
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~25_sumout\,
	asdata => \processador|ROM|memROM~29_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: FF_X36_Y5_N47
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~25_sumout\,
	asdata => \processador|ROM|memROM~29_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y6_N27
\processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~0_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ $ (\processador|PC|DOUT\(4))))) # 
-- (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(4)))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & 
-- (!\processador|PC|DOUT\(4) $ (!\processador|PC|DOUT[1]~DUPLICATE_q\)))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(4) & \processador|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( 
-- \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT\(3))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(3) & 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(4) & 
-- !\processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT[5]~DUPLICATE_q\ & (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(3) $ (\processador|PC|DOUT[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000001011000000010000000000010001001000010000010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM|memROM~0_combout\);

-- Location: MLABCELL_X34_Y5_N39
\processador|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~11_combout\ = (\processador|ROM|memROM~3_combout\ & \processador|ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|ROM|memROM~11_combout\);

-- Location: FF_X36_Y5_N35
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~13_sumout\,
	asdata => \processador|ROM|memROM~11_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y6_N30
\processador|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~7_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT\(3) & ( (\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # 
-- ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(2) & \processador|PC|DOUT[5]~DUPLICATE_q\)) # (\processador|PC|DOUT\(4) & 
-- ((!\processador|PC|DOUT[5]~DUPLICATE_q\))))) ) ) ) # ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(2) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(4) $ (!\processador|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(4) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[5]~DUPLICATE_q\)) # (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101000000000110010010000110000010000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~7_combout\);

-- Location: MLABCELL_X37_Y6_N6
\processador|ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~28_combout\ = ( \processador|ROM|memROM~7_combout\ & ( \processador|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \processador|ROM|memROM~28_combout\);

-- Location: FF_X36_Y5_N44
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~21_sumout\,
	asdata => \processador|ROM|memROM~28_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X36_Y6_N18
\processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~5_combout\ = (\processador|PC|DOUT\(4) & ((!\processador|PC|DOUT\(3) & ((\processador|PC|DOUT\(2)))) # (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001010000000001000101000000000100010100000000010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM|memROM~5_combout\);

-- Location: LABCELL_X35_Y3_N6
\processador|ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~30_combout\ = ( \processador|ROM|memROM~5_combout\ & ( \processador|ROM|memROM~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|ROM|memROM~30_combout\);

-- Location: FF_X36_Y5_N50
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~1_sumout\,
	asdata => \processador|ROM|memROM~30_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: FF_X36_Y5_N49
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~1_sumout\,
	asdata => \processador|ROM|memROM~30_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N21
\processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~3_combout\ = ( !\processador|PC|DOUT\(7) & ( !\processador|PC|DOUT[6]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(7),
	combout => \processador|ROM|memROM~3_combout\);

-- Location: MLABCELL_X37_Y5_N21
\processador|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~9_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[4]~DUPLICATE_q\ & ((\processador|PC|DOUT[5]~DUPLICATE_q\) # 
-- (\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT\(3) & (((!\processador|PC|DOUT[4]~DUPLICATE_q\ & !\processador|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & !\processador|PC|DOUT[5]~DUPLICATE_q\)) ) ) ) # ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[4]~DUPLICATE_q\)) # (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(1) & (\processador|PC|DOUT[4]~DUPLICATE_q\ & \processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001001010000110000000000000101001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|ROM|memROM~9_combout\);

-- Location: LABCELL_X35_Y5_N51
\processador|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~10_combout\ = (\processador|ROM|memROM~3_combout\ & \processador|ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \processador|ROM|memROM~10_combout\);

-- Location: FF_X36_Y5_N32
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~17_sumout\,
	asdata => \processador|ROM|memROM~10_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X36_Y5_N33
\processador|inc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|inc|Add0~18\ ))
-- \processador|inc|Add0~14\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|inc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|inc|Add0~18\,
	sumout => \processador|inc|Add0~13_sumout\,
	cout => \processador|inc|Add0~14\);

-- Location: FF_X36_Y5_N34
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~13_sumout\,
	asdata => \processador|ROM|memROM~11_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X36_Y5_N36
\processador|inc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|inc|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|inc|Add0~14\ ))
-- \processador|inc|Add0~10\ = CARRY(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|inc|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(2),
	cin => \processador|inc|Add0~14\,
	sumout => \processador|inc|Add0~9_sumout\,
	cout => \processador|inc|Add0~10\);

-- Location: FF_X36_Y5_N38
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~9_sumout\,
	asdata => \processador|ROM|memROM~8_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: FF_X36_Y5_N40
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|inc|Add0~5_sumout\,
	asdata => \processador|ROM|memROM~4_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X36_Y6_N33
\processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~2_combout\ = ( \processador|PC|DOUT\(2) & ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT\(1))) # 
-- (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(1))))) ) ) ) # ( !\processador|PC|DOUT\(2) & ( \processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- (\processador|PC|DOUT\(1) & \processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \processador|PC|DOUT\(2) & ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ 
-- (!\processador|PC|DOUT[5]~DUPLICATE_q\)))) # (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & ((\processador|PC|DOUT\(1)) # (\processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\processador|PC|DOUT\(2) & ( !\processador|PC|DOUT\(4) & ( 
-- (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101110000100000000000000001000100001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~2_combout\);

-- Location: LABCELL_X35_Y6_N36
\Decoder|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~0_combout\ = ( \processador|ROM|memROM~3_combout\ & ( \processador|ROM|memROM~5_combout\ & ( (\processador|ROM|memROM~2_combout\ & (!\processador|ROM|memROM~6_combout\ & (!\processador|ROM|memROM~7_combout\ & 
-- !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \processador|ROM|memROM~3_combout\ & ( !\processador|ROM|memROM~5_combout\ & ( (\processador|ROM|memROM~2_combout\ & (!\processador|ROM|memROM~6_combout\ & !\processador|ROM|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~2_combout\,
	datab => \processador|ROM|ALT_INV_memROM~6_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \Decoder|Equal6~0_combout\);

-- Location: MLABCELL_X34_Y5_N48
\Decoder|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~2_combout\ = ( \Decoder|Equal6~1_combout\ & ( (\Decoder|Equal6~0_combout\ & !\processador|ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decoder|ALT_INV_Equal6~0_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	dataf => \Decoder|ALT_INV_Equal6~1_combout\,
	combout => \Decoder|Equal6~2_combout\);

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

-- Location: MLABCELL_X34_Y5_N51
\interfaceBtn|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|Mux0~0_combout\ = ( \KEY[0]~input_o\ & ( (!\processador|ROM|memROM~9_combout\) # ((!\processador|ROM|memROM~3_combout\) # (\KEY[1]~input_o\)) ) ) # ( !\KEY[0]~input_o\ & ( (\processador|ROM|memROM~9_combout\ & 
-- (\processador|ROM|memROM~3_combout\ & \KEY[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~9_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \interfaceBtn|Mux0~0_combout\);

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

-- Location: MLABCELL_X34_Y6_N3
\interfaceBtn|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|Mux0~1_combout\ = ( \KEY[3]~input_o\ & ( \processador|ROM|memROM~9_combout\ & ( (\processador|ROM|memROM~3_combout\) # (\KEY[2]~input_o\) ) ) ) # ( !\KEY[3]~input_o\ & ( \processador|ROM|memROM~9_combout\ & ( (\KEY[2]~input_o\ & 
-- !\processador|ROM|memROM~3_combout\) ) ) ) # ( \KEY[3]~input_o\ & ( !\processador|ROM|memROM~9_combout\ & ( \KEY[2]~input_o\ ) ) ) # ( !\KEY[3]~input_o\ & ( !\processador|ROM|memROM~9_combout\ & ( \KEY[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \interfaceBtn|Mux0~1_combout\);

-- Location: MLABCELL_X34_Y5_N27
\interfaceBtn|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~0_combout\ = ( \Decoder|habilita[1]~0_combout\ & ( \interfaceBtn|Mux0~1_combout\ & ( (\Decoder|Equal6~0_combout\ & ((!\processador|ROM|memROM~8_combout\ & ((!\interfaceBtn|Mux0~0_combout\) # (!\processador|ROM|memROM~11_combout\))) 
-- # (\processador|ROM|memROM~8_combout\ & ((\processador|ROM|memROM~11_combout\))))) ) ) ) # ( \Decoder|habilita[1]~0_combout\ & ( !\interfaceBtn|Mux0~1_combout\ & ( (\Decoder|Equal6~0_combout\ & (((!\interfaceBtn|Mux0~0_combout\) # 
-- (!\processador|ROM|memROM~11_combout\)) # (\processador|ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111110100000000000000000000000010101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \interfaceBtn|ALT_INV_Mux0~0_combout\,
	datac => \processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \Decoder|ALT_INV_Equal6~0_combout\,
	datae => \Decoder|ALT_INV_habilita[1]~0_combout\,
	dataf => \interfaceBtn|ALT_INV_Mux0~1_combout\,
	combout => \interfaceBtn|saida[0]~0_combout\);

-- Location: LABCELL_X32_Y5_N30
\interfaceBaseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~9_sumout\ = SUM(( \interfaceBaseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \interfaceBaseTempo|Add0~10\ = CARRY(( \interfaceBaseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(0),
	cin => GND,
	sumout => \interfaceBaseTempo|Add0~9_sumout\,
	cout => \interfaceBaseTempo|Add0~10\);

-- Location: LABCELL_X32_Y5_N3
\Decoder|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal7~0_combout\ = ( \Decoder|Equal6~1_combout\ & ( (\processador|ROM|memROM~10_combout\ & \Decoder|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Decoder|ALT_INV_Equal6~0_combout\,
	dataf => \Decoder|ALT_INV_Equal6~1_combout\,
	combout => \Decoder|Equal7~0_combout\);

-- Location: FF_X32_Y5_N31
\interfaceBaseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~9_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(0));

-- Location: LABCELL_X32_Y5_N33
\interfaceBaseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~5_sumout\ = SUM(( \interfaceBaseTempo|contador\(1) ) + ( GND ) + ( \interfaceBaseTempo|Add0~10\ ))
-- \interfaceBaseTempo|Add0~6\ = CARRY(( \interfaceBaseTempo|contador\(1) ) + ( GND ) + ( \interfaceBaseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(1),
	cin => \interfaceBaseTempo|Add0~10\,
	sumout => \interfaceBaseTempo|Add0~5_sumout\,
	cout => \interfaceBaseTempo|Add0~6\);

-- Location: FF_X32_Y5_N35
\interfaceBaseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~5_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(1));

-- Location: LABCELL_X32_Y5_N36
\interfaceBaseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~1_sumout\ = SUM(( \interfaceBaseTempo|contador\(2) ) + ( GND ) + ( \interfaceBaseTempo|Add0~6\ ))
-- \interfaceBaseTempo|Add0~2\ = CARRY(( \interfaceBaseTempo|contador\(2) ) + ( GND ) + ( \interfaceBaseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(2),
	cin => \interfaceBaseTempo|Add0~6\,
	sumout => \interfaceBaseTempo|Add0~1_sumout\,
	cout => \interfaceBaseTempo|Add0~2\);

-- Location: FF_X32_Y5_N37
\interfaceBaseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~1_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(2));

-- Location: LABCELL_X32_Y5_N24
\interfaceBaseTempo|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|LessThan0~0_combout\ = ( \interfaceBaseTempo|contador\(0) & ( \interfaceBaseTempo|contador\(2) ) ) # ( !\interfaceBaseTempo|contador\(0) & ( (\interfaceBaseTempo|contador\(1) & \interfaceBaseTempo|contador\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(1),
	datad => \interfaceBaseTempo|ALT_INV_contador\(2),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(0),
	combout => \interfaceBaseTempo|LessThan0~0_combout\);

-- Location: FF_X32_Y4_N20
\interfaceBaseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~85_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(16));

-- Location: LABCELL_X32_Y5_N39
\interfaceBaseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~61_sumout\ = SUM(( \interfaceBaseTempo|contador\(3) ) + ( GND ) + ( \interfaceBaseTempo|Add0~2\ ))
-- \interfaceBaseTempo|Add0~62\ = CARRY(( \interfaceBaseTempo|contador\(3) ) + ( GND ) + ( \interfaceBaseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(3),
	cin => \interfaceBaseTempo|Add0~2\,
	sumout => \interfaceBaseTempo|Add0~61_sumout\,
	cout => \interfaceBaseTempo|Add0~62\);

-- Location: FF_X32_Y5_N41
\interfaceBaseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~61_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(3));

-- Location: LABCELL_X32_Y5_N42
\interfaceBaseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~65_sumout\ = SUM(( \interfaceBaseTempo|contador\(4) ) + ( GND ) + ( \interfaceBaseTempo|Add0~62\ ))
-- \interfaceBaseTempo|Add0~66\ = CARRY(( \interfaceBaseTempo|contador\(4) ) + ( GND ) + ( \interfaceBaseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(4),
	cin => \interfaceBaseTempo|Add0~62\,
	sumout => \interfaceBaseTempo|Add0~65_sumout\,
	cout => \interfaceBaseTempo|Add0~66\);

-- Location: FF_X32_Y5_N43
\interfaceBaseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~65_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(4));

-- Location: LABCELL_X32_Y5_N45
\interfaceBaseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~45_sumout\ = SUM(( \interfaceBaseTempo|contador\(5) ) + ( GND ) + ( \interfaceBaseTempo|Add0~66\ ))
-- \interfaceBaseTempo|Add0~46\ = CARRY(( \interfaceBaseTempo|contador\(5) ) + ( GND ) + ( \interfaceBaseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(5),
	cin => \interfaceBaseTempo|Add0~66\,
	sumout => \interfaceBaseTempo|Add0~45_sumout\,
	cout => \interfaceBaseTempo|Add0~46\);

-- Location: FF_X32_Y5_N47
\interfaceBaseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~45_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(5));

-- Location: LABCELL_X32_Y5_N48
\interfaceBaseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~13_sumout\ = SUM(( \interfaceBaseTempo|contador\(6) ) + ( GND ) + ( \interfaceBaseTempo|Add0~46\ ))
-- \interfaceBaseTempo|Add0~14\ = CARRY(( \interfaceBaseTempo|contador\(6) ) + ( GND ) + ( \interfaceBaseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(6),
	cin => \interfaceBaseTempo|Add0~46\,
	sumout => \interfaceBaseTempo|Add0~13_sumout\,
	cout => \interfaceBaseTempo|Add0~14\);

-- Location: FF_X32_Y5_N49
\interfaceBaseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~13_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(6));

-- Location: LABCELL_X32_Y5_N51
\interfaceBaseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~17_sumout\ = SUM(( \interfaceBaseTempo|contador\(7) ) + ( GND ) + ( \interfaceBaseTempo|Add0~14\ ))
-- \interfaceBaseTempo|Add0~18\ = CARRY(( \interfaceBaseTempo|contador\(7) ) + ( GND ) + ( \interfaceBaseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(7),
	cin => \interfaceBaseTempo|Add0~14\,
	sumout => \interfaceBaseTempo|Add0~17_sumout\,
	cout => \interfaceBaseTempo|Add0~18\);

-- Location: FF_X32_Y5_N53
\interfaceBaseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~17_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(7));

-- Location: LABCELL_X32_Y5_N54
\interfaceBaseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~21_sumout\ = SUM(( \interfaceBaseTempo|contador\(8) ) + ( GND ) + ( \interfaceBaseTempo|Add0~18\ ))
-- \interfaceBaseTempo|Add0~22\ = CARRY(( \interfaceBaseTempo|contador\(8) ) + ( GND ) + ( \interfaceBaseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(8),
	cin => \interfaceBaseTempo|Add0~18\,
	sumout => \interfaceBaseTempo|Add0~21_sumout\,
	cout => \interfaceBaseTempo|Add0~22\);

-- Location: FF_X32_Y5_N56
\interfaceBaseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~21_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(8));

-- Location: LABCELL_X32_Y5_N57
\interfaceBaseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~25_sumout\ = SUM(( \interfaceBaseTempo|contador\(9) ) + ( GND ) + ( \interfaceBaseTempo|Add0~22\ ))
-- \interfaceBaseTempo|Add0~26\ = CARRY(( \interfaceBaseTempo|contador\(9) ) + ( GND ) + ( \interfaceBaseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(9),
	cin => \interfaceBaseTempo|Add0~22\,
	sumout => \interfaceBaseTempo|Add0~25_sumout\,
	cout => \interfaceBaseTempo|Add0~26\);

-- Location: FF_X32_Y5_N59
\interfaceBaseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~25_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(9));

-- Location: LABCELL_X32_Y4_N0
\interfaceBaseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~29_sumout\ = SUM(( \interfaceBaseTempo|contador\(10) ) + ( GND ) + ( \interfaceBaseTempo|Add0~26\ ))
-- \interfaceBaseTempo|Add0~30\ = CARRY(( \interfaceBaseTempo|contador\(10) ) + ( GND ) + ( \interfaceBaseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(10),
	cin => \interfaceBaseTempo|Add0~26\,
	sumout => \interfaceBaseTempo|Add0~29_sumout\,
	cout => \interfaceBaseTempo|Add0~30\);

-- Location: FF_X32_Y4_N1
\interfaceBaseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~29_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(10));

-- Location: LABCELL_X32_Y4_N3
\interfaceBaseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~57_sumout\ = SUM(( \interfaceBaseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceBaseTempo|Add0~30\ ))
-- \interfaceBaseTempo|Add0~58\ = CARRY(( \interfaceBaseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceBaseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	cin => \interfaceBaseTempo|Add0~30\,
	sumout => \interfaceBaseTempo|Add0~57_sumout\,
	cout => \interfaceBaseTempo|Add0~58\);

-- Location: FF_X32_Y4_N5
\interfaceBaseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~57_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador[11]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y4_N6
\interfaceBaseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~33_sumout\ = SUM(( \interfaceBaseTempo|contador\(12) ) + ( GND ) + ( \interfaceBaseTempo|Add0~58\ ))
-- \interfaceBaseTempo|Add0~34\ = CARRY(( \interfaceBaseTempo|contador\(12) ) + ( GND ) + ( \interfaceBaseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(12),
	cin => \interfaceBaseTempo|Add0~58\,
	sumout => \interfaceBaseTempo|Add0~33_sumout\,
	cout => \interfaceBaseTempo|Add0~34\);

-- Location: FF_X32_Y4_N8
\interfaceBaseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~33_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(12));

-- Location: LABCELL_X32_Y4_N9
\interfaceBaseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~73_sumout\ = SUM(( \interfaceBaseTempo|contador\(13) ) + ( GND ) + ( \interfaceBaseTempo|Add0~34\ ))
-- \interfaceBaseTempo|Add0~74\ = CARRY(( \interfaceBaseTempo|contador\(13) ) + ( GND ) + ( \interfaceBaseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(13),
	cin => \interfaceBaseTempo|Add0~34\,
	sumout => \interfaceBaseTempo|Add0~73_sumout\,
	cout => \interfaceBaseTempo|Add0~74\);

-- Location: FF_X32_Y4_N10
\interfaceBaseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~73_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(13));

-- Location: LABCELL_X32_Y4_N12
\interfaceBaseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~77_sumout\ = SUM(( \interfaceBaseTempo|contador\(14) ) + ( GND ) + ( \interfaceBaseTempo|Add0~74\ ))
-- \interfaceBaseTempo|Add0~78\ = CARRY(( \interfaceBaseTempo|contador\(14) ) + ( GND ) + ( \interfaceBaseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(14),
	cin => \interfaceBaseTempo|Add0~74\,
	sumout => \interfaceBaseTempo|Add0~77_sumout\,
	cout => \interfaceBaseTempo|Add0~78\);

-- Location: FF_X32_Y4_N13
\interfaceBaseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~77_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(14));

-- Location: LABCELL_X32_Y4_N15
\interfaceBaseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~69_sumout\ = SUM(( \interfaceBaseTempo|contador\(15) ) + ( GND ) + ( \interfaceBaseTempo|Add0~78\ ))
-- \interfaceBaseTempo|Add0~70\ = CARRY(( \interfaceBaseTempo|contador\(15) ) + ( GND ) + ( \interfaceBaseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(15),
	cin => \interfaceBaseTempo|Add0~78\,
	sumout => \interfaceBaseTempo|Add0~69_sumout\,
	cout => \interfaceBaseTempo|Add0~70\);

-- Location: FF_X32_Y4_N17
\interfaceBaseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~69_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(15));

-- Location: LABCELL_X32_Y4_N18
\interfaceBaseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~85_sumout\ = SUM(( \interfaceBaseTempo|contador\(16) ) + ( GND ) + ( \interfaceBaseTempo|Add0~70\ ))
-- \interfaceBaseTempo|Add0~86\ = CARRY(( \interfaceBaseTempo|contador\(16) ) + ( GND ) + ( \interfaceBaseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(16),
	cin => \interfaceBaseTempo|Add0~70\,
	sumout => \interfaceBaseTempo|Add0~85_sumout\,
	cout => \interfaceBaseTempo|Add0~86\);

-- Location: FF_X32_Y4_N19
\interfaceBaseTempo|contador[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~85_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador[16]~DUPLICATE_q\);

-- Location: FF_X32_Y4_N16
\interfaceBaseTempo|contador[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~69_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador[15]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y4_N21
\interfaceBaseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~37_sumout\ = SUM(( \interfaceBaseTempo|contador\(17) ) + ( GND ) + ( \interfaceBaseTempo|Add0~86\ ))
-- \interfaceBaseTempo|Add0~38\ = CARRY(( \interfaceBaseTempo|contador\(17) ) + ( GND ) + ( \interfaceBaseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(17),
	cin => \interfaceBaseTempo|Add0~86\,
	sumout => \interfaceBaseTempo|Add0~37_sumout\,
	cout => \interfaceBaseTempo|Add0~38\);

-- Location: FF_X32_Y4_N22
\interfaceBaseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~37_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(17));

-- Location: LABCELL_X32_Y4_N24
\interfaceBaseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~89_sumout\ = SUM(( \interfaceBaseTempo|contador\(18) ) + ( GND ) + ( \interfaceBaseTempo|Add0~38\ ))
-- \interfaceBaseTempo|Add0~90\ = CARRY(( \interfaceBaseTempo|contador\(18) ) + ( GND ) + ( \interfaceBaseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(18),
	cin => \interfaceBaseTempo|Add0~38\,
	sumout => \interfaceBaseTempo|Add0~89_sumout\,
	cout => \interfaceBaseTempo|Add0~90\);

-- Location: FF_X32_Y4_N26
\interfaceBaseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~89_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(18));

-- Location: LABCELL_X32_Y4_N27
\interfaceBaseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~93_sumout\ = SUM(( \interfaceBaseTempo|contador\(19) ) + ( GND ) + ( \interfaceBaseTempo|Add0~90\ ))
-- \interfaceBaseTempo|Add0~94\ = CARRY(( \interfaceBaseTempo|contador\(19) ) + ( GND ) + ( \interfaceBaseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|ALT_INV_contador\(19),
	cin => \interfaceBaseTempo|Add0~90\,
	sumout => \interfaceBaseTempo|Add0~93_sumout\,
	cout => \interfaceBaseTempo|Add0~94\);

-- Location: FF_X32_Y4_N29
\interfaceBaseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~93_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(19));

-- Location: LABCELL_X32_Y4_N30
\interfaceBaseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~97_sumout\ = SUM(( \interfaceBaseTempo|contador\(20) ) + ( GND ) + ( \interfaceBaseTempo|Add0~94\ ))
-- \interfaceBaseTempo|Add0~98\ = CARRY(( \interfaceBaseTempo|contador\(20) ) + ( GND ) + ( \interfaceBaseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(20),
	cin => \interfaceBaseTempo|Add0~94\,
	sumout => \interfaceBaseTempo|Add0~97_sumout\,
	cout => \interfaceBaseTempo|Add0~98\);

-- Location: FF_X32_Y4_N32
\interfaceBaseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~97_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(20));

-- Location: LABCELL_X32_Y4_N33
\interfaceBaseTempo|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~101_sumout\ = SUM(( \interfaceBaseTempo|contador\(21) ) + ( GND ) + ( \interfaceBaseTempo|Add0~98\ ))
-- \interfaceBaseTempo|Add0~102\ = CARRY(( \interfaceBaseTempo|contador\(21) ) + ( GND ) + ( \interfaceBaseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(21),
	cin => \interfaceBaseTempo|Add0~98\,
	sumout => \interfaceBaseTempo|Add0~101_sumout\,
	cout => \interfaceBaseTempo|Add0~102\);

-- Location: FF_X32_Y4_N35
\interfaceBaseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~101_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(21));

-- Location: LABCELL_X32_Y4_N36
\interfaceBaseTempo|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~105_sumout\ = SUM(( \interfaceBaseTempo|contador\(22) ) + ( GND ) + ( \interfaceBaseTempo|Add0~102\ ))
-- \interfaceBaseTempo|Add0~106\ = CARRY(( \interfaceBaseTempo|contador\(22) ) + ( GND ) + ( \interfaceBaseTempo|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(22),
	cin => \interfaceBaseTempo|Add0~102\,
	sumout => \interfaceBaseTempo|Add0~105_sumout\,
	cout => \interfaceBaseTempo|Add0~106\);

-- Location: FF_X32_Y4_N38
\interfaceBaseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~105_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(22));

-- Location: LABCELL_X32_Y4_N39
\interfaceBaseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~81_sumout\ = SUM(( \interfaceBaseTempo|contador\(23) ) + ( GND ) + ( \interfaceBaseTempo|Add0~106\ ))
-- \interfaceBaseTempo|Add0~82\ = CARRY(( \interfaceBaseTempo|contador\(23) ) + ( GND ) + ( \interfaceBaseTempo|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(23),
	cin => \interfaceBaseTempo|Add0~106\,
	sumout => \interfaceBaseTempo|Add0~81_sumout\,
	cout => \interfaceBaseTempo|Add0~82\);

-- Location: FF_X32_Y4_N40
\interfaceBaseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~81_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(23));

-- Location: LABCELL_X32_Y5_N0
\interfaceBaseTempo|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|LessThan0~3_combout\ = ( !\interfaceBaseTempo|contador\(23) & ( (!\interfaceBaseTempo|contador[16]~DUPLICATE_q\ & (!\interfaceBaseTempo|contador\(14) & (!\interfaceBaseTempo|contador\(13) & 
-- !\interfaceBaseTempo|contador[15]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador[16]~DUPLICATE_q\,
	datab => \interfaceBaseTempo|ALT_INV_contador\(14),
	datac => \interfaceBaseTempo|ALT_INV_contador\(13),
	datad => \interfaceBaseTempo|ALT_INV_contador[15]~DUPLICATE_q\,
	dataf => \interfaceBaseTempo|ALT_INV_contador\(23),
	combout => \interfaceBaseTempo|LessThan0~3_combout\);

-- Location: LABCELL_X32_Y4_N42
\interfaceBaseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~53_sumout\ = SUM(( \interfaceBaseTempo|contador\(24) ) + ( GND ) + ( \interfaceBaseTempo|Add0~82\ ))
-- \interfaceBaseTempo|Add0~54\ = CARRY(( \interfaceBaseTempo|contador\(24) ) + ( GND ) + ( \interfaceBaseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(24),
	cin => \interfaceBaseTempo|Add0~82\,
	sumout => \interfaceBaseTempo|Add0~53_sumout\,
	cout => \interfaceBaseTempo|Add0~54\);

-- Location: FF_X32_Y4_N43
\interfaceBaseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~53_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(24));

-- Location: LABCELL_X32_Y4_N45
\interfaceBaseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~49_sumout\ = SUM(( \interfaceBaseTempo|contador\(25) ) + ( GND ) + ( \interfaceBaseTempo|Add0~54\ ))
-- \interfaceBaseTempo|Add0~50\ = CARRY(( \interfaceBaseTempo|contador\(25) ) + ( GND ) + ( \interfaceBaseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceBaseTempo|ALT_INV_contador\(25),
	cin => \interfaceBaseTempo|Add0~54\,
	sumout => \interfaceBaseTempo|Add0~49_sumout\,
	cout => \interfaceBaseTempo|Add0~50\);

-- Location: FF_X32_Y4_N47
\interfaceBaseTempo|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~49_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(25));

-- Location: LABCELL_X32_Y4_N48
\interfaceBaseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|Add0~41_sumout\ = SUM(( \interfaceBaseTempo|contador\(26) ) + ( GND ) + ( \interfaceBaseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceBaseTempo|ALT_INV_contador\(26),
	cin => \interfaceBaseTempo|Add0~50\,
	sumout => \interfaceBaseTempo|Add0~41_sumout\);

-- Location: FF_X32_Y4_N49
\interfaceBaseTempo|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~41_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(26));

-- Location: FF_X32_Y4_N4
\interfaceBaseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceBaseTempo|Add0~57_sumout\,
	sclr => \Decoder|Equal7~0_combout\,
	ena => \interfaceBaseTempo|ALT_INV_passouUmSegundo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|contador\(11));

-- Location: LABCELL_X32_Y5_N27
\interfaceBaseTempo|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|LessThan0~2_combout\ = ( !\interfaceBaseTempo|contador\(24) & ( (!\interfaceBaseTempo|contador\(25) & (!\interfaceBaseTempo|contador\(11) & (!\interfaceBaseTempo|contador\(3) & !\interfaceBaseTempo|contador\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(25),
	datab => \interfaceBaseTempo|ALT_INV_contador\(11),
	datac => \interfaceBaseTempo|ALT_INV_contador\(3),
	datad => \interfaceBaseTempo|ALT_INV_contador\(4),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(24),
	combout => \interfaceBaseTempo|LessThan0~2_combout\);

-- Location: LABCELL_X32_Y4_N54
\interfaceBaseTempo|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|LessThan0~4_combout\ = ( !\interfaceBaseTempo|contador\(22) & ( !\interfaceBaseTempo|contador\(21) & ( (!\interfaceBaseTempo|contador\(18) & (!\interfaceBaseTempo|contador\(20) & !\interfaceBaseTempo|contador\(19))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(18),
	datab => \interfaceBaseTempo|ALT_INV_contador\(20),
	datac => \interfaceBaseTempo|ALT_INV_contador\(19),
	datae => \interfaceBaseTempo|ALT_INV_contador\(22),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(21),
	combout => \interfaceBaseTempo|LessThan0~4_combout\);

-- Location: LABCELL_X32_Y5_N12
\interfaceBaseTempo|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|LessThan0~5_combout\ = ( !\interfaceBaseTempo|contador\(5) & ( \interfaceBaseTempo|LessThan0~4_combout\ & ( (\interfaceBaseTempo|LessThan0~3_combout\ & (!\interfaceBaseTempo|contador\(26) & (\interfaceBaseTempo|LessThan0~2_combout\ & 
-- !\interfaceBaseTempo|contador\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_LessThan0~3_combout\,
	datab => \interfaceBaseTempo|ALT_INV_contador\(26),
	datac => \interfaceBaseTempo|ALT_INV_LessThan0~2_combout\,
	datad => \interfaceBaseTempo|ALT_INV_contador\(17),
	datae => \interfaceBaseTempo|ALT_INV_contador\(5),
	dataf => \interfaceBaseTempo|ALT_INV_LessThan0~4_combout\,
	combout => \interfaceBaseTempo|LessThan0~5_combout\);

-- Location: LABCELL_X32_Y5_N18
\interfaceBaseTempo|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|LessThan0~1_combout\ = ( !\interfaceBaseTempo|contador\(8) & ( !\interfaceBaseTempo|contador\(7) & ( (!\interfaceBaseTempo|contador\(12) & (!\interfaceBaseTempo|contador\(6) & (!\interfaceBaseTempo|contador\(10) & 
-- !\interfaceBaseTempo|contador\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|ALT_INV_contador\(12),
	datab => \interfaceBaseTempo|ALT_INV_contador\(6),
	datac => \interfaceBaseTempo|ALT_INV_contador\(10),
	datad => \interfaceBaseTempo|ALT_INV_contador\(9),
	datae => \interfaceBaseTempo|ALT_INV_contador\(8),
	dataf => \interfaceBaseTempo|ALT_INV_contador\(7),
	combout => \interfaceBaseTempo|LessThan0~1_combout\);

-- Location: LABCELL_X32_Y5_N9
\interfaceBaseTempo|passouUmSegundo~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|passouUmSegundo~0_combout\ = ( \Decoder|Equal6~0_combout\ & ( \Decoder|Equal6~1_combout\ & ( (!\processador|ROM|memROM~10_combout\ & (((!\interfaceBaseTempo|LessThan0~5_combout\) # (!\interfaceBaseTempo|LessThan0~1_combout\)) # 
-- (\interfaceBaseTempo|LessThan0~0_combout\))) ) ) ) # ( !\Decoder|Equal6~0_combout\ & ( \Decoder|Equal6~1_combout\ & ( ((!\interfaceBaseTempo|LessThan0~5_combout\) # (!\interfaceBaseTempo|LessThan0~1_combout\)) # (\interfaceBaseTempo|LessThan0~0_combout\) 
-- ) ) ) # ( \Decoder|Equal6~0_combout\ & ( !\Decoder|Equal6~1_combout\ & ( ((!\interfaceBaseTempo|LessThan0~5_combout\) # (!\interfaceBaseTempo|LessThan0~1_combout\)) # (\interfaceBaseTempo|LessThan0~0_combout\) ) ) ) # ( !\Decoder|Equal6~0_combout\ & ( 
-- !\Decoder|Equal6~1_combout\ & ( ((!\interfaceBaseTempo|LessThan0~5_combout\) # (!\interfaceBaseTempo|LessThan0~1_combout\)) # (\interfaceBaseTempo|LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111100111010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~10_combout\,
	datab => \interfaceBaseTempo|ALT_INV_LessThan0~0_combout\,
	datac => \interfaceBaseTempo|ALT_INV_LessThan0~5_combout\,
	datad => \interfaceBaseTempo|ALT_INV_LessThan0~1_combout\,
	datae => \Decoder|ALT_INV_Equal6~0_combout\,
	dataf => \Decoder|ALT_INV_Equal6~1_combout\,
	combout => \interfaceBaseTempo|passouUmSegundo~0_combout\);

-- Location: FF_X32_Y5_N7
\interfaceBaseTempo|passouUmSegundo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceBaseTempo|passouUmSegundo~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|passouUmSegundo~q\);

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

-- Location: MLABCELL_X34_Y5_N9
\interfaceChaves|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~10_combout\ = ( \SW[9]~input_o\ & ( (!\processador|ROM|memROM~3_combout\ & (((\SW[8]~input_o\)))) # (\processador|ROM|memROM~3_combout\ & (!\processador|ROM|memROM~0_combout\ & ((\processador|ROM|memROM~9_combout\) # 
-- (\SW[8]~input_o\)))) ) ) # ( !\SW[9]~input_o\ & ( (\SW[8]~input_o\ & ((!\processador|ROM|memROM~3_combout\) # ((!\processador|ROM|memROM~0_combout\ & !\processador|ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110000001100100011000000110010001110100011001000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \interfaceChaves|saida[0]~10_combout\);

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

-- Location: MLABCELL_X34_Y5_N30
\interfaceChaves|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~1_combout\ = ( \SW[4]~input_o\ & ( \processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~10_combout\ & ((\SW[6]~input_o\))) # (\processador|ROM|memROM~10_combout\ & (\SW[7]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( 
-- \processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~10_combout\ & ((\SW[6]~input_o\))) # (\processador|ROM|memROM~10_combout\ & (\SW[7]~input_o\)) ) ) ) # ( \SW[4]~input_o\ & ( !\processador|ROM|memROM~11_combout\ & ( 
-- (!\processador|ROM|memROM~10_combout\) # (\SW[5]~input_o\) ) ) ) # ( !\SW[4]~input_o\ & ( !\processador|ROM|memROM~11_combout\ & ( (\processador|ROM|memROM~10_combout\ & \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \interfaceChaves|Mux0~1_combout\);

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

-- Location: MLABCELL_X34_Y5_N54
\interfaceChaves|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~0_combout\ = ( \SW[1]~input_o\ & ( \processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~10_combout\ & (\SW[2]~input_o\)) # (\processador|ROM|memROM~10_combout\ & ((\SW[3]~input_o\))) ) ) ) # ( !\SW[1]~input_o\ & ( 
-- \processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~10_combout\ & (\SW[2]~input_o\)) # (\processador|ROM|memROM~10_combout\ & ((\SW[3]~input_o\))) ) ) ) # ( \SW[1]~input_o\ & ( !\processador|ROM|memROM~11_combout\ & ( 
-- (\processador|ROM|memROM~10_combout\) # (\SW[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\processador|ROM|memROM~11_combout\ & ( (\SW[0]~input_o\ & !\processador|ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \interfaceChaves|Mux0~0_combout\);

-- Location: MLABCELL_X34_Y5_N0
\interfaceChaves|saida[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~11_combout\ = ( \interfaceChaves|Mux0~0_combout\ & ( \processador|ROM|memROM~4_combout\ & ( (\interfaceChaves|saida[0]~10_combout\ & !\processador|ROM|memROM~8_combout\) ) ) ) # ( !\interfaceChaves|Mux0~0_combout\ & ( 
-- \processador|ROM|memROM~4_combout\ & ( (\interfaceChaves|saida[0]~10_combout\ & !\processador|ROM|memROM~8_combout\) ) ) ) # ( \interfaceChaves|Mux0~0_combout\ & ( !\processador|ROM|memROM~4_combout\ & ( (!\processador|ROM|memROM~8_combout\) # 
-- (\interfaceChaves|Mux0~1_combout\) ) ) ) # ( !\interfaceChaves|Mux0~0_combout\ & ( !\processador|ROM|memROM~4_combout\ & ( (\processador|ROM|memROM~8_combout\ & \interfaceChaves|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceChaves|ALT_INV_saida[0]~10_combout\,
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	datad => \interfaceChaves|ALT_INV_Mux0~1_combout\,
	datae => \interfaceChaves|ALT_INV_Mux0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \interfaceChaves|saida[0]~11_combout\);

-- Location: MLABCELL_X34_Y5_N6
\Decoder|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~1_combout\ = ( \processador|ROM|memROM~4_combout\ & ( (\interfaceChaves|saida[0]~0_combout\) # (\Decoder|LessThan0~0_combout\) ) ) # ( !\processador|ROM|memROM~4_combout\ & ( \interfaceChaves|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decoder|ALT_INV_LessThan0~0_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \Decoder|LessThan0~1_combout\);

-- Location: MLABCELL_X34_Y5_N12
\interfaceChaves|saida[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~12_combout\ = ( \interfaceChaves|saida[0]~11_combout\ & ( \Decoder|LessThan0~1_combout\ & ( (!\interfaceBtn|saida[0]~0_combout\ & ((!\Decoder|Equal6~2_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\))) ) ) ) # ( 
-- !\interfaceChaves|saida[0]~11_combout\ & ( \Decoder|LessThan0~1_combout\ & ( (!\interfaceBtn|saida[0]~0_combout\ & ((!\Decoder|Equal6~2_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\))) ) ) ) # ( \interfaceChaves|saida[0]~11_combout\ & ( 
-- !\Decoder|LessThan0~1_combout\ & ( (!\interfaceChaves|saida[0]~0_combout\ & (!\interfaceBtn|saida[0]~0_combout\ & ((!\Decoder|Equal6~2_combout\) # (\interfaceBaseTempo|passouUmSegundo~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal6~2_combout\,
	datab => \interfaceChaves|ALT_INV_saida[0]~0_combout\,
	datac => \interfaceBtn|ALT_INV_saida[0]~0_combout\,
	datad => \interfaceBaseTempo|ALT_INV_passouUmSegundo~q\,
	datae => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	dataf => \Decoder|ALT_INV_LessThan0~1_combout\,
	combout => \interfaceChaves|saida[0]~12_combout\);

-- Location: MLABCELL_X37_Y3_N30
\interfaceHEX|conversorHex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ = ( \processador|Registradores|registrador~160_combout\ & ( (\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~150_combout\ $ 
-- (!\processador|Registradores|registrador~155_combout\))) ) ) # ( !\processador|Registradores|registrador~160_combout\ & ( (!\processador|Registradores|registrador~150_combout\ & (!\processador|Registradores|registrador~155_combout\ $ 
-- (!\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000000000011110000001100110000000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~150_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~155_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~160_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y6_N54
\Decoder|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = ( \processador|PC|DOUT[5]~DUPLICATE_q\ & ( \processador|ROM|memROM~5_combout\ & ( (\processador|ROM|memROM~3_combout\ & (!\processador|ROM|memROM~6_combout\ & (!\processador|ROM|memROM~2_combout\ & 
-- !\processador|ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~6_combout\,
	datac => \processador|ROM|ALT_INV_memROM~2_combout\,
	datad => \processador|ROM|ALT_INV_memROM~7_combout\,
	datae => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|ROM|ALT_INV_memROM~5_combout\,
	combout => \Decoder|Equal0~0_combout\);

-- Location: LABCELL_X39_Y5_N30
\Decoder|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~1_combout\ = ( \Decoder|Equal0~0_combout\ & ( !\processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~8_combout\ & !\processador|ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \Decoder|ALT_INV_Equal0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \Decoder|Equal0~1_combout\);

-- Location: FF_X39_Y3_N52
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
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(0));

-- Location: MLABCELL_X37_Y3_N3
\interfaceHEX|conversorHex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ = ( \processador|Registradores|registrador~155_combout\ & ( (!\processador|Registradores|registrador~145_combout\ & ((\processador|Registradores|registrador~160_combout\) # 
-- (\processador|Registradores|registrador~150_combout\))) # (\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~150_combout\ $ (\processador|Registradores|registrador~160_combout\))) ) ) # ( 
-- !\processador|Registradores|registrador~155_combout\ & ( (\processador|Registradores|registrador~145_combout\ & (\processador|Registradores|registrador~150_combout\ & \processador|Registradores|registrador~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001111001100111100000000000000110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~150_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~155_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y3_N42
\interfaceHEX|conversorHex0|saida7seg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|saida7seg[1]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \interfaceHEX|conversorHex0|saida7seg[1]~feeder_combout\);

-- Location: FF_X39_Y3_N43
\interfaceHEX|conversorHex0|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|saida7seg[1]~feeder_combout\,
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(1));

-- Location: MLABCELL_X37_Y3_N57
\interfaceHEX|conversorHex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ = ( \processador|Registradores|registrador~155_combout\ & ( (\processador|Registradores|registrador~160_combout\ & ((!\processador|Registradores|registrador~145_combout\) # 
-- (\processador|Registradores|registrador~150_combout\))) ) ) # ( !\processador|Registradores|registrador~155_combout\ & ( (!\processador|Registradores|registrador~145_combout\ & (\processador|Registradores|registrador~150_combout\ & 
-- !\processador|Registradores|registrador~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000001100111100001100000000000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~150_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~155_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y3_N45
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

-- Location: FF_X39_Y3_N46
\interfaceHEX|conversorHex0|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|saida7seg[2]~feeder_combout\,
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(2));

-- Location: MLABCELL_X37_Y3_N48
\interfaceHEX|conversorHex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ = ( \processador|Registradores|registrador~155_combout\ & ( \processador|Registradores|registrador~150_combout\ & ( \processador|Registradores|registrador~145_combout\ ) ) ) # ( 
-- !\processador|Registradores|registrador~155_combout\ & ( \processador|Registradores|registrador~150_combout\ & ( (\processador|Registradores|registrador~160_combout\ & !\processador|Registradores|registrador~145_combout\) ) ) ) # ( 
-- \processador|Registradores|registrador~155_combout\ & ( !\processador|Registradores|registrador~150_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & !\processador|Registradores|registrador~145_combout\) ) ) ) # ( 
-- !\processador|Registradores|registrador~155_combout\ & ( !\processador|Registradores|registrador~150_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & \processador|Registradores|registrador~145_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111100000000000000001111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~155_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~150_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\);

-- Location: FF_X39_Y3_N50
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
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(3));

-- Location: MLABCELL_X37_Y3_N6
\interfaceHEX|conversorHex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ = ( \processador|Registradores|registrador~150_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & \processador|Registradores|registrador~145_combout\) ) ) # ( 
-- !\processador|Registradores|registrador~150_combout\ & ( (!\processador|Registradores|registrador~155_combout\ & ((\processador|Registradores|registrador~145_combout\))) # (\processador|Registradores|registrador~155_combout\ & 
-- (!\processador|Registradores|registrador~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000000001010101000001010111110100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~155_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~150_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y3_N12
\interfaceHEX|conversorHex0|saida7seg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|saida7seg[4]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \interfaceHEX|conversorHex0|saida7seg[4]~feeder_combout\);

-- Location: FF_X39_Y3_N14
\interfaceHEX|conversorHex0|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|saida7seg[4]~feeder_combout\,
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(4));

-- Location: MLABCELL_X37_Y3_N45
\interfaceHEX|conversorHex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ = ( \processador|Registradores|registrador~155_combout\ & ( (\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~150_combout\ $ 
-- (!\processador|Registradores|registrador~160_combout\))) ) ) # ( !\processador|Registradores|registrador~155_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & ((\processador|Registradores|registrador~150_combout\) # 
-- (\processador|Registradores|registrador~145_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000000000110011000000111111000000000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~150_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~155_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\);

-- Location: FF_X39_Y3_N16
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
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(5));

-- Location: LABCELL_X39_Y5_N3
\interfaceHEX|conversorHex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ = ( \processador|Registradores|registrador~155_combout\ & ( \processador|Registradores|registrador~145_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & 
-- \processador|Registradores|registrador~150_combout\) ) ) ) # ( !\processador|Registradores|registrador~155_combout\ & ( \processador|Registradores|registrador~145_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & 
-- !\processador|Registradores|registrador~150_combout\) ) ) ) # ( \processador|Registradores|registrador~155_combout\ & ( !\processador|Registradores|registrador~145_combout\ & ( (\processador|Registradores|registrador~160_combout\ & 
-- !\processador|Registradores|registrador~150_combout\) ) ) ) # ( !\processador|Registradores|registrador~155_combout\ & ( !\processador|Registradores|registrador~145_combout\ & ( (!\processador|Registradores|registrador~160_combout\ & 
-- !\processador|Registradores|registrador~150_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100110000000011001100000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~160_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~150_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~155_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~145_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y3_N48
\interfaceHEX|conversorHex0|saida7seg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|saida7seg[6]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \interfaceHEX|conversorHex0|saida7seg[6]~feeder_combout\);

-- Location: FF_X39_Y3_N49
\interfaceHEX|conversorHex0|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|saida7seg[6]~feeder_combout\,
	ena => \Decoder|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(6));

-- Location: LABCELL_X39_Y5_N15
\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( \Decoder|Equal0~0_combout\ & ( \processador|ROM|memROM~10_combout\ & ( (!\processador|ROM|memROM~11_combout\ & !\processador|ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	datae => \Decoder|ALT_INV_Equal0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~10_combout\,
	combout => \Decoder|Equal1~0_combout\);

-- Location: FF_X39_Y3_N11
\interfaceHEX|conversorHex1|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(0));

-- Location: LABCELL_X39_Y3_N0
\interfaceHEX|conversorHex1|saida7seg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|saida7seg[1]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \interfaceHEX|conversorHex1|saida7seg[1]~feeder_combout\);

-- Location: FF_X39_Y3_N1
\interfaceHEX|conversorHex1|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|saida7seg[1]~feeder_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(1));

-- Location: LABCELL_X39_Y3_N3
\interfaceHEX|conversorHex1|saida7seg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|saida7seg[2]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \interfaceHEX|conversorHex1|saida7seg[2]~feeder_combout\);

-- Location: FF_X39_Y3_N4
\interfaceHEX|conversorHex1|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|saida7seg[2]~feeder_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(2));

-- Location: FF_X39_Y3_N7
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

-- Location: LABCELL_X39_Y3_N54
\interfaceHEX|conversorHex1|saida7seg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|saida7seg[4]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \interfaceHEX|conversorHex1|saida7seg[4]~feeder_combout\);

-- Location: FF_X39_Y3_N56
\interfaceHEX|conversorHex1|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|saida7seg[4]~feeder_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(4));

-- Location: FF_X39_Y3_N58
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

-- Location: LABCELL_X39_Y3_N6
\interfaceHEX|conversorHex1|saida7seg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex1|saida7seg[6]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \interfaceHEX|conversorHex1|saida7seg[6]~feeder_combout\);

-- Location: FF_X39_Y3_N8
\interfaceHEX|conversorHex1|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex1|saida7seg[6]~feeder_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(6));

-- Location: MLABCELL_X37_Y3_N12
\interfaceHEX|conversorHex2|saida7seg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex2|saida7seg[0]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \interfaceHEX|conversorHex2|saida7seg[0]~feeder_combout\);

-- Location: LABCELL_X39_Y5_N48
\Decoder|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal2~0_combout\ = ( \processador|ROM|memROM~11_combout\ & ( (\Decoder|Equal0~0_combout\ & (!\processador|ROM|memROM~8_combout\ & !\processador|ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal0~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \Decoder|Equal2~0_combout\);

-- Location: FF_X37_Y3_N14
\interfaceHEX|conversorHex2|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex2|saida7seg[0]~feeder_combout\,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(0));

-- Location: FF_X37_Y3_N13
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

-- Location: FF_X37_Y3_N10
\interfaceHEX|conversorHex2|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	sload => VCC,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(2));

-- Location: FF_X37_Y3_N8
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

-- Location: MLABCELL_X37_Y3_N15
\interfaceHEX|conversorHex2|saida7seg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex2|saida7seg[4]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \interfaceHEX|conversorHex2|saida7seg[4]~feeder_combout\);

-- Location: FF_X37_Y3_N17
\interfaceHEX|conversorHex2|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex2|saida7seg[4]~feeder_combout\,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(4));

-- Location: FF_X37_Y3_N16
\interfaceHEX|conversorHex2|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \Decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex2|saida7seg\(5));

-- Location: FF_X39_Y5_N49
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

-- Location: LABCELL_X39_Y5_N42
\Decoder|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal3~0_combout\ = ( \Decoder|Equal0~0_combout\ & ( \processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~8_combout\ & \processador|ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \Decoder|ALT_INV_Equal0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \Decoder|Equal3~0_combout\);

-- Location: FF_X39_Y3_N28
\interfaceHEX|conversorHex3|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(0));

-- Location: LABCELL_X39_Y3_N18
\interfaceHEX|conversorHex3|saida7seg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex3|saida7seg[1]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \interfaceHEX|conversorHex3|saida7seg[1]~feeder_combout\);

-- Location: FF_X39_Y3_N19
\interfaceHEX|conversorHex3|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex3|saida7seg[1]~feeder_combout\,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(1));

-- Location: LABCELL_X39_Y3_N21
\interfaceHEX|conversorHex3|saida7seg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex3|saida7seg[2]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \interfaceHEX|conversorHex3|saida7seg[2]~feeder_combout\);

-- Location: FF_X39_Y3_N22
\interfaceHEX|conversorHex3|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex3|saida7seg[2]~feeder_combout\,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(2));

-- Location: LABCELL_X39_Y3_N24
\interfaceHEX|conversorHex3|saida7seg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex3|saida7seg[3]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \interfaceHEX|conversorHex3|saida7seg[3]~feeder_combout\);

-- Location: FF_X39_Y3_N25
\interfaceHEX|conversorHex3|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex3|saida7seg[3]~feeder_combout\,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(3));

-- Location: LABCELL_X39_Y3_N36
\interfaceHEX|conversorHex3|saida7seg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex3|saida7seg[4]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \interfaceHEX|conversorHex3|saida7seg[4]~feeder_combout\);

-- Location: FF_X39_Y3_N37
\interfaceHEX|conversorHex3|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex3|saida7seg[4]~feeder_combout\,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(4));

-- Location: FF_X39_Y3_N40
\interfaceHEX|conversorHex3|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(5));

-- Location: LABCELL_X39_Y3_N30
\interfaceHEX|conversorHex3|saida7seg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex3|saida7seg[6]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \interfaceHEX|conversorHex3|saida7seg[6]~feeder_combout\);

-- Location: FF_X39_Y3_N31
\interfaceHEX|conversorHex3|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex3|saida7seg[6]~feeder_combout\,
	ena => \Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex3|saida7seg\(6));

-- Location: MLABCELL_X37_Y3_N36
\Decoder|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal4~0_combout\ = ( \Decoder|Equal0~0_combout\ & ( !\processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~10_combout\ & \processador|ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|ROM|ALT_INV_memROM~8_combout\,
	datae => \Decoder|ALT_INV_Equal0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \Decoder|Equal4~0_combout\);

-- Location: FF_X37_Y3_N37
\interfaceHEX|conversorHex4|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(0));

-- Location: FF_X37_Y3_N40
\interfaceHEX|conversorHex4|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	sload => VCC,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(1));

-- Location: FF_X37_Y3_N31
\interfaceHEX|conversorHex4|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	sload => VCC,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(2));

-- Location: FF_X37_Y3_N34
\interfaceHEX|conversorHex4|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(3));

-- Location: MLABCELL_X37_Y3_N24
\interfaceHEX|conversorHex4|saida7seg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex4|saida7seg[4]~feeder_combout\ = ( \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceHEX|conversorHex0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \interfaceHEX|conversorHex4|saida7seg[4]~feeder_combout\);

-- Location: FF_X37_Y3_N25
\interfaceHEX|conversorHex4|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex4|saida7seg[4]~feeder_combout\,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(4));

-- Location: FF_X37_Y3_N23
\interfaceHEX|conversorHex4|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(5));

-- Location: FF_X39_Y5_N56
\interfaceHEX|conversorHex4|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \Decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex4|saida7seg\(6));

-- Location: LABCELL_X39_Y5_N57
\Decoder|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal5~0_combout\ = ( \Decoder|Equal0~0_combout\ & ( \processador|ROM|memROM~10_combout\ & ( (\processador|ROM|memROM~8_combout\ & !\processador|ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM|ALT_INV_memROM~8_combout\,
	datad => \processador|ROM|ALT_INV_memROM~11_combout\,
	datae => \Decoder|ALT_INV_Equal0~0_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~10_combout\,
	combout => \Decoder|Equal5~0_combout\);

-- Location: FF_X37_Y3_N1
\interfaceHEX|conversorHex5|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(0));

-- Location: FF_X37_Y3_N4
\interfaceHEX|conversorHex5|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(1));

-- Location: FF_X37_Y3_N58
\interfaceHEX|conversorHex5|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(2));

-- Location: FF_X37_Y3_N49
\interfaceHEX|conversorHex5|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(3));

-- Location: FF_X37_Y3_N43
\interfaceHEX|conversorHex5|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(4));

-- Location: FF_X37_Y3_N46
\interfaceHEX|conversorHex5|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(5));

-- Location: FF_X39_Y5_N4
\interfaceHEX|conversorHex5|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	ena => \Decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex5|saida7seg\(6));

-- Location: MLABCELL_X34_Y5_N42
\Decoder|habilita[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~1_combout\ = ( \Decoder|Equal6~0_combout\ & ( !\Decoder|habilita[1]~0_combout\ ) ) # ( !\Decoder|Equal6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decoder|ALT_INV_habilita[1]~0_combout\,
	dataf => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \Decoder|habilita[1]~1_combout\);

-- Location: LABCELL_X31_Y4_N3
\processador|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[0]~0_combout\ = ( \processador|UC|palavraControle[3]~0_combout\ & ( \processador|ULA|Add0~1_sumout\ ) ) # ( !\processador|UC|palavraControle[3]~0_combout\ & ( \processador|Registradores|registrador~145_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_Add0~1_sumout\,
	datad => \processador|Registradores|ALT_INV_registrador~145_combout\,
	dataf => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	combout => \processador|ULA|saida[0]~0_combout\);

-- Location: LABCELL_X31_Y4_N42
\processador|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~1_combout\ = ( \processador|Registradores|registrador~150_combout\ & ( \processador|UC|palavraControle[3]~0_combout\ & ( \processador|ULA|Add0~5_sumout\ ) ) ) # ( !\processador|Registradores|registrador~150_combout\ & ( 
-- \processador|UC|palavraControle[3]~0_combout\ & ( \processador|ULA|Add0~5_sumout\ ) ) ) # ( \processador|Registradores|registrador~150_combout\ & ( !\processador|UC|palavraControle[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ULA|ALT_INV_Add0~5_sumout\,
	datae => \processador|Registradores|ALT_INV_registrador~150_combout\,
	dataf => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	combout => \processador|ULA|saida[1]~1_combout\);

-- Location: LABCELL_X31_Y4_N24
\processador|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[2]~2_combout\ = ( \processador|Registradores|registrador~155_combout\ & ( \processador|UC|palavraControle[3]~0_combout\ & ( \processador|ULA|Add0~9_sumout\ ) ) ) # ( !\processador|Registradores|registrador~155_combout\ & ( 
-- \processador|UC|palavraControle[3]~0_combout\ & ( \processador|ULA|Add0~9_sumout\ ) ) ) # ( \processador|Registradores|registrador~155_combout\ & ( !\processador|UC|palavraControle[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_Add0~9_sumout\,
	datae => \processador|Registradores|ALT_INV_registrador~155_combout\,
	dataf => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	combout => \processador|ULA|saida[2]~2_combout\);

-- Location: LABCELL_X39_Y4_N6
\processador|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[3]~3_combout\ = ( \processador|Registradores|registrador~160_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\) # (\processador|ULA|Add0~13_sumout\) ) ) # ( !\processador|Registradores|registrador~160_combout\ & ( 
-- (\processador|UC|palavraControle[3]~0_combout\ & \processador|ULA|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~13_sumout\,
	dataf => \processador|Registradores|ALT_INV_registrador~160_combout\,
	combout => \processador|ULA|saida[3]~3_combout\);

-- Location: LABCELL_X31_Y4_N9
\processador|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[4]~4_combout\ = ( \processador|Registradores|registrador~165_combout\ & ( \processador|ULA|Add0~17_sumout\ ) ) # ( !\processador|Registradores|registrador~165_combout\ & ( \processador|ULA|Add0~17_sumout\ & ( 
-- \processador|UC|palavraControle[3]~0_combout\ ) ) ) # ( \processador|Registradores|registrador~165_combout\ & ( !\processador|ULA|Add0~17_sumout\ & ( !\processador|UC|palavraControle[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datae => \processador|Registradores|ALT_INV_registrador~165_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~17_sumout\,
	combout => \processador|ULA|saida[4]~4_combout\);

-- Location: LABCELL_X31_Y4_N36
\processador|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[5]~5_combout\ = ( \processador|UC|palavraControle[3]~0_combout\ & ( \processador|ULA|Add0~21_sumout\ ) ) # ( !\processador|UC|palavraControle[3]~0_combout\ & ( \processador|Registradores|registrador~170_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|Registradores|ALT_INV_registrador~170_combout\,
	datac => \processador|ULA|ALT_INV_Add0~21_sumout\,
	dataf => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	combout => \processador|ULA|saida[5]~5_combout\);

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


