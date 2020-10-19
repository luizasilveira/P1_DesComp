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

-- DATE "10/19/2020 00:39:01"

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
SIGNAL \processador|inc|Add0~1_sumout\ : std_logic;
SIGNAL \processador|ROM|memROM~8_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~9_combout\ : std_logic;
SIGNAL \processador|inc|Add0~22\ : std_logic;
SIGNAL \processador|inc|Add0~25_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~26\ : std_logic;
SIGNAL \processador|inc|Add0~29_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~12_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~13_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~15_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~16_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~17_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~18_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~19_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~10_combout\ : std_logic;
SIGNAL \processador|UC|palavraControle[3]~0_combout\ : std_logic;
SIGNAL \processador|UC|Equal3~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~21_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~23_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~24_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~25_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~26_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~223_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~70_q\ : std_logic;
SIGNAL \processador|ROM|memROM~22_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~207_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~224_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~225_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~226_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~208_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~221_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~85_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~222_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~77_q\ : std_logic;
SIGNAL \processador|ROM|memROM~29_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~20_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~13_q\ : std_logic;
SIGNAL \processador|ROM|memROM~28_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~27_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~173_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~141_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~206_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~34_cout\ : std_logic;
SIGNAL \processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \processador|UC|Equal5~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Decoder|LessThan0~0_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \Decoder|Equal6~0_combout\ : std_logic;
SIGNAL \Decoder|habilita[1]~0_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~11_combout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~69_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~205_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~2\ : std_logic;
SIGNAL \processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~86_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~78_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~177_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~145_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~0_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~1_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~73_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~213_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~214_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~88_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~80_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~185_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~153_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~212_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~11_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~87_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~79_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~181_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~149_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~210_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~6\ : std_logic;
SIGNAL \processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~71_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~209_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~10\ : std_logic;
SIGNAL \processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~72_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~211_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~14\ : std_logic;
SIGNAL \processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~89_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~81_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~189_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~157_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~74_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~215_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~26_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~216_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~18\ : std_logic;
SIGNAL \processador|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~90_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~82_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~193_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~161_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~2_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~3_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~75_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~217_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~218_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~22\ : std_logic;
SIGNAL \processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~91_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~83_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~197_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~165_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~76_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~219_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~220_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~26\ : std_logic;
SIGNAL \processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~92_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~84_q\ : std_logic;
SIGNAL \processador|Registradores|registrador~201_combout\ : std_logic;
SIGNAL \processador|Registradores|registrador~169_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~4_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~5_combout\ : std_logic;
SIGNAL \processador|flipflop|data_out~q\ : std_logic;
SIGNAL \processador|comb~0_combout\ : std_logic;
SIGNAL \processador|inc|Add0~2\ : std_logic;
SIGNAL \processador|inc|Add0~5_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~6\ : std_logic;
SIGNAL \processador|inc|Add0~9_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~10\ : std_logic;
SIGNAL \processador|inc|Add0~13_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~14\ : std_logic;
SIGNAL \processador|inc|Add0~17_sumout\ : std_logic;
SIGNAL \processador|inc|Add0~18\ : std_logic;
SIGNAL \processador|inc|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~6_combout\ : std_logic;
SIGNAL \processador|ROM|memROM~7_combout\ : std_logic;
SIGNAL \Decoder|LessThan0~1_combout\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal6~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|contador[0]~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|contador~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|contador~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|tick~q\ : std_logic;
SIGNAL \Decoder|Equal7~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|registraUmSegundo|data_out~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~2_combout\ : std_logic;
SIGNAL \interfaceBtn|saida[0]~3_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~8_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \interfaceChaves|Mux0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \interfaceChaves|Mux0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~9_combout\ : std_logic;
SIGNAL \interfaceChaves|saida[0]~10_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \Decoder|habilita[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \processador|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \processador|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \interfaceHEX|conversorHex0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interfaceHEX|conversorHex1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \interfaceBaseTempo|baseTempo|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \processador|UC|palavraControle\ : std_logic_vector(10 DOWNTO 0);
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
SIGNAL \processador|Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~215_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~214_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~213_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~212_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~211_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~210_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~209_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~208_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~207_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~206_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~205_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~84_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~92_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~83_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~91_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~82_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~90_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~81_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~89_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~80_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~88_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~79_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~87_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~78_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~86_q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~77_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~85_q\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~q\ : std_logic;
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
SIGNAL \Decoder|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~1_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilita[1]~0_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~0_combout\ : std_logic;
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
SIGNAL \processador|Registradores|ALT_INV_registrador~201_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~197_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~193_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~189_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~185_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~181_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~173_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \processador|ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_palavraControle\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \processador|ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~4_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~3_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~2_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~1_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_data_out~0_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~11_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~10_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~9_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \interfaceChaves|ALT_INV_saida[0]~8_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~3_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \interfaceBtn|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|registraUmSegundo|ALT_INV_data_out~q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~220_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~219_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~76_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~218_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~217_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~216_combout\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|Registradores|ALT_INV_registrador~26_q\ : std_logic;

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
\processador|Registradores|ALT_INV_registrador~18_q\ <= NOT \processador|Registradores|registrador~18_q\;
\processador|Registradores|ALT_INV_registrador~215_combout\ <= NOT \processador|Registradores|registrador~215_combout\;
\processador|Registradores|ALT_INV_registrador~74_q\ <= NOT \processador|Registradores|registrador~74_q\;
\processador|Registradores|ALT_INV_registrador~214_combout\ <= NOT \processador|Registradores|registrador~214_combout\;
\processador|Registradores|ALT_INV_registrador~33_q\ <= NOT \processador|Registradores|registrador~33_q\;
\processador|Registradores|ALT_INV_registrador~25_q\ <= NOT \processador|Registradores|registrador~25_q\;
\processador|Registradores|ALT_INV_registrador~17_q\ <= NOT \processador|Registradores|registrador~17_q\;
\processador|Registradores|ALT_INV_registrador~213_combout\ <= NOT \processador|Registradores|registrador~213_combout\;
\processador|Registradores|ALT_INV_registrador~73_q\ <= NOT \processador|Registradores|registrador~73_q\;
\processador|Registradores|ALT_INV_registrador~212_combout\ <= NOT \processador|Registradores|registrador~212_combout\;
\processador|Registradores|ALT_INV_registrador~32_q\ <= NOT \processador|Registradores|registrador~32_q\;
\processador|Registradores|ALT_INV_registrador~24_q\ <= NOT \processador|Registradores|registrador~24_q\;
\processador|Registradores|ALT_INV_registrador~16_q\ <= NOT \processador|Registradores|registrador~16_q\;
\processador|Registradores|ALT_INV_registrador~211_combout\ <= NOT \processador|Registradores|registrador~211_combout\;
\processador|Registradores|ALT_INV_registrador~72_q\ <= NOT \processador|Registradores|registrador~72_q\;
\processador|Registradores|ALT_INV_registrador~210_combout\ <= NOT \processador|Registradores|registrador~210_combout\;
\processador|Registradores|ALT_INV_registrador~31_q\ <= NOT \processador|Registradores|registrador~31_q\;
\processador|Registradores|ALT_INV_registrador~23_q\ <= NOT \processador|Registradores|registrador~23_q\;
\processador|Registradores|ALT_INV_registrador~15_q\ <= NOT \processador|Registradores|registrador~15_q\;
\processador|Registradores|ALT_INV_registrador~209_combout\ <= NOT \processador|Registradores|registrador~209_combout\;
\processador|Registradores|ALT_INV_registrador~71_q\ <= NOT \processador|Registradores|registrador~71_q\;
\processador|Registradores|ALT_INV_registrador~208_combout\ <= NOT \processador|Registradores|registrador~208_combout\;
\processador|Registradores|ALT_INV_registrador~30_q\ <= NOT \processador|Registradores|registrador~30_q\;
\processador|Registradores|ALT_INV_registrador~22_q\ <= NOT \processador|Registradores|registrador~22_q\;
\processador|Registradores|ALT_INV_registrador~14_q\ <= NOT \processador|Registradores|registrador~14_q\;
\processador|Registradores|ALT_INV_registrador~207_combout\ <= NOT \processador|Registradores|registrador~207_combout\;
\processador|Registradores|ALT_INV_registrador~70_q\ <= NOT \processador|Registradores|registrador~70_q\;
\processador|Registradores|ALT_INV_registrador~206_combout\ <= NOT \processador|Registradores|registrador~206_combout\;
\processador|Registradores|ALT_INV_registrador~29_q\ <= NOT \processador|Registradores|registrador~29_q\;
\processador|Registradores|ALT_INV_registrador~21_q\ <= NOT \processador|Registradores|registrador~21_q\;
\processador|Registradores|ALT_INV_registrador~13_q\ <= NOT \processador|Registradores|registrador~13_q\;
\processador|Registradores|ALT_INV_registrador~205_combout\ <= NOT \processador|Registradores|registrador~205_combout\;
\processador|ROM|ALT_INV_memROM~22_combout\ <= NOT \processador|ROM|memROM~22_combout\;
\processador|Registradores|ALT_INV_registrador~69_q\ <= NOT \processador|Registradores|registrador~69_q\;
\processador|ROM|ALT_INV_memROM~21_combout\ <= NOT \processador|ROM|memROM~21_combout\;
\processador|UC|ALT_INV_Equal3~0_combout\ <= NOT \processador|UC|Equal3~0_combout\;
\processador|Registradores|ALT_INV_registrador~84_q\ <= NOT \processador|Registradores|registrador~84_q\;
\processador|Registradores|ALT_INV_registrador~92_q\ <= NOT \processador|Registradores|registrador~92_q\;
\processador|Registradores|ALT_INV_registrador~83_q\ <= NOT \processador|Registradores|registrador~83_q\;
\processador|Registradores|ALT_INV_registrador~91_q\ <= NOT \processador|Registradores|registrador~91_q\;
\processador|Registradores|ALT_INV_registrador~82_q\ <= NOT \processador|Registradores|registrador~82_q\;
\processador|Registradores|ALT_INV_registrador~90_q\ <= NOT \processador|Registradores|registrador~90_q\;
\processador|Registradores|ALT_INV_registrador~81_q\ <= NOT \processador|Registradores|registrador~81_q\;
\processador|Registradores|ALT_INV_registrador~89_q\ <= NOT \processador|Registradores|registrador~89_q\;
\processador|Registradores|ALT_INV_registrador~80_q\ <= NOT \processador|Registradores|registrador~80_q\;
\processador|Registradores|ALT_INV_registrador~88_q\ <= NOT \processador|Registradores|registrador~88_q\;
\processador|Registradores|ALT_INV_registrador~79_q\ <= NOT \processador|Registradores|registrador~79_q\;
\processador|Registradores|ALT_INV_registrador~87_q\ <= NOT \processador|Registradores|registrador~87_q\;
\processador|Registradores|ALT_INV_registrador~78_q\ <= NOT \processador|Registradores|registrador~78_q\;
\processador|Registradores|ALT_INV_registrador~86_q\ <= NOT \processador|Registradores|registrador~86_q\;
\processador|ROM|ALT_INV_memROM~20_combout\ <= NOT \processador|ROM|memROM~20_combout\;
\processador|Registradores|ALT_INV_registrador~77_q\ <= NOT \processador|Registradores|registrador~77_q\;
\processador|Registradores|ALT_INV_registrador~85_q\ <= NOT \processador|Registradores|registrador~85_q\;
\processador|flipflop|ALT_INV_data_out~q\ <= NOT \processador|flipflop|data_out~q\;
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
\Decoder|ALT_INV_Equal7~0_combout\ <= NOT \Decoder|Equal7~0_combout\;
\Decoder|ALT_INV_Equal6~1_combout\ <= NOT \Decoder|Equal6~1_combout\;
\Decoder|ALT_INV_Equal6~0_combout\ <= NOT \Decoder|Equal6~0_combout\;
\processador|ROM|ALT_INV_memROM~11_combout\ <= NOT \processador|ROM|memROM~11_combout\;
\processador|ROM|ALT_INV_memROM~10_combout\ <= NOT \processador|ROM|memROM~10_combout\;
\processador|ROM|ALT_INV_memROM~9_combout\ <= NOT \processador|ROM|memROM~9_combout\;
\processador|ROM|ALT_INV_memROM~8_combout\ <= NOT \processador|ROM|memROM~8_combout\;
\Decoder|ALT_INV_habilita[1]~1_combout\ <= NOT \Decoder|habilita[1]~1_combout\;
\Decoder|ALT_INV_habilita[1]~0_combout\ <= NOT \Decoder|habilita[1]~0_combout\;
\interfaceBtn|ALT_INV_saida[0]~0_combout\ <= NOT \interfaceBtn|saida[0]~0_combout\;
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
\processador|Registradores|ALT_INV_registrador~201_combout\ <= NOT \processador|Registradores|registrador~201_combout\;
\processador|Registradores|ALT_INV_registrador~197_combout\ <= NOT \processador|Registradores|registrador~197_combout\;
\processador|Registradores|ALT_INV_registrador~193_combout\ <= NOT \processador|Registradores|registrador~193_combout\;
\processador|Registradores|ALT_INV_registrador~189_combout\ <= NOT \processador|Registradores|registrador~189_combout\;
\processador|Registradores|ALT_INV_registrador~185_combout\ <= NOT \processador|Registradores|registrador~185_combout\;
\processador|Registradores|ALT_INV_registrador~181_combout\ <= NOT \processador|Registradores|registrador~181_combout\;
\processador|Registradores|ALT_INV_registrador~177_combout\ <= NOT \processador|Registradores|registrador~177_combout\;
\processador|Registradores|ALT_INV_registrador~173_combout\ <= NOT \processador|Registradores|registrador~173_combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\processador|ROM|ALT_INV_memROM~29_combout\ <= NOT \processador|ROM|memROM~29_combout\;
\processador|ROM|ALT_INV_memROM~28_combout\ <= NOT \processador|ROM|memROM~28_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(2) <= NOT \interfaceBaseTempo|baseTempo|contador\(2);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(1) <= NOT \interfaceBaseTempo|baseTempo|contador\(1);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(0) <= NOT \interfaceBaseTempo|baseTempo|contador\(0);
\interfaceBaseTempo|baseTempo|ALT_INV_tick~q\ <= NOT \interfaceBaseTempo|baseTempo|tick~q\;
\processador|ROM|ALT_INV_memROM~27_combout\ <= NOT \processador|ROM|memROM~27_combout\;
\processador|ROM|ALT_INV_memROM~26_combout\ <= NOT \processador|ROM|memROM~26_combout\;
\processador|ROM|ALT_INV_memROM~25_combout\ <= NOT \processador|ROM|memROM~25_combout\;
\processador|ROM|ALT_INV_memROM~24_combout\ <= NOT \processador|ROM|memROM~24_combout\;
\processador|UC|ALT_INV_palavraControle\(5) <= NOT \processador|UC|palavraControle\(5);
\processador|ROM|ALT_INV_memROM~23_combout\ <= NOT \processador|ROM|memROM~23_combout\;
\processador|UC|ALT_INV_Equal5~0_combout\ <= NOT \processador|UC|Equal5~0_combout\;
\processador|flipflop|ALT_INV_data_out~4_combout\ <= NOT \processador|flipflop|data_out~4_combout\;
\processador|flipflop|ALT_INV_data_out~3_combout\ <= NOT \processador|flipflop|data_out~3_combout\;
\processador|flipflop|ALT_INV_data_out~2_combout\ <= NOT \processador|flipflop|data_out~2_combout\;
\processador|flipflop|ALT_INV_data_out~1_combout\ <= NOT \processador|flipflop|data_out~1_combout\;
\processador|flipflop|ALT_INV_data_out~0_combout\ <= NOT \processador|flipflop|data_out~0_combout\;
\interfaceChaves|ALT_INV_saida[0]~11_combout\ <= NOT \interfaceChaves|saida[0]~11_combout\;
\interfaceChaves|ALT_INV_saida[0]~10_combout\ <= NOT \interfaceChaves|saida[0]~10_combout\;
\interfaceChaves|ALT_INV_saida[0]~9_combout\ <= NOT \interfaceChaves|saida[0]~9_combout\;
\interfaceChaves|ALT_INV_Mux0~1_combout\ <= NOT \interfaceChaves|Mux0~1_combout\;
\interfaceChaves|ALT_INV_Mux0~0_combout\ <= NOT \interfaceChaves|Mux0~0_combout\;
\interfaceChaves|ALT_INV_saida[0]~8_combout\ <= NOT \interfaceChaves|saida[0]~8_combout\;
\interfaceBtn|ALT_INV_saida[0]~3_combout\ <= NOT \interfaceBtn|saida[0]~3_combout\;
\interfaceBtn|ALT_INV_saida[0]~2_combout\ <= NOT \interfaceBtn|saida[0]~2_combout\;
\interfaceBtn|ALT_INV_saida[0]~1_combout\ <= NOT \interfaceBtn|saida[0]~1_combout\;
\interfaceBaseTempo|registraUmSegundo|ALT_INV_data_out~q\ <= NOT \interfaceBaseTempo|registraUmSegundo|data_out~q\;
\processador|Registradores|ALT_INV_registrador~220_combout\ <= NOT \processador|Registradores|registrador~220_combout\;
\processador|Registradores|ALT_INV_registrador~36_q\ <= NOT \processador|Registradores|registrador~36_q\;
\processador|Registradores|ALT_INV_registrador~28_q\ <= NOT \processador|Registradores|registrador~28_q\;
\processador|Registradores|ALT_INV_registrador~20_q\ <= NOT \processador|Registradores|registrador~20_q\;
\processador|Registradores|ALT_INV_registrador~219_combout\ <= NOT \processador|Registradores|registrador~219_combout\;
\processador|Registradores|ALT_INV_registrador~76_q\ <= NOT \processador|Registradores|registrador~76_q\;
\processador|Registradores|ALT_INV_registrador~218_combout\ <= NOT \processador|Registradores|registrador~218_combout\;
\processador|Registradores|ALT_INV_registrador~35_q\ <= NOT \processador|Registradores|registrador~35_q\;
\processador|Registradores|ALT_INV_registrador~27_q\ <= NOT \processador|Registradores|registrador~27_q\;
\processador|Registradores|ALT_INV_registrador~19_q\ <= NOT \processador|Registradores|registrador~19_q\;
\processador|Registradores|ALT_INV_registrador~217_combout\ <= NOT \processador|Registradores|registrador~217_combout\;
\processador|Registradores|ALT_INV_registrador~75_q\ <= NOT \processador|Registradores|registrador~75_q\;
\processador|Registradores|ALT_INV_registrador~216_combout\ <= NOT \processador|Registradores|registrador~216_combout\;
\processador|Registradores|ALT_INV_registrador~34_q\ <= NOT \processador|Registradores|registrador~34_q\;
\processador|Registradores|ALT_INV_registrador~26_q\ <= NOT \processador|Registradores|registrador~26_q\;

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

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

\processador|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~8_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & 
-- (!\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010011000100000000000000000010000100110001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~8_combout\);

\processador|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~9_combout\ = (\processador|ROM|memROM~5_combout\ & \processador|ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	combout => \processador|ROM|memROM~9_combout\);

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

\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~25_sumout\,
	asdata => \processador|ROM|memROM~7_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

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

\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

\processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~3_combout\ = (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	combout => \processador|ROM|memROM~3_combout\);

\processador|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~12_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & 
-- !\processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000010000000000100001000000000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~12_combout\);

\processador|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~13_combout\ = (\processador|ROM|memROM~3_combout\ & \processador|ROM|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|ROM|memROM~13_combout\);

\processador|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~14_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(3) $ (((!\processador|PC|DOUT\(2)) # 
-- (\processador|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110011000001100111001100000110011100110000011001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~14_combout\);

\processador|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~15_combout\ = (!\processador|ROM|memROM~3_combout\) # (\processador|ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~14_combout\,
	combout => \processador|ROM|memROM~15_combout\);

\processador|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~16_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(3) & 
-- (((!\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(0))) # (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001000111100000000000000011110000010001111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~16_combout\);

\processador|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~17_combout\ = (\processador|ROM|memROM~5_combout\ & \processador|ROM|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~16_combout\,
	combout => \processador|ROM|memROM~17_combout\);

\processador|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~18_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(1) & 
-- ((!\processador|PC|DOUT\(2) $ (\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(1) & (((!\processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100011101100000000000000011110011000111011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~18_combout\);

\processador|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~19_combout\ = (\processador|ROM|memROM~5_combout\ & \processador|ROM|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|ROM|memROM~19_combout\);

\processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~0_combout\ = (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) $ (((!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001000001010001000100000101000100010000010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~0_combout\);

\processador|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~10_combout\ = (\processador|ROM|memROM~0_combout\ & \processador|ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~10_combout\);

\processador|UC|palavraControle[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|palavraControle[3]~0_combout\ = (!\processador|ROM|memROM~19_combout\ & ((!\processador|ROM|memROM~13_combout\ & ((\processador|ROM|memROM~17_combout\))) # (\processador|ROM|memROM~13_combout\ & (\processador|ROM|memROM~15_combout\ & 
-- !\processador|ROM|memROM~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000000000000110100000000000011010000000000001101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|UC|palavraControle[3]~0_combout\);

\processador|UC|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal3~0_combout\ = ( \processador|ROM|memROM~16_combout\ & ( !\processador|ROM|memROM~18_combout\ & ( (\processador|ROM|memROM~5_combout\ & (((!\processador|ROM|memROM~12_combout\ & \processador|ROM|memROM~14_combout\)) # 
-- (\processador|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \processador|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|ROM|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|UC|Equal3~0_combout\);

\processador|ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~21_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & 
-- (!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100001000000000000000000000010001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~21_combout\);

\processador|ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~23_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001000100101100000100010010110000010001001011000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~23_combout\);

\processador|UC|palavraControle[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|palavraControle\(5) = ( \processador|ROM|memROM~16_combout\ & ( \processador|ROM|memROM~18_combout\ & ( (!\processador|PC|DOUT\(4) & (\processador|ROM|memROM~5_combout\ & (!\processador|ROM|memROM~12_combout\ & 
-- !\processador|ROM|memROM~14_combout\))) ) ) ) # ( \processador|ROM|memROM~16_combout\ & ( !\processador|ROM|memROM~18_combout\ & ( (\processador|ROM|memROM~5_combout\ & ((!\processador|ROM|memROM~12_combout\) # (\processador|PC|DOUT\(4)))) ) ) ) # ( 
-- !\processador|ROM|memROM~16_combout\ & ( !\processador|ROM|memROM~18_combout\ & ( (!\processador|PC|DOUT\(4) & (\processador|ROM|memROM~5_combout\ & (!\processador|ROM|memROM~12_combout\ & !\processador|ROM|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001100010011000100000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \processador|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|ROM|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|UC|palavraControle\(5));

\processador|ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~24_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~24_combout\);

\processador|ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~25_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & (((!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000010010100000000001001010000000000100101000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~25_combout\);

\processador|ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~26_combout\ = (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010000000001010001000000000101000100000000010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~26_combout\);

\processador|Registradores|registrador~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~223_combout\ = ( \processador|ROM|memROM~25_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|ROM|memROM~23_combout\ & (\processador|UC|palavraControle\(5) & 
-- \processador|ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~24_combout\,
	datae => \processador|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~223_combout\);

\processador|Registradores|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~70_q\);

\processador|ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~22_combout\ = ( \processador|ROM|memROM~3_combout\ & ( (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) $ 
-- (!\processador|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000110001000000000000000000000010001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~22_combout\);

\processador|Registradores|registrador~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~207_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~70_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~207_combout\);

\processador|Registradores|registrador~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~224_combout\ = ( \processador|ROM|memROM~25_combout\ & ( \processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~3_combout\ & (\processador|UC|palavraControle\(5) & !\processador|ROM|memROM~24_combout\)) ) 
-- ) ) # ( !\processador|ROM|memROM~25_combout\ & ( \processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~3_combout\ & (\processador|UC|palavraControle\(5) & !\processador|ROM|memROM~24_combout\)) ) ) ) # ( \processador|ROM|memROM~25_combout\ & ( 
-- !\processador|ROM|memROM~26_combout\ & ( (!\processador|ROM|memROM~3_combout\ & (\processador|UC|palavraControle\(5) & !\processador|ROM|memROM~24_combout\)) ) ) ) # ( !\processador|ROM|memROM~25_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( 
-- (\processador|UC|palavraControle\(5) & (!\processador|ROM|memROM~24_combout\ & ((!\processador|ROM|memROM~3_combout\) # (!\processador|ROM|memROM~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~24_combout\,
	datae => \processador|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~224_combout\);

\processador|Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~14_q\);

\processador|Registradores|registrador~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~225_combout\ = ( !\processador|ROM|memROM~25_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|ROM|memROM~23_combout\ & (\processador|UC|palavraControle\(5) & 
-- !\processador|ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~24_combout\,
	datae => \processador|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~225_combout\);

\processador|Registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~22_q\);

\processador|Registradores|registrador~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~226_combout\ = ( \processador|ROM|memROM~25_combout\ & ( !\processador|ROM|memROM~26_combout\ & ( (\processador|ROM|memROM~3_combout\ & (!\processador|ROM|memROM~23_combout\ & (\processador|UC|palavraControle\(5) & 
-- !\processador|ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~24_combout\,
	datae => \processador|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~226_combout\);

\processador|Registradores|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~30_q\);

\processador|Registradores|registrador~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~208_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~30_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~22_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~14_q\,
	datab => \processador|Registradores|ALT_INV_registrador~22_q\,
	datac => \processador|Registradores|ALT_INV_registrador~30_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~208_combout\);

\processador|Registradores|registrador~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~221_combout\ = ( !\processador|ROM|memROM~25_combout\ & ( \processador|ROM|memROM~26_combout\ & ( (\processador|ROM|memROM~3_combout\ & (\processador|ROM|memROM~23_combout\ & (\processador|UC|palavraControle\(5) & 
-- !\processador|ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~24_combout\,
	datae => \processador|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~221_combout\);

\processador|Registradores|registrador~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~85_q\);

\processador|Registradores|registrador~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~222_combout\ = ( !\processador|ROM|memROM~25_combout\ & ( \processador|ROM|memROM~26_combout\ & ( (\processador|ROM|memROM~3_combout\ & (!\processador|ROM|memROM~23_combout\ & (\processador|UC|palavraControle\(5) & 
-- !\processador|ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|UC|ALT_INV_palavraControle\(5),
	datad => \processador|ROM|ALT_INV_memROM~24_combout\,
	datae => \processador|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~26_combout\,
	combout => \processador|Registradores|registrador~222_combout\);

\processador|Registradores|registrador~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~77_q\);

\processador|ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~29_combout\ = (!\processador|PC|DOUT\(4) & (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & 
-- !\processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000010010000000000001001000000000000100100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~29_combout\);

\processador|ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~20_combout\ = ( \processador|ROM|memROM~29_combout\ & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|ROM|ALT_INV_memROM~29_combout\,
	combout => \processador|ROM|memROM~20_combout\);

\processador|Registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~21_q\);

\processador|Registradores|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~29_q\);

\processador|Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~13_q\);

\processador|ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~28_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(2))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) $ (\processador|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM|memROM~28_combout\);

\processador|ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~27_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|ROM|memROM~28_combout\ & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|ROM|ALT_INV_memROM~28_combout\,
	combout => \processador|ROM|memROM~27_combout\);

\processador|Registradores|registrador~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~173_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~29_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~13_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~21_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~21_q\,
	datab => \processador|Registradores|ALT_INV_registrador~29_q\,
	datac => \processador|Registradores|ALT_INV_registrador~13_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~173_combout\);

\processador|Registradores|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~141_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~173_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~173_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~85_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~173_combout\ & ( 
-- (\processador|Registradores|registrador~77_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~85_q\,
	datac => \processador|Registradores|ALT_INV_registrador~77_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~173_combout\,
	combout => \processador|Registradores|registrador~141_combout\);

\processador|Registradores|registrador~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~206_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~29_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~21_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~13_q\,
	datab => \processador|Registradores|ALT_INV_registrador~21_q\,
	datac => \processador|Registradores|ALT_INV_registrador~29_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~206_combout\);

\processador|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~34_cout\ = CARRY(( !\processador|UC|Equal3~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	cin => GND,
	cout => \processador|ULA|Add0~34_cout\);

\processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~1_sumout\ = SUM(( \processador|Registradores|registrador~141_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~206_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~205_combout\)))) ) + ( \processador|ULA|Add0~34_cout\ ))
-- \processador|ULA|Add0~2\ = CARRY(( \processador|Registradores|registrador~141_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~206_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~205_combout\)))) ) + ( \processador|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~205_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~141_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~206_combout\,
	cin => \processador|ULA|Add0~34_cout\,
	sumout => \processador|ULA|Add0~1_sumout\,
	cout => \processador|ULA|Add0~2\);

\processador|UC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal5~0_combout\ = ( \processador|ROM|memROM~16_combout\ & ( \processador|ROM|memROM~18_combout\ & ( (!\processador|PC|DOUT\(4) & (\processador|ROM|memROM~5_combout\ & (!\processador|ROM|memROM~12_combout\ & 
-- !\processador|ROM|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \processador|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|ROM|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \processador|UC|Equal5~0_combout\);

\processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~1_combout\ = (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) $ 
-- (!\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110011000000010011001100000001001100110000000100110011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~1_combout\);

\Decoder|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~0_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & ((\processador|ROM|memROM~1_combout\) # (\processador|ROM|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000000000000000000001110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	datae => \processador|PC|ALT_INV_DOUT\(6),
	combout => \Decoder|LessThan0~0_combout\);

\processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~2_combout\ = (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(2)))) # (\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(3)))))) # (\processador|PC|DOUT\(0) & 
-- (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010011000001010101001100000101010100110000010101010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \processador|ROM|memROM~2_combout\);

\processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~4_combout\ = (\processador|ROM|memROM~2_combout\ & \processador|ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~2_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~4_combout\);

\Decoder|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~0_combout\ = (\processador|ROM|memROM~0_combout\ & (\processador|ROM|memROM~1_combout\ & \processador|ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal6~0_combout\);

\Decoder|habilita[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~0_combout\ = ( !\processador|PC|DOUT\(6) & ( !\processador|PC|DOUT\(7) & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & (!\processador|ROM|memROM~0_combout\ $ (!\processador|ROM|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	datae => \processador|PC|ALT_INV_DOUT\(6),
	dataf => \processador|PC|ALT_INV_DOUT\(7),
	combout => \Decoder|habilita[1]~0_combout\);

\interfaceChaves|saida[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~11_combout\ = ( \Decoder|Equal6~0_combout\ & ( \Decoder|habilita[1]~0_combout\ & ( !\processador|ROM|memROM~7_combout\ ) ) ) # ( !\Decoder|Equal6~0_combout\ & ( \Decoder|habilita[1]~0_combout\ & ( 
-- !\processador|ROM|memROM~7_combout\ ) ) ) # ( \Decoder|Equal6~0_combout\ & ( !\Decoder|habilita[1]~0_combout\ & ( (!\processador|ROM|memROM~7_combout\ & ((!\Decoder|LessThan0~0_combout\) # ((!\processador|ROM|memROM~4_combout\) # 
-- (!\processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Decoder|Equal6~0_combout\ & ( !\Decoder|habilita[1]~0_combout\ & ( (!\processador|ROM|memROM~7_combout\ & ((!\Decoder|LessThan0~0_combout\) # (!\processador|ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111100001110000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_LessThan0~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	datad => \processador|ROM|ALT_INV_memROM~9_combout\,
	datae => \Decoder|ALT_INV_Equal6~0_combout\,
	dataf => \Decoder|ALT_INV_habilita[1]~0_combout\,
	combout => \interfaceChaves|saida[0]~11_combout\);

\processador|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[0]~0_combout\ = ( \processador|UC|Equal5~0_combout\ & ( \interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|ROM|memROM~9_combout\)) # 
-- (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~1_sumout\))) ) ) ) # ( !\processador|UC|Equal5~0_combout\ & ( \interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & 
-- ((\interfaceChaves|saida[0]~10_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & (\processador|ULA|Add0~1_sumout\)) ) ) ) # ( \processador|UC|Equal5~0_combout\ & ( !\interfaceChaves|saida[0]~11_combout\ & ( 
-- (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|ROM|memROM~9_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~1_sumout\))) ) ) ) # ( !\processador|UC|Equal5~0_combout\ & ( 
-- !\interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\) # (\processador|ULA|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111010001110100011100000011110011110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~9_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~1_sumout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~10_combout\,
	datae => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[0]~0_combout\);

\processador|Registradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[0]~0_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~69_q\);

\processador|Registradores|registrador~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~205_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~69_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~205_combout\);

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

\processador|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[1]~1_combout\ = ( \interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|ROM|memROM~10_combout\ & ((\processador|UC|Equal5~0_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~5_sumout\)))) ) ) # ( !\interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\)) # 
-- (\processador|ROM|memROM~10_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101000111000000110100011111001111010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~10_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~5_sumout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	datae => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[1]~1_combout\);

\processador|Registradores|registrador~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~86_q\);

\processador|Registradores|registrador~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[1]~1_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~78_q\);

\processador|Registradores|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~177_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~30_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~14_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~22_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~22_q\,
	datab => \processador|Registradores|ALT_INV_registrador~30_q\,
	datac => \processador|Registradores|ALT_INV_registrador~14_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~177_combout\);

\processador|Registradores|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~145_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~177_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~177_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~86_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~177_combout\ & ( 
-- (\processador|Registradores|registrador~78_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~86_q\,
	datac => \processador|Registradores|ALT_INV_registrador~78_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~177_combout\,
	combout => \processador|Registradores|registrador~145_combout\);

\processador|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~1_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~145_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~5_sumout\,
	combout => \processador|ULA|saida[1]~1_combout\);

\processador|flipflop|data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~0_combout\ = ( \processador|flipflop|data_out~q\ & ( (!\processador|ROM|memROM~13_combout\) # ((!\processador|ROM|memROM~15_combout\) # ((\processador|ROM|memROM~19_combout\) # (\processador|ROM|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000001110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|flipflop|ALT_INV_data_out~q\,
	combout => \processador|flipflop|data_out~0_combout\);

\processador|flipflop|data_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~1_combout\ = ( !\processador|ROM|memROM~19_combout\ & ( !\processador|ULA|Add0~1_sumout\ & ( (\processador|ROM|memROM~13_combout\ & (\processador|ROM|memROM~15_combout\ & !\processador|ROM|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datac => \processador|ROM|ALT_INV_memROM~15_combout\,
	datad => \processador|ROM|ALT_INV_memROM~17_combout\,
	datae => \processador|ROM|ALT_INV_memROM~19_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \processador|flipflop|data_out~1_combout\);

\processador|Registradores|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~73_q\);

\processador|Registradores|registrador~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~213_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~73_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~73_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~213_combout\);

\processador|Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~17_q\);

\processador|Registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~25_q\);

\processador|Registradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~33_q\);

\processador|Registradores|registrador~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~214_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~33_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~25_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~17_q\,
	datab => \processador|Registradores|ALT_INV_registrador~25_q\,
	datac => \processador|Registradores|ALT_INV_registrador~33_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~214_combout\);

\processador|Registradores|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~88_q\);

\processador|Registradores|registrador~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~80_q\);

\processador|Registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~24_q\);

\processador|Registradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~32_q\);

\processador|Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~16_q\);

\processador|Registradores|registrador~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~185_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~32_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~16_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~24_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~24_q\,
	datab => \processador|Registradores|ALT_INV_registrador~32_q\,
	datac => \processador|Registradores|ALT_INV_registrador~16_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~185_combout\);

\processador|Registradores|registrador~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~153_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~185_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~185_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~88_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~185_combout\ & ( 
-- (\processador|Registradores|registrador~80_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~88_q\,
	datac => \processador|Registradores|ALT_INV_registrador~80_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~185_combout\,
	combout => \processador|Registradores|registrador~153_combout\);

\processador|Registradores|registrador~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~212_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~32_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~24_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~16_q\,
	datab => \processador|Registradores|ALT_INV_registrador~24_q\,
	datac => \processador|Registradores|ALT_INV_registrador~32_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~212_combout\);

\processador|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~11_combout\ = (\processador|ROM|memROM~1_combout\ & \processador|ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~1_combout\,
	datab => \processador|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|ROM|memROM~11_combout\);

\processador|Registradores|registrador~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~87_q\);

\processador|Registradores|registrador~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~79_q\);

\processador|Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~23_q\);

\processador|Registradores|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~31_q\);

\processador|Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~15_q\);

\processador|Registradores|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~181_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~31_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~15_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~23_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~23_q\,
	datab => \processador|Registradores|ALT_INV_registrador~31_q\,
	datac => \processador|Registradores|ALT_INV_registrador~15_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~181_combout\);

\processador|Registradores|registrador~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~149_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~181_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~181_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~87_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~181_combout\ & ( 
-- (\processador|Registradores|registrador~79_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~87_q\,
	datac => \processador|Registradores|ALT_INV_registrador~79_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~181_combout\,
	combout => \processador|Registradores|registrador~149_combout\);

\processador|Registradores|registrador~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~210_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~31_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~23_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~15_q\,
	datab => \processador|Registradores|ALT_INV_registrador~23_q\,
	datac => \processador|Registradores|ALT_INV_registrador~31_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~210_combout\);

\processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~9_sumout\ = SUM(( \processador|Registradores|registrador~149_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~210_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~209_combout\)))) ) + ( \processador|ULA|Add0~6\ ))
-- \processador|ULA|Add0~10\ = CARRY(( \processador|Registradores|registrador~149_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~210_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~209_combout\)))) ) + ( \processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~209_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~149_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~210_combout\,
	cin => \processador|ULA|Add0~6\,
	sumout => \processador|ULA|Add0~9_sumout\,
	cout => \processador|ULA|Add0~10\);

\processador|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[2]~2_combout\ = ( \interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|ROM|memROM~11_combout\ & ((\processador|UC|Equal5~0_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~9_sumout\)))) ) ) # ( !\interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\)) # 
-- (\processador|ROM|memROM~11_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101000111000000110100011111001111010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~9_sumout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	datae => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[2]~2_combout\);

\processador|Registradores|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[2]~2_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~71_q\);

\processador|Registradores|registrador~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~209_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~71_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~209_combout\);

\processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~13_sumout\ = SUM(( \processador|Registradores|registrador~153_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~212_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~211_combout\)))) ) + ( \processador|ULA|Add0~10\ ))
-- \processador|ULA|Add0~14\ = CARRY(( \processador|Registradores|registrador~153_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~212_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~211_combout\)))) ) + ( \processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~211_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~212_combout\,
	cin => \processador|ULA|Add0~10\,
	sumout => \processador|ULA|Add0~13_sumout\,
	cout => \processador|ULA|Add0~14\);

\processador|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[3]~3_combout\ = ( \interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|ROM|memROM~4_combout\ & ((\processador|UC|Equal5~0_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~13_sumout\)))) ) ) # ( !\interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\)) # 
-- (\processador|ROM|memROM~4_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101000111000000110100011111001111010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~13_sumout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	datae => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[3]~3_combout\);

\processador|Registradores|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[3]~3_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~72_q\);

\processador|Registradores|registrador~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~211_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~72_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~211_combout\);

\processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~17_sumout\ = SUM(( \processador|Registradores|registrador~157_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~214_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~213_combout\)))) ) + ( \processador|ULA|Add0~14\ ))
-- \processador|ULA|Add0~18\ = CARRY(( \processador|Registradores|registrador~157_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~214_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~213_combout\)))) ) + ( \processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~213_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~157_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~214_combout\,
	cin => \processador|ULA|Add0~14\,
	sumout => \processador|ULA|Add0~17_sumout\,
	cout => \processador|ULA|Add0~18\);

\processador|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[4]~4_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\ & !\interfaceChaves|saida[0]~11_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (\processador|ULA|Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000100010001101100010001000110110001000100011011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~17_sumout\,
	datac => \processador|UC|ALT_INV_Equal5~0_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[4]~4_combout\);

\processador|Registradores|registrador~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~89_q\);

\processador|Registradores|registrador~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[4]~4_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~81_q\);

\processador|Registradores|registrador~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~189_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~33_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~17_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~25_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~25_q\,
	datab => \processador|Registradores|ALT_INV_registrador~33_q\,
	datac => \processador|Registradores|ALT_INV_registrador~17_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~189_combout\);

\processador|Registradores|registrador~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~157_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~189_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~189_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~89_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~189_combout\ & ( 
-- (\processador|Registradores|registrador~81_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~89_q\,
	datac => \processador|Registradores|ALT_INV_registrador~81_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~189_combout\,
	combout => \processador|Registradores|registrador~157_combout\);

\processador|Registradores|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~74_q\);

\processador|Registradores|registrador~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~215_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~74_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~215_combout\);

\processador|Registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~18_q\);

\processador|Registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~26_q\);

\processador|Registradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~34_q\);

\processador|Registradores|registrador~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~216_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~34_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~26_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~18_q\,
	datab => \processador|Registradores|ALT_INV_registrador~26_q\,
	datac => \processador|Registradores|ALT_INV_registrador~34_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~216_combout\);

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

\processador|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[5]~5_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\ & !\interfaceChaves|saida[0]~11_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (\processador|ULA|Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000100010001101100010001000110110001000100011011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~21_sumout\,
	datac => \processador|UC|ALT_INV_Equal5~0_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[5]~5_combout\);

\processador|Registradores|registrador~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~90_q\);

\processador|Registradores|registrador~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[5]~5_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~82_q\);

\processador|Registradores|registrador~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~193_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~34_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~18_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~26_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~26_q\,
	datab => \processador|Registradores|ALT_INV_registrador~34_q\,
	datac => \processador|Registradores|ALT_INV_registrador~18_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~193_combout\);

\processador|Registradores|registrador~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~161_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~193_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~193_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~90_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~193_combout\ & ( 
-- (\processador|Registradores|registrador~82_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~90_q\,
	datac => \processador|Registradores|ALT_INV_registrador~82_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~193_combout\,
	combout => \processador|Registradores|registrador~161_combout\);

\processador|flipflop|data_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~2_combout\ = ( \processador|ULA|Add0~21_sumout\ & ( (!\processador|Registradores|registrador~157_combout\ & (!\processador|Registradores|registrador~161_combout\ & !\processador|UC|palavraControle[3]~0_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~21_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~157_combout\ & (!\processador|Registradores|registrador~161_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (((!\processador|ULA|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110000000100000001000000010001111100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~157_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~161_combout\,
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|ULA|ALT_INV_Add0~17_sumout\,
	datae => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|flipflop|data_out~2_combout\);

\processador|flipflop|data_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~3_combout\ = ( \processador|ULA|Add0~13_sumout\ & ( (!\processador|Registradores|registrador~149_combout\ & (!\processador|Registradores|registrador~153_combout\ & !\processador|UC|palavraControle[3]~0_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~13_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~149_combout\ & (!\processador|Registradores|registrador~153_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (((!\processador|ULA|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110000000100000001000000010001111100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|ULA|ALT_INV_Add0~9_sumout\,
	datae => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|flipflop|data_out~3_combout\);

\processador|Registradores|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~75_q\);

\processador|Registradores|registrador~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~217_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~75_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~75_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~217_combout\);

\processador|Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~19_q\);

\processador|Registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~27_q\);

\processador|Registradores|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~35_q\);

\processador|Registradores|registrador~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~218_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~35_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~27_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~19_q\,
	datab => \processador|Registradores|ALT_INV_registrador~27_q\,
	datac => \processador|Registradores|ALT_INV_registrador~35_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~218_combout\);

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

\processador|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[6]~6_combout\ = ( \interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|ROM|memROM~7_combout\ & ((\processador|UC|Equal5~0_combout\)))) # 
-- (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~25_sumout\)))) ) ) # ( !\interfaceChaves|saida[0]~11_combout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\)) # 
-- (\processador|ROM|memROM~7_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & (((\processador|ULA|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101000111000000110100011111001111010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~7_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~25_sumout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	datae => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[6]~6_combout\);

\processador|Registradores|registrador~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~91_q\);

\processador|Registradores|registrador~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[6]~6_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~83_q\);

\processador|Registradores|registrador~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~197_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~35_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~19_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~27_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~27_q\,
	datab => \processador|Registradores|ALT_INV_registrador~35_q\,
	datac => \processador|Registradores|ALT_INV_registrador~19_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~197_combout\);

\processador|Registradores|registrador~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~165_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~197_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~197_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~91_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~197_combout\ & ( 
-- (\processador|Registradores|registrador~83_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~91_q\,
	datac => \processador|Registradores|ALT_INV_registrador~83_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~197_combout\,
	combout => \processador|Registradores|registrador~165_combout\);

\processador|Registradores|registrador~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~76_q\);

\processador|Registradores|registrador~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~219_combout\ = ( \processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|Registradores|ALT_INV_registrador~76_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~219_combout\);

\processador|Registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~20_q\);

\processador|Registradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~28_q\);

\processador|Registradores|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~36_q\);

\processador|Registradores|registrador~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~220_combout\ = ( !\processador|ROM|memROM~22_combout\ & ( \processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~36_q\ ) ) ) # ( \processador|ROM|memROM~22_combout\ & ( 
-- !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~28_q\ ) ) ) # ( !\processador|ROM|memROM~22_combout\ & ( !\processador|ROM|memROM~21_combout\ & ( \processador|Registradores|registrador~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~20_q\,
	datab => \processador|Registradores|ALT_INV_registrador~28_q\,
	datac => \processador|Registradores|ALT_INV_registrador~36_q\,
	datae => \processador|ROM|ALT_INV_memROM~22_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~21_combout\,
	combout => \processador|Registradores|registrador~220_combout\);

\processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~29_sumout\ = SUM(( \processador|Registradores|registrador~169_combout\ ) + ( !\processador|UC|Equal3~0_combout\ $ (((!\processador|ROM|memROM~21_combout\ & ((\processador|Registradores|registrador~220_combout\))) # 
-- (\processador|ROM|memROM~21_combout\ & (\processador|Registradores|registrador~219_combout\)))) ) + ( \processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal3~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~21_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~219_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~169_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~220_combout\,
	cin => \processador|ULA|Add0~26\,
	sumout => \processador|ULA|Add0~29_sumout\);

\processador|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX_ULA|saida_MUX[7]~7_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (((!\processador|UC|Equal5~0_combout\ & !\interfaceChaves|saida[0]~11_combout\)))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (\processador|ULA|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000100010001101100010001000110110001000100011011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \processador|ULA|ALT_INV_Add0~29_sumout\,
	datac => \processador|UC|ALT_INV_Equal5~0_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~11_combout\,
	combout => \processador|MUX_ULA|saida_MUX[7]~7_combout\);

\processador|Registradores|registrador~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~92_q\);

\processador|Registradores|registrador~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|MUX_ULA|saida_MUX[7]~7_combout\,
	ena => \processador|Registradores|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|Registradores|registrador~84_q\);

\processador|Registradores|registrador~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~201_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|ROM|memROM~13_combout\ & ( \processador|ROM|memROM~27_combout\ ) ) ) # ( \processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (\processador|Registradores|registrador~36_q\ & !\processador|ROM|memROM~27_combout\) ) 
-- ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|ROM|memROM~13_combout\ & ( (!\processador|ROM|memROM~27_combout\ & ((\processador|Registradores|registrador~20_q\))) # (\processador|ROM|memROM~27_combout\ & 
-- (\processador|Registradores|registrador~28_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~28_q\,
	datab => \processador|Registradores|ALT_INV_registrador~36_q\,
	datac => \processador|Registradores|ALT_INV_registrador~20_q\,
	datad => \processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|Registradores|registrador~201_combout\);

\processador|Registradores|registrador~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|Registradores|registrador~169_combout\ = ( \processador|ROM|memROM~20_combout\ & ( \processador|Registradores|registrador~201_combout\ & ( !\processador|ROM|memROM~13_combout\ ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( 
-- \processador|Registradores|registrador~201_combout\ & ( (!\processador|ROM|memROM~13_combout\) # (\processador|Registradores|registrador~92_q\) ) ) ) # ( !\processador|ROM|memROM~20_combout\ & ( !\processador|Registradores|registrador~201_combout\ & ( 
-- (\processador|Registradores|registrador~84_q\ & \processador|ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~92_q\,
	datac => \processador|Registradores|ALT_INV_registrador~84_q\,
	datad => \processador|ROM|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|Registradores|ALT_INV_registrador~201_combout\,
	combout => \processador|Registradores|registrador~169_combout\);

\processador|flipflop|data_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~4_combout\ = ( \processador|ULA|Add0~29_sumout\ & ( (!\processador|Registradores|registrador~165_combout\ & (!\processador|Registradores|registrador~169_combout\ & !\processador|UC|palavraControle[3]~0_combout\)) ) ) # ( 
-- !\processador|ULA|Add0~29_sumout\ & ( (!\processador|UC|palavraControle[3]~0_combout\ & (!\processador|Registradores|registrador~165_combout\ & (!\processador|Registradores|registrador~169_combout\))) # (\processador|UC|palavraControle[3]~0_combout\ & 
-- (((!\processador|ULA|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110000000100000001000000010001111100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~165_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~169_combout\,
	datac => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datad => \processador|ULA|ALT_INV_Add0~25_sumout\,
	datae => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|flipflop|data_out~4_combout\);

\processador|flipflop|data_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|data_out~5_combout\ = ( \processador|flipflop|data_out~3_combout\ & ( \processador|flipflop|data_out~4_combout\ & ( ((!\processador|ULA|saida[1]~1_combout\ & (\processador|flipflop|data_out~1_combout\ & 
-- \processador|flipflop|data_out~2_combout\))) # (\processador|flipflop|data_out~0_combout\) ) ) ) # ( !\processador|flipflop|data_out~3_combout\ & ( \processador|flipflop|data_out~4_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( 
-- \processador|flipflop|data_out~3_combout\ & ( !\processador|flipflop|data_out~4_combout\ & ( \processador|flipflop|data_out~0_combout\ ) ) ) # ( !\processador|flipflop|data_out~3_combout\ & ( !\processador|flipflop|data_out~4_combout\ & ( 
-- \processador|flipflop|data_out~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~1_combout\,
	datab => \processador|flipflop|ALT_INV_data_out~0_combout\,
	datac => \processador|flipflop|ALT_INV_data_out~1_combout\,
	datad => \processador|flipflop|ALT_INV_data_out~2_combout\,
	datae => \processador|flipflop|ALT_INV_data_out~3_combout\,
	dataf => \processador|flipflop|ALT_INV_data_out~4_combout\,
	combout => \processador|flipflop|data_out~5_combout\);

\processador|flipflop|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|flipflop|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|flipflop|data_out~q\);

\processador|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|comb~0_combout\ = ( \processador|flipflop|data_out~q\ & ( (!\processador|ROM|memROM~13_combout\ & (!\processador|ROM|memROM~17_combout\ & \processador|ROM|memROM~19_combout\)) ) ) # ( !\processador|flipflop|data_out~q\ & ( 
-- (!\processador|ROM|memROM~13_combout\ & (!\processador|ROM|memROM~15_combout\ & (!\processador|ROM|memROM~17_combout\ & \processador|ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001010000000000000100000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|flipflop|ALT_INV_data_out~q\,
	combout => \processador|comb~0_combout\);

\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~1_sumout\,
	asdata => \processador|ROM|memROM~9_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

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

\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~5_sumout\,
	asdata => \processador|ROM|memROM~10_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

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

\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~9_sumout\,
	asdata => \processador|ROM|memROM~11_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

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

\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~13_sumout\,
	asdata => \processador|ROM|memROM~4_combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

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

\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processador|inc|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

\processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~5_combout\ = (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(5),
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(7),
	combout => \processador|ROM|memROM~5_combout\);

\processador|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~6_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(0) & 
-- (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001100000000000000000000000000000011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	datae => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM|memROM~6_combout\);

\processador|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM|memROM~7_combout\ = (\processador|ROM|memROM~5_combout\ & \processador|ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|ROM|memROM~7_combout\);

\Decoder|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|LessThan0~1_combout\ = ((\Decoder|LessThan0~0_combout\ & \processador|ROM|memROM~4_combout\)) # (\processador|ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_LessThan0~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Decoder|LessThan0~1_combout\);

\interfaceBtn|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~0_combout\ = (!\processador|PC|DOUT\(4) & (\processador|ROM|memROM~2_combout\ & (\processador|ROM|memROM~5_combout\ & !\processador|ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \processador|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|ROM|ALT_INV_memROM~6_combout\,
	combout => \interfaceBtn|saida[0]~0_combout\);

\Decoder|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal6~1_combout\ = (\interfaceBtn|saida[0]~0_combout\ & (!\processador|ROM|memROM~9_combout\ & \Decoder|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBtn|ALT_INV_saida[0]~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \Decoder|Equal6~1_combout\);

\interfaceBaseTempo|baseTempo|contador[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|contador[0]~2_combout\ = !\interfaceBaseTempo|baseTempo|contador\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	combout => \interfaceBaseTempo|baseTempo|contador[0]~2_combout\);

\interfaceBaseTempo|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(0));

\interfaceBaseTempo|baseTempo|contador~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|contador~1_combout\ = (!\interfaceBaseTempo|baseTempo|contador\(0) & ((\interfaceBaseTempo|baseTempo|contador\(2)))) # (\interfaceBaseTempo|baseTempo|contador\(0) & (\interfaceBaseTempo|baseTempo|contador\(1) & 
-- !\interfaceBaseTempo|baseTempo|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011010000110100001101000011010000110100001101000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(2),
	combout => \interfaceBaseTempo|baseTempo|contador~1_combout\);

\interfaceBaseTempo|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(2));

\interfaceBaseTempo|baseTempo|contador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|contador~0_combout\ = (!\interfaceBaseTempo|baseTempo|contador\(0) & (\interfaceBaseTempo|baseTempo|contador\(1))) # (\interfaceBaseTempo|baseTempo|contador\(0) & (!\interfaceBaseTempo|baseTempo|contador\(1) & 
-- !\interfaceBaseTempo|baseTempo|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001001100010011000100110001001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(2),
	combout => \interfaceBaseTempo|baseTempo|contador~0_combout\);

\interfaceBaseTempo|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(1));

\interfaceBaseTempo|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|tick~0_combout\ = !\interfaceBaseTempo|baseTempo|tick~q\ $ (((!\interfaceBaseTempo|baseTempo|contador\(0)) # ((!\interfaceBaseTempo|baseTempo|contador\(2)) # (\interfaceBaseTempo|baseTempo|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100101010101010110010101010101011001010101010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_tick~q\,
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(2),
	combout => \interfaceBaseTempo|baseTempo|tick~0_combout\);

\interfaceBaseTempo|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|tick~q\);

\Decoder|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal7~0_combout\ = (\interfaceBtn|saida[0]~0_combout\ & (\processador|ROM|memROM~9_combout\ & \Decoder|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBtn|ALT_INV_saida[0]~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Decoder|ALT_INV_Equal6~0_combout\,
	combout => \Decoder|Equal7~0_combout\);

\interfaceBaseTempo|registraUmSegundo|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceBaseTempo|baseTempo|tick~q\,
	d => VCC,
	clrn => \Decoder|ALT_INV_Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|registraUmSegundo|data_out~q\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\interfaceBtn|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~1_combout\ = (!\processador|ROM|memROM~5_combout\ & (((\KEY[2]~input_o\)))) # (\processador|ROM|memROM~5_combout\ & ((!\processador|ROM|memROM~8_combout\ & (\KEY[2]~input_o\)) # (\processador|ROM|memROM~8_combout\ & 
-- ((\KEY[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	combout => \interfaceBtn|saida[0]~1_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\interfaceBtn|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~2_combout\ = (!\processador|ROM|memROM~5_combout\ & (((\KEY[0]~input_o\)))) # (\processador|ROM|memROM~5_combout\ & ((!\processador|ROM|memROM~8_combout\ & (\KEY[0]~input_o\)) # (\processador|ROM|memROM~8_combout\ & 
-- ((\KEY[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	combout => \interfaceBtn|saida[0]~2_combout\);

\interfaceBtn|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBtn|saida[0]~3_combout\ = ( \interfaceBtn|saida[0]~2_combout\ & ( \Decoder|habilita[1]~0_combout\ & ( (\interfaceBtn|saida[0]~0_combout\ & ((!\processador|ROM|memROM~10_combout\ & ((!\processador|ROM|memROM~11_combout\) # 
-- (!\interfaceBtn|saida[0]~1_combout\))) # (\processador|ROM|memROM~10_combout\ & (\processador|ROM|memROM~11_combout\)))) ) ) ) # ( !\interfaceBtn|saida[0]~2_combout\ & ( \Decoder|habilita[1]~0_combout\ & ( (\interfaceBtn|saida[0]~0_combout\ & 
-- (((!\processador|ROM|memROM~11_combout\) # (!\interfaceBtn|saida[0]~1_combout\)) # (\processador|ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100010100010101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBtn|ALT_INV_saida[0]~0_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \interfaceBtn|ALT_INV_saida[0]~1_combout\,
	datae => \interfaceBtn|ALT_INV_saida[0]~2_combout\,
	dataf => \Decoder|ALT_INV_habilita[1]~0_combout\,
	combout => \interfaceBtn|saida[0]~3_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\interfaceChaves|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~8_combout\ = (!\processador|ROM|memROM~5_combout\ & (((\SW[8]~input_o\)))) # (\processador|ROM|memROM~5_combout\ & ((!\processador|ROM|memROM~8_combout\ & ((\SW[8]~input_o\))) # (\processador|ROM|memROM~8_combout\ & 
-- (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|ROM|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	combout => \interfaceChaves|saida[0]~8_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\interfaceChaves|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~0_combout\ = ( \processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( \SW[5]~input_o\ ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( \SW[1]~input_o\ ) ) ) # ( 
-- \processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( \SW[4]~input_o\ ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \interfaceChaves|Mux0~0_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\interfaceChaves|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|Mux0~1_combout\ = ( \processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( \processador|ROM|memROM~9_combout\ & ( \SW[3]~input_o\ ) ) ) # ( 
-- \processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\processador|ROM|memROM~11_combout\ & ( !\processador|ROM|memROM~9_combout\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|ROM|ALT_INV_memROM~9_combout\,
	combout => \interfaceChaves|Mux0~1_combout\);

\interfaceChaves|saida[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~9_combout\ = ( \interfaceChaves|Mux0~0_combout\ & ( \interfaceChaves|Mux0~1_combout\ & ( (!\processador|ROM|memROM~4_combout\) # ((!\processador|ROM|memROM~10_combout\ & (!\processador|ROM|memROM~11_combout\ & 
-- \interfaceChaves|saida[0]~8_combout\))) ) ) ) # ( !\interfaceChaves|Mux0~0_combout\ & ( \interfaceChaves|Mux0~1_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|ROM|memROM~10_combout\)) # (\processador|ROM|memROM~4_combout\ & 
-- (!\processador|ROM|memROM~10_combout\ & (!\processador|ROM|memROM~11_combout\ & \interfaceChaves|saida[0]~8_combout\))) ) ) ) # ( \interfaceChaves|Mux0~0_combout\ & ( !\interfaceChaves|Mux0~1_combout\ & ( (!\processador|ROM|memROM~10_combout\ & 
-- ((!\processador|ROM|memROM~4_combout\) # ((!\processador|ROM|memROM~11_combout\ & \interfaceChaves|saida[0]~8_combout\)))) ) ) ) # ( !\interfaceChaves|Mux0~0_combout\ & ( !\interfaceChaves|Mux0~1_combout\ & ( (\processador|ROM|memROM~4_combout\ & 
-- (!\processador|ROM|memROM~10_combout\ & (!\processador|ROM|memROM~11_combout\ & \interfaceChaves|saida[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100010001100100000100010011000101010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \interfaceChaves|ALT_INV_saida[0]~8_combout\,
	datae => \interfaceChaves|ALT_INV_Mux0~0_combout\,
	dataf => \interfaceChaves|ALT_INV_Mux0~1_combout\,
	combout => \interfaceChaves|saida[0]~9_combout\);

\interfaceChaves|saida[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceChaves|saida[0]~10_combout\ = ( !\interfaceBtn|saida[0]~3_combout\ & ( \interfaceChaves|saida[0]~9_combout\ & ( (!\processador|ROM|memROM~7_combout\ & (((!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|registraUmSegundo|data_out~q\)))) # 
-- (\processador|ROM|memROM~7_combout\ & (\Decoder|LessThan0~1_combout\ & ((!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|registraUmSegundo|data_out~q\)))) ) ) ) # ( !\interfaceBtn|saida[0]~3_combout\ & ( !\interfaceChaves|saida[0]~9_combout\ & ( 
-- (\Decoder|LessThan0~1_combout\ & ((!\Decoder|Equal6~1_combout\) # (\interfaceBaseTempo|registraUmSegundo|data_out~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011000000000000000010110000101110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~7_combout\,
	datab => \Decoder|ALT_INV_LessThan0~1_combout\,
	datac => \Decoder|ALT_INV_Equal6~1_combout\,
	datad => \interfaceBaseTempo|registraUmSegundo|ALT_INV_data_out~q\,
	datae => \interfaceBtn|ALT_INV_saida[0]~3_combout\,
	dataf => \interfaceChaves|ALT_INV_saida[0]~9_combout\,
	combout => \interfaceChaves|saida[0]~10_combout\);

\interfaceHEX|conversorHex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\ = (!\processador|Registradores|registrador~149_combout\ & (\processador|Registradores|registrador~141_combout\ & (!\processador|Registradores|registrador~145_combout\ $ 
-- (\processador|Registradores|registrador~153_combout\)))) # (\processador|Registradores|registrador~149_combout\ & (!\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~141_combout\ $ 
-- (\processador|Registradores|registrador~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000010100010010000001010001001000000101000100100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\);

\Decoder|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = ( !\processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|ROM|memROM~7_combout\ & (!\processador|ROM|memROM~9_combout\ & !\processador|ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|ROM|ALT_INV_memROM~7_combout\,
	datac => \processador|ROM|ALT_INV_memROM~9_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \Decoder|Equal0~0_combout\);

\interfaceHEX|conversorHex0|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(0));

\interfaceHEX|conversorHex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\ = (!\processador|Registradores|registrador~145_combout\ & (\processador|Registradores|registrador~149_combout\ & (!\processador|Registradores|registrador~141_combout\ $ 
-- (!\processador|Registradores|registrador~153_combout\)))) # (\processador|Registradores|registrador~145_combout\ & ((!\processador|Registradores|registrador~141_combout\ & (\processador|Registradores|registrador~149_combout\)) # 
-- (\processador|Registradores|registrador~141_combout\ & ((\processador|Registradores|registrador~153_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\);

\interfaceHEX|conversorHex0|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(1));

\interfaceHEX|conversorHex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\ = (!\processador|Registradores|registrador~149_combout\ & (!\processador|Registradores|registrador~141_combout\ & (\processador|Registradores|registrador~145_combout\ & 
-- !\processador|Registradores|registrador~153_combout\))) # (\processador|Registradores|registrador~149_combout\ & (\processador|Registradores|registrador~153_combout\ & ((!\processador|Registradores|registrador~141_combout\) # 
-- (\processador|Registradores|registrador~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\);

\interfaceHEX|conversorHex0|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(2));

\interfaceHEX|conversorHex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\ = (!\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~153_combout\ & (!\processador|Registradores|registrador~141_combout\ $ 
-- (!\processador|Registradores|registrador~149_combout\)))) # (\processador|Registradores|registrador~145_combout\ & ((!\processador|Registradores|registrador~141_combout\ & (!\processador|Registradores|registrador~149_combout\ & 
-- \processador|Registradores|registrador~153_combout\)) # (\processador|Registradores|registrador~141_combout\ & (\processador|Registradores|registrador~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\);

\interfaceHEX|conversorHex0|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(3));

\interfaceHEX|conversorHex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\ = (!\processador|Registradores|registrador~145_combout\ & ((!\processador|Registradores|registrador~149_combout\ & (\processador|Registradores|registrador~141_combout\)) # 
-- (\processador|Registradores|registrador~149_combout\ & ((!\processador|Registradores|registrador~153_combout\))))) # (\processador|Registradores|registrador~145_combout\ & (\processador|Registradores|registrador~141_combout\ & 
-- ((!\processador|Registradores|registrador~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101000000010111010100000001011101010000000101110101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\);

\interfaceHEX|conversorHex0|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(4));

\interfaceHEX|conversorHex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\ = (!\processador|Registradores|registrador~141_combout\ & (\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~149_combout\ & 
-- !\processador|Registradores|registrador~153_combout\))) # (\processador|Registradores|registrador~141_combout\ & (!\processador|Registradores|registrador~153_combout\ $ (((!\processador|Registradores|registrador~145_combout\ & 
-- \processador|Registradores|registrador~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\);

\interfaceHEX|conversorHex0|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(5));

\interfaceHEX|conversorHex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\ = (!\processador|Registradores|registrador~141_combout\ & (!\processador|Registradores|registrador~145_combout\ & (!\processador|Registradores|registrador~149_combout\ $ 
-- (\processador|Registradores|registrador~153_combout\)))) # (\processador|Registradores|registrador~141_combout\ & (!\processador|Registradores|registrador~153_combout\ & (!\processador|Registradores|registrador~145_combout\ $ 
-- (\processador|Registradores|registrador~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|Registradores|ALT_INV_registrador~145_combout\,
	datac => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datad => \processador|Registradores|ALT_INV_registrador~153_combout\,
	combout => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\);

\interfaceHEX|conversorHex0|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	ena => \Decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex0|saida7seg\(6));

\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( !\processador|ROM|memROM~11_combout\ & ( (!\processador|ROM|memROM~4_combout\ & (\processador|ROM|memROM~7_combout\ & (\processador|ROM|memROM~9_combout\ & !\processador|ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|ROM|ALT_INV_memROM~7_combout\,
	datac => \processador|ROM|ALT_INV_memROM~9_combout\,
	datad => \processador|ROM|ALT_INV_memROM~10_combout\,
	datae => \processador|ROM|ALT_INV_memROM~11_combout\,
	combout => \Decoder|Equal1~0_combout\);

\interfaceHEX|conversorHex1|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[0]~0_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(0));

\interfaceHEX|conversorHex1|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[1]~1_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(1));

\interfaceHEX|conversorHex1|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[2]~2_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(2));

\interfaceHEX|conversorHex1|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[3]~3_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(3));

\interfaceHEX|conversorHex1|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[4]~4_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(4));

\interfaceHEX|conversorHex1|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[5]~5_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(5));

\interfaceHEX|conversorHex1|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceHEX|conversorHex0|rascSaida7seg[6]~6_combout\,
	ena => \Decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceHEX|conversorHex1|saida7seg\(6));

\Decoder|habilita[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilita[1]~1_combout\ = (!\interfaceBtn|saida[0]~0_combout\) # (!\Decoder|habilita[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBtn|ALT_INV_saida[0]~0_combout\,
	datab => \Decoder|ALT_INV_habilita[1]~0_combout\,
	combout => \Decoder|habilita[1]~1_combout\);

\processador|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[0]~0_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~141_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~141_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \processador|ULA|saida[0]~0_combout\);

\processador|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[2]~2_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~149_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~149_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \processador|ULA|saida[2]~2_combout\);

\processador|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[3]~3_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~153_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~153_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|ULA|saida[3]~3_combout\);

\processador|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[4]~4_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~157_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~157_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~17_sumout\,
	combout => \processador|ULA|saida[4]~4_combout\);

\processador|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[5]~5_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~161_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~161_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|ULA|saida[5]~5_combout\);

\processador|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[6]~6_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~165_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~165_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|ULA|saida[6]~6_combout\);

\processador|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[7]~7_combout\ = (!\processador|UC|palavraControle[3]~0_combout\ & (\processador|Registradores|registrador~169_combout\)) # (\processador|UC|palavraControle[3]~0_combout\ & ((\processador|ULA|Add0~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Registradores|ALT_INV_registrador~169_combout\,
	datab => \processador|UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|ULA|saida[7]~7_combout\);

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


