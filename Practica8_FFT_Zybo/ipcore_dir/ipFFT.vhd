--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: ipFFT.vhd
-- /___/   /\     Timestamp: Thu Oct 16 17:09:52 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl C:/Users/Ivan/Documents/GitHub/Electronica-6/Practica8_FFT_Zybo/ipcore_dir/tmp/_cg/ipFFT.ngc C:/Users/Ivan/Documents/GitHub/Electronica-6/Practica8_FFT_Zybo/ipcore_dir/tmp/_cg/ipFFT.vhd 
-- Device	: 7z010clg400-1
-- Input file	: C:/Users/Ivan/Documents/GitHub/Electronica-6/Practica8_FFT_Zybo/ipcore_dir/tmp/_cg/ipFFT.ngc
-- Output file	: C:/Users/Ivan/Documents/GitHub/Electronica-6/Practica8_FFT_Zybo/ipcore_dir/tmp/_cg/ipFFT.vhd
-- # of Entities	: 1
-- Design Name	: ipFFT
-- Xilinx	: C:\Xilinx\14.5\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ipFFT is
  port (
    clk : in STD_LOGIC := 'X'; 
    ce : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    unload : in STD_LOGIC := 'X'; 
    fwd_inv : in STD_LOGIC := 'X'; 
    fwd_inv_we : in STD_LOGIC := 'X'; 
    scale_sch_we : in STD_LOGIC := 'X'; 
    rfd : out STD_LOGIC; 
    busy : out STD_LOGIC; 
    edone : out STD_LOGIC; 
    done : out STD_LOGIC; 
    dv : out STD_LOGIC; 
    xn_re : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    xn_im : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    scale_sch : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    xn_index : out STD_LOGIC_VECTOR ( 9 downto 0 ); 
    xk_index : out STD_LOGIC_VECTOR ( 9 downto 0 ); 
    xk_re : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    xk_im : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ipFFT;

architecture STRUCTURE of ipFFT is
  signal NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i : STD_LOGIC; 
  signal U0_i_synth_non_floating_point_arch_e_xfft_inst_control_busy_i_reg2 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_run_addr_gen_done_int2 : STD_LOGIC; 
  signal U0_i_synth_non_floating_point_arch_e_xfft_inst_control_done_i_reg : STD_LOGIC; 
  signal U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_dv_d : STD_LOGIC; 
  signal sig00000001 : STD_LOGIC; 
  signal sig00000002 : STD_LOGIC; 
  signal sig00000003 : STD_LOGIC; 
  signal sig00000004 : STD_LOGIC; 
  signal sig00000005 : STD_LOGIC; 
  signal sig00000006 : STD_LOGIC; 
  signal sig00000007 : STD_LOGIC; 
  signal sig00000008 : STD_LOGIC; 
  signal sig00000009 : STD_LOGIC; 
  signal sig0000000a : STD_LOGIC; 
  signal sig0000000b : STD_LOGIC; 
  signal sig0000000c : STD_LOGIC; 
  signal sig0000000d : STD_LOGIC; 
  signal sig0000000e : STD_LOGIC; 
  signal sig0000000f : STD_LOGIC; 
  signal sig00000010 : STD_LOGIC; 
  signal sig00000011 : STD_LOGIC; 
  signal sig00000012 : STD_LOGIC; 
  signal sig00000013 : STD_LOGIC; 
  signal sig00000014 : STD_LOGIC; 
  signal sig00000015 : STD_LOGIC; 
  signal sig00000016 : STD_LOGIC; 
  signal sig00000017 : STD_LOGIC; 
  signal sig00000018 : STD_LOGIC; 
  signal sig00000019 : STD_LOGIC; 
  signal sig0000001a : STD_LOGIC; 
  signal sig0000001b : STD_LOGIC; 
  signal sig0000001c : STD_LOGIC; 
  signal sig0000001d : STD_LOGIC; 
  signal sig0000001e : STD_LOGIC; 
  signal sig0000001f : STD_LOGIC; 
  signal sig00000020 : STD_LOGIC; 
  signal sig00000021 : STD_LOGIC; 
  signal sig00000022 : STD_LOGIC; 
  signal sig00000023 : STD_LOGIC; 
  signal sig00000024 : STD_LOGIC; 
  signal sig00000025 : STD_LOGIC; 
  signal sig00000026 : STD_LOGIC; 
  signal sig00000027 : STD_LOGIC; 
  signal sig00000028 : STD_LOGIC; 
  signal sig00000029 : STD_LOGIC; 
  signal sig0000002a : STD_LOGIC; 
  signal sig0000002b : STD_LOGIC; 
  signal sig0000002c : STD_LOGIC; 
  signal sig0000002d : STD_LOGIC; 
  signal sig0000002e : STD_LOGIC; 
  signal sig0000002f : STD_LOGIC; 
  signal sig00000030 : STD_LOGIC; 
  signal sig00000031 : STD_LOGIC; 
  signal sig00000032 : STD_LOGIC; 
  signal sig00000033 : STD_LOGIC; 
  signal sig00000034 : STD_LOGIC; 
  signal sig00000035 : STD_LOGIC; 
  signal sig00000036 : STD_LOGIC; 
  signal sig00000037 : STD_LOGIC; 
  signal sig00000038 : STD_LOGIC; 
  signal sig00000039 : STD_LOGIC; 
  signal sig0000003a : STD_LOGIC; 
  signal sig0000003b : STD_LOGIC; 
  signal sig0000003c : STD_LOGIC; 
  signal sig0000003d : STD_LOGIC; 
  signal sig0000003e : STD_LOGIC; 
  signal sig0000003f : STD_LOGIC; 
  signal sig00000040 : STD_LOGIC; 
  signal sig00000041 : STD_LOGIC; 
  signal sig00000042 : STD_LOGIC; 
  signal sig00000043 : STD_LOGIC; 
  signal sig00000044 : STD_LOGIC; 
  signal sig00000045 : STD_LOGIC; 
  signal sig00000046 : STD_LOGIC; 
  signal sig00000047 : STD_LOGIC; 
  signal sig00000048 : STD_LOGIC; 
  signal sig00000049 : STD_LOGIC; 
  signal sig0000004a : STD_LOGIC; 
  signal sig0000004b : STD_LOGIC; 
  signal sig0000004c : STD_LOGIC; 
  signal sig0000004d : STD_LOGIC; 
  signal sig0000004e : STD_LOGIC; 
  signal sig0000004f : STD_LOGIC; 
  signal sig00000050 : STD_LOGIC; 
  signal sig00000051 : STD_LOGIC; 
  signal sig00000052 : STD_LOGIC; 
  signal sig00000053 : STD_LOGIC; 
  signal sig00000054 : STD_LOGIC; 
  signal sig00000055 : STD_LOGIC; 
  signal sig00000056 : STD_LOGIC; 
  signal sig00000057 : STD_LOGIC; 
  signal sig00000058 : STD_LOGIC; 
  signal sig00000059 : STD_LOGIC; 
  signal sig0000005a : STD_LOGIC; 
  signal sig0000005b : STD_LOGIC; 
  signal sig0000005c : STD_LOGIC; 
  signal sig0000005d : STD_LOGIC; 
  signal sig0000005e : STD_LOGIC; 
  signal sig0000005f : STD_LOGIC; 
  signal sig00000060 : STD_LOGIC; 
  signal sig00000061 : STD_LOGIC; 
  signal sig00000062 : STD_LOGIC; 
  signal sig00000063 : STD_LOGIC; 
  signal sig00000064 : STD_LOGIC; 
  signal sig00000065 : STD_LOGIC; 
  signal sig00000066 : STD_LOGIC; 
  signal sig00000067 : STD_LOGIC; 
  signal sig00000068 : STD_LOGIC; 
  signal sig00000069 : STD_LOGIC; 
  signal sig0000006a : STD_LOGIC; 
  signal sig0000006b : STD_LOGIC; 
  signal sig0000006c : STD_LOGIC; 
  signal sig0000006d : STD_LOGIC; 
  signal sig0000006e : STD_LOGIC; 
  signal sig0000006f : STD_LOGIC; 
  signal sig00000070 : STD_LOGIC; 
  signal sig00000071 : STD_LOGIC; 
  signal sig00000072 : STD_LOGIC; 
  signal sig00000073 : STD_LOGIC; 
  signal sig00000074 : STD_LOGIC; 
  signal sig00000075 : STD_LOGIC; 
  signal sig00000076 : STD_LOGIC; 
  signal sig00000077 : STD_LOGIC; 
  signal sig00000078 : STD_LOGIC; 
  signal sig00000079 : STD_LOGIC; 
  signal sig0000007a : STD_LOGIC; 
  signal sig0000007b : STD_LOGIC; 
  signal sig0000007c : STD_LOGIC; 
  signal sig0000007d : STD_LOGIC; 
  signal sig0000007e : STD_LOGIC; 
  signal sig0000007f : STD_LOGIC; 
  signal sig00000080 : STD_LOGIC; 
  signal sig00000081 : STD_LOGIC; 
  signal sig00000082 : STD_LOGIC; 
  signal sig00000083 : STD_LOGIC; 
  signal sig00000084 : STD_LOGIC; 
  signal sig00000085 : STD_LOGIC; 
  signal sig00000086 : STD_LOGIC; 
  signal sig00000087 : STD_LOGIC; 
  signal sig00000088 : STD_LOGIC; 
  signal sig00000089 : STD_LOGIC; 
  signal sig0000008a : STD_LOGIC; 
  signal sig0000008b : STD_LOGIC; 
  signal sig0000008c : STD_LOGIC; 
  signal sig0000008d : STD_LOGIC; 
  signal sig0000008e : STD_LOGIC; 
  signal sig0000008f : STD_LOGIC; 
  signal sig00000090 : STD_LOGIC; 
  signal sig00000091 : STD_LOGIC; 
  signal sig00000092 : STD_LOGIC; 
  signal sig00000093 : STD_LOGIC; 
  signal sig00000094 : STD_LOGIC; 
  signal sig00000095 : STD_LOGIC; 
  signal sig00000096 : STD_LOGIC; 
  signal sig00000097 : STD_LOGIC; 
  signal sig00000098 : STD_LOGIC; 
  signal sig00000099 : STD_LOGIC; 
  signal sig0000009a : STD_LOGIC; 
  signal sig0000009b : STD_LOGIC; 
  signal sig0000009c : STD_LOGIC; 
  signal sig0000009d : STD_LOGIC; 
  signal sig0000009e : STD_LOGIC; 
  signal sig0000009f : STD_LOGIC; 
  signal sig000000a0 : STD_LOGIC; 
  signal sig000000a1 : STD_LOGIC; 
  signal sig000000a2 : STD_LOGIC; 
  signal sig000000a3 : STD_LOGIC; 
  signal sig000000a4 : STD_LOGIC; 
  signal sig000000a5 : STD_LOGIC; 
  signal sig000000a6 : STD_LOGIC; 
  signal sig000000a7 : STD_LOGIC; 
  signal sig000000a8 : STD_LOGIC; 
  signal sig000000a9 : STD_LOGIC; 
  signal sig000000aa : STD_LOGIC; 
  signal sig000000ab : STD_LOGIC; 
  signal sig000000ac : STD_LOGIC; 
  signal sig000000ad : STD_LOGIC; 
  signal sig000000ae : STD_LOGIC; 
  signal sig000000af : STD_LOGIC; 
  signal sig000000b0 : STD_LOGIC; 
  signal sig000000b1 : STD_LOGIC; 
  signal sig000000b2 : STD_LOGIC; 
  signal sig000000b3 : STD_LOGIC; 
  signal sig000000b4 : STD_LOGIC; 
  signal sig000000b5 : STD_LOGIC; 
  signal sig000000b6 : STD_LOGIC; 
  signal sig000000b7 : STD_LOGIC; 
  signal sig000000b8 : STD_LOGIC; 
  signal sig000000b9 : STD_LOGIC; 
  signal sig000000ba : STD_LOGIC; 
  signal sig000000bb : STD_LOGIC; 
  signal sig000000bc : STD_LOGIC; 
  signal sig000000bd : STD_LOGIC; 
  signal sig000000be : STD_LOGIC; 
  signal sig000000bf : STD_LOGIC; 
  signal sig000000c0 : STD_LOGIC; 
  signal sig000000c1 : STD_LOGIC; 
  signal sig000000c2 : STD_LOGIC; 
  signal sig000000c3 : STD_LOGIC; 
  signal sig000000c4 : STD_LOGIC; 
  signal sig000000c5 : STD_LOGIC; 
  signal sig000000c6 : STD_LOGIC; 
  signal sig000000c7 : STD_LOGIC; 
  signal sig000000c8 : STD_LOGIC; 
  signal sig000000c9 : STD_LOGIC; 
  signal sig000000ca : STD_LOGIC; 
  signal sig000000cb : STD_LOGIC; 
  signal sig000000cc : STD_LOGIC; 
  signal sig000000cd : STD_LOGIC; 
  signal sig000000ce : STD_LOGIC; 
  signal sig000000cf : STD_LOGIC; 
  signal sig000000d0 : STD_LOGIC; 
  signal sig000000d1 : STD_LOGIC; 
  signal sig000000d2 : STD_LOGIC; 
  signal sig000000d3 : STD_LOGIC; 
  signal sig000000d4 : STD_LOGIC; 
  signal sig000000d5 : STD_LOGIC; 
  signal sig000000d6 : STD_LOGIC; 
  signal sig000000d7 : STD_LOGIC; 
  signal sig000000d8 : STD_LOGIC; 
  signal sig000000d9 : STD_LOGIC; 
  signal sig000000da : STD_LOGIC; 
  signal sig000000db : STD_LOGIC; 
  signal sig000000dc : STD_LOGIC; 
  signal sig000000dd : STD_LOGIC; 
  signal sig000000de : STD_LOGIC; 
  signal sig000000df : STD_LOGIC; 
  signal sig000000e0 : STD_LOGIC; 
  signal sig000000e1 : STD_LOGIC; 
  signal sig000000e2 : STD_LOGIC; 
  signal sig000000e3 : STD_LOGIC; 
  signal sig000000e4 : STD_LOGIC; 
  signal sig000000e5 : STD_LOGIC; 
  signal sig000000e6 : STD_LOGIC; 
  signal sig000000e7 : STD_LOGIC; 
  signal sig000000e8 : STD_LOGIC; 
  signal sig000000e9 : STD_LOGIC; 
  signal sig000000ea : STD_LOGIC; 
  signal sig000000eb : STD_LOGIC; 
  signal sig000000ec : STD_LOGIC; 
  signal sig000000ed : STD_LOGIC; 
  signal sig000000ee : STD_LOGIC; 
  signal sig000000ef : STD_LOGIC; 
  signal sig000000f0 : STD_LOGIC; 
  signal sig000000f1 : STD_LOGIC; 
  signal sig000000f2 : STD_LOGIC; 
  signal sig000000f3 : STD_LOGIC; 
  signal sig000000f4 : STD_LOGIC; 
  signal sig000000f5 : STD_LOGIC; 
  signal sig000000f6 : STD_LOGIC; 
  signal sig000000f7 : STD_LOGIC; 
  signal sig000000f8 : STD_LOGIC; 
  signal sig000000f9 : STD_LOGIC; 
  signal sig000000fa : STD_LOGIC; 
  signal sig000000fb : STD_LOGIC; 
  signal sig000000fc : STD_LOGIC; 
  signal sig000000fd : STD_LOGIC; 
  signal sig000000fe : STD_LOGIC; 
  signal sig000000ff : STD_LOGIC; 
  signal sig00000100 : STD_LOGIC; 
  signal sig00000101 : STD_LOGIC; 
  signal sig00000102 : STD_LOGIC; 
  signal sig00000103 : STD_LOGIC; 
  signal sig00000104 : STD_LOGIC; 
  signal sig00000105 : STD_LOGIC; 
  signal sig00000106 : STD_LOGIC; 
  signal sig00000107 : STD_LOGIC; 
  signal sig00000108 : STD_LOGIC; 
  signal sig00000109 : STD_LOGIC; 
  signal sig0000010a : STD_LOGIC; 
  signal sig0000010b : STD_LOGIC; 
  signal sig0000010c : STD_LOGIC; 
  signal sig0000010d : STD_LOGIC; 
  signal sig0000010e : STD_LOGIC; 
  signal sig0000010f : STD_LOGIC; 
  signal sig00000110 : STD_LOGIC; 
  signal sig00000111 : STD_LOGIC; 
  signal sig00000112 : STD_LOGIC; 
  signal sig00000113 : STD_LOGIC; 
  signal sig00000114 : STD_LOGIC; 
  signal sig00000115 : STD_LOGIC; 
  signal sig00000116 : STD_LOGIC; 
  signal sig00000117 : STD_LOGIC; 
  signal sig00000118 : STD_LOGIC; 
  signal sig00000119 : STD_LOGIC; 
  signal sig0000011a : STD_LOGIC; 
  signal sig0000011b : STD_LOGIC; 
  signal sig0000011c : STD_LOGIC; 
  signal sig0000011d : STD_LOGIC; 
  signal sig0000011e : STD_LOGIC; 
  signal sig0000011f : STD_LOGIC; 
  signal sig00000120 : STD_LOGIC; 
  signal sig00000121 : STD_LOGIC; 
  signal sig00000122 : STD_LOGIC; 
  signal sig00000123 : STD_LOGIC; 
  signal sig00000124 : STD_LOGIC; 
  signal sig00000125 : STD_LOGIC; 
  signal sig00000126 : STD_LOGIC; 
  signal sig00000127 : STD_LOGIC; 
  signal sig00000128 : STD_LOGIC; 
  signal sig00000129 : STD_LOGIC; 
  signal sig0000012a : STD_LOGIC; 
  signal sig0000012b : STD_LOGIC; 
  signal sig0000012c : STD_LOGIC; 
  signal sig0000012d : STD_LOGIC; 
  signal sig0000012e : STD_LOGIC; 
  signal sig0000012f : STD_LOGIC; 
  signal sig00000130 : STD_LOGIC; 
  signal sig00000131 : STD_LOGIC; 
  signal sig00000132 : STD_LOGIC; 
  signal sig00000133 : STD_LOGIC; 
  signal sig00000134 : STD_LOGIC; 
  signal sig00000135 : STD_LOGIC; 
  signal sig00000136 : STD_LOGIC; 
  signal sig00000137 : STD_LOGIC; 
  signal sig00000138 : STD_LOGIC; 
  signal sig00000139 : STD_LOGIC; 
  signal sig0000013a : STD_LOGIC; 
  signal sig0000013b : STD_LOGIC; 
  signal sig0000013c : STD_LOGIC; 
  signal sig0000013d : STD_LOGIC; 
  signal sig0000013e : STD_LOGIC; 
  signal sig0000013f : STD_LOGIC; 
  signal sig00000140 : STD_LOGIC; 
  signal sig00000141 : STD_LOGIC; 
  signal sig00000142 : STD_LOGIC; 
  signal sig00000143 : STD_LOGIC; 
  signal sig00000144 : STD_LOGIC; 
  signal sig00000145 : STD_LOGIC; 
  signal sig00000146 : STD_LOGIC; 
  signal sig00000147 : STD_LOGIC; 
  signal sig00000148 : STD_LOGIC; 
  signal sig00000149 : STD_LOGIC; 
  signal sig0000014a : STD_LOGIC; 
  signal sig0000014b : STD_LOGIC; 
  signal sig0000014c : STD_LOGIC; 
  signal sig0000014d : STD_LOGIC; 
  signal sig0000014e : STD_LOGIC; 
  signal sig0000014f : STD_LOGIC; 
  signal sig00000150 : STD_LOGIC; 
  signal sig00000151 : STD_LOGIC; 
  signal sig00000152 : STD_LOGIC; 
  signal sig00000153 : STD_LOGIC; 
  signal sig00000154 : STD_LOGIC; 
  signal sig00000155 : STD_LOGIC; 
  signal sig00000156 : STD_LOGIC; 
  signal sig00000157 : STD_LOGIC; 
  signal sig00000158 : STD_LOGIC; 
  signal sig00000159 : STD_LOGIC; 
  signal sig0000015a : STD_LOGIC; 
  signal sig0000015b : STD_LOGIC; 
  signal sig0000015c : STD_LOGIC; 
  signal sig0000015d : STD_LOGIC; 
  signal sig0000015e : STD_LOGIC; 
  signal sig0000015f : STD_LOGIC; 
  signal sig00000160 : STD_LOGIC; 
  signal sig00000161 : STD_LOGIC; 
  signal sig00000162 : STD_LOGIC; 
  signal sig00000163 : STD_LOGIC; 
  signal sig00000164 : STD_LOGIC; 
  signal sig00000165 : STD_LOGIC; 
  signal sig00000166 : STD_LOGIC; 
  signal sig00000167 : STD_LOGIC; 
  signal sig00000168 : STD_LOGIC; 
  signal sig00000169 : STD_LOGIC; 
  signal sig0000016a : STD_LOGIC; 
  signal sig0000016b : STD_LOGIC; 
  signal sig0000016c : STD_LOGIC; 
  signal sig0000016d : STD_LOGIC; 
  signal sig0000016e : STD_LOGIC; 
  signal sig0000016f : STD_LOGIC; 
  signal sig00000170 : STD_LOGIC; 
  signal sig00000171 : STD_LOGIC; 
  signal sig00000172 : STD_LOGIC; 
  signal sig00000173 : STD_LOGIC; 
  signal sig00000174 : STD_LOGIC; 
  signal sig00000175 : STD_LOGIC; 
  signal sig00000176 : STD_LOGIC; 
  signal sig00000177 : STD_LOGIC; 
  signal sig00000178 : STD_LOGIC; 
  signal sig00000179 : STD_LOGIC; 
  signal sig0000017a : STD_LOGIC; 
  signal sig0000017b : STD_LOGIC; 
  signal sig0000017c : STD_LOGIC; 
  signal sig0000017d : STD_LOGIC; 
  signal sig0000017e : STD_LOGIC; 
  signal sig0000017f : STD_LOGIC; 
  signal sig00000180 : STD_LOGIC; 
  signal sig00000181 : STD_LOGIC; 
  signal sig00000182 : STD_LOGIC; 
  signal sig00000183 : STD_LOGIC; 
  signal sig00000184 : STD_LOGIC; 
  signal sig00000185 : STD_LOGIC; 
  signal sig00000186 : STD_LOGIC; 
  signal sig00000187 : STD_LOGIC; 
  signal sig00000188 : STD_LOGIC; 
  signal sig00000189 : STD_LOGIC; 
  signal sig0000018a : STD_LOGIC; 
  signal sig0000018b : STD_LOGIC; 
  signal sig0000018c : STD_LOGIC; 
  signal sig0000018d : STD_LOGIC; 
  signal sig0000018e : STD_LOGIC; 
  signal sig0000018f : STD_LOGIC; 
  signal sig00000190 : STD_LOGIC; 
  signal sig00000191 : STD_LOGIC; 
  signal sig00000192 : STD_LOGIC; 
  signal sig00000193 : STD_LOGIC; 
  signal sig00000194 : STD_LOGIC; 
  signal sig00000195 : STD_LOGIC; 
  signal sig00000196 : STD_LOGIC; 
  signal sig00000197 : STD_LOGIC; 
  signal sig00000198 : STD_LOGIC; 
  signal sig00000199 : STD_LOGIC; 
  signal sig0000019a : STD_LOGIC; 
  signal sig0000019b : STD_LOGIC; 
  signal sig0000019c : STD_LOGIC; 
  signal sig0000019d : STD_LOGIC; 
  signal sig0000019e : STD_LOGIC; 
  signal sig0000019f : STD_LOGIC; 
  signal sig000001a0 : STD_LOGIC; 
  signal sig000001a1 : STD_LOGIC; 
  signal sig000001a2 : STD_LOGIC; 
  signal sig000001a3 : STD_LOGIC; 
  signal sig000001a4 : STD_LOGIC; 
  signal sig000001a5 : STD_LOGIC; 
  signal sig000001a6 : STD_LOGIC; 
  signal sig000001a7 : STD_LOGIC; 
  signal sig000001a8 : STD_LOGIC; 
  signal sig000001a9 : STD_LOGIC; 
  signal sig000001aa : STD_LOGIC; 
  signal sig000001ab : STD_LOGIC; 
  signal sig000001ac : STD_LOGIC; 
  signal sig000001ad : STD_LOGIC; 
  signal sig000001ae : STD_LOGIC; 
  signal sig000001af : STD_LOGIC; 
  signal sig000001b0 : STD_LOGIC; 
  signal sig000001b1 : STD_LOGIC; 
  signal sig000001b2 : STD_LOGIC; 
  signal sig000001b3 : STD_LOGIC; 
  signal sig000001b4 : STD_LOGIC; 
  signal sig000001b5 : STD_LOGIC; 
  signal sig000001b6 : STD_LOGIC; 
  signal sig000001b7 : STD_LOGIC; 
  signal sig000001b8 : STD_LOGIC; 
  signal sig000001b9 : STD_LOGIC; 
  signal sig000001ba : STD_LOGIC; 
  signal sig000001bb : STD_LOGIC; 
  signal sig000001bc : STD_LOGIC; 
  signal sig000001bd : STD_LOGIC; 
  signal sig000001be : STD_LOGIC; 
  signal sig000001bf : STD_LOGIC; 
  signal sig000001c0 : STD_LOGIC; 
  signal sig000001c1 : STD_LOGIC; 
  signal sig000001c2 : STD_LOGIC; 
  signal sig000001c3 : STD_LOGIC; 
  signal sig000001c4 : STD_LOGIC; 
  signal sig000001c5 : STD_LOGIC; 
  signal sig000001c6 : STD_LOGIC; 
  signal sig000001c7 : STD_LOGIC; 
  signal sig000001c8 : STD_LOGIC; 
  signal sig000001c9 : STD_LOGIC; 
  signal sig000001ca : STD_LOGIC; 
  signal sig000001cb : STD_LOGIC; 
  signal sig000001cc : STD_LOGIC; 
  signal sig000001cd : STD_LOGIC; 
  signal sig000001ce : STD_LOGIC; 
  signal sig000001cf : STD_LOGIC; 
  signal sig000001d0 : STD_LOGIC; 
  signal sig000001d1 : STD_LOGIC; 
  signal sig000001d2 : STD_LOGIC; 
  signal sig000001d3 : STD_LOGIC; 
  signal sig000001d4 : STD_LOGIC; 
  signal sig000001d5 : STD_LOGIC; 
  signal sig000001d6 : STD_LOGIC; 
  signal sig000001d7 : STD_LOGIC; 
  signal sig000001d8 : STD_LOGIC; 
  signal sig000001d9 : STD_LOGIC; 
  signal sig000001da : STD_LOGIC; 
  signal sig000001db : STD_LOGIC; 
  signal sig000001dc : STD_LOGIC; 
  signal sig000001dd : STD_LOGIC; 
  signal sig000001de : STD_LOGIC; 
  signal sig000001df : STD_LOGIC; 
  signal sig000001e0 : STD_LOGIC; 
  signal sig000001e1 : STD_LOGIC; 
  signal sig000001e2 : STD_LOGIC; 
  signal sig000001e3 : STD_LOGIC; 
  signal sig000001e4 : STD_LOGIC; 
  signal sig000001e5 : STD_LOGIC; 
  signal sig000001e6 : STD_LOGIC; 
  signal sig000001e7 : STD_LOGIC; 
  signal sig000001e8 : STD_LOGIC; 
  signal sig000001e9 : STD_LOGIC; 
  signal sig000001ea : STD_LOGIC; 
  signal sig000001eb : STD_LOGIC; 
  signal sig000001ec : STD_LOGIC; 
  signal sig000001ed : STD_LOGIC; 
  signal sig000001ee : STD_LOGIC; 
  signal sig000001ef : STD_LOGIC; 
  signal sig000001f0 : STD_LOGIC; 
  signal sig000001f1 : STD_LOGIC; 
  signal sig000001f2 : STD_LOGIC; 
  signal sig000001f3 : STD_LOGIC; 
  signal sig000001f4 : STD_LOGIC; 
  signal sig000001f5 : STD_LOGIC; 
  signal sig000001f6 : STD_LOGIC; 
  signal sig000001f7 : STD_LOGIC; 
  signal sig000001f8 : STD_LOGIC; 
  signal sig000001f9 : STD_LOGIC; 
  signal sig000001fa : STD_LOGIC; 
  signal sig000001fb : STD_LOGIC; 
  signal sig000001fc : STD_LOGIC; 
  signal sig000001fd : STD_LOGIC; 
  signal sig000001fe : STD_LOGIC; 
  signal sig000001ff : STD_LOGIC; 
  signal sig00000200 : STD_LOGIC; 
  signal sig00000201 : STD_LOGIC; 
  signal sig00000202 : STD_LOGIC; 
  signal sig00000203 : STD_LOGIC; 
  signal sig00000204 : STD_LOGIC; 
  signal sig00000205 : STD_LOGIC; 
  signal sig00000206 : STD_LOGIC; 
  signal sig00000207 : STD_LOGIC; 
  signal sig00000208 : STD_LOGIC; 
  signal sig00000209 : STD_LOGIC; 
  signal sig0000020a : STD_LOGIC; 
  signal sig0000020b : STD_LOGIC; 
  signal sig0000020c : STD_LOGIC; 
  signal sig0000020d : STD_LOGIC; 
  signal sig0000020e : STD_LOGIC; 
  signal sig0000020f : STD_LOGIC; 
  signal sig00000210 : STD_LOGIC; 
  signal sig00000211 : STD_LOGIC; 
  signal sig00000212 : STD_LOGIC; 
  signal sig00000213 : STD_LOGIC; 
  signal sig00000214 : STD_LOGIC; 
  signal sig00000215 : STD_LOGIC; 
  signal sig00000216 : STD_LOGIC; 
  signal sig00000217 : STD_LOGIC; 
  signal sig00000218 : STD_LOGIC; 
  signal sig00000219 : STD_LOGIC; 
  signal sig0000021a : STD_LOGIC; 
  signal sig0000021b : STD_LOGIC; 
  signal sig0000021c : STD_LOGIC; 
  signal sig0000021d : STD_LOGIC; 
  signal sig0000021e : STD_LOGIC; 
  signal sig0000021f : STD_LOGIC; 
  signal sig00000220 : STD_LOGIC; 
  signal sig00000221 : STD_LOGIC; 
  signal sig00000222 : STD_LOGIC; 
  signal sig00000223 : STD_LOGIC; 
  signal sig00000224 : STD_LOGIC; 
  signal sig00000225 : STD_LOGIC; 
  signal sig00000226 : STD_LOGIC; 
  signal sig00000227 : STD_LOGIC; 
  signal sig00000228 : STD_LOGIC; 
  signal sig00000229 : STD_LOGIC; 
  signal sig0000022a : STD_LOGIC; 
  signal sig0000022b : STD_LOGIC; 
  signal sig0000022c : STD_LOGIC; 
  signal sig0000022d : STD_LOGIC; 
  signal sig0000022e : STD_LOGIC; 
  signal sig0000022f : STD_LOGIC; 
  signal sig00000230 : STD_LOGIC; 
  signal sig00000231 : STD_LOGIC; 
  signal sig00000232 : STD_LOGIC; 
  signal sig00000233 : STD_LOGIC; 
  signal sig00000234 : STD_LOGIC; 
  signal sig00000235 : STD_LOGIC; 
  signal sig00000236 : STD_LOGIC; 
  signal sig00000237 : STD_LOGIC; 
  signal sig00000238 : STD_LOGIC; 
  signal sig00000239 : STD_LOGIC; 
  signal sig0000023a : STD_LOGIC; 
  signal sig0000023b : STD_LOGIC; 
  signal sig0000023c : STD_LOGIC; 
  signal sig0000023d : STD_LOGIC; 
  signal sig0000023e : STD_LOGIC; 
  signal sig0000023f : STD_LOGIC; 
  signal sig00000240 : STD_LOGIC; 
  signal sig00000241 : STD_LOGIC; 
  signal sig00000242 : STD_LOGIC; 
  signal sig00000243 : STD_LOGIC; 
  signal sig00000244 : STD_LOGIC; 
  signal sig00000245 : STD_LOGIC; 
  signal sig00000246 : STD_LOGIC; 
  signal sig00000247 : STD_LOGIC; 
  signal sig00000248 : STD_LOGIC; 
  signal sig00000249 : STD_LOGIC; 
  signal sig0000024a : STD_LOGIC; 
  signal sig0000024b : STD_LOGIC; 
  signal sig0000024c : STD_LOGIC; 
  signal sig0000024d : STD_LOGIC; 
  signal sig0000024e : STD_LOGIC; 
  signal sig0000024f : STD_LOGIC; 
  signal sig00000250 : STD_LOGIC; 
  signal sig00000251 : STD_LOGIC; 
  signal sig00000252 : STD_LOGIC; 
  signal sig00000253 : STD_LOGIC; 
  signal sig00000254 : STD_LOGIC; 
  signal sig00000255 : STD_LOGIC; 
  signal sig00000256 : STD_LOGIC; 
  signal sig00000257 : STD_LOGIC; 
  signal sig00000258 : STD_LOGIC; 
  signal sig00000259 : STD_LOGIC; 
  signal sig0000025a : STD_LOGIC; 
  signal sig0000025b : STD_LOGIC; 
  signal sig0000025c : STD_LOGIC; 
  signal sig0000025d : STD_LOGIC; 
  signal sig0000025e : STD_LOGIC; 
  signal sig0000025f : STD_LOGIC; 
  signal sig00000260 : STD_LOGIC; 
  signal sig00000261 : STD_LOGIC; 
  signal sig00000262 : STD_LOGIC; 
  signal sig00000263 : STD_LOGIC; 
  signal sig00000264 : STD_LOGIC; 
  signal sig00000265 : STD_LOGIC; 
  signal sig00000266 : STD_LOGIC; 
  signal sig00000267 : STD_LOGIC; 
  signal sig00000268 : STD_LOGIC; 
  signal sig00000269 : STD_LOGIC; 
  signal sig0000026a : STD_LOGIC; 
  signal sig0000026b : STD_LOGIC; 
  signal sig0000026c : STD_LOGIC; 
  signal sig0000026d : STD_LOGIC; 
  signal sig0000026e : STD_LOGIC; 
  signal sig0000026f : STD_LOGIC; 
  signal sig00000270 : STD_LOGIC; 
  signal sig00000271 : STD_LOGIC; 
  signal sig00000272 : STD_LOGIC; 
  signal sig00000273 : STD_LOGIC; 
  signal sig00000274 : STD_LOGIC; 
  signal sig00000275 : STD_LOGIC; 
  signal sig00000276 : STD_LOGIC; 
  signal sig00000277 : STD_LOGIC; 
  signal sig00000278 : STD_LOGIC; 
  signal sig00000279 : STD_LOGIC; 
  signal sig0000027a : STD_LOGIC; 
  signal sig0000027b : STD_LOGIC; 
  signal sig0000027c : STD_LOGIC; 
  signal sig0000027d : STD_LOGIC; 
  signal sig0000027e : STD_LOGIC; 
  signal sig0000027f : STD_LOGIC; 
  signal sig00000280 : STD_LOGIC; 
  signal sig00000281 : STD_LOGIC; 
  signal sig00000282 : STD_LOGIC; 
  signal sig00000283 : STD_LOGIC; 
  signal sig00000284 : STD_LOGIC; 
  signal sig00000285 : STD_LOGIC; 
  signal sig00000286 : STD_LOGIC; 
  signal sig00000287 : STD_LOGIC; 
  signal sig00000288 : STD_LOGIC; 
  signal sig00000289 : STD_LOGIC; 
  signal sig0000028a : STD_LOGIC; 
  signal sig0000028b : STD_LOGIC; 
  signal sig0000028c : STD_LOGIC; 
  signal sig0000028d : STD_LOGIC; 
  signal sig0000028e : STD_LOGIC; 
  signal sig0000028f : STD_LOGIC; 
  signal sig00000290 : STD_LOGIC; 
  signal sig00000291 : STD_LOGIC; 
  signal sig00000292 : STD_LOGIC; 
  signal sig00000293 : STD_LOGIC; 
  signal sig00000294 : STD_LOGIC; 
  signal sig00000295 : STD_LOGIC; 
  signal sig00000296 : STD_LOGIC; 
  signal sig00000297 : STD_LOGIC; 
  signal sig00000298 : STD_LOGIC; 
  signal sig00000299 : STD_LOGIC; 
  signal sig0000029a : STD_LOGIC; 
  signal sig0000029b : STD_LOGIC; 
  signal sig0000029c : STD_LOGIC; 
  signal sig0000029d : STD_LOGIC; 
  signal sig0000029e : STD_LOGIC; 
  signal sig0000029f : STD_LOGIC; 
  signal sig000002a0 : STD_LOGIC; 
  signal sig000002a1 : STD_LOGIC; 
  signal sig000002a2 : STD_LOGIC; 
  signal sig000002a3 : STD_LOGIC; 
  signal sig000002a4 : STD_LOGIC; 
  signal sig000002a5 : STD_LOGIC; 
  signal sig000002a6 : STD_LOGIC; 
  signal sig000002a7 : STD_LOGIC; 
  signal sig000002a8 : STD_LOGIC; 
  signal sig000002a9 : STD_LOGIC; 
  signal sig000002aa : STD_LOGIC; 
  signal sig000002ab : STD_LOGIC; 
  signal sig000002ac : STD_LOGIC; 
  signal sig000002ad : STD_LOGIC; 
  signal sig000002ae : STD_LOGIC; 
  signal sig000002af : STD_LOGIC; 
  signal sig000002b0 : STD_LOGIC; 
  signal sig000002b1 : STD_LOGIC; 
  signal sig000002b2 : STD_LOGIC; 
  signal sig000002b3 : STD_LOGIC; 
  signal sig000002b4 : STD_LOGIC; 
  signal sig000002b5 : STD_LOGIC; 
  signal sig000002b6 : STD_LOGIC; 
  signal sig000002b7 : STD_LOGIC; 
  signal sig000002b8 : STD_LOGIC; 
  signal sig000002b9 : STD_LOGIC; 
  signal sig000002ba : STD_LOGIC; 
  signal sig000002bb : STD_LOGIC; 
  signal sig000002bc : STD_LOGIC; 
  signal sig000002bd : STD_LOGIC; 
  signal sig000002be : STD_LOGIC; 
  signal sig000002bf : STD_LOGIC; 
  signal sig000002c0 : STD_LOGIC; 
  signal sig000002c1 : STD_LOGIC; 
  signal sig000002c2 : STD_LOGIC; 
  signal sig000002c3 : STD_LOGIC; 
  signal sig000002c4 : STD_LOGIC; 
  signal sig000002c5 : STD_LOGIC; 
  signal sig000002c6 : STD_LOGIC; 
  signal sig000002c7 : STD_LOGIC; 
  signal sig000002c8 : STD_LOGIC; 
  signal sig000002c9 : STD_LOGIC; 
  signal sig000002ca : STD_LOGIC; 
  signal sig000002cb : STD_LOGIC; 
  signal sig000002cc : STD_LOGIC; 
  signal sig000002cd : STD_LOGIC; 
  signal sig000002ce : STD_LOGIC; 
  signal sig000002cf : STD_LOGIC; 
  signal sig000002d0 : STD_LOGIC; 
  signal sig000002d1 : STD_LOGIC; 
  signal sig000002d2 : STD_LOGIC; 
  signal sig000002d3 : STD_LOGIC; 
  signal sig000002d4 : STD_LOGIC; 
  signal sig000002d5 : STD_LOGIC; 
  signal sig000002d6 : STD_LOGIC; 
  signal sig000002d7 : STD_LOGIC; 
  signal sig000002d8 : STD_LOGIC; 
  signal sig000002d9 : STD_LOGIC; 
  signal sig000002da : STD_LOGIC; 
  signal sig000002db : STD_LOGIC; 
  signal sig000002dc : STD_LOGIC; 
  signal sig000002dd : STD_LOGIC; 
  signal sig000002de : STD_LOGIC; 
  signal sig000002df : STD_LOGIC; 
  signal sig000002e0 : STD_LOGIC; 
  signal sig000002e1 : STD_LOGIC; 
  signal sig000002e2 : STD_LOGIC; 
  signal sig000002e3 : STD_LOGIC; 
  signal sig000002e4 : STD_LOGIC; 
  signal sig000002e5 : STD_LOGIC; 
  signal sig000002e6 : STD_LOGIC; 
  signal sig000002e7 : STD_LOGIC; 
  signal sig000002e8 : STD_LOGIC; 
  signal sig000002e9 : STD_LOGIC; 
  signal sig000002ea : STD_LOGIC; 
  signal sig000002eb : STD_LOGIC; 
  signal sig000002ec : STD_LOGIC; 
  signal sig000002ed : STD_LOGIC; 
  signal sig000002ee : STD_LOGIC; 
  signal sig000002ef : STD_LOGIC; 
  signal sig000002f0 : STD_LOGIC; 
  signal sig000002f1 : STD_LOGIC; 
  signal sig000002f2 : STD_LOGIC; 
  signal sig000002f3 : STD_LOGIC; 
  signal sig000002f4 : STD_LOGIC; 
  signal sig000002f5 : STD_LOGIC; 
  signal sig000002f6 : STD_LOGIC; 
  signal sig000002f7 : STD_LOGIC; 
  signal sig000002f8 : STD_LOGIC; 
  signal sig000002f9 : STD_LOGIC; 
  signal sig000002fa : STD_LOGIC; 
  signal sig000002fb : STD_LOGIC; 
  signal sig000002fc : STD_LOGIC; 
  signal sig000002fd : STD_LOGIC; 
  signal sig000002fe : STD_LOGIC; 
  signal sig000002ff : STD_LOGIC; 
  signal sig00000300 : STD_LOGIC; 
  signal sig00000301 : STD_LOGIC; 
  signal sig00000302 : STD_LOGIC; 
  signal sig00000303 : STD_LOGIC; 
  signal sig00000304 : STD_LOGIC; 
  signal sig00000305 : STD_LOGIC; 
  signal sig00000306 : STD_LOGIC; 
  signal sig00000307 : STD_LOGIC; 
  signal sig00000308 : STD_LOGIC; 
  signal sig00000309 : STD_LOGIC; 
  signal sig0000030a : STD_LOGIC; 
  signal sig0000030b : STD_LOGIC; 
  signal sig0000030c : STD_LOGIC; 
  signal sig0000030d : STD_LOGIC; 
  signal sig0000030e : STD_LOGIC; 
  signal sig0000030f : STD_LOGIC; 
  signal sig00000310 : STD_LOGIC; 
  signal sig00000311 : STD_LOGIC; 
  signal sig00000312 : STD_LOGIC; 
  signal sig00000313 : STD_LOGIC; 
  signal sig00000314 : STD_LOGIC; 
  signal sig00000315 : STD_LOGIC; 
  signal sig00000316 : STD_LOGIC; 
  signal sig00000317 : STD_LOGIC; 
  signal sig00000318 : STD_LOGIC; 
  signal sig00000319 : STD_LOGIC; 
  signal sig0000031a : STD_LOGIC; 
  signal sig0000031b : STD_LOGIC; 
  signal sig0000031c : STD_LOGIC; 
  signal sig0000031d : STD_LOGIC; 
  signal sig0000031e : STD_LOGIC; 
  signal sig0000031f : STD_LOGIC; 
  signal sig00000320 : STD_LOGIC; 
  signal sig00000321 : STD_LOGIC; 
  signal sig00000322 : STD_LOGIC; 
  signal sig00000323 : STD_LOGIC; 
  signal sig00000324 : STD_LOGIC; 
  signal sig00000325 : STD_LOGIC; 
  signal sig00000326 : STD_LOGIC; 
  signal sig00000327 : STD_LOGIC; 
  signal sig00000328 : STD_LOGIC; 
  signal sig00000329 : STD_LOGIC; 
  signal sig0000032a : STD_LOGIC; 
  signal sig0000032b : STD_LOGIC; 
  signal sig0000032c : STD_LOGIC; 
  signal sig0000032d : STD_LOGIC; 
  signal sig0000032e : STD_LOGIC; 
  signal sig0000032f : STD_LOGIC; 
  signal sig00000330 : STD_LOGIC; 
  signal sig00000331 : STD_LOGIC; 
  signal sig00000332 : STD_LOGIC; 
  signal sig00000333 : STD_LOGIC; 
  signal sig00000334 : STD_LOGIC; 
  signal sig00000335 : STD_LOGIC; 
  signal sig00000336 : STD_LOGIC; 
  signal sig00000337 : STD_LOGIC; 
  signal sig00000338 : STD_LOGIC; 
  signal sig00000339 : STD_LOGIC; 
  signal sig0000033a : STD_LOGIC; 
  signal sig0000033b : STD_LOGIC; 
  signal sig0000033c : STD_LOGIC; 
  signal sig0000033d : STD_LOGIC; 
  signal sig0000033e : STD_LOGIC; 
  signal sig0000033f : STD_LOGIC; 
  signal sig00000340 : STD_LOGIC; 
  signal sig00000341 : STD_LOGIC; 
  signal sig00000342 : STD_LOGIC; 
  signal sig00000343 : STD_LOGIC; 
  signal sig00000344 : STD_LOGIC; 
  signal sig00000345 : STD_LOGIC; 
  signal sig00000346 : STD_LOGIC; 
  signal sig00000347 : STD_LOGIC; 
  signal sig00000348 : STD_LOGIC; 
  signal sig00000349 : STD_LOGIC; 
  signal sig0000034a : STD_LOGIC; 
  signal sig0000034b : STD_LOGIC; 
  signal sig0000034c : STD_LOGIC; 
  signal sig0000034d : STD_LOGIC; 
  signal sig0000034e : STD_LOGIC; 
  signal sig0000034f : STD_LOGIC; 
  signal sig00000350 : STD_LOGIC; 
  signal sig00000351 : STD_LOGIC; 
  signal sig00000352 : STD_LOGIC; 
  signal sig00000353 : STD_LOGIC; 
  signal sig00000354 : STD_LOGIC; 
  signal sig00000355 : STD_LOGIC; 
  signal sig00000356 : STD_LOGIC; 
  signal sig00000357 : STD_LOGIC; 
  signal sig00000358 : STD_LOGIC; 
  signal sig00000359 : STD_LOGIC; 
  signal sig0000035a : STD_LOGIC; 
  signal sig0000035b : STD_LOGIC; 
  signal sig0000035c : STD_LOGIC; 
  signal sig0000035d : STD_LOGIC; 
  signal sig0000035e : STD_LOGIC; 
  signal sig0000035f : STD_LOGIC; 
  signal sig00000360 : STD_LOGIC; 
  signal sig00000361 : STD_LOGIC; 
  signal sig00000362 : STD_LOGIC; 
  signal sig00000363 : STD_LOGIC; 
  signal sig00000364 : STD_LOGIC; 
  signal sig00000365 : STD_LOGIC; 
  signal sig00000366 : STD_LOGIC; 
  signal sig00000367 : STD_LOGIC; 
  signal sig00000368 : STD_LOGIC; 
  signal sig00000369 : STD_LOGIC; 
  signal sig0000036a : STD_LOGIC; 
  signal sig0000036b : STD_LOGIC; 
  signal sig0000036c : STD_LOGIC; 
  signal sig0000036d : STD_LOGIC; 
  signal sig0000036e : STD_LOGIC; 
  signal sig0000036f : STD_LOGIC; 
  signal sig00000370 : STD_LOGIC; 
  signal sig00000371 : STD_LOGIC; 
  signal sig00000372 : STD_LOGIC; 
  signal sig00000373 : STD_LOGIC; 
  signal sig00000374 : STD_LOGIC; 
  signal sig00000375 : STD_LOGIC; 
  signal sig00000376 : STD_LOGIC; 
  signal sig00000377 : STD_LOGIC; 
  signal sig00000378 : STD_LOGIC; 
  signal sig00000379 : STD_LOGIC; 
  signal sig0000037a : STD_LOGIC; 
  signal sig0000037b : STD_LOGIC; 
  signal sig0000037c : STD_LOGIC; 
  signal sig0000037d : STD_LOGIC; 
  signal sig0000037e : STD_LOGIC; 
  signal sig0000037f : STD_LOGIC; 
  signal sig00000380 : STD_LOGIC; 
  signal sig00000381 : STD_LOGIC; 
  signal sig00000382 : STD_LOGIC; 
  signal sig00000383 : STD_LOGIC; 
  signal sig00000384 : STD_LOGIC; 
  signal sig00000385 : STD_LOGIC; 
  signal sig00000386 : STD_LOGIC; 
  signal sig00000387 : STD_LOGIC; 
  signal sig00000388 : STD_LOGIC; 
  signal sig00000389 : STD_LOGIC; 
  signal sig0000038a : STD_LOGIC; 
  signal sig0000038b : STD_LOGIC; 
  signal sig0000038c : STD_LOGIC; 
  signal sig0000038d : STD_LOGIC; 
  signal sig0000038e : STD_LOGIC; 
  signal sig0000038f : STD_LOGIC; 
  signal sig00000390 : STD_LOGIC; 
  signal sig00000391 : STD_LOGIC; 
  signal sig00000392 : STD_LOGIC; 
  signal sig00000393 : STD_LOGIC; 
  signal sig00000394 : STD_LOGIC; 
  signal sig00000395 : STD_LOGIC; 
  signal sig00000396 : STD_LOGIC; 
  signal sig00000397 : STD_LOGIC; 
  signal sig00000398 : STD_LOGIC; 
  signal sig00000399 : STD_LOGIC; 
  signal sig0000039a : STD_LOGIC; 
  signal sig0000039b : STD_LOGIC; 
  signal sig0000039c : STD_LOGIC; 
  signal sig0000039d : STD_LOGIC; 
  signal sig0000039e : STD_LOGIC; 
  signal sig0000039f : STD_LOGIC; 
  signal sig000003a0 : STD_LOGIC; 
  signal sig000003a1 : STD_LOGIC; 
  signal sig000003a2 : STD_LOGIC; 
  signal sig000003a3 : STD_LOGIC; 
  signal sig000003a4 : STD_LOGIC; 
  signal sig000003a5 : STD_LOGIC; 
  signal sig000003a6 : STD_LOGIC; 
  signal sig000003a7 : STD_LOGIC; 
  signal sig000003a8 : STD_LOGIC; 
  signal sig000003a9 : STD_LOGIC; 
  signal sig000003aa : STD_LOGIC; 
  signal sig000003ab : STD_LOGIC; 
  signal sig000003ac : STD_LOGIC; 
  signal sig000003ad : STD_LOGIC; 
  signal sig000003ae : STD_LOGIC; 
  signal sig000003af : STD_LOGIC; 
  signal sig000003b0 : STD_LOGIC; 
  signal sig000003b1 : STD_LOGIC; 
  signal sig000003b2 : STD_LOGIC; 
  signal sig000003b3 : STD_LOGIC; 
  signal sig000003b4 : STD_LOGIC; 
  signal sig000003b5 : STD_LOGIC; 
  signal sig000003b6 : STD_LOGIC; 
  signal sig000003b7 : STD_LOGIC; 
  signal sig000003b8 : STD_LOGIC; 
  signal sig000003b9 : STD_LOGIC; 
  signal sig000003ba : STD_LOGIC; 
  signal sig000003bb : STD_LOGIC; 
  signal sig000003bc : STD_LOGIC; 
  signal sig000003bd : STD_LOGIC; 
  signal sig000003be : STD_LOGIC; 
  signal sig000003bf : STD_LOGIC; 
  signal sig000003c0 : STD_LOGIC; 
  signal sig000003c1 : STD_LOGIC; 
  signal sig000003c2 : STD_LOGIC; 
  signal sig000003c3 : STD_LOGIC; 
  signal sig000003c4 : STD_LOGIC; 
  signal sig000003c5 : STD_LOGIC; 
  signal sig000003c6 : STD_LOGIC; 
  signal sig000003c7 : STD_LOGIC; 
  signal sig000003c8 : STD_LOGIC; 
  signal sig000003c9 : STD_LOGIC; 
  signal sig000003ca : STD_LOGIC; 
  signal sig000003cb : STD_LOGIC; 
  signal sig000003cc : STD_LOGIC; 
  signal sig000003cd : STD_LOGIC; 
  signal sig000003ce : STD_LOGIC; 
  signal sig000003cf : STD_LOGIC; 
  signal sig000003d0 : STD_LOGIC; 
  signal sig000003d1 : STD_LOGIC; 
  signal sig000003d2 : STD_LOGIC; 
  signal sig000003d3 : STD_LOGIC; 
  signal sig000003d4 : STD_LOGIC; 
  signal sig000003d5 : STD_LOGIC; 
  signal sig000003d6 : STD_LOGIC; 
  signal sig000003d7 : STD_LOGIC; 
  signal sig000003d8 : STD_LOGIC; 
  signal sig000003d9 : STD_LOGIC; 
  signal sig000003da : STD_LOGIC; 
  signal sig000003db : STD_LOGIC; 
  signal sig000003dc : STD_LOGIC; 
  signal sig000003dd : STD_LOGIC; 
  signal sig000003de : STD_LOGIC; 
  signal sig000003df : STD_LOGIC; 
  signal sig000003e0 : STD_LOGIC; 
  signal sig000003e1 : STD_LOGIC; 
  signal sig000003e2 : STD_LOGIC; 
  signal sig000003e3 : STD_LOGIC; 
  signal sig000003e4 : STD_LOGIC; 
  signal sig000003e5 : STD_LOGIC; 
  signal sig000003e6 : STD_LOGIC; 
  signal sig000003e7 : STD_LOGIC; 
  signal sig000003e8 : STD_LOGIC; 
  signal sig000003e9 : STD_LOGIC; 
  signal sig000003ea : STD_LOGIC; 
  signal sig000003eb : STD_LOGIC; 
  signal sig000003ec : STD_LOGIC; 
  signal sig000003ed : STD_LOGIC; 
  signal sig000003ee : STD_LOGIC; 
  signal sig000003ef : STD_LOGIC; 
  signal sig000003f0 : STD_LOGIC; 
  signal sig000003f1 : STD_LOGIC; 
  signal sig000003f2 : STD_LOGIC; 
  signal sig000003f3 : STD_LOGIC; 
  signal sig000003f4 : STD_LOGIC; 
  signal sig000003f5 : STD_LOGIC; 
  signal sig000003f6 : STD_LOGIC; 
  signal blk00000102_sig0000043f : STD_LOGIC; 
  signal blk00000102_sig0000042e : STD_LOGIC; 
  signal blk00000102_sig0000042d : STD_LOGIC; 
  signal blk00000102_sig0000042c : STD_LOGIC; 
  signal blk00000102_sig0000042b : STD_LOGIC; 
  signal blk00000102_sig0000042a : STD_LOGIC; 
  signal blk00000102_sig00000429 : STD_LOGIC; 
  signal blk00000102_sig00000428 : STD_LOGIC; 
  signal blk00000102_sig00000427 : STD_LOGIC; 
  signal blk00000102_sig00000426 : STD_LOGIC; 
  signal blk00000102_sig00000425 : STD_LOGIC; 
  signal blk00000102_sig00000424 : STD_LOGIC; 
  signal blk00000102_sig00000423 : STD_LOGIC; 
  signal blk00000102_sig00000422 : STD_LOGIC; 
  signal blk00000102_sig00000421 : STD_LOGIC; 
  signal blk00000102_sig00000420 : STD_LOGIC; 
  signal blk00000102_sig0000041f : STD_LOGIC; 
  signal blk00000135_blk00000136_sig0000044b : STD_LOGIC; 
  signal blk00000135_blk00000136_sig0000044a : STD_LOGIC; 
  signal blk00000135_blk00000136_sig00000449 : STD_LOGIC; 
  signal blk0000015b_blk0000015c_sig00000456 : STD_LOGIC; 
  signal blk0000015b_blk0000015c_sig00000455 : STD_LOGIC; 
  signal blk0000015b_blk0000015c_sig00000454 : STD_LOGIC; 
  signal blk00000218_blk00000219_sig00000462 : STD_LOGIC; 
  signal blk00000218_blk00000219_sig00000461 : STD_LOGIC; 
  signal blk00000218_blk00000219_sig00000460 : STD_LOGIC; 
  signal blk0000024a_sig0000048a : STD_LOGIC; 
  signal blk0000024a_sig00000489 : STD_LOGIC; 
  signal blk0000024a_sig00000488 : STD_LOGIC; 
  signal blk0000024a_sig00000487 : STD_LOGIC; 
  signal blk0000024a_sig00000486 : STD_LOGIC; 
  signal blk0000024a_sig00000485 : STD_LOGIC; 
  signal blk0000024a_sig00000484 : STD_LOGIC; 
  signal blk0000024a_sig00000483 : STD_LOGIC; 
  signal blk0000024a_sig00000482 : STD_LOGIC; 
  signal blk0000024a_sig00000481 : STD_LOGIC; 
  signal blk0000024a_sig00000480 : STD_LOGIC; 
  signal blk0000024a_sig0000047f : STD_LOGIC; 
  signal blk0000024a_sig0000047e : STD_LOGIC; 
  signal blk0000024a_sig0000047d : STD_LOGIC; 
  signal blk0000024a_sig0000047c : STD_LOGIC; 
  signal blk0000024a_sig0000047b : STD_LOGIC; 
  signal blk0000024a_sig0000047a : STD_LOGIC; 
  signal blk0000024a_sig00000479 : STD_LOGIC; 
  signal blk0000024a_sig00000478 : STD_LOGIC; 
  signal blk0000024a_sig00000477 : STD_LOGIC; 
  signal blk000002d7_blk000002d8_sig00000495 : STD_LOGIC; 
  signal blk000002d7_blk000002d8_sig00000494 : STD_LOGIC; 
  signal blk000002d7_blk000002d8_sig00000493 : STD_LOGIC; 
  signal blk000002dd_sig000004a5 : STD_LOGIC; 
  signal blk000002dd_sig000004a4 : STD_LOGIC; 
  signal blk000002dd_sig000004a3 : STD_LOGIC; 
  signal blk000002dd_sig000004a2 : STD_LOGIC; 
  signal blk000002dd_sig000004a1 : STD_LOGIC; 
  signal blk000002dd_sig000004a0 : STD_LOGIC; 
  signal blk000002dd_sig0000049f : STD_LOGIC; 
  signal blk000002dd_sig0000049e : STD_LOGIC; 
  signal blk000002ea_blk000002eb_sig000004b1 : STD_LOGIC; 
  signal blk000002ea_blk000002eb_sig000004b0 : STD_LOGIC; 
  signal blk000002ea_blk000002eb_sig000004af : STD_LOGIC; 
  signal blk000002f0_blk000002f1_sig000004bd : STD_LOGIC; 
  signal blk000002f0_blk000002f1_sig000004bc : STD_LOGIC; 
  signal blk000002f0_blk000002f1_sig000004bb : STD_LOGIC; 
  signal blk000002f6_blk000002f7_sig000004c9 : STD_LOGIC; 
  signal blk000002f6_blk000002f7_sig000004c8 : STD_LOGIC; 
  signal blk000002f6_blk000002f7_sig000004c7 : STD_LOGIC; 
  signal blk000002fc_blk000002fd_sig000004d5 : STD_LOGIC; 
  signal blk000002fc_blk000002fd_sig000004d4 : STD_LOGIC; 
  signal blk000002fc_blk000002fd_sig000004d3 : STD_LOGIC; 
  signal blk00000322_sig0000050a : STD_LOGIC; 
  signal blk00000322_sig00000509 : STD_LOGIC; 
  signal blk00000322_sig00000508 : STD_LOGIC; 
  signal blk00000322_sig00000507 : STD_LOGIC; 
  signal blk00000322_sig00000506 : STD_LOGIC; 
  signal blk00000322_sig00000505 : STD_LOGIC; 
  signal blk00000322_sig00000504 : STD_LOGIC; 
  signal blk00000322_sig00000503 : STD_LOGIC; 
  signal blk00000322_sig00000502 : STD_LOGIC; 
  signal blk00000322_sig00000501 : STD_LOGIC; 
  signal blk00000322_sig00000500 : STD_LOGIC; 
  signal blk00000322_sig000004ff : STD_LOGIC; 
  signal blk00000322_sig000004fe : STD_LOGIC; 
  signal blk00000322_sig000004fd : STD_LOGIC; 
  signal blk00000322_sig000004fc : STD_LOGIC; 
  signal blk00000322_sig000004fb : STD_LOGIC; 
  signal blk00000322_sig000004fa : STD_LOGIC; 
  signal blk00000322_sig000004f9 : STD_LOGIC; 
  signal blk00000322_sig000004f8 : STD_LOGIC; 
  signal blk00000322_sig000004f7 : STD_LOGIC; 
  signal blk00000322_sig000004f6 : STD_LOGIC; 
  signal blk00000322_sig000004f5 : STD_LOGIC; 
  signal blk00000322_sig000004f4 : STD_LOGIC; 
  signal blk00000322_sig000004f3 : STD_LOGIC; 
  signal blk00000322_sig000004f2 : STD_LOGIC; 
  signal blk00000322_sig000004f1 : STD_LOGIC; 
  signal blk00000322_sig000004f0 : STD_LOGIC; 
  signal blk00000322_sig000004ef : STD_LOGIC; 
  signal blk00000322_sig000004ee : STD_LOGIC; 
  signal blk00000322_sig000004ed : STD_LOGIC; 
  signal NLW_blk00000171_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000172_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000173_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000174_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000175_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000176_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000017f_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000180_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000191_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000192_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000193_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000194_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000195_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000196_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000019f_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk000001a0_Q_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIADI_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIBDI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIPADIP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIPBDIP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DIPBDIP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOADO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOBDO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOPADOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000405_DOPBDOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000406_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000408_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000040a_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000040c_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000040e_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000410_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000412_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000414_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000416_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000418_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000041a_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000041c_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000041e_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PATTERNBDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_MULTSIGNOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_CARRYCASCOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_UNDERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PATTERNDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_OVERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_ACOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_CARRYOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_CARRYOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_CARRYOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_CARRYOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000431_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_PATTERNBDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_MULTSIGNOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_CARRYCASCOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_UNDERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_PATTERNDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_OVERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_ACOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_CARRYOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_CARRYOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_CARRYOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_CARRYOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000432_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PATTERNBDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_MULTSIGNOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_CARRYCASCOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_UNDERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_PATTERNDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_OVERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_ACOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_CARRYOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_CARRYOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_CARRYOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_CARRYOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000433_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000102_blk00000114_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000135_blk00000136_blk00000139_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk0000015b_blk0000015c_blk0000015f_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000218_blk00000219_blk0000021c_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk000002d7_blk000002d8_blk000002db_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk000002ea_blk000002eb_blk000002ee_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk000002f0_blk000002f1_blk000002f4_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk000002f6_blk000002f7_blk000002fa_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk000002fc_blk000002fd_blk00000300_Q15_UNCONNECTED : STD_LOGIC; 
  signal NlwRenamedSig_OI_xn_index : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  xn_index(9) <= NlwRenamedSig_OI_xn_index(9);
  xn_index(8) <= NlwRenamedSig_OI_xn_index(8);
  xn_index(7) <= NlwRenamedSig_OI_xn_index(7);
  xn_index(6) <= NlwRenamedSig_OI_xn_index(6);
  xn_index(5) <= NlwRenamedSig_OI_xn_index(5);
  xn_index(4) <= NlwRenamedSig_OI_xn_index(4);
  xn_index(3) <= NlwRenamedSig_OI_xn_index(3);
  xn_index(2) <= NlwRenamedSig_OI_xn_index(2);
  xn_index(1) <= NlwRenamedSig_OI_xn_index(1);
  xn_index(0) <= NlwRenamedSig_OI_xn_index(0);
  xk_index(9) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(9);
  xk_index(8) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(8);
  xk_index(7) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(7);
  xk_index(6) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(6);
  xk_index(5) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(5);
  xk_index(4) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(4);
  xk_index(3) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(3);
  xk_index(2) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(2);
  xk_index(1) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(1);
  xk_index(0) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(0);
  xk_re(7) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(7);
  xk_re(6) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(6);
  xk_re(5) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(5);
  xk_re(4) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(4);
  xk_re(3) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(3);
  xk_re(2) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(2);
  xk_re(1) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(1);
  xk_re(0) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(0);
  xk_im(7) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(7);
  xk_im(6) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(6);
  xk_im(5) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(5);
  xk_im(4) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(4);
  xk_im(3) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(3);
  xk_im(2) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(2);
  xk_im(1) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(1);
  xk_im(0) <= U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(0);
  rfd <= NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i;
  busy <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_busy_i_reg2;
  edone <= NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_run_addr_gen_done_int2;
  done <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_done_i_reg;
  dv <= U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_dv_d;
  blk00000001 : VCC
    port map (
      P => sig00000001
    );
  blk00000002 : GND
    port map (
      G => sig00000002
    );
  blk00000003 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000033,
      R => sig00000002,
      Q => sig00000032
    );
  blk00000004 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f9,
      Q => sig00000089
    );
  blk00000005 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f8,
      Q => sig00000088
    );
  blk00000006 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f7,
      Q => sig00000087
    );
  blk00000007 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f6,
      Q => sig00000086
    );
  blk00000008 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f5,
      Q => sig00000085
    );
  blk00000009 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f4,
      Q => sig00000084
    );
  blk0000000a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f3,
      Q => sig00000083
    );
  blk0000000b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f2,
      Q => sig00000082
    );
  blk0000000c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000109,
      Q => sig00000099
    );
  blk0000000d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000108,
      Q => sig00000098
    );
  blk0000000e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000107,
      Q => sig00000097
    );
  blk0000000f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000106,
      Q => sig00000096
    );
  blk00000010 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000105,
      Q => sig00000095
    );
  blk00000011 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000104,
      Q => sig00000094
    );
  blk00000012 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000103,
      Q => sig00000093
    );
  blk00000013 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000102,
      Q => sig00000092
    );
  blk00000014 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000101,
      Q => sig00000091
    );
  blk00000015 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000100,
      Q => sig00000090
    );
  blk00000016 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000ff,
      Q => sig0000008f
    );
  blk00000017 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000fe,
      Q => sig0000008e
    );
  blk00000018 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000fd,
      Q => sig0000008d
    );
  blk00000019 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000fc,
      Q => sig0000008c
    );
  blk0000001a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000fb,
      Q => sig0000008b
    );
  blk0000001b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000fa,
      Q => sig0000008a
    );
  blk0000001c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000ca,
      Q => sig0000005b
    );
  blk0000001d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c9,
      Q => sig0000005a
    );
  blk0000001e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c8,
      Q => sig00000059
    );
  blk0000001f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c7,
      Q => sig00000058
    );
  blk00000020 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c6,
      Q => sig00000057
    );
  blk00000021 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c5,
      Q => sig00000056
    );
  blk00000022 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c4,
      Q => sig00000055
    );
  blk00000023 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c3,
      Q => sig00000054
    );
  blk00000024 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c2,
      Q => sig00000053
    );
  blk00000025 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c1,
      Q => sig00000052
    );
  blk00000026 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000c0,
      Q => sig00000051
    );
  blk00000027 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000bf,
      Q => sig00000050
    );
  blk00000028 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000be,
      Q => sig0000004f
    );
  blk00000029 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d7,
      Q => sig00000068
    );
  blk0000002a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d6,
      Q => sig00000067
    );
  blk0000002b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d5,
      Q => sig00000066
    );
  blk0000002c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d4,
      Q => sig00000065
    );
  blk0000002d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d3,
      Q => sig00000064
    );
  blk0000002e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d2,
      Q => sig00000063
    );
  blk0000002f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d1,
      Q => sig00000062
    );
  blk00000030 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000d0,
      Q => sig00000061
    );
  blk00000031 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000cf,
      Q => sig00000060
    );
  blk00000032 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000ce,
      Q => sig0000005f
    );
  blk00000033 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000cd,
      Q => sig0000005e
    );
  blk00000034 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000cc,
      Q => sig0000005d
    );
  blk00000035 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000cb,
      Q => sig0000005c
    );
  blk00000036 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000048,
      Q => sig000000ad
    );
  blk00000037 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000047,
      Q => sig000000ac
    );
  blk00000038 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000046,
      Q => sig000000ab
    );
  blk00000039 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000045,
      Q => sig000000aa
    );
  blk0000003a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000044,
      Q => sig000000a9
    );
  blk0000003b : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000043,
      Q => sig000000a8
    );
  blk0000003c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000042,
      Q => sig000000a7
    );
  blk0000003d : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000041,
      Q => sig000000a6
    );
  blk0000003e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000040,
      Q => sig000000a5
    );
  blk0000003f : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig0000003f,
      Q => sig000000a4
    );
  blk00000040 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig0000003e,
      Q => sig000000a3
    );
  blk00000041 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig0000003d,
      Q => sig000000a2
    );
  blk00000042 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig0000003c,
      Q => sig000000a1
    );
  blk00000043 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig0000003b,
      Q => sig000000a0
    );
  blk00000044 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig0000003a,
      Q => sig0000009f
    );
  blk00000045 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000039,
      Q => sig0000009e
    );
  blk00000046 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000038,
      Q => sig0000009d
    );
  blk00000047 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000037,
      Q => sig0000009c
    );
  blk00000048 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000036,
      Q => sig0000009b
    );
  blk00000049 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig00000034,
      D => sig00000035,
      Q => sig0000009a
    );
  blk0000004a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000000e9,
      Q => sig00000069
    );
  blk0000004b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f1,
      Q => sig00000071
    );
  blk0000004c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f0,
      Q => sig00000070
    );
  blk0000004d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000ef,
      Q => sig0000006f
    );
  blk0000004e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000ee,
      Q => sig0000006e
    );
  blk0000004f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000ed,
      Q => sig0000006d
    );
  blk00000050 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000ec,
      Q => sig0000006c
    );
  blk00000051 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000eb,
      Q => sig0000006b
    );
  blk00000052 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000ea,
      Q => sig0000006a
    );
  blk00000053 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f1,
      Q => sig00000081
    );
  blk00000054 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000f0,
      Q => sig00000080
    );
  blk00000055 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000ef,
      Q => sig0000007f
    );
  blk00000056 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000ee,
      Q => sig0000007e
    );
  blk00000057 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000ed,
      Q => sig0000007d
    );
  blk00000058 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000ec,
      Q => sig0000007c
    );
  blk00000059 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000eb,
      Q => sig0000007b
    );
  blk0000005a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004a,
      D => sig000000ea,
      Q => sig0000007a
    );
  blk0000005b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f9,
      Q => sig00000079
    );
  blk0000005c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f8,
      Q => sig00000078
    );
  blk0000005d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f7,
      Q => sig00000077
    );
  blk0000005e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f6,
      Q => sig00000076
    );
  blk0000005f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f5,
      Q => sig00000075
    );
  blk00000060 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f4,
      Q => sig00000074
    );
  blk00000061 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f3,
      Q => sig00000073
    );
  blk00000062 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig00000049,
      D => sig000000f2,
      Q => sig00000072
    );
  blk00000063 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000027,
      Q => sig0000012b
    );
  blk00000064 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000026,
      Q => sig0000012a
    );
  blk00000065 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000025,
      Q => sig00000129
    );
  blk00000066 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000024,
      Q => sig00000128
    );
  blk00000067 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000023,
      Q => sig00000127
    );
  blk00000068 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000022,
      Q => sig00000126
    );
  blk00000069 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000021,
      Q => sig00000125
    );
  blk0000006a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000020,
      Q => sig00000124
    );
  blk0000006b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000001f,
      Q => sig00000123
    );
  blk0000006c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000001e,
      Q => sig00000122
    );
  blk0000006d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000031,
      Q => sig00000135
    );
  blk0000006e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000030,
      Q => sig00000134
    );
  blk0000006f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000002f,
      Q => sig00000133
    );
  blk00000070 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000002e,
      Q => sig00000132
    );
  blk00000071 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000002d,
      Q => sig00000131
    );
  blk00000072 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000002c,
      Q => sig00000130
    );
  blk00000073 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000002b,
      Q => sig0000012f
    );
  blk00000074 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000002a,
      Q => sig0000012e
    );
  blk00000075 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000029,
      Q => sig0000012d
    );
  blk00000076 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000028,
      Q => sig0000012c
    );
  blk00000077 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(19),
      R => sig00000002,
      Q => sig00000149
    );
  blk00000078 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(18),
      S => sig00000002,
      Q => sig00000148
    );
  blk00000079 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(17),
      R => sig00000002,
      Q => sig00000147
    );
  blk0000007a : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(16),
      S => sig00000002,
      Q => sig00000146
    );
  blk0000007b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(15),
      R => sig00000002,
      Q => sig00000145
    );
  blk0000007c : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(14),
      S => sig00000002,
      Q => sig00000144
    );
  blk0000007d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(13),
      R => sig00000002,
      Q => sig00000143
    );
  blk0000007e : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(12),
      S => sig00000002,
      Q => sig00000142
    );
  blk0000007f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(11),
      R => sig00000002,
      Q => sig00000141
    );
  blk00000080 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(10),
      S => sig00000002,
      Q => sig00000140
    );
  blk00000081 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(9),
      R => sig00000002,
      Q => sig0000013f
    );
  blk00000082 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(8),
      S => sig00000002,
      Q => sig0000013e
    );
  blk00000083 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(7),
      R => sig00000002,
      Q => sig0000013d
    );
  blk00000084 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(6),
      S => sig00000002,
      Q => sig0000013c
    );
  blk00000085 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(5),
      R => sig00000002,
      Q => sig0000013b
    );
  blk00000086 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(4),
      S => sig00000002,
      Q => sig0000013a
    );
  blk00000087 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(3),
      R => sig00000002,
      Q => sig00000139
    );
  blk00000088 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(2),
      S => sig00000002,
      Q => sig00000138
    );
  blk00000089 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(1),
      R => sig00000002,
      Q => sig00000137
    );
  blk0000008a : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => sig0000004b,
      D => scale_sch(0),
      S => sig00000002,
      Q => sig00000136
    );
  blk0000008b : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(7),
      Q => sig0000015a
    );
  blk0000008c : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(6),
      Q => sig0000015b
    );
  blk0000008d : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(5),
      Q => sig0000015c
    );
  blk0000008e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(4),
      Q => sig0000015d
    );
  blk0000008f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(3),
      Q => sig0000015e
    );
  blk00000090 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(2),
      Q => sig0000015f
    );
  blk00000091 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(1),
      Q => sig00000160
    );
  blk00000092 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_im(0),
      Q => sig00000161
    );
  blk00000093 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000015a,
      R => sig00000002,
      Q => sig00000151
    );
  blk00000094 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000015b,
      R => sig00000002,
      Q => sig00000150
    );
  blk00000095 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000015c,
      R => sig00000002,
      Q => sig0000014f
    );
  blk00000096 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000015d,
      R => sig00000002,
      Q => sig0000014e
    );
  blk00000097 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000015e,
      R => sig00000002,
      Q => sig0000014d
    );
  blk00000098 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000015f,
      R => sig00000002,
      Q => sig0000014c
    );
  blk00000099 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000160,
      R => sig00000002,
      Q => sig0000014b
    );
  blk0000009a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000161,
      R => sig00000002,
      Q => sig0000014a
    );
  blk0000009b : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(7),
      Q => sig00000162
    );
  blk0000009c : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(6),
      Q => sig00000163
    );
  blk0000009d : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(5),
      Q => sig00000164
    );
  blk0000009e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(4),
      Q => sig00000165
    );
  blk0000009f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(3),
      Q => sig00000166
    );
  blk000000a0 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(2),
      Q => sig00000167
    );
  blk000000a1 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(1),
      Q => sig00000168
    );
  blk000000a2 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => xn_re(0),
      Q => sig00000169
    );
  blk000000a3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000162,
      R => sig00000002,
      Q => sig00000159
    );
  blk000000a4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000163,
      R => sig00000002,
      Q => sig00000158
    );
  blk000000a5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000164,
      R => sig00000002,
      Q => sig00000157
    );
  blk000000a6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000165,
      R => sig00000002,
      Q => sig00000156
    );
  blk000000a7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000166,
      R => sig00000002,
      Q => sig00000155
    );
  blk000000a8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000167,
      R => sig00000002,
      Q => sig00000154
    );
  blk000000a9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000168,
      R => sig00000002,
      Q => sig00000153
    );
  blk000000aa : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000169,
      R => sig00000002,
      Q => sig00000152
    );
  blk000000ab : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001da,
      Q => sig000001a4
    );
  blk000000ac : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d9,
      Q => sig000001a3
    );
  blk000000ad : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d8,
      Q => sig000001a2
    );
  blk000000ae : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d7,
      Q => sig000001a1
    );
  blk000000af : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d6,
      Q => sig000001a0
    );
  blk000000b0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d5,
      Q => sig0000019f
    );
  blk000000b1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d4,
      Q => sig0000019e
    );
  blk000000b2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d3,
      Q => sig0000019d
    );
  blk000000b3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d2,
      Q => sig000001ac
    );
  blk000000b4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d1,
      Q => sig000001ab
    );
  blk000000b5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001d0,
      Q => sig000001aa
    );
  blk000000b6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001cf,
      Q => sig000001a9
    );
  blk000000b7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ce,
      Q => sig000001a8
    );
  blk000000b8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001cd,
      Q => sig000001a7
    );
  blk000000b9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001cc,
      Q => sig000001a6
    );
  blk000000ba : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001cb,
      Q => sig000001a5
    );
  blk000000bb : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000019b,
      Q => sig0000019c
    );
  blk000000bc : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000014,
      Q => sig000001c1
    );
  blk000000bd : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000013,
      Q => sig000001c0
    );
  blk000000be : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000012,
      Q => sig000001bf
    );
  blk000000bf : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000011,
      Q => sig000001be
    );
  blk000000c0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000010,
      Q => sig000001bd
    );
  blk000000c1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000000f,
      Q => sig000001bc
    );
  blk000000c2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000000e,
      Q => sig000001bb
    );
  blk000000c3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000000d,
      Q => sig000001ba
    );
  blk000000c4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000000c,
      Q => sig000001b9
    );
  blk000000c5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000001d,
      Q => sig000001ca
    );
  blk000000c6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000001c,
      Q => sig000001c9
    );
  blk000000c7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000001b,
      Q => sig000001c8
    );
  blk000000c8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000001a,
      Q => sig000001c7
    );
  blk000000c9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000019,
      Q => sig000001c6
    );
  blk000000ca : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000018,
      Q => sig000001c5
    );
  blk000000cb : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000017,
      Q => sig000001c4
    );
  blk000000cc : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000016,
      Q => sig000001c3
    );
  blk000000cd : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000015,
      Q => sig000001c2
    );
  blk000000ce : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e8,
      Q => sig00000121
    );
  blk000000cf : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e7,
      Q => sig00000120
    );
  blk000000d0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e6,
      Q => sig0000011f
    );
  blk000000d1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e5,
      Q => sig0000011e
    );
  blk000000d2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e4,
      Q => sig0000011d
    );
  blk000000d3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e3,
      Q => sig0000011c
    );
  blk000000d4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e2,
      Q => sig0000011b
    );
  blk000000d5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e1,
      Q => sig0000011a
    );
  blk000000d6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001e0,
      Q => sig00000119
    );
  blk000000d7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001df,
      Q => sig00000118
    );
  blk000000d8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001de,
      Q => sig00000117
    );
  blk000000d9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001dd,
      Q => sig00000116
    );
  blk000000da : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b8,
      Q => sig000001e8
    );
  blk000000db : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b7,
      Q => sig000001e7
    );
  blk000000dc : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b6,
      Q => sig000001e6
    );
  blk000000dd : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b5,
      Q => sig000001e5
    );
  blk000000de : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b4,
      Q => sig000001e4
    );
  blk000000df : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b3,
      Q => sig000001e3
    );
  blk000000e0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b2,
      Q => sig000001e2
    );
  blk000000e1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b1,
      Q => sig000001e1
    );
  blk000000e2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001b0,
      Q => sig000001e0
    );
  blk000000e3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001af,
      Q => sig000001df
    );
  blk000000e4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ae,
      Q => sig000001de
    );
  blk000000e5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ad,
      Q => sig000001dd
    );
  blk000000e6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b8,
      Q => sig00000115
    );
  blk000000e7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b7,
      Q => sig00000114
    );
  blk000000e8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b6,
      Q => sig00000113
    );
  blk000000e9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b5,
      Q => sig00000112
    );
  blk000000ea : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b4,
      Q => sig00000111
    );
  blk000000eb : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b3,
      Q => sig00000110
    );
  blk000000ec : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b2,
      Q => sig0000010f
    );
  blk000000ed : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b1,
      Q => sig0000010e
    );
  blk000000ee : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001b0,
      Q => sig0000010d
    );
  blk000000ef : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001af,
      Q => sig0000010c
    );
  blk000000f0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001ae,
      Q => sig0000010b
    );
  blk000000f1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000001db,
      D => sig000001ad,
      Q => sig0000010a
    );
  blk000000f2 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b5,
      I1 => sig00000151,
      I2 => sig00000005,
      O => sig00000101
    );
  blk000000f3 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b4,
      I1 => sig00000150,
      I2 => sig00000005,
      O => sig00000100
    );
  blk000000f4 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b3,
      I1 => sig0000014f,
      I2 => sig00000005,
      O => sig000000ff
    );
  blk000000f5 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b2,
      I1 => sig0000014e,
      I2 => sig00000005,
      O => sig000000fe
    );
  blk000000f6 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b1,
      I1 => sig0000014d,
      I2 => sig00000005,
      O => sig000000fd
    );
  blk000000f7 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b0,
      I1 => sig0000014c,
      I2 => sig00000005,
      O => sig000000fc
    );
  blk000000f8 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000af,
      I1 => sig0000014b,
      I2 => sig00000005,
      O => sig000000fb
    );
  blk000000f9 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000ae,
      I1 => sig0000014a,
      I2 => sig00000005,
      O => sig000000fa
    );
  blk000000fa : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000bd,
      I1 => sig00000159,
      I2 => sig00000005,
      O => sig00000109
    );
  blk000000fb : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000bc,
      I1 => sig00000158,
      I2 => sig00000005,
      O => sig00000108
    );
  blk000000fc : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000bb,
      I1 => sig00000157,
      I2 => sig00000005,
      O => sig00000107
    );
  blk000000fd : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000ba,
      I1 => sig00000156,
      I2 => sig00000005,
      O => sig00000106
    );
  blk000000fe : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b9,
      I1 => sig00000155,
      I2 => sig00000005,
      O => sig00000105
    );
  blk000000ff : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b8,
      I1 => sig00000154,
      I2 => sig00000005,
      O => sig00000104
    );
  blk00000100 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b7,
      I1 => sig00000153,
      I2 => sig00000005,
      O => sig00000103
    );
  blk00000101 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig000000b6,
      I1 => sig00000152,
      I2 => sig00000005,
      O => sig00000102
    );
  blk00000115 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f1,
      I2 => sig00000007,
      O => sig000001e9
    );
  blk00000116 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f0,
      I2 => sig00000007,
      O => sig000001ea
    );
  blk00000117 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000ef,
      I2 => sig00000007,
      O => sig000001eb
    );
  blk00000118 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000ee,
      I2 => sig00000007,
      O => sig000001ec
    );
  blk00000119 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000ed,
      I2 => sig00000007,
      O => sig000001ed
    );
  blk0000011a : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000ec,
      I2 => sig00000007,
      O => sig000001ee
    );
  blk0000011b : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000eb,
      I2 => sig00000007,
      O => sig000001ef
    );
  blk0000011c : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000ea,
      I2 => sig00000007,
      O => sig000001f0
    );
  blk0000011d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001e9,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(7)
    );
  blk0000011e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ea,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(6)
    );
  blk0000011f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001eb,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(5)
    );
  blk00000120 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ec,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(4)
    );
  blk00000121 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ed,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(3)
    );
  blk00000122 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ee,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(2)
    );
  blk00000123 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ef,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(1)
    );
  blk00000124 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f0,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_im_mux_Q(0)
    );
  blk00000125 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f9,
      I2 => sig00000007,
      O => sig000001f1
    );
  blk00000126 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f8,
      I2 => sig00000007,
      O => sig000001f2
    );
  blk00000127 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f7,
      I2 => sig00000007,
      O => sig000001f3
    );
  blk00000128 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f6,
      I2 => sig00000007,
      O => sig000001f4
    );
  blk00000129 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f5,
      I2 => sig00000007,
      O => sig000001f5
    );
  blk0000012a : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f4,
      I2 => sig00000007,
      O => sig000001f6
    );
  blk0000012b : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f3,
      I2 => sig00000007,
      O => sig000001f7
    );
  blk0000012c : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig000000f2,
      I2 => sig00000007,
      O => sig000001f8
    );
  blk0000012d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f1,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(7)
    );
  blk0000012e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f2,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(6)
    );
  blk0000012f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f3,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(5)
    );
  blk00000130 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f4,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(4)
    );
  blk00000131 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f5,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(3)
    );
  blk00000132 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f6,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(2)
    );
  blk00000133 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f7,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(1)
    );
  blk00000134 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f8,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_single_channel_datapath_xk_re_mux_Q(0)
    );
  blk0000013b : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000071,
      Q => sig000001f9
    );
  blk0000013c : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000070,
      Q => sig000001fa
    );
  blk0000013d : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000006f,
      Q => sig000001fb
    );
  blk0000013e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000006e,
      Q => sig000001fc
    );
  blk0000013f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000006d,
      Q => sig000001fd
    );
  blk00000140 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000006c,
      Q => sig000001fe
    );
  blk00000141 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000006b,
      Q => sig000001ff
    );
  blk00000142 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000006a,
      Q => sig00000200
    );
  blk00000143 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001f9,
      R => sig00000002,
      Q => sig000000e0
    );
  blk00000144 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001fa,
      R => sig00000002,
      Q => sig000000df
    );
  blk00000145 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001fb,
      R => sig00000002,
      Q => sig000000de
    );
  blk00000146 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001fc,
      R => sig00000002,
      Q => sig000000dd
    );
  blk00000147 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001fd,
      R => sig00000002,
      Q => sig000000dc
    );
  blk00000148 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001fe,
      R => sig00000002,
      Q => sig000000db
    );
  blk00000149 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000001ff,
      R => sig00000002,
      Q => sig000000da
    );
  blk0000014a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000200,
      R => sig00000002,
      Q => sig000000d9
    );
  blk0000014b : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000079,
      Q => sig00000201
    );
  blk0000014c : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000078,
      Q => sig00000202
    );
  blk0000014d : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000077,
      Q => sig00000203
    );
  blk0000014e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000076,
      Q => sig00000204
    );
  blk0000014f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000075,
      Q => sig00000205
    );
  blk00000150 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000074,
      Q => sig00000206
    );
  blk00000151 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000073,
      Q => sig00000207
    );
  blk00000152 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000072,
      Q => sig00000208
    );
  blk00000153 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000201,
      R => sig00000002,
      Q => sig000000e8
    );
  blk00000154 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000202,
      R => sig00000002,
      Q => sig000000e7
    );
  blk00000155 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000203,
      R => sig00000002,
      Q => sig000000e6
    );
  blk00000156 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000204,
      R => sig00000002,
      Q => sig000000e5
    );
  blk00000157 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000205,
      R => sig00000002,
      Q => sig000000e4
    );
  blk00000158 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000206,
      R => sig00000002,
      Q => sig000000e3
    );
  blk00000159 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000207,
      R => sig00000002,
      Q => sig000000e2
    );
  blk0000015a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000208,
      R => sig00000002,
      Q => sig000000e1
    );
  blk00000161 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig0000005c,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000209
    );
  blk00000162 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig0000005c,
      I3 => sig0000005d,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000020a
    );
  blk00000163 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig0000005c,
      I2 => sig0000005d,
      I3 => sig0000005e,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000020b
    );
  blk00000164 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000005c,
      I1 => sig0000005d,
      I2 => sig0000005e,
      I3 => sig0000005f,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000020c
    );
  blk00000165 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000005d,
      I1 => sig0000005e,
      I2 => sig0000005f,
      I3 => sig00000060,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000020d
    );
  blk00000166 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000005e,
      I1 => sig0000005f,
      I2 => sig00000060,
      I3 => sig00000061,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000020e
    );
  blk00000167 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000005f,
      I1 => sig00000060,
      I2 => sig00000061,
      I3 => sig00000062,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000020f
    );
  blk00000168 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000060,
      I1 => sig00000061,
      I2 => sig00000062,
      I3 => sig00000063,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000210
    );
  blk00000169 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000061,
      I1 => sig00000062,
      I2 => sig00000063,
      I3 => sig00000064,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000211
    );
  blk0000016a : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000062,
      I1 => sig00000063,
      I2 => sig00000064,
      I3 => sig00000065,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000212
    );
  blk0000016b : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000063,
      I1 => sig00000064,
      I2 => sig00000065,
      I3 => sig00000066,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000213
    );
  blk0000016c : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000064,
      I1 => sig00000065,
      I2 => sig00000066,
      I3 => sig00000067,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000214
    );
  blk0000016d : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000065,
      I1 => sig00000066,
      I2 => sig00000067,
      I3 => sig00000068,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000215
    );
  blk0000016e : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000066,
      I1 => sig00000067,
      I2 => sig00000068,
      I3 => sig00000068,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000216
    );
  blk0000016f : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000067,
      I1 => sig00000068,
      I2 => sig00000068,
      I3 => sig00000068,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000217
    );
  blk00000170 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000068,
      I1 => sig00000068,
      I2 => sig00000068,
      I3 => sig00000068,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000218
    );
  blk00000171 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000209,
      R => sig00000002,
      Q => NLW_blk00000171_Q_UNCONNECTED
    );
  blk00000172 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000020a,
      R => sig00000002,
      Q => NLW_blk00000172_Q_UNCONNECTED
    );
  blk00000173 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000020b,
      R => sig00000002,
      Q => NLW_blk00000173_Q_UNCONNECTED
    );
  blk00000174 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000020c,
      R => sig00000002,
      Q => NLW_blk00000174_Q_UNCONNECTED
    );
  blk00000175 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000020d,
      R => sig00000002,
      Q => NLW_blk00000175_Q_UNCONNECTED
    );
  blk00000176 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000020e,
      R => sig00000002,
      Q => NLW_blk00000176_Q_UNCONNECTED
    );
  blk00000177 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000020f,
      R => sig00000002,
      Q => sig000000b6
    );
  blk00000178 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000210,
      R => sig00000002,
      Q => sig000000b7
    );
  blk00000179 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000211,
      R => sig00000002,
      Q => sig000000b8
    );
  blk0000017a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000212,
      R => sig00000002,
      Q => sig000000b9
    );
  blk0000017b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000213,
      R => sig00000002,
      Q => sig000000ba
    );
  blk0000017c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000214,
      R => sig00000002,
      Q => sig000000bb
    );
  blk0000017d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000215,
      R => sig00000002,
      Q => sig000000bc
    );
  blk0000017e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000216,
      R => sig00000002,
      Q => sig000000bd
    );
  blk0000017f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000217,
      R => sig00000002,
      Q => NLW_blk0000017f_Q_UNCONNECTED
    );
  blk00000180 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000218,
      R => sig00000002,
      Q => NLW_blk00000180_Q_UNCONNECTED
    );
  blk00000181 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig0000004f,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000219
    );
  blk00000182 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig0000004f,
      I3 => sig00000050,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000021a
    );
  blk00000183 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig0000004f,
      I2 => sig00000050,
      I3 => sig00000051,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000021b
    );
  blk00000184 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000004f,
      I1 => sig00000050,
      I2 => sig00000051,
      I3 => sig00000052,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000021c
    );
  blk00000185 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000050,
      I1 => sig00000051,
      I2 => sig00000052,
      I3 => sig00000053,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000021d
    );
  blk00000186 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000051,
      I1 => sig00000052,
      I2 => sig00000053,
      I3 => sig00000054,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000021e
    );
  blk00000187 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000052,
      I1 => sig00000053,
      I2 => sig00000054,
      I3 => sig00000055,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig0000021f
    );
  blk00000188 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000053,
      I1 => sig00000054,
      I2 => sig00000055,
      I3 => sig00000056,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000220
    );
  blk00000189 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000054,
      I1 => sig00000055,
      I2 => sig00000056,
      I3 => sig00000057,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000221
    );
  blk0000018a : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000055,
      I1 => sig00000056,
      I2 => sig00000057,
      I3 => sig00000058,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000222
    );
  blk0000018b : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000056,
      I1 => sig00000057,
      I2 => sig00000058,
      I3 => sig00000059,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000223
    );
  blk0000018c : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000057,
      I1 => sig00000058,
      I2 => sig00000059,
      I3 => sig0000005a,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000224
    );
  blk0000018d : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000058,
      I1 => sig00000059,
      I2 => sig0000005a,
      I3 => sig0000005b,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000225
    );
  blk0000018e : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000059,
      I1 => sig0000005a,
      I2 => sig0000005b,
      I3 => sig0000005b,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000226
    );
  blk0000018f : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000005a,
      I1 => sig0000005b,
      I2 => sig0000005b,
      I3 => sig0000005b,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000227
    );
  blk00000190 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000005b,
      I1 => sig0000005b,
      I2 => sig0000005b,
      I3 => sig0000005b,
      I4 => sig0000009a,
      I5 => sig0000009b,
      O => sig00000228
    );
  blk00000191 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000219,
      R => sig00000002,
      Q => NLW_blk00000191_Q_UNCONNECTED
    );
  blk00000192 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000021a,
      R => sig00000002,
      Q => NLW_blk00000192_Q_UNCONNECTED
    );
  blk00000193 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000021b,
      R => sig00000002,
      Q => NLW_blk00000193_Q_UNCONNECTED
    );
  blk00000194 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000021c,
      R => sig00000002,
      Q => NLW_blk00000194_Q_UNCONNECTED
    );
  blk00000195 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000021d,
      R => sig00000002,
      Q => NLW_blk00000195_Q_UNCONNECTED
    );
  blk00000196 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000021e,
      R => sig00000002,
      Q => NLW_blk00000196_Q_UNCONNECTED
    );
  blk00000197 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000021f,
      R => sig00000002,
      Q => sig000000ae
    );
  blk00000198 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000220,
      R => sig00000002,
      Q => sig000000af
    );
  blk00000199 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000221,
      R => sig00000002,
      Q => sig000000b0
    );
  blk0000019a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000222,
      R => sig00000002,
      Q => sig000000b1
    );
  blk0000019b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000223,
      R => sig00000002,
      Q => sig000000b2
    );
  blk0000019c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000224,
      R => sig00000002,
      Q => sig000000b3
    );
  blk0000019d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000225,
      R => sig00000002,
      Q => sig000000b4
    );
  blk0000019e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000226,
      R => sig00000002,
      Q => sig000000b5
    );
  blk0000019f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000227,
      R => sig00000002,
      Q => NLW_blk0000019f_Q_UNCONNECTED
    );
  blk000001a0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000228,
      R => sig00000002,
      Q => NLW_blk000001a0_Q_UNCONNECTED
    );
  blk000001a1 : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => sig00000002,
      O => sig0000028b
    );
  blk000001a2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig000002bd,
      I1 => sig00000267,
      O => sig0000028c
    );
  blk000001a3 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002fe,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig0000025e,
      O => sig00000290
    );
  blk000001a4 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002fd,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig0000025f,
      O => sig00000291
    );
  blk000001a5 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002fc,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000260,
      O => sig00000292
    );
  blk000001a6 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002fb,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000261,
      O => sig00000293
    );
  blk000001a7 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002fa,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000262,
      O => sig00000294
    );
  blk000001a8 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002f9,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000263,
      O => sig00000295
    );
  blk000001a9 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002f8,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000264,
      O => sig00000296
    );
  blk000001aa : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002f7,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000265,
      O => sig00000297
    );
  blk000001ab : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => sig000002f6,
      I1 => sig000002d3,
      I2 => sig00000280,
      I3 => sig00000266,
      O => sig00000298
    );
  blk000001ac : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => sig000002d4,
      I1 => sig00000275,
      I2 => sig00000274,
      O => sig00000299
    );
  blk000001ad : MUXCY
    port map (
      CI => sig00000001,
      DI => sig00000002,
      S => sig00000281,
      O => sig0000029b
    );
  blk000001ae : MUXCY
    port map (
      CI => sig0000029b,
      DI => sig00000002,
      S => sig00000282,
      O => sig0000029c
    );
  blk000001af : MUXCY
    port map (
      CI => sig0000029c,
      DI => sig00000002,
      S => sig00000283,
      O => sig0000029d
    );
  blk000001b0 : MUXCY
    port map (
      CI => sig0000029d,
      DI => sig00000002,
      S => sig00000284,
      O => sig0000029e
    );
  blk000001b1 : MUXCY
    port map (
      CI => sig0000029e,
      DI => sig00000002,
      S => sig00000285,
      O => sig0000029f
    );
  blk000001b2 : MUXCY
    port map (
      CI => sig0000029f,
      DI => sig00000002,
      S => sig00000286,
      O => sig000002a0
    );
  blk000001b3 : MUXCY
    port map (
      CI => sig000002a0,
      DI => sig00000002,
      S => sig00000287,
      O => sig000002a1
    );
  blk000001b4 : MUXCY
    port map (
      CI => sig000002a1,
      DI => sig00000002,
      S => sig00000288,
      O => sig000002a2
    );
  blk000001b5 : MUXCY
    port map (
      CI => sig000002a2,
      DI => sig00000002,
      S => sig00000289,
      O => sig000002a3
    );
  blk000001b6 : MUXCY
    port map (
      CI => sig000002a3,
      DI => sig00000002,
      S => sig0000028a,
      O => sig000002a4
    );
  blk000001b7 : MUXCY
    port map (
      CI => sig000002a4,
      DI => sig00000002,
      S => sig0000028b,
      O => sig000002a9
    );
  blk000001b8 : MUXCY
    port map (
      CI => sig000002ac,
      DI => sig00000002,
      S => sig0000028e,
      O => sig000002ab
    );
  blk000001b9 : MUXCY
    port map (
      CI => sig00000001,
      DI => sig00000002,
      S => sig0000028f,
      O => sig000002ac
    );
  blk000001ba : XORCY
    port map (
      CI => sig000002a9,
      LI => sig00000002,
      O => sig000002b1
    );
  blk000001bb : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000029a,
      D => sig000002ad,
      Q => sig0000024e
    );
  blk000001bc : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000029a,
      D => sig000002ae,
      Q => sig0000024f
    );
  blk000001bd : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000029a,
      D => sig000002af,
      Q => sig00000250
    );
  blk000001be : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000029a,
      D => sig000002b0,
      Q => sig00000251
    );
  blk000001bf : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000028d,
      R => sig00000002,
      Q => sig00000252
    );
  blk000001c0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000229,
      R => sig00000002,
      Q => sig00000253
    );
  blk000001c1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000022a,
      R => sig00000002,
      Q => sig00000254
    );
  blk000001c2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000022b,
      R => sig00000002,
      Q => sig00000255
    );
  blk000001c3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000022c,
      R => sig00000002,
      Q => sig00000256
    );
  blk000001c4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000022d,
      R => sig00000002,
      Q => sig00000257
    );
  blk000001c5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000022e,
      R => sig00000002,
      Q => sig00000258
    );
  blk000001c6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000022f,
      R => sig00000002,
      Q => sig00000259
    );
  blk000001c7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000230,
      R => sig00000002,
      Q => sig0000025a
    );
  blk000001c8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000231,
      R => sig00000002,
      Q => sig0000025b
    );
  blk000001c9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000002,
      R => sig00000002,
      Q => sig0000025c
    );
  blk000001ca : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b2,
      R => sig00000002,
      Q => sig0000026a
    );
  blk000001cb : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b3,
      R => sig00000002,
      Q => sig0000026b
    );
  blk000001cc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b4,
      R => sig00000002,
      Q => sig0000026c
    );
  blk000001cd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b5,
      R => sig00000002,
      Q => sig0000026d
    );
  blk000001ce : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b6,
      R => sig00000002,
      Q => sig0000026e
    );
  blk000001cf : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b7,
      R => sig00000002,
      Q => sig0000026f
    );
  blk000001d0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b8,
      R => sig00000002,
      Q => sig00000270
    );
  blk000001d1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b9,
      R => sig00000002,
      Q => sig00000271
    );
  blk000001d2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002ba,
      R => sig00000002,
      Q => sig00000272
    );
  blk000001d3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002bb,
      R => sig00000002,
      Q => sig0000025d
    );
  blk000001d4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002b1,
      Q => sig000002d3
    );
  blk000001d5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000026a,
      R => sig00000002,
      Q => sig0000025e
    );
  blk000001d6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000026b,
      R => sig00000002,
      Q => sig0000025f
    );
  blk000001d7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000026c,
      R => sig00000002,
      Q => sig00000260
    );
  blk000001d8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000026d,
      R => sig00000002,
      Q => sig00000261
    );
  blk000001d9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000026e,
      R => sig00000002,
      Q => sig00000262
    );
  blk000001da : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000026f,
      R => sig00000002,
      Q => sig00000263
    );
  blk000001db : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000270,
      R => sig00000002,
      Q => sig00000264
    );
  blk000001dc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000271,
      R => sig00000002,
      Q => sig00000265
    );
  blk000001dd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000272,
      R => sig00000002,
      Q => sig00000266
    );
  blk000001de : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002ab,
      R => sig00000002,
      Q => sig00000267
    );
  blk000001df : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000028c,
      R => sig00000002,
      Q => sig00000268
    );
  blk000001e0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000023c,
      Q => sig000002f2
    );
  blk000001e1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000023d,
      Q => sig000002f1
    );
  blk000001e2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000023e,
      Q => sig000002f0
    );
  blk000001e3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000023f,
      Q => sig000002ef
    );
  blk000001e4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000240,
      Q => sig000002ee
    );
  blk000001e5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000241,
      Q => sig000002ed
    );
  blk000001e6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000242,
      Q => sig000002ec
    );
  blk000001e7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000243,
      Q => sig000002eb
    );
  blk000001e8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000244,
      Q => sig000002ea
    );
  blk000001e9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000245,
      Q => sig000002e9
    );
  blk000001ea : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000246,
      Q => sig000002e8
    );
  blk000001eb : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000247,
      Q => sig000002e7
    );
  blk000001ec : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000248,
      Q => sig000002e6
    );
  blk000001ed : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig00000249,
      Q => sig000002e5
    );
  blk000001ee : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000024a,
      Q => sig000002e4
    );
  blk000001ef : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000024b,
      Q => sig000002e3
    );
  blk000001f0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000024c,
      Q => sig000002e2
    );
  blk000001f1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig000002df,
      D => sig0000024d,
      Q => sig000002e1
    );
  blk000001f2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000290,
      R => sig00000002,
      Q => sig000002fe
    );
  blk000001f3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000291,
      R => sig00000002,
      Q => sig000002fd
    );
  blk000001f4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000292,
      R => sig00000002,
      Q => sig000002fc
    );
  blk000001f5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000293,
      R => sig00000002,
      Q => sig000002fb
    );
  blk000001f6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000294,
      R => sig00000002,
      Q => sig000002fa
    );
  blk000001f7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000295,
      R => sig00000002,
      Q => sig000002f9
    );
  blk000001f8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000296,
      R => sig00000002,
      Q => sig000002f8
    );
  blk000001f9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000297,
      R => sig00000002,
      Q => sig000002f7
    );
  blk000001fa : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000298,
      R => sig00000002,
      Q => sig000002f6
    );
  blk000001fb : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_run_addr_gen_done_int2,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_done_i_reg
    );
  blk000001fc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000027f,
      R => sig00000002,
      Q => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_run_addr_gen_done_int2
    );
  blk000001fd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000279,
      R => sig00000002,
      Q => sig0000027f
    );
  blk000001fe : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000278,
      R => sig00000002,
      Q => sig00000279
    );
  blk000001ff : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000280,
      R => sig00000002,
      Q => sig0000027d
    );
  blk00000200 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000232,
      R => sig00000002,
      Q => sig000002bf
    );
  blk00000201 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000233,
      R => sig00000002,
      Q => sig000002c0
    );
  blk00000202 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000234,
      R => sig00000002,
      Q => sig000002c1
    );
  blk00000203 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000235,
      R => sig00000002,
      Q => sig000002c2
    );
  blk00000204 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000236,
      R => sig00000002,
      Q => sig000002c3
    );
  blk00000205 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000237,
      R => sig00000002,
      Q => sig000002c4
    );
  blk00000206 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000238,
      R => sig00000002,
      Q => sig000002c5
    );
  blk00000207 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000239,
      R => sig00000002,
      Q => sig000002c6
    );
  blk00000208 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000023a,
      R => sig00000002,
      Q => sig000002c7
    );
  blk00000209 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000023b,
      R => sig00000002,
      Q => sig000002c8
    );
  blk0000020a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000299,
      R => sig00000002,
      Q => sig00000278
    );
  blk0000020b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000275,
      R => sig00000002,
      Q => sig00000276
    );
  blk0000020c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000274,
      R => sig00000002,
      Q => sig00000275
    );
  blk0000020d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002e0,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_busy_i_reg2
    );
  blk0000020e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000027b,
      R => sig00000002,
      Q => sig00000006
    );
  blk0000020f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000027c,
      R => sig00000002,
      Q => sig00000009
    );
  blk00000210 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002f5,
      R => sig00000002,
      Q => sig000002e0
    );
  blk00000211 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000277,
      R => sig00000002,
      Q => sig0000027b
    );
  blk00000212 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000027a,
      R => sig00000002,
      Q => sig000002f5
    );
  blk00000213 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000252,
      R => sig00000002,
      Q => sig0000027c
    );
  blk00000214 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000027e,
      R => sig00000002,
      Q => sig00000008
    );
  blk00000215 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002d4,
      R => sig00000002,
      Q => sig00000273
    );
  blk00000216 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000276,
      R => sig00000002,
      Q => sig00000277
    );
  blk00000217 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000002aa,
      R => sig00000002,
      Q => sig0000027e
    );
  blk0000021e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000308,
      R => sig00000002,
      Q => sig000002ff
    );
  blk0000021f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000030c,
      R => sig00000002,
      Q => sig00000303
    );
  blk00000220 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000309,
      R => sig00000002,
      Q => sig00000300
    );
  blk00000221 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000030b,
      R => sig00000002,
      Q => sig0000000a
    );
  blk00000222 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000030a,
      R => sig00000002,
      Q => sig00000301
    );
  blk00000223 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000030d,
      R => sig00000002,
      Q => sig00000302
    );
  blk00000224 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000307,
      S => sig00000002,
      Q => sig00000003
    );
  blk00000225 : XORCY
    port map (
      CI => sig0000032b,
      LI => sig00000002,
      O => sig00000318
    );
  blk00000226 : XORCY
    port map (
      CI => sig0000032c,
      LI => sig00000002,
      O => sig00000319
    );
  blk00000227 : XORCY
    port map (
      CI => sig0000032d,
      LI => sig00000002,
      O => sig0000031a
    );
  blk00000228 : MUXCY
    port map (
      CI => sig00000001,
      DI => sig00000002,
      S => sig00000331,
      O => sig0000031b
    );
  blk00000229 : MUXCY
    port map (
      CI => sig00000001,
      DI => sig00000002,
      S => sig00000332,
      O => sig0000031c
    );
  blk0000022a : MUXCY
    port map (
      CI => sig00000001,
      DI => sig00000002,
      S => sig00000333,
      O => sig0000031d
    );
  blk0000022b : MUXCY
    port map (
      CI => sig0000031b,
      DI => sig00000002,
      S => sig00000334,
      O => sig0000031e
    );
  blk0000022c : MUXCY
    port map (
      CI => sig0000031c,
      DI => sig00000002,
      S => sig00000335,
      O => sig0000031f
    );
  blk0000022d : MUXCY
    port map (
      CI => sig0000031d,
      DI => sig00000002,
      S => sig00000336,
      O => sig00000320
    );
  blk0000022e : MUXCY
    port map (
      CI => sig0000032e,
      DI => sig00000002,
      S => sig00000337,
      O => sig0000032b
    );
  blk0000022f : MUXCY
    port map (
      CI => sig0000032f,
      DI => sig00000002,
      S => sig00000338,
      O => sig0000032c
    );
  blk00000230 : MUXCY
    port map (
      CI => sig00000330,
      DI => sig00000002,
      S => sig00000339,
      O => sig0000032d
    );
  blk00000231 : MUXCY
    port map (
      CI => sig0000031e,
      DI => sig000002be,
      S => sig0000033b,
      O => sig0000032e
    );
  blk00000232 : MUXCY
    port map (
      CI => sig0000031f,
      DI => sig000002bd,
      S => sig0000033c,
      O => sig0000032f
    );
  blk00000233 : MUXCY
    port map (
      CI => sig00000320,
      DI => sig000002bc,
      S => sig0000033d,
      O => sig00000330
    );
  blk00000234 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig000002b5,
      I1 => sig000002b4,
      I2 => sig000002b3,
      I3 => sig000002b2,
      O => sig00000334
    );
  blk00000235 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig000002b5,
      I1 => sig000002b4,
      I2 => sig000002b3,
      I3 => sig000002b2,
      O => sig00000335
    );
  blk00000236 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig000002b5,
      I1 => sig000002b4,
      I2 => sig000002b3,
      I3 => sig000002b2,
      O => sig00000336
    );
  blk00000237 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig00000302,
      I1 => sig0000000a,
      I2 => sig00000303,
      I3 => sig00000003,
      O => sig00000337
    );
  blk00000238 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig00000302,
      I1 => sig0000000a,
      I2 => sig00000303,
      I3 => sig00000003,
      O => sig00000338
    );
  blk00000239 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig00000302,
      I1 => sig0000000a,
      I2 => sig00000303,
      I3 => sig00000003,
      O => sig00000339
    );
  blk0000023a : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => ce,
      I1 => sig00000001,
      I2 => sig000002bc,
      O => sig0000033b
    );
  blk0000023b : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => ce,
      I1 => sig00000001,
      I2 => sig000002bc,
      O => sig0000033c
    );
  blk0000023c : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => ce,
      I1 => sig00000001,
      I2 => sig000002bc,
      O => sig0000033d
    );
  blk0000023d : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig00000318,
      Q => sig000002be
    );
  blk0000023e : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig00000319,
      Q => sig000002bd
    );
  blk0000023f : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig0000031a,
      Q => sig000002bc
    );
  blk00000240 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig0000030e,
      R => sig00000003,
      Q => sig000002bb
    );
  blk00000241 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig0000030f,
      R => sig00000003,
      Q => sig000002ba
    );
  blk00000242 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000310,
      R => sig00000003,
      Q => sig000002b9
    );
  blk00000243 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000311,
      R => sig00000003,
      Q => sig000002b8
    );
  blk00000244 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000312,
      R => sig00000003,
      Q => sig000002b7
    );
  blk00000245 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000313,
      R => sig00000003,
      Q => sig000002b6
    );
  blk00000246 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000314,
      R => sig00000003,
      Q => sig000002b5
    );
  blk00000247 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000315,
      R => sig00000003,
      Q => sig000002b4
    );
  blk00000248 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000316,
      R => sig00000003,
      Q => sig000002b3
    );
  blk00000249 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => sig0000033a,
      D => sig00000317,
      R => sig00000003,
      Q => sig000002b2
    );
  blk00000269 : MUXF8
    port map (
      I0 => sig00000349,
      I1 => sig00000348,
      S => sig0000024e,
      O => sig0000033e
    );
  blk0000026a : MUXF8
    port map (
      I0 => sig0000034b,
      I1 => sig0000034a,
      S => sig0000024e,
      O => sig0000033f
    );
  blk0000026b : MUXF8
    port map (
      I0 => sig0000034d,
      I1 => sig0000034c,
      S => sig0000024e,
      O => sig00000340
    );
  blk0000026c : MUXF8
    port map (
      I0 => sig0000034f,
      I1 => sig0000034e,
      S => sig0000024e,
      O => sig00000341
    );
  blk0000026d : MUXF8
    port map (
      I0 => sig00000351,
      I1 => sig00000350,
      S => sig0000024e,
      O => sig00000342
    );
  blk0000026e : MUXF8
    port map (
      I0 => sig00000353,
      I1 => sig00000352,
      S => sig0000024e,
      O => sig00000343
    );
  blk0000026f : MUXF8
    port map (
      I0 => sig00000355,
      I1 => sig00000354,
      S => sig0000024e,
      O => sig00000344
    );
  blk00000270 : MUXF8
    port map (
      I0 => sig00000357,
      I1 => sig00000356,
      S => sig0000024e,
      O => sig00000345
    );
  blk00000271 : MUXF8
    port map (
      I0 => sig00000359,
      I1 => sig00000358,
      S => sig0000024e,
      O => sig00000346
    );
  blk00000272 : MUXF8
    port map (
      I0 => sig0000035b,
      I1 => sig0000035a,
      S => sig0000024e,
      O => sig00000347
    );
  blk00000273 : MUXF7
    port map (
      I0 => sig00000366,
      I1 => sig0000035c,
      S => sig0000024f,
      O => sig00000348
    );
  blk00000274 : MUXF7
    port map (
      I0 => sig0000037a,
      I1 => sig00000370,
      S => sig0000024f,
      O => sig00000349
    );
  blk00000275 : MUXF7
    port map (
      I0 => sig00000367,
      I1 => sig0000035d,
      S => sig0000024f,
      O => sig0000034a
    );
  blk00000276 : MUXF7
    port map (
      I0 => sig0000037b,
      I1 => sig00000371,
      S => sig0000024f,
      O => sig0000034b
    );
  blk00000277 : MUXF7
    port map (
      I0 => sig00000368,
      I1 => sig0000035e,
      S => sig0000024f,
      O => sig0000034c
    );
  blk00000278 : MUXF7
    port map (
      I0 => sig0000037c,
      I1 => sig00000372,
      S => sig0000024f,
      O => sig0000034d
    );
  blk00000279 : MUXF7
    port map (
      I0 => sig00000369,
      I1 => sig0000035f,
      S => sig0000024f,
      O => sig0000034e
    );
  blk0000027a : MUXF7
    port map (
      I0 => sig0000037d,
      I1 => sig00000373,
      S => sig0000024f,
      O => sig0000034f
    );
  blk0000027b : MUXF7
    port map (
      I0 => sig0000036a,
      I1 => sig00000360,
      S => sig0000024f,
      O => sig00000350
    );
  blk0000027c : MUXF7
    port map (
      I0 => sig0000037e,
      I1 => sig00000374,
      S => sig0000024f,
      O => sig00000351
    );
  blk0000027d : MUXF7
    port map (
      I0 => sig0000036b,
      I1 => sig00000361,
      S => sig0000024f,
      O => sig00000352
    );
  blk0000027e : MUXF7
    port map (
      I0 => sig0000037f,
      I1 => sig00000375,
      S => sig0000024f,
      O => sig00000353
    );
  blk0000027f : MUXF7
    port map (
      I0 => sig0000036c,
      I1 => sig00000362,
      S => sig0000024f,
      O => sig00000354
    );
  blk00000280 : MUXF7
    port map (
      I0 => sig00000380,
      I1 => sig00000376,
      S => sig0000024f,
      O => sig00000355
    );
  blk00000281 : MUXF7
    port map (
      I0 => sig0000036d,
      I1 => sig00000363,
      S => sig0000024f,
      O => sig00000356
    );
  blk00000282 : MUXF7
    port map (
      I0 => sig00000381,
      I1 => sig00000377,
      S => sig0000024f,
      O => sig00000357
    );
  blk00000283 : MUXF7
    port map (
      I0 => sig0000036e,
      I1 => sig00000364,
      S => sig0000024f,
      O => sig00000358
    );
  blk00000284 : MUXF7
    port map (
      I0 => sig00000382,
      I1 => sig00000378,
      S => sig0000024f,
      O => sig00000359
    );
  blk00000285 : MUXF7
    port map (
      I0 => sig0000036f,
      I1 => sig00000365,
      S => sig0000024f,
      O => sig0000035a
    );
  blk00000286 : MUXF7
    port map (
      I0 => sig00000383,
      I1 => sig00000379,
      S => sig0000024f,
      O => sig0000035b
    );
  blk00000287 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000035c
    );
  blk00000288 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000035d
    );
  blk00000289 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000035e
    );
  blk0000028a : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000035f
    );
  blk0000028b : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000360
    );
  blk0000028c : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000361
    );
  blk0000028d : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000362
    );
  blk0000028e : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000363
    );
  blk0000028f : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000364
    );
  blk00000290 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig00000002,
      I1 => sig00000002,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000365
    );
  blk00000291 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b9,
      I1 => sig000002ba,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000366
    );
  blk00000292 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b8,
      I1 => sig000002b9,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000367
    );
  blk00000293 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b7,
      I1 => sig000002b8,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000368
    );
  blk00000294 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b6,
      I1 => sig000002b7,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000369
    );
  blk00000295 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b5,
      I1 => sig000002b6,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000036a
    );
  blk00000296 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b4,
      I1 => sig000002b5,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000036b
    );
  blk00000297 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b3,
      I1 => sig000002b4,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000036c
    );
  blk00000298 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b2,
      I1 => sig000002b3,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000036d
    );
  blk00000299 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000028d,
      I1 => sig000002b2,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000036e
    );
  blk0000029a : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002ba,
      I1 => sig0000028d,
      I2 => sig00000002,
      I3 => sig00000002,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000036f
    );
  blk0000029b : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b5,
      I1 => sig000002b6,
      I2 => sig000002b7,
      I3 => sig000002b8,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000370
    );
  blk0000029c : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b4,
      I1 => sig000002b5,
      I2 => sig000002b6,
      I3 => sig000002b7,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000371
    );
  blk0000029d : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b3,
      I1 => sig000002b4,
      I2 => sig000002b5,
      I3 => sig000002b6,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000372
    );
  blk0000029e : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b2,
      I1 => sig000002b3,
      I2 => sig000002b4,
      I3 => sig000002b5,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000373
    );
  blk0000029f : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000028d,
      I1 => sig000002b2,
      I2 => sig000002b3,
      I3 => sig000002b4,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000374
    );
  blk000002a0 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002ba,
      I1 => sig0000028d,
      I2 => sig000002b2,
      I3 => sig000002b3,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000375
    );
  blk000002a1 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b9,
      I1 => sig000002ba,
      I2 => sig0000028d,
      I3 => sig000002b2,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000376
    );
  blk000002a2 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b8,
      I1 => sig000002b9,
      I2 => sig000002ba,
      I3 => sig0000028d,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000377
    );
  blk000002a3 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b7,
      I1 => sig000002b8,
      I2 => sig000002b9,
      I3 => sig000002ba,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000378
    );
  blk000002a4 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b6,
      I1 => sig000002b7,
      I2 => sig000002b8,
      I3 => sig000002b9,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000379
    );
  blk000002a5 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig0000028d,
      I1 => sig000002b2,
      I2 => sig000002b3,
      I3 => sig000002b4,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000037a
    );
  blk000002a6 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002ba,
      I1 => sig0000028d,
      I2 => sig000002b2,
      I3 => sig000002b3,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000037b
    );
  blk000002a7 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b9,
      I1 => sig000002ba,
      I2 => sig0000028d,
      I3 => sig000002b2,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000037c
    );
  blk000002a8 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b8,
      I1 => sig000002b9,
      I2 => sig000002ba,
      I3 => sig0000028d,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000037d
    );
  blk000002a9 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b7,
      I1 => sig000002b8,
      I2 => sig000002b9,
      I3 => sig000002ba,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000037e
    );
  blk000002aa : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b6,
      I1 => sig000002b7,
      I2 => sig000002b8,
      I3 => sig000002b9,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig0000037f
    );
  blk000002ab : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b5,
      I1 => sig000002b6,
      I2 => sig000002b7,
      I3 => sig000002b8,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000380
    );
  blk000002ac : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b4,
      I1 => sig000002b5,
      I2 => sig000002b6,
      I3 => sig000002b7,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000381
    );
  blk000002ad : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b3,
      I1 => sig000002b4,
      I2 => sig000002b5,
      I3 => sig000002b6,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000382
    );
  blk000002ae : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => sig000002b2,
      I1 => sig000002b3,
      I2 => sig000002b4,
      I3 => sig000002b5,
      I4 => sig00000251,
      I5 => sig00000250,
      O => sig00000383
    );
  blk000002af : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000384,
      R => sig00000002,
      Q => sig0000023b
    );
  blk000002b0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000033e,
      R => sig00000002,
      Q => sig00000384
    );
  blk000002b1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000385,
      R => sig00000002,
      Q => sig0000023a
    );
  blk000002b2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000033f,
      R => sig00000002,
      Q => sig00000385
    );
  blk000002b3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000386,
      R => sig00000002,
      Q => sig00000239
    );
  blk000002b4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000340,
      R => sig00000002,
      Q => sig00000386
    );
  blk000002b5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000387,
      R => sig00000002,
      Q => sig00000238
    );
  blk000002b6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000341,
      R => sig00000002,
      Q => sig00000387
    );
  blk000002b7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000388,
      R => sig00000002,
      Q => sig00000237
    );
  blk000002b8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000342,
      R => sig00000002,
      Q => sig00000388
    );
  blk000002b9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000389,
      R => sig00000002,
      Q => sig00000236
    );
  blk000002ba : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000343,
      R => sig00000002,
      Q => sig00000389
    );
  blk000002bb : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000038a,
      R => sig00000002,
      Q => sig00000235
    );
  blk000002bc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000344,
      R => sig00000002,
      Q => sig0000038a
    );
  blk000002bd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000038b,
      R => sig00000002,
      Q => sig00000234
    );
  blk000002be : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000345,
      R => sig00000002,
      Q => sig0000038b
    );
  blk000002bf : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000038c,
      R => sig00000002,
      Q => sig00000233
    );
  blk000002c0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000346,
      R => sig00000002,
      Q => sig0000038c
    );
  blk000002c1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000038d,
      R => sig00000002,
      Q => sig00000232
    );
  blk000002c2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000347,
      R => sig00000002,
      Q => sig0000038d
    );
  blk000002c3 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000232,
      Q => sig0000038e
    );
  blk000002c4 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000233,
      Q => sig0000038f
    );
  blk000002c5 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000234,
      Q => sig00000390
    );
  blk000002c6 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000235,
      Q => sig00000391
    );
  blk000002c7 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000236,
      Q => sig00000392
    );
  blk000002c8 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000237,
      Q => sig00000393
    );
  blk000002c9 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000238,
      Q => sig00000394
    );
  blk000002ca : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig00000239,
      Q => sig00000395
    );
  blk000002cb : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig0000023a,
      Q => sig00000396
    );
  blk000002cc : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000001,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig0000023b,
      Q => sig00000397
    );
  blk000002cd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000038e,
      R => sig00000002,
      Q => sig000002c9
    );
  blk000002ce : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig0000038f,
      R => sig00000002,
      Q => sig000002ca
    );
  blk000002cf : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000390,
      R => sig00000002,
      Q => sig000002cb
    );
  blk000002d0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000391,
      R => sig00000002,
      Q => sig000002cc
    );
  blk000002d1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000392,
      R => sig00000002,
      Q => sig000002cd
    );
  blk000002d2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000393,
      R => sig00000002,
      Q => sig000002ce
    );
  blk000002d3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000394,
      R => sig00000002,
      Q => sig000002cf
    );
  blk000002d4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000395,
      R => sig00000002,
      Q => sig000002d0
    );
  blk000002d5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000396,
      R => sig00000002,
      Q => sig000002d1
    );
  blk000002d6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000397,
      R => sig00000002,
      Q => sig000002d2
    );
  blk00000302 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b2,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(9)
    );
  blk00000303 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b1,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(8)
    );
  blk00000304 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b0,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(7)
    );
  blk00000305 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003af,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(6)
    );
  blk00000306 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ae,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(5)
    );
  blk00000307 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ad,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(4)
    );
  blk00000308 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ac,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(3)
    );
  blk00000309 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ab,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(2)
    );
  blk0000030a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003aa,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(1)
    );
  blk0000030b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003a9,
      R => sig00000398,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_xk_index_i(0)
    );
  blk0000030c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig00000007,
      R => sig00000002,
      Q => U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_dv_d
    );
  blk0000030d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003a3,
      R => sig00000002,
      Q => sig000003a6
    );
  blk0000030e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b2,
      Q => sig000003b3
    );
  blk0000030f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b3,
      Q => sig000003b4
    );
  blk00000310 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b4,
      Q => sig000003b5
    );
  blk00000311 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b5,
      Q => sig000003b6
    );
  blk00000312 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b6,
      Q => sig000003b7
    );
  blk00000313 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b7,
      Q => sig000003b8
    );
  blk00000314 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b8,
      Q => sig000003b9
    );
  blk00000315 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b9,
      Q => sig000003ba
    );
  blk00000316 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ba,
      Q => sig000003bb
    );
  blk00000317 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000001,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002bb,
      Q => sig000003bc
    );
  blk00000318 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b3,
      R => sig00000002,
      Q => sig000003b2
    );
  blk00000319 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b4,
      R => sig00000002,
      Q => sig000003b1
    );
  blk0000031a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b5,
      R => sig00000002,
      Q => sig000003b0
    );
  blk0000031b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b6,
      R => sig00000002,
      Q => sig000003af
    );
  blk0000031c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b7,
      R => sig00000002,
      Q => sig000003ae
    );
  blk0000031d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b8,
      R => sig00000002,
      Q => sig000003ad
    );
  blk0000031e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003b9,
      R => sig00000002,
      Q => sig000003ac
    );
  blk0000031f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ba,
      R => sig00000002,
      Q => sig000003ab
    );
  blk00000320 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003bb,
      R => sig00000002,
      Q => sig000003aa
    );
  blk00000321 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003bc,
      R => sig00000002,
      Q => sig000003a9
    );
  blk0000034b : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002f2,
      Q => sig000003bd
    );
  blk0000034c : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002f1,
      Q => sig000003be
    );
  blk0000034d : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002f0,
      Q => sig000003bf
    );
  blk0000034e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ef,
      Q => sig000003c0
    );
  blk0000034f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ee,
      Q => sig000003c1
    );
  blk00000350 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ed,
      Q => sig000003c2
    );
  blk00000351 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ec,
      Q => sig000003c3
    );
  blk00000352 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002eb,
      Q => sig000003c4
    );
  blk00000353 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ea,
      Q => sig000003c5
    );
  blk00000354 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003bd,
      R => sig00000002,
      Q => sig00000014
    );
  blk00000355 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003be,
      R => sig00000002,
      Q => sig00000013
    );
  blk00000356 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003bf,
      R => sig00000002,
      Q => sig00000012
    );
  blk00000357 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c0,
      R => sig00000002,
      Q => sig00000011
    );
  blk00000358 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c1,
      R => sig00000002,
      Q => sig00000010
    );
  blk00000359 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c2,
      R => sig00000002,
      Q => sig0000000f
    );
  blk0000035a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c3,
      R => sig00000002,
      Q => sig0000000e
    );
  blk0000035b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c4,
      R => sig00000002,
      Q => sig0000000d
    );
  blk0000035c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c5,
      R => sig00000002,
      Q => sig0000000c
    );
  blk0000035d : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e9,
      Q => sig000003c6
    );
  blk0000035e : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e8,
      Q => sig000003c7
    );
  blk0000035f : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e7,
      Q => sig000003c8
    );
  blk00000360 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e6,
      Q => sig000003c9
    );
  blk00000361 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e5,
      Q => sig000003ca
    );
  blk00000362 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e4,
      Q => sig000003cb
    );
  blk00000363 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e3,
      Q => sig000003cc
    );
  blk00000364 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e2,
      Q => sig000003cd
    );
  blk00000365 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002e1,
      Q => sig000003ce
    );
  blk00000366 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c6,
      R => sig00000002,
      Q => sig0000001d
    );
  blk00000367 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c7,
      R => sig00000002,
      Q => sig0000001c
    );
  blk00000368 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c8,
      R => sig00000002,
      Q => sig0000001b
    );
  blk00000369 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003c9,
      R => sig00000002,
      Q => sig0000001a
    );
  blk0000036a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ca,
      R => sig00000002,
      Q => sig00000019
    );
  blk0000036b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003cb,
      R => sig00000002,
      Q => sig00000018
    );
  blk0000036c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003cc,
      R => sig00000002,
      Q => sig00000017
    );
  blk0000036d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003cd,
      R => sig00000002,
      Q => sig00000016
    );
  blk0000036e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003ce,
      R => sig00000002,
      Q => sig00000015
    );
  blk0000036f : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => ce,
      I1 => sig00000008,
      I2 => sig0000004e,
      I3 => sig0000000b,
      O => sig00000034
    );
  blk00000370 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig0000009c,
      I2 => sig00000136,
      O => sig00000035
    );
  blk00000371 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a6,
      I2 => sig00000140,
      O => sig0000003f
    );
  blk00000372 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a7,
      I2 => sig00000141,
      O => sig00000040
    );
  blk00000373 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a8,
      I2 => sig00000142,
      O => sig00000041
    );
  blk00000374 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a9,
      I2 => sig00000143,
      O => sig00000042
    );
  blk00000375 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000aa,
      I2 => sig00000144,
      O => sig00000043
    );
  blk00000376 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000ab,
      I2 => sig00000145,
      O => sig00000044
    );
  blk00000377 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000ac,
      I2 => sig00000146,
      O => sig00000045
    );
  blk00000378 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000ad,
      I2 => sig00000147,
      O => sig00000046
    );
  blk00000379 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => sig00000148,
      I1 => sig0000000b,
      O => sig00000047
    );
  blk0000037a : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => sig00000149,
      I1 => sig0000000b,
      O => sig00000048
    );
  blk0000037b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig0000009d,
      I2 => sig00000137,
      O => sig00000036
    );
  blk0000037c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig0000009e,
      I2 => sig00000138,
      O => sig00000037
    );
  blk0000037d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig0000009f,
      I2 => sig00000139,
      O => sig00000038
    );
  blk0000037e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a0,
      I2 => sig0000013a,
      O => sig00000039
    );
  blk0000037f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a1,
      I2 => sig0000013b,
      O => sig0000003a
    );
  blk00000380 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a2,
      I2 => sig0000013c,
      O => sig0000003b
    );
  blk00000381 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a3,
      I2 => sig0000013d,
      O => sig0000003c
    );
  blk00000382 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a4,
      I2 => sig0000013e,
      O => sig0000003d
    );
  blk00000383 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig0000000b,
      I1 => sig000000a5,
      I2 => sig0000013f,
      O => sig0000003e
    );
  blk00000384 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig00000005,
      I1 => sig00000006,
      O => sig00000033
    );
  blk00000385 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ce,
      I1 => sig000000e9,
      O => sig00000049
    );
  blk00000386 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => sig000000e9,
      O => sig0000004a
    );
  blk00000387 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => scale_sch_we,
      O => sig0000004b
    );
  blk00000388 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sig0000004d,
      I1 => sig00000069,
      O => sig0000019b
    );
  blk00000389 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig0000007a,
      I2 => sig00000082,
      O => sig000001cb
    );
  blk0000038a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig0000007b,
      I2 => sig00000083,
      O => sig000001cc
    );
  blk0000038b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig0000007c,
      I2 => sig00000084,
      O => sig000001cd
    );
  blk0000038c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig0000007d,
      I2 => sig00000085,
      O => sig000001ce
    );
  blk0000038d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig0000007e,
      I2 => sig00000086,
      O => sig000001cf
    );
  blk0000038e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig0000007f,
      I2 => sig00000087,
      O => sig000001d0
    );
  blk0000038f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000080,
      I2 => sig00000088,
      O => sig000001d1
    );
  blk00000390 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000081,
      I2 => sig00000089,
      O => sig000001d2
    );
  blk00000391 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000082,
      I2 => sig0000007a,
      O => sig000001d3
    );
  blk00000392 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000083,
      I2 => sig0000007b,
      O => sig000001d4
    );
  blk00000393 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000084,
      I2 => sig0000007c,
      O => sig000001d5
    );
  blk00000394 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000085,
      I2 => sig0000007d,
      O => sig000001d6
    );
  blk00000395 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000086,
      I2 => sig0000007e,
      O => sig000001d7
    );
  blk00000396 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000087,
      I2 => sig0000007f,
      O => sig000001d8
    );
  blk00000397 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000088,
      I2 => sig00000080,
      O => sig000001d9
    );
  blk00000398 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sig00000069,
      I1 => sig00000089,
      I2 => sig00000081,
      O => sig000001da
    );
  blk00000399 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => sig000001dc,
      O => sig000001db
    );
  blk0000039a : LUT3
    generic map(
      INIT => X"42"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      I2 => sig00000250,
      O => sig0000022e
    );
  blk0000039b : LUT4
    generic map(
      INIT => X"4202"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      I2 => sig00000250,
      I3 => sig00000251,
      O => sig0000022f
    );
  blk0000039c : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      I2 => sig00000250,
      O => sig0000022a
    );
  blk0000039d : LUT4
    generic map(
      INIT => X"5646"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      I2 => sig00000250,
      I3 => sig00000251,
      O => sig0000022b
    );
  blk0000039e : LUT4
    generic map(
      INIT => X"2264"
    )
    port map (
      I0 => sig0000024f,
      I1 => sig0000024e,
      I2 => sig00000251,
      I3 => sig00000250,
      O => sig0000022d
    );
  blk0000039f : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      I2 => sig00000250,
      O => sig00000230
    );
  blk000003a0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000025d,
      I2 => sig0000025c,
      O => sig00000281
    );
  blk000003a1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig00000272,
      I2 => sig0000025b,
      O => sig00000282
    );
  blk000003a2 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig00000271,
      I2 => sig0000025a,
      O => sig00000283
    );
  blk000003a3 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig00000270,
      I2 => sig00000259,
      O => sig00000284
    );
  blk000003a4 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000026f,
      I2 => sig00000258,
      O => sig00000285
    );
  blk000003a5 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000026e,
      I2 => sig00000257,
      O => sig00000286
    );
  blk000003a6 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000026d,
      I2 => sig00000256,
      O => sig00000287
    );
  blk000003a7 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000026c,
      I2 => sig00000255,
      O => sig00000288
    );
  blk000003a8 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000026b,
      I2 => sig00000254,
      O => sig00000289
    );
  blk000003a9 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => ce,
      I1 => sig0000026a,
      I2 => sig00000253,
      O => sig0000028a
    );
  blk000003aa : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => sig000002bc,
      I2 => sig0000000a,
      O => sig0000029a
    );
  blk000003ab : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig0000000a,
      I1 => sig00000251,
      O => sig000002a8
    );
  blk000003ac : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig0000000a,
      I1 => sig00000250,
      O => sig000002a7
    );
  blk000003ad : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig0000000a,
      I1 => sig0000024f,
      O => sig000002a6
    );
  blk000003ae : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig0000000a,
      I1 => sig0000024e,
      O => sig000002a5
    );
  blk000003af : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      O => sig0000028e
    );
  blk000003b0 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000251,
      I1 => sig00000250,
      O => sig0000028f
    );
  blk000003b1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig0000024f,
      I2 => sig00000250,
      I3 => sig00000251,
      O => sig000002aa
    );
  blk000003b2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => sig000002f5,
      O => sig000002df
    );
  blk000003b3 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => sig00000300,
      I1 => sig000002e0,
      I2 => unload,
      I3 => sig0000000a,
      O => sig00000309
    );
  blk000003b4 : LUT4
    generic map(
      INIT => X"000E"
    )
    port map (
      I0 => sig00000300,
      I1 => sig00000303,
      I2 => sig00000301,
      I3 => sig0000000a,
      O => sig00000306
    );
  blk000003b5 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => sig00000300,
      I1 => sig000002ff,
      I2 => sig00000303,
      I3 => sig00000301,
      I4 => sig0000000a,
      O => sig00000305
    );
  blk000003b6 : LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => sig000002f3,
      I1 => sig000002ff,
      I2 => sig00000003,
      I3 => start,
      O => sig00000307
    );
  blk000003b7 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig000002ff,
      I1 => sig000002f3,
      I2 => sig00000303,
      O => sig00000308
    );
  blk000003b8 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig00000301,
      I1 => sig0000000a,
      O => sig00000304
    );
  blk000003b9 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig00000301,
      I1 => sig000002f4,
      I2 => sig00000302,
      O => sig0000030a
    );
  blk000003ba : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig00000301,
      I1 => sig000002f4,
      O => sig0000030b
    );
  blk000003bb : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => sig000002e0,
      I1 => sig00000300,
      I2 => unload,
      O => sig0000030c
    );
  blk000003bc : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig00000003,
      I1 => start,
      O => sig0000030d
    );
  blk000003bd : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => sig000002b9,
      I1 => sig000002bb,
      I2 => sig000002ba,
      I3 => sig000002b6,
      I4 => sig000002b7,
      I5 => sig000002b8,
      O => sig00000331
    );
  blk000003be : LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => sig000002b9,
      I1 => sig000002bb,
      I2 => sig000002ba,
      I3 => sig000002b6,
      I4 => sig000002b7,
      I5 => sig000002b8,
      O => sig00000333
    );
  blk000003bf : LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => sig000002bb,
      I1 => sig000002ba,
      I2 => sig000002b9,
      I3 => sig000002b6,
      I4 => sig000002b7,
      I5 => sig000002b8,
      O => sig00000332
    );
  blk000003c0 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => ce,
      I1 => sig00000003,
      I2 => sig00000300,
      I3 => sig000002d4,
      O => sig0000033a
    );
  blk000003c1 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => ce,
      I1 => sig000003a8,
      I2 => sig000002ff,
      I3 => sig000003a6,
      O => sig00000398
    );
  blk000003c2 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(0),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig00000399
    );
  blk000003c3 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(1),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig0000039a
    );
  blk000003c4 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(2),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig0000039b
    );
  blk000003c5 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(4),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig0000039d
    );
  blk000003c6 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(3),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig0000039c
    );
  blk000003c7 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(5),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig0000039e
    );
  blk000003c8 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(6),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig0000039f
    );
  blk000003c9 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(7),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig000003a0
    );
  blk000003ca : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => sig000002bd,
      I1 => NlwRenamedSig_OI_xn_index(9),
      I2 => sig00000003,
      I3 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      O => sig000003a2
    );
  blk000003cb : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => NlwRenamedSig_OI_xn_index(8),
      I1 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I2 => sig000002bd,
      I3 => sig00000003,
      O => sig000003a1
    );
  blk000003cc : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig000002ff,
      I1 => sig000003a8,
      I2 => sig000003a6,
      O => sig00000007
    );
  blk000003cd : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig0000000a,
      I1 => sig000003a6,
      O => sig000003a3
    );
  blk000003ce : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I1 => sig000002bd,
      O => sig000003a4
    );
  blk000003cf : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => sig000003cf,
      S => sig00000002,
      Q => sig0000004d
    );
  blk000003d0 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => sig000003d0,
      S => sig00000002,
      Q => sig0000004c
    );
  blk000003d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d1,
      Q => sig00000280
    );
  blk000003d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d2,
      Q => sig00000274
    );
  blk000003d3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d3,
      Q => sig000002d4
    );
  blk000003d4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d4,
      Q => sig0000027a
    );
  blk000003d5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d5,
      Q => sig000002f3
    );
  blk000003d6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d6,
      Q => sig000003a5
    );
  blk000003d7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d7,
      Q => sig00000004
    );
  blk000003d8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => sig000003d8,
      Q => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i
    );
  blk000003d9 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig000002bb,
      I1 => sig00000302,
      I2 => sig00000303,
      I3 => sig0000000a,
      O => sig00000321
    );
  blk000003da : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002ba,
      I3 => sig0000000a,
      O => sig00000322
    );
  blk000003db : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b9,
      I3 => sig0000000a,
      O => sig00000323
    );
  blk000003dc : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b8,
      I3 => sig0000000a,
      O => sig00000324
    );
  blk000003dd : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b7,
      I3 => sig0000000a,
      O => sig00000325
    );
  blk000003de : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b6,
      I3 => sig0000000a,
      O => sig00000326
    );
  blk000003df : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b5,
      I3 => sig0000000a,
      O => sig00000327
    );
  blk000003e0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b4,
      I3 => sig0000000a,
      O => sig00000328
    );
  blk000003e1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig00000302,
      I1 => sig00000303,
      I2 => sig000002b3,
      I3 => sig0000000a,
      O => sig00000329
    );
  blk000003e2 : LUT6
    generic map(
      INIT => X"0000000000D80000"
    )
    port map (
      I0 => ce,
      I1 => sig00000269,
      I2 => sig00000274,
      I3 => sig00000304,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig000003d2
    );
  blk000003e3 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => ce,
      I1 => sig000003a5,
      I2 => sig000003a8,
      I3 => sig000002ff,
      O => sig000003d6
    );
  blk000003e4 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => sig000003a5,
      I1 => ce,
      I2 => sig000002f3,
      I3 => sig000003a7,
      O => sig000003d5
    );
  blk000003e5 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig0000000a,
      I1 => sig00000303,
      I2 => sig00000302,
      I3 => sig000002b2,
      O => sig0000032a
    );
  blk000003e6 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => sig0000004d,
      I1 => ce,
      I2 => sig0000000b,
      I3 => sig0000004c,
      O => sig000003cf
    );
  blk000003e7 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => sig0000004c,
      I1 => ce,
      I2 => fwd_inv_we,
      I3 => fwd_inv,
      O => sig000003d0
    );
  blk000003e8 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => sig0000024f,
      I1 => sig0000024e,
      I2 => sig00000250,
      O => sig0000022c
    );
  blk000003e9 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => sig00000251,
      I1 => sig0000024e,
      I2 => sig0000024f,
      I3 => sig00000250,
      O => sig00000231
    );
  blk000003ea : LUT5
    generic map(
      INIT => X"CEAA8AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      I1 => sig00000003,
      I2 => sig000002bd,
      I3 => ce,
      I4 => start,
      O => sig000003d8
    );
  blk000003eb : LUT5
    generic map(
      INIT => X"3A2A2A2A"
    )
    port map (
      I0 => sig0000027a,
      I1 => sig00000278,
      I2 => ce,
      I3 => sig00000301,
      I4 => sig000002be,
      O => sig000003d4
    );
  blk000003ec : LUT4
    generic map(
      INIT => X"2E2A"
    )
    port map (
      I0 => sig00000004,
      I1 => ce,
      I2 => sig000002bc,
      I3 => sig00000303,
      O => sig000003d7
    );
  blk000003ed : LUT4
    generic map(
      INIT => X"5756"
    )
    port map (
      I0 => sig0000024e,
      I1 => sig00000250,
      I2 => sig0000024f,
      I3 => sig00000251,
      O => sig00000229
    );
  blk000003ee : LUT6
    generic map(
      INIT => X"5551515144404040"
    )
    port map (
      I0 => sig00000268,
      I1 => ce,
      I2 => sig0000000a,
      I3 => sig000002d4,
      I4 => sig000002bc,
      I5 => sig00000280,
      O => sig000003d1
    );
  blk000003ef : LUT4
    generic map(
      INIT => X"2E2A"
    )
    port map (
      I0 => sig000002d4,
      I1 => ce,
      I2 => sig00000268,
      I3 => sig0000000a,
      O => sig000003d3
    );
  blk000003f0 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c8,
      I1 => sig000002bb,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig0000001e
    );
  blk000003f1 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c7,
      I1 => sig000002ba,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig0000001f
    );
  blk000003f2 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c6,
      I1 => sig000002b9,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000020
    );
  blk000003f3 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c5,
      I1 => sig000002b8,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000021
    );
  blk000003f4 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c4,
      I1 => sig000002b7,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000022
    );
  blk000003f5 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c3,
      I1 => sig000002b6,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000023
    );
  blk000003f6 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c2,
      I1 => sig000002b5,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000024
    );
  blk000003f7 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c1,
      I1 => sig000002b4,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000025
    );
  blk000003f8 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002c0,
      I1 => sig000002b3,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000026
    );
  blk000003f9 : LUT6
    generic map(
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      I0 => sig000002bf,
      I1 => sig000002b2,
      I2 => sig00000301,
      I3 => sig0000000a,
      I4 => sig00000306,
      I5 => sig00000305,
      O => sig00000027
    );
  blk000003fa : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002de,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002d2,
      O => sig00000028
    );
  blk000003fb : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002dd,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002d1,
      O => sig00000029
    );
  blk000003fc : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002dc,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002d0,
      O => sig0000002a
    );
  blk000003fd : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002db,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002cf,
      O => sig0000002b
    );
  blk000003fe : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002da,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002ce,
      O => sig0000002c
    );
  blk000003ff : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002d9,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002cd,
      O => sig0000002d
    );
  blk00000400 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002d8,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002cc,
      O => sig0000002e
    );
  blk00000401 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002d7,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002cb,
      O => sig0000002f
    );
  blk00000402 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002d6,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002ca,
      O => sig00000030
    );
  blk00000403 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => sig000002d5,
      I1 => sig00000301,
      I2 => sig0000000a,
      I3 => sig000002c9,
      O => sig00000031
    );
  blk00000404 : INV
    port map (
      I => sig000002bb,
      O => sig0000028d
    );
  blk00000405 : RAMB18E1
    generic map(
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_00 => X"1817171615141413121110100F0E0D0D0C0B0A09090807060505040302020100",
      INIT_01 => X"30302F2E2D2D2C2B2A2A292827272625242423222121201F1E1E1D1C1B1B1A19",
      INIT_02 => X"46464544444342424140403F3E3E3D3C3C3B3A3A393837373635353433323231",
      INIT_03 => X"5A59595858575756555554545352525151504F4F4E4E4D4C4C4B4A4A49484847",
      INIT_04 => X"6A6A69696868676766666565646463636262616160605F5F5E5E5D5D5C5C5B5B",
      INIT_05 => X"767675757574747473737372727271717170706F6F6F6E6E6D6D6D6C6C6B6B6A",
      INIT_06 => X"7D7D7D7D7D7D7C7C7C7C7C7B7B7B7B7A7A7A7A7A797979797878787777777776",
      INIT_07 => X"80808080808080808080808080807F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E",
      INIT_08 => X"7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F808080808080808080808080808080",
      INIT_09 => X"77777777787878797979797A7A7A7A7A7B7B7B7B7C7C7C7C7C7D7D7D7D7D7D7E",
      INIT_0A => X"6B6B6C6C6D6D6D6E6E6F6F6F7070717171727272737373747474757575767676",
      INIT_0B => X"5B5C5C5D5D5E5E5F5F60606161626263636464656566666767686869696A6A6A",
      INIT_0C => X"4848494A4A4B4C4C4D4E4E4F4F50515152525354545555565757585859595A5B",
      INIT_0D => X"32323334353536373738393A3A3B3C3C3D3E3E3F404041424243444445464647",
      INIT_0E => X"1A1B1B1C1D1E1E1F202121222324242526272728292A2A2B2C2D2D2E2F303031",
      INIT_0F => X"0102020304050506070809090A0B0C0D0D0E0F10101112131414151617171819",
      INIT_10 => X"7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F808080808080808080808080808080",
      INIT_11 => X"77777777787878797979797A7A7A7A7A7B7B7B7B7C7C7C7C7C7D7D7D7D7D7D7E",
      INIT_12 => X"6B6B6C6C6D6D6D6E6E6F6F6F7070717171727272737373747474757575767676",
      INIT_13 => X"5B5C5C5D5D5E5E5F5F60606161626263636464656566666767686869696A6A6A",
      INIT_14 => X"4848494A4A4B4C4C4D4E4E4F4F50515152525354545555565757585859595A5B",
      INIT_15 => X"32323334353536373738393A3A3B3C3C3D3E3E3F404041424243444445464647",
      INIT_16 => X"1A1B1B1C1D1E1E1F202121222324242526272728292A2A2B2C2D2D2E2F303031",
      INIT_17 => X"0102020304050506070809090A0B0C0D0D0E0F10101112131414151617171819",
      INIT_18 => X"E8E9E9EAEBECECEDEEEFF0F0F1F2F3F3F4F5F6F7F7F8F9FAFBFBFCFDFEFEFF00",
      INIT_19 => X"D0D0D1D2D3D3D4D5D6D6D7D8D9D9DADBDCDCDDDEDFDFE0E1E2E2E3E4E5E5E6E7",
      INIT_1A => X"BABABBBCBCBDBEBEBFC0C0C1C2C2C3C4C4C5C6C6C7C8C9C9CACBCBCCCDCECECF",
      INIT_1B => X"A6A7A7A8A8A9A9AAABABACACADAEAEAFAFB0B1B1B2B2B3B4B4B5B6B6B7B8B8B9",
      INIT_1C => X"96969797989899999A9A9B9B9C9C9D9D9E9E9F9FA0A0A1A1A2A2A3A3A4A4A5A5",
      INIT_1D => X"8A8A8B8B8B8C8C8C8D8D8D8E8E8E8F8F8F909091919192929393939494959596",
      INIT_1E => X"838383838383848484848485858585868686868687878787888888898989898A",
      INIT_1F => X"8080808080808080808080808080818181818181818181818282828282828282",
      INIT_A => X"00000",
      INIT_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DOA_REG => 1,
      DOB_REG => 1,
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 0,
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      INIT_FILE => "NONE"
    )
    port map (
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      ENARDEN => sig000002df,
      ENBWREN => sig000002df,
      REGCEAREGCE => sig000002df,
      REGCEB => sig000002df,
      RSTRAMARSTRAM => sig00000002,
      RSTRAMB => sig00000002,
      RSTREGARSTREG => sig00000002,
      RSTREGB => sig00000002,
      ADDRARDADDR(13) => sig00000002,
      ADDRARDADDR(12) => sig00000002,
      ADDRARDADDR(11) => sig000002fe,
      ADDRARDADDR(10) => sig000002fd,
      ADDRARDADDR(9) => sig000002fc,
      ADDRARDADDR(8) => sig000002fb,
      ADDRARDADDR(7) => sig000002fa,
      ADDRARDADDR(6) => sig000002f9,
      ADDRARDADDR(5) => sig000002f8,
      ADDRARDADDR(4) => sig000002f7,
      ADDRARDADDR(3) => sig000002f6,
      ADDRARDADDR(2) => sig00000001,
      ADDRARDADDR(1) => sig00000001,
      ADDRARDADDR(0) => sig00000001,
      ADDRBWRADDR(13) => sig00000002,
      ADDRBWRADDR(12) => sig00000001,
      ADDRBWRADDR(11) => sig000002fe,
      ADDRBWRADDR(10) => sig000002fd,
      ADDRBWRADDR(9) => sig000002fc,
      ADDRBWRADDR(8) => sig000002fb,
      ADDRBWRADDR(7) => sig000002fa,
      ADDRBWRADDR(6) => sig000002f9,
      ADDRBWRADDR(5) => sig000002f8,
      ADDRBWRADDR(4) => sig000002f7,
      ADDRBWRADDR(3) => sig000002f6,
      ADDRBWRADDR(2) => sig00000001,
      ADDRBWRADDR(1) => sig00000001,
      ADDRBWRADDR(0) => sig00000001,
      DIADI(15) => NLW_blk00000405_DIADI_15_UNCONNECTED,
      DIADI(14) => NLW_blk00000405_DIADI_14_UNCONNECTED,
      DIADI(13) => NLW_blk00000405_DIADI_13_UNCONNECTED,
      DIADI(12) => NLW_blk00000405_DIADI_12_UNCONNECTED,
      DIADI(11) => NLW_blk00000405_DIADI_11_UNCONNECTED,
      DIADI(10) => NLW_blk00000405_DIADI_10_UNCONNECTED,
      DIADI(9) => NLW_blk00000405_DIADI_9_UNCONNECTED,
      DIADI(8) => NLW_blk00000405_DIADI_8_UNCONNECTED,
      DIADI(7) => sig00000002,
      DIADI(6) => sig00000002,
      DIADI(5) => sig00000002,
      DIADI(4) => sig00000002,
      DIADI(3) => sig00000002,
      DIADI(2) => sig00000002,
      DIADI(1) => sig00000002,
      DIADI(0) => sig00000002,
      DIBDI(15) => NLW_blk00000405_DIBDI_15_UNCONNECTED,
      DIBDI(14) => NLW_blk00000405_DIBDI_14_UNCONNECTED,
      DIBDI(13) => NLW_blk00000405_DIBDI_13_UNCONNECTED,
      DIBDI(12) => NLW_blk00000405_DIBDI_12_UNCONNECTED,
      DIBDI(11) => NLW_blk00000405_DIBDI_11_UNCONNECTED,
      DIBDI(10) => NLW_blk00000405_DIBDI_10_UNCONNECTED,
      DIBDI(9) => NLW_blk00000405_DIBDI_9_UNCONNECTED,
      DIBDI(8) => NLW_blk00000405_DIBDI_8_UNCONNECTED,
      DIBDI(7) => NLW_blk00000405_DIBDI_7_UNCONNECTED,
      DIBDI(6) => NLW_blk00000405_DIBDI_6_UNCONNECTED,
      DIBDI(5) => NLW_blk00000405_DIBDI_5_UNCONNECTED,
      DIBDI(4) => NLW_blk00000405_DIBDI_4_UNCONNECTED,
      DIBDI(3) => NLW_blk00000405_DIBDI_3_UNCONNECTED,
      DIBDI(2) => NLW_blk00000405_DIBDI_2_UNCONNECTED,
      DIBDI(1) => NLW_blk00000405_DIBDI_1_UNCONNECTED,
      DIBDI(0) => NLW_blk00000405_DIBDI_0_UNCONNECTED,
      DIPADIP(1) => NLW_blk00000405_DIPADIP_1_UNCONNECTED,
      DIPADIP(0) => sig00000002,
      DIPBDIP(1) => NLW_blk00000405_DIPBDIP_1_UNCONNECTED,
      DIPBDIP(0) => NLW_blk00000405_DIPBDIP_0_UNCONNECTED,
      DOADO(15) => NLW_blk00000405_DOADO_15_UNCONNECTED,
      DOADO(14) => NLW_blk00000405_DOADO_14_UNCONNECTED,
      DOADO(13) => NLW_blk00000405_DOADO_13_UNCONNECTED,
      DOADO(12) => NLW_blk00000405_DOADO_12_UNCONNECTED,
      DOADO(11) => NLW_blk00000405_DOADO_11_UNCONNECTED,
      DOADO(10) => NLW_blk00000405_DOADO_10_UNCONNECTED,
      DOADO(9) => NLW_blk00000405_DOADO_9_UNCONNECTED,
      DOADO(8) => NLW_blk00000405_DOADO_8_UNCONNECTED,
      DOADO(7) => sig0000023d,
      DOADO(6) => sig0000023e,
      DOADO(5) => sig0000023f,
      DOADO(4) => sig00000240,
      DOADO(3) => sig00000241,
      DOADO(2) => sig00000242,
      DOADO(1) => sig00000243,
      DOADO(0) => sig00000244,
      DOBDO(15) => NLW_blk00000405_DOBDO_15_UNCONNECTED,
      DOBDO(14) => NLW_blk00000405_DOBDO_14_UNCONNECTED,
      DOBDO(13) => NLW_blk00000405_DOBDO_13_UNCONNECTED,
      DOBDO(12) => NLW_blk00000405_DOBDO_12_UNCONNECTED,
      DOBDO(11) => NLW_blk00000405_DOBDO_11_UNCONNECTED,
      DOBDO(10) => NLW_blk00000405_DOBDO_10_UNCONNECTED,
      DOBDO(9) => NLW_blk00000405_DOBDO_9_UNCONNECTED,
      DOBDO(8) => NLW_blk00000405_DOBDO_8_UNCONNECTED,
      DOBDO(7) => sig00000246,
      DOBDO(6) => sig00000247,
      DOBDO(5) => sig00000248,
      DOBDO(4) => sig00000249,
      DOBDO(3) => sig0000024a,
      DOBDO(2) => sig0000024b,
      DOBDO(1) => sig0000024c,
      DOBDO(0) => sig0000024d,
      DOPADOP(1) => NLW_blk00000405_DOPADOP_1_UNCONNECTED,
      DOPADOP(0) => sig0000023c,
      DOPBDOP(1) => NLW_blk00000405_DOPBDOP_1_UNCONNECTED,
      DOPBDOP(0) => sig00000245,
      WEA(1) => sig00000002,
      WEA(0) => sig00000002,
      WEBWE(3) => sig00000002,
      WEBWE(2) => sig00000002,
      WEBWE(1) => sig00000002,
      WEBWE(0) => sig00000002
    );
  blk00000406 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000001,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000001,
      CE => ce,
      CLK => clk,
      D => sig0000027d,
      Q => sig000003d9,
      Q15 => NLW_blk00000406_Q15_UNCONNECTED
    );
  blk00000407 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003d9,
      Q => sig000003da
    );
  blk00000408 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig0000019c,
      Q => sig000003db,
      Q15 => NLW_blk00000408_Q15_UNCONNECTED
    );
  blk00000409 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003db,
      Q => sig0000016a
    );
  blk0000040a : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000001,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig00000069,
      Q => sig000003dc,
      Q15 => NLW_blk0000040a_Q15_UNCONNECTED
    );
  blk0000040b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003dc,
      Q => sig000001dc
    );
  blk0000040c : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002bb,
      Q => sig000003dd,
      Q15 => NLW_blk0000040c_Q15_UNCONNECTED
    );
  blk0000040d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003dd,
      Q => sig000002d5
    );
  blk0000040e : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b8,
      Q => sig000003de,
      Q15 => NLW_blk0000040e_Q15_UNCONNECTED
    );
  blk0000040f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003de,
      Q => sig000002d8
    );
  blk00000410 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002ba,
      Q => sig000003df,
      Q15 => NLW_blk00000410_Q15_UNCONNECTED
    );
  blk00000411 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003df,
      Q => sig000002d6
    );
  blk00000412 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b9,
      Q => sig000003e0,
      Q15 => NLW_blk00000412_Q15_UNCONNECTED
    );
  blk00000413 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e0,
      Q => sig000002d7
    );
  blk00000414 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b5,
      Q => sig000003e1,
      Q15 => NLW_blk00000414_Q15_UNCONNECTED
    );
  blk00000415 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e1,
      Q => sig000002db
    );
  blk00000416 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b7,
      Q => sig000003e2,
      Q15 => NLW_blk00000416_Q15_UNCONNECTED
    );
  blk00000417 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e2,
      Q => sig000002d9
    );
  blk00000418 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b6,
      Q => sig000003e3,
      Q15 => NLW_blk00000418_Q15_UNCONNECTED
    );
  blk00000419 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e3,
      Q => sig000002da
    );
  blk0000041a : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b2,
      Q => sig000003e4,
      Q15 => NLW_blk0000041a_Q15_UNCONNECTED
    );
  blk0000041b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e4,
      Q => sig000002de
    );
  blk0000041c : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b4,
      Q => sig000003e5,
      Q15 => NLW_blk0000041c_Q15_UNCONNECTED
    );
  blk0000041d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e5,
      Q => sig000002dc
    );
  blk0000041e : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => sig00000002,
      A1 => sig00000002,
      A2 => sig00000002,
      A3 => sig00000002,
      CE => ce,
      CLK => clk,
      D => sig000002b3,
      Q => sig000003e6,
      Q15 => NLW_blk0000041e_Q15_UNCONNECTED
    );
  blk0000041f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003e6,
      Q => sig000002dd
    );
  blk00000420 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig00000001,
      R => sig00000002,
      Q => sig000003e7
    );
  blk00000421 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003e7,
      R => sig00000002,
      Q => sig000003e8
    );
  blk00000422 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003e8,
      R => sig00000002,
      Q => sig000003e9
    );
  blk00000423 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003e9,
      R => sig00000002,
      Q => sig000003ea
    );
  blk00000424 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003ea,
      R => sig00000002,
      Q => sig000003eb
    );
  blk00000425 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003eb,
      R => sig00000002,
      Q => sig000003ec
    );
  blk00000426 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003ec,
      R => sig00000002,
      Q => sig000003ed
    );
  blk00000427 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003ed,
      R => sig00000002,
      Q => sig000003ee
    );
  blk00000428 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003ee,
      R => sig00000002,
      Q => sig000003ef
    );
  blk00000429 : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003ef,
      R => sig00000002,
      Q => sig000003f0
    );
  blk0000042a : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003f0,
      R => sig00000002,
      Q => sig000003f1
    );
  blk0000042b : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003f1,
      R => sig00000002,
      Q => sig000003f2
    );
  blk0000042c : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003f2,
      R => sig00000002,
      Q => sig000003f3
    );
  blk0000042d : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003f3,
      R => sig00000002,
      Q => sig000003f4
    );
  blk0000042e : FDRE
    port map (
      C => clk,
      CE => ce,
      D => sig000003f4,
      R => sig00000002,
      Q => sig000003f5
    );
  blk0000042f : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig000003da,
      I1 => sig000003f5,
      O => sig000003f6
    );
  blk00000430 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => sig000003f6,
      R => sig00000002,
      Q => sig0000004e
    );
  blk00000431 : DSP48E
    generic map(
      ACASCREG => 1,
      ALUMODEREG => 1,
      AREG => 1,
      AUTORESET_PATTERN_DETECT => FALSE,
      AUTORESET_PATTERN_DETECT_OPTINV => "MATCH",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      MULTCARRYINREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      SEL_ROUNDING_MASK => "SEL_MASK",
      SIM_MODE => "SAFE",
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "TWO24"
    )
    port map (
      CEA2 => ce,
      CLK => clk,
      PATTERNBDETECT => NLW_blk00000431_PATTERNBDETECT_UNCONNECTED,
      RSTC => sig00000002,
      CEB1 => sig00000002,
      MULTSIGNOUT => NLW_blk00000431_MULTSIGNOUT_UNCONNECTED,
      CEC => ce,
      RSTM => sig00000002,
      MULTSIGNIN => sig00000002,
      CEB2 => ce,
      RSTCTRL => sig00000002,
      CEP => ce,
      CARRYCASCOUT => NLW_blk00000431_CARRYCASCOUT_UNCONNECTED,
      RSTA => sig00000002,
      CECARRYIN => sig00000002,
      UNDERFLOW => NLW_blk00000431_UNDERFLOW_UNCONNECTED,
      PATTERNDETECT => NLW_blk00000431_PATTERNDETECT_UNCONNECTED,
      RSTALUMODE => sig00000002,
      RSTALLCARRYIN => sig00000002,
      CEALUMODE => ce,
      CEA1 => sig00000002,
      RSTB => sig00000002,
      CEMULTCARRYIN => sig00000002,
      OVERFLOW => NLW_blk00000431_OVERFLOW_UNCONNECTED,
      CECTRL => sig00000002,
      CEM => sig00000002,
      CARRYIN => sig00000002,
      CARRYCASCIN => sig00000002,
      RSTP => sig00000002,
      CARRYINSEL(2) => sig00000002,
      CARRYINSEL(1) => sig00000002,
      CARRYINSEL(0) => sig00000002,
      OPMODE(6) => sig00000002,
      OPMODE(5) => sig00000001,
      OPMODE(4) => sig00000001,
      OPMODE(3) => sig00000002,
      OPMODE(2) => sig00000002,
      OPMODE(1) => sig00000001,
      OPMODE(0) => sig00000001,
      ALUMODE(3) => sig00000002,
      ALUMODE(2) => sig00000002,
      ALUMODE(1) => sig000000d8,
      ALUMODE(0) => sig000000d8,
      C(47) => sig000000e0,
      C(46) => sig000000e0,
      C(45) => sig000000e0,
      C(44) => sig000000e0,
      C(43) => sig000000e0,
      C(42) => sig000000e0,
      C(41) => sig000000e0,
      C(40) => sig000000e0,
      C(39) => sig000000e0,
      C(38) => sig000000e0,
      C(37) => sig000000e0,
      C(36) => sig000000e0,
      C(35) => sig000000e0,
      C(34) => sig000000e0,
      C(33) => sig000000df,
      C(32) => sig000000de,
      C(31) => sig000000dd,
      C(30) => sig000000dc,
      C(29) => sig000000db,
      C(28) => sig000000da,
      C(27) => sig000000d9,
      C(26) => sig00000002,
      C(25) => sig00000002,
      C(24) => sig00000002,
      C(23) => sig000000e8,
      C(22) => sig000000e8,
      C(21) => sig000000e8,
      C(20) => sig000000e8,
      C(19) => sig000000e8,
      C(18) => sig000000e8,
      C(17) => sig000000e8,
      C(16) => sig000000e8,
      C(15) => sig000000e8,
      C(14) => sig000000e8,
      C(13) => sig000000e8,
      C(12) => sig000000e8,
      C(11) => sig000000e8,
      C(10) => sig000000e8,
      C(9) => sig000000e7,
      C(8) => sig000000e6,
      C(7) => sig000000e5,
      C(6) => sig000000e4,
      C(5) => sig000000e3,
      C(4) => sig000000e2,
      C(3) => sig000000e1,
      C(2) => sig00000002,
      C(1) => sig00000002,
      C(0) => sig00000002,
      A(29) => sig00000115,
      A(28) => sig00000115,
      A(27) => sig00000115,
      A(26) => sig00000115,
      A(25) => sig00000115,
      A(24) => sig00000115,
      A(23) => sig00000115,
      A(22) => sig00000115,
      A(21) => sig00000115,
      A(20) => sig00000115,
      A(19) => sig00000115,
      A(18) => sig00000115,
      A(17) => sig00000115,
      A(16) => sig00000114,
      A(15) => sig00000113,
      A(14) => sig00000112,
      A(13) => sig00000111,
      A(12) => sig00000110,
      A(11) => sig0000010f,
      A(10) => sig0000010e,
      A(9) => sig0000010d,
      A(8) => sig0000010c,
      A(7) => sig0000010b,
      A(6) => sig0000010a,
      A(5) => sig00000121,
      A(4) => sig00000121,
      A(3) => sig00000121,
      A(2) => sig00000121,
      A(1) => sig00000121,
      A(0) => sig00000121,
      B(17) => sig00000121,
      B(16) => sig00000121,
      B(15) => sig00000121,
      B(14) => sig00000121,
      B(13) => sig00000121,
      B(12) => sig00000121,
      B(11) => sig00000121,
      B(10) => sig00000120,
      B(9) => sig0000011f,
      B(8) => sig0000011e,
      B(7) => sig0000011d,
      B(6) => sig0000011c,
      B(5) => sig0000011b,
      B(4) => sig0000011a,
      B(3) => sig00000119,
      B(2) => sig00000118,
      B(1) => sig00000117,
      B(0) => sig00000116,
      P(47) => NLW_blk00000431_P_47_UNCONNECTED,
      P(46) => NLW_blk00000431_P_46_UNCONNECTED,
      P(45) => NLW_blk00000431_P_45_UNCONNECTED,
      P(44) => NLW_blk00000431_P_44_UNCONNECTED,
      P(43) => NLW_blk00000431_P_43_UNCONNECTED,
      P(42) => NLW_blk00000431_P_42_UNCONNECTED,
      P(41) => NLW_blk00000431_P_41_UNCONNECTED,
      P(40) => NLW_blk00000431_P_40_UNCONNECTED,
      P(39) => NLW_blk00000431_P_39_UNCONNECTED,
      P(38) => NLW_blk00000431_P_38_UNCONNECTED,
      P(37) => NLW_blk00000431_P_37_UNCONNECTED,
      P(36) => sig000000ca,
      P(35) => sig000000c9,
      P(34) => sig000000c8,
      P(33) => sig000000c7,
      P(32) => sig000000c6,
      P(31) => sig000000c5,
      P(30) => sig000000c4,
      P(29) => sig000000c3,
      P(28) => sig000000c2,
      P(27) => sig000000c1,
      P(26) => sig000000c0,
      P(25) => sig000000bf,
      P(24) => sig000000be,
      P(23) => NLW_blk00000431_P_23_UNCONNECTED,
      P(22) => NLW_blk00000431_P_22_UNCONNECTED,
      P(21) => NLW_blk00000431_P_21_UNCONNECTED,
      P(20) => NLW_blk00000431_P_20_UNCONNECTED,
      P(19) => NLW_blk00000431_P_19_UNCONNECTED,
      P(18) => NLW_blk00000431_P_18_UNCONNECTED,
      P(17) => NLW_blk00000431_P_17_UNCONNECTED,
      P(16) => NLW_blk00000431_P_16_UNCONNECTED,
      P(15) => NLW_blk00000431_P_15_UNCONNECTED,
      P(14) => NLW_blk00000431_P_14_UNCONNECTED,
      P(13) => NLW_blk00000431_P_13_UNCONNECTED,
      P(12) => sig000000d7,
      P(11) => sig000000d6,
      P(10) => sig000000d5,
      P(9) => sig000000d4,
      P(8) => sig000000d3,
      P(7) => sig000000d2,
      P(6) => sig000000d1,
      P(5) => sig000000d0,
      P(4) => sig000000cf,
      P(3) => sig000000ce,
      P(2) => sig000000cd,
      P(1) => sig000000cc,
      P(0) => sig000000cb,
      ACOUT(29) => NLW_blk00000431_ACOUT_29_UNCONNECTED,
      ACOUT(28) => NLW_blk00000431_ACOUT_28_UNCONNECTED,
      ACOUT(27) => NLW_blk00000431_ACOUT_27_UNCONNECTED,
      ACOUT(26) => NLW_blk00000431_ACOUT_26_UNCONNECTED,
      ACOUT(25) => NLW_blk00000431_ACOUT_25_UNCONNECTED,
      ACOUT(24) => NLW_blk00000431_ACOUT_24_UNCONNECTED,
      ACOUT(23) => NLW_blk00000431_ACOUT_23_UNCONNECTED,
      ACOUT(22) => NLW_blk00000431_ACOUT_22_UNCONNECTED,
      ACOUT(21) => NLW_blk00000431_ACOUT_21_UNCONNECTED,
      ACOUT(20) => NLW_blk00000431_ACOUT_20_UNCONNECTED,
      ACOUT(19) => NLW_blk00000431_ACOUT_19_UNCONNECTED,
      ACOUT(18) => NLW_blk00000431_ACOUT_18_UNCONNECTED,
      ACOUT(17) => NLW_blk00000431_ACOUT_17_UNCONNECTED,
      ACOUT(16) => NLW_blk00000431_ACOUT_16_UNCONNECTED,
      ACOUT(15) => NLW_blk00000431_ACOUT_15_UNCONNECTED,
      ACOUT(14) => NLW_blk00000431_ACOUT_14_UNCONNECTED,
      ACOUT(13) => NLW_blk00000431_ACOUT_13_UNCONNECTED,
      ACOUT(12) => NLW_blk00000431_ACOUT_12_UNCONNECTED,
      ACOUT(11) => NLW_blk00000431_ACOUT_11_UNCONNECTED,
      ACOUT(10) => NLW_blk00000431_ACOUT_10_UNCONNECTED,
      ACOUT(9) => NLW_blk00000431_ACOUT_9_UNCONNECTED,
      ACOUT(8) => NLW_blk00000431_ACOUT_8_UNCONNECTED,
      ACOUT(7) => NLW_blk00000431_ACOUT_7_UNCONNECTED,
      ACOUT(6) => NLW_blk00000431_ACOUT_6_UNCONNECTED,
      ACOUT(5) => NLW_blk00000431_ACOUT_5_UNCONNECTED,
      ACOUT(4) => NLW_blk00000431_ACOUT_4_UNCONNECTED,
      ACOUT(3) => NLW_blk00000431_ACOUT_3_UNCONNECTED,
      ACOUT(2) => NLW_blk00000431_ACOUT_2_UNCONNECTED,
      ACOUT(1) => NLW_blk00000431_ACOUT_1_UNCONNECTED,
      ACOUT(0) => NLW_blk00000431_ACOUT_0_UNCONNECTED,
      PCIN(47) => sig00000002,
      PCIN(46) => sig00000002,
      PCIN(45) => sig00000002,
      PCIN(44) => sig00000002,
      PCIN(43) => sig00000002,
      PCIN(42) => sig00000002,
      PCIN(41) => sig00000002,
      PCIN(40) => sig00000002,
      PCIN(39) => sig00000002,
      PCIN(38) => sig00000002,
      PCIN(37) => sig00000002,
      PCIN(36) => sig00000002,
      PCIN(35) => sig00000002,
      PCIN(34) => sig00000002,
      PCIN(33) => sig00000002,
      PCIN(32) => sig00000002,
      PCIN(31) => sig00000002,
      PCIN(30) => sig00000002,
      PCIN(29) => sig00000002,
      PCIN(28) => sig00000002,
      PCIN(27) => sig00000002,
      PCIN(26) => sig00000002,
      PCIN(25) => sig00000002,
      PCIN(24) => sig00000002,
      PCIN(23) => sig00000002,
      PCIN(22) => sig00000002,
      PCIN(21) => sig00000002,
      PCIN(20) => sig00000002,
      PCIN(19) => sig00000002,
      PCIN(18) => sig00000002,
      PCIN(17) => sig00000002,
      PCIN(16) => sig00000002,
      PCIN(15) => sig00000002,
      PCIN(14) => sig00000002,
      PCIN(13) => sig00000002,
      PCIN(12) => sig00000002,
      PCIN(11) => sig00000002,
      PCIN(10) => sig00000002,
      PCIN(9) => sig00000002,
      PCIN(8) => sig00000002,
      PCIN(7) => sig00000002,
      PCIN(6) => sig00000002,
      PCIN(5) => sig00000002,
      PCIN(4) => sig00000002,
      PCIN(3) => sig00000002,
      PCIN(2) => sig00000002,
      PCIN(1) => sig00000002,
      PCIN(0) => sig00000002,
      CARRYOUT(3) => NLW_blk00000431_CARRYOUT_3_UNCONNECTED,
      CARRYOUT(2) => NLW_blk00000431_CARRYOUT_2_UNCONNECTED,
      CARRYOUT(1) => NLW_blk00000431_CARRYOUT_1_UNCONNECTED,
      CARRYOUT(0) => NLW_blk00000431_CARRYOUT_0_UNCONNECTED,
      BCIN(17) => sig00000002,
      BCIN(16) => sig00000002,
      BCIN(15) => sig00000002,
      BCIN(14) => sig00000002,
      BCIN(13) => sig00000002,
      BCIN(12) => sig00000002,
      BCIN(11) => sig00000002,
      BCIN(10) => sig00000002,
      BCIN(9) => sig00000002,
      BCIN(8) => sig00000002,
      BCIN(7) => sig00000002,
      BCIN(6) => sig00000002,
      BCIN(5) => sig00000002,
      BCIN(4) => sig00000002,
      BCIN(3) => sig00000002,
      BCIN(2) => sig00000002,
      BCIN(1) => sig00000002,
      BCIN(0) => sig00000002,
      BCOUT(17) => NLW_blk00000431_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_blk00000431_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_blk00000431_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_blk00000431_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_blk00000431_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_blk00000431_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_blk00000431_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_blk00000431_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_blk00000431_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_blk00000431_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_blk00000431_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_blk00000431_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_blk00000431_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_blk00000431_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_blk00000431_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_blk00000431_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_blk00000431_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_blk00000431_BCOUT_0_UNCONNECTED,
      PCOUT(47) => NLW_blk00000431_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_blk00000431_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_blk00000431_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_blk00000431_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_blk00000431_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_blk00000431_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_blk00000431_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_blk00000431_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_blk00000431_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_blk00000431_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_blk00000431_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_blk00000431_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_blk00000431_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_blk00000431_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_blk00000431_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_blk00000431_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_blk00000431_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_blk00000431_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_blk00000431_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_blk00000431_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_blk00000431_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_blk00000431_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_blk00000431_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_blk00000431_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_blk00000431_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_blk00000431_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_blk00000431_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_blk00000431_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_blk00000431_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_blk00000431_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_blk00000431_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_blk00000431_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_blk00000431_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_blk00000431_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_blk00000431_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_blk00000431_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_blk00000431_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_blk00000431_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_blk00000431_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_blk00000431_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_blk00000431_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_blk00000431_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_blk00000431_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_blk00000431_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_blk00000431_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_blk00000431_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_blk00000431_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_blk00000431_PCOUT_0_UNCONNECTED,
      ACIN(29) => sig00000002,
      ACIN(28) => sig00000002,
      ACIN(27) => sig00000002,
      ACIN(26) => sig00000002,
      ACIN(25) => sig00000002,
      ACIN(24) => sig00000002,
      ACIN(23) => sig00000002,
      ACIN(22) => sig00000002,
      ACIN(21) => sig00000002,
      ACIN(20) => sig00000002,
      ACIN(19) => sig00000002,
      ACIN(18) => sig00000002,
      ACIN(17) => sig00000002,
      ACIN(16) => sig00000002,
      ACIN(15) => sig00000002,
      ACIN(14) => sig00000002,
      ACIN(13) => sig00000002,
      ACIN(12) => sig00000002,
      ACIN(11) => sig00000002,
      ACIN(10) => sig00000002,
      ACIN(9) => sig00000002,
      ACIN(8) => sig00000002,
      ACIN(7) => sig00000002,
      ACIN(6) => sig00000002,
      ACIN(5) => sig00000002,
      ACIN(4) => sig00000002,
      ACIN(3) => sig00000002,
      ACIN(2) => sig00000002,
      ACIN(1) => sig00000002,
      ACIN(0) => sig00000002
    );
  blk00000432 : DSP48E
    generic map(
      ACASCREG => 1,
      ALUMODEREG => 1,
      AREG => 1,
      AUTORESET_PATTERN_DETECT => FALSE,
      AUTORESET_PATTERN_DETECT_OPTINV => "MATCH",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 0,
      CREG => 0,
      MASK => X"000000000000",
      MREG => 1,
      MULTCARRYINREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      SEL_ROUNDING_MASK => "SEL_MASK",
      SIM_MODE => "SAFE",
      USE_MULT => "MULT_S",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
    port map (
      CEM => ce,
      CLK => clk,
      PATTERNBDETECT => NLW_blk00000432_PATTERNBDETECT_UNCONNECTED,
      RSTC => sig00000002,
      CEB1 => sig00000002,
      MULTSIGNOUT => NLW_blk00000432_MULTSIGNOUT_UNCONNECTED,
      CEC => sig00000002,
      RSTM => sig00000002,
      MULTSIGNIN => sig00000002,
      CEB2 => ce,
      RSTCTRL => sig00000002,
      CEP => ce,
      CARRYCASCOUT => NLW_blk00000432_CARRYCASCOUT_UNCONNECTED,
      RSTA => sig00000002,
      CECARRYIN => sig00000002,
      UNDERFLOW => NLW_blk00000432_UNDERFLOW_UNCONNECTED,
      PATTERNDETECT => NLW_blk00000432_PATTERNDETECT_UNCONNECTED,
      RSTALUMODE => sig00000002,
      RSTALLCARRYIN => sig00000002,
      CEALUMODE => ce,
      CEA2 => ce,
      CEA1 => sig00000002,
      RSTB => sig00000002,
      CEMULTCARRYIN => sig00000002,
      OVERFLOW => NLW_blk00000432_OVERFLOW_UNCONNECTED,
      CECTRL => sig00000002,
      CARRYIN => sig00000002,
      CARRYCASCIN => sig00000002,
      RSTP => sig00000002,
      CARRYINSEL(2) => sig00000002,
      CARRYINSEL(1) => sig00000002,
      CARRYINSEL(0) => sig00000002,
      C(47) => sig00000002,
      C(46) => sig00000002,
      C(45) => sig00000002,
      C(44) => sig00000002,
      C(43) => sig00000002,
      C(42) => sig00000002,
      C(41) => sig00000002,
      C(40) => sig00000002,
      C(39) => sig00000002,
      C(38) => sig00000002,
      C(37) => sig00000002,
      C(36) => sig00000002,
      C(35) => sig00000002,
      C(34) => sig00000002,
      C(33) => sig00000002,
      C(32) => sig00000002,
      C(31) => sig00000002,
      C(30) => sig00000002,
      C(29) => sig00000002,
      C(28) => sig00000002,
      C(27) => sig00000002,
      C(26) => sig00000002,
      C(25) => sig00000002,
      C(24) => sig00000002,
      C(23) => sig00000002,
      C(22) => sig00000002,
      C(21) => sig00000002,
      C(20) => sig00000002,
      C(19) => sig00000002,
      C(18) => sig00000002,
      C(17) => sig00000002,
      C(16) => sig00000002,
      C(15) => sig00000002,
      C(14) => sig00000002,
      C(13) => sig00000002,
      C(12) => sig00000002,
      C(11) => sig00000002,
      C(10) => sig00000002,
      C(9) => sig00000002,
      C(8) => sig00000002,
      C(7) => sig00000002,
      C(6) => sig00000002,
      C(5) => sig00000002,
      C(4) => sig00000002,
      C(3) => sig00000002,
      C(2) => sig00000001,
      C(1) => sig00000001,
      C(0) => sig00000001,
      ALUMODE(3) => sig00000002,
      ALUMODE(2) => sig00000002,
      ALUMODE(1) => sig00000002,
      ALUMODE(0) => sig00000002,
      B(17) => sig000001ac,
      B(16) => sig000001ac,
      B(15) => sig000001ac,
      B(14) => sig000001ac,
      B(13) => sig000001ac,
      B(12) => sig000001ac,
      B(11) => sig000001ac,
      B(10) => sig000001ac,
      B(9) => sig000001ac,
      B(8) => sig000001ac,
      B(7) => sig000001ac,
      B(6) => sig000001ab,
      B(5) => sig000001aa,
      B(4) => sig000001a9,
      B(3) => sig000001a8,
      B(2) => sig000001a7,
      B(1) => sig000001a6,
      B(0) => sig000001a5,
      A(29) => sig00000002,
      A(28) => sig00000002,
      A(27) => sig00000002,
      A(26) => sig00000002,
      A(25) => sig00000002,
      A(24) => sig000001ca,
      A(23) => sig000001ca,
      A(22) => sig000001ca,
      A(21) => sig000001ca,
      A(20) => sig000001ca,
      A(19) => sig000001ca,
      A(18) => sig000001ca,
      A(17) => sig000001ca,
      A(16) => sig000001ca,
      A(15) => sig000001ca,
      A(14) => sig000001ca,
      A(13) => sig000001ca,
      A(12) => sig000001ca,
      A(11) => sig000001ca,
      A(10) => sig000001ca,
      A(9) => sig000001ca,
      A(8) => sig000001ca,
      A(7) => sig000001c9,
      A(6) => sig000001c8,
      A(5) => sig000001c7,
      A(4) => sig000001c6,
      A(3) => sig000001c5,
      A(2) => sig000001c4,
      A(1) => sig000001c3,
      A(0) => sig000001c2,
      PCOUT(47) => sig0000016b,
      PCOUT(46) => sig0000016c,
      PCOUT(45) => sig0000016d,
      PCOUT(44) => sig0000016e,
      PCOUT(43) => sig0000016f,
      PCOUT(42) => sig00000170,
      PCOUT(41) => sig00000171,
      PCOUT(40) => sig00000172,
      PCOUT(39) => sig00000173,
      PCOUT(38) => sig00000174,
      PCOUT(37) => sig00000175,
      PCOUT(36) => sig00000176,
      PCOUT(35) => sig00000177,
      PCOUT(34) => sig00000178,
      PCOUT(33) => sig00000179,
      PCOUT(32) => sig0000017a,
      PCOUT(31) => sig0000017b,
      PCOUT(30) => sig0000017c,
      PCOUT(29) => sig0000017d,
      PCOUT(28) => sig0000017e,
      PCOUT(27) => sig0000017f,
      PCOUT(26) => sig00000180,
      PCOUT(25) => sig00000181,
      PCOUT(24) => sig00000182,
      PCOUT(23) => sig00000183,
      PCOUT(22) => sig00000184,
      PCOUT(21) => sig00000185,
      PCOUT(20) => sig00000186,
      PCOUT(19) => sig00000187,
      PCOUT(18) => sig00000188,
      PCOUT(17) => sig00000189,
      PCOUT(16) => sig0000018a,
      PCOUT(15) => sig0000018b,
      PCOUT(14) => sig0000018c,
      PCOUT(13) => sig0000018d,
      PCOUT(12) => sig0000018e,
      PCOUT(11) => sig0000018f,
      PCOUT(10) => sig00000190,
      PCOUT(9) => sig00000191,
      PCOUT(8) => sig00000192,
      PCOUT(7) => sig00000193,
      PCOUT(6) => sig00000194,
      PCOUT(5) => sig00000195,
      PCOUT(4) => sig00000196,
      PCOUT(3) => sig00000197,
      PCOUT(2) => sig00000198,
      PCOUT(1) => sig00000199,
      PCOUT(0) => sig0000019a,
      ACOUT(29) => NLW_blk00000432_ACOUT_29_UNCONNECTED,
      ACOUT(28) => NLW_blk00000432_ACOUT_28_UNCONNECTED,
      ACOUT(27) => NLW_blk00000432_ACOUT_27_UNCONNECTED,
      ACOUT(26) => NLW_blk00000432_ACOUT_26_UNCONNECTED,
      ACOUT(25) => NLW_blk00000432_ACOUT_25_UNCONNECTED,
      ACOUT(24) => NLW_blk00000432_ACOUT_24_UNCONNECTED,
      ACOUT(23) => NLW_blk00000432_ACOUT_23_UNCONNECTED,
      ACOUT(22) => NLW_blk00000432_ACOUT_22_UNCONNECTED,
      ACOUT(21) => NLW_blk00000432_ACOUT_21_UNCONNECTED,
      ACOUT(20) => NLW_blk00000432_ACOUT_20_UNCONNECTED,
      ACOUT(19) => NLW_blk00000432_ACOUT_19_UNCONNECTED,
      ACOUT(18) => NLW_blk00000432_ACOUT_18_UNCONNECTED,
      ACOUT(17) => NLW_blk00000432_ACOUT_17_UNCONNECTED,
      ACOUT(16) => NLW_blk00000432_ACOUT_16_UNCONNECTED,
      ACOUT(15) => NLW_blk00000432_ACOUT_15_UNCONNECTED,
      ACOUT(14) => NLW_blk00000432_ACOUT_14_UNCONNECTED,
      ACOUT(13) => NLW_blk00000432_ACOUT_13_UNCONNECTED,
      ACOUT(12) => NLW_blk00000432_ACOUT_12_UNCONNECTED,
      ACOUT(11) => NLW_blk00000432_ACOUT_11_UNCONNECTED,
      ACOUT(10) => NLW_blk00000432_ACOUT_10_UNCONNECTED,
      ACOUT(9) => NLW_blk00000432_ACOUT_9_UNCONNECTED,
      ACOUT(8) => NLW_blk00000432_ACOUT_8_UNCONNECTED,
      ACOUT(7) => NLW_blk00000432_ACOUT_7_UNCONNECTED,
      ACOUT(6) => NLW_blk00000432_ACOUT_6_UNCONNECTED,
      ACOUT(5) => NLW_blk00000432_ACOUT_5_UNCONNECTED,
      ACOUT(4) => NLW_blk00000432_ACOUT_4_UNCONNECTED,
      ACOUT(3) => NLW_blk00000432_ACOUT_3_UNCONNECTED,
      ACOUT(2) => NLW_blk00000432_ACOUT_2_UNCONNECTED,
      ACOUT(1) => NLW_blk00000432_ACOUT_1_UNCONNECTED,
      ACOUT(0) => NLW_blk00000432_ACOUT_0_UNCONNECTED,
      OPMODE(6) => sig00000002,
      OPMODE(5) => sig00000001,
      OPMODE(4) => sig00000001,
      OPMODE(3) => sig00000002,
      OPMODE(2) => sig00000001,
      OPMODE(1) => sig00000002,
      OPMODE(0) => sig00000001,
      PCIN(47) => sig00000002,
      PCIN(46) => sig00000002,
      PCIN(45) => sig00000002,
      PCIN(44) => sig00000002,
      PCIN(43) => sig00000002,
      PCIN(42) => sig00000002,
      PCIN(41) => sig00000002,
      PCIN(40) => sig00000002,
      PCIN(39) => sig00000002,
      PCIN(38) => sig00000002,
      PCIN(37) => sig00000002,
      PCIN(36) => sig00000002,
      PCIN(35) => sig00000002,
      PCIN(34) => sig00000002,
      PCIN(33) => sig00000002,
      PCIN(32) => sig00000002,
      PCIN(31) => sig00000002,
      PCIN(30) => sig00000002,
      PCIN(29) => sig00000002,
      PCIN(28) => sig00000002,
      PCIN(27) => sig00000002,
      PCIN(26) => sig00000002,
      PCIN(25) => sig00000002,
      PCIN(24) => sig00000002,
      PCIN(23) => sig00000002,
      PCIN(22) => sig00000002,
      PCIN(21) => sig00000002,
      PCIN(20) => sig00000002,
      PCIN(19) => sig00000002,
      PCIN(18) => sig00000002,
      PCIN(17) => sig00000002,
      PCIN(16) => sig00000002,
      PCIN(15) => sig00000002,
      PCIN(14) => sig00000002,
      PCIN(13) => sig00000002,
      PCIN(12) => sig00000002,
      PCIN(11) => sig00000002,
      PCIN(10) => sig00000002,
      PCIN(9) => sig00000002,
      PCIN(8) => sig00000002,
      PCIN(7) => sig00000002,
      PCIN(6) => sig00000002,
      PCIN(5) => sig00000002,
      PCIN(4) => sig00000002,
      PCIN(3) => sig00000002,
      PCIN(2) => sig00000002,
      PCIN(1) => sig00000002,
      PCIN(0) => sig00000002,
      CARRYOUT(3) => NLW_blk00000432_CARRYOUT_3_UNCONNECTED,
      CARRYOUT(2) => NLW_blk00000432_CARRYOUT_2_UNCONNECTED,
      CARRYOUT(1) => NLW_blk00000432_CARRYOUT_1_UNCONNECTED,
      CARRYOUT(0) => NLW_blk00000432_CARRYOUT_0_UNCONNECTED,
      BCIN(17) => sig00000002,
      BCIN(16) => sig00000002,
      BCIN(15) => sig00000002,
      BCIN(14) => sig00000002,
      BCIN(13) => sig00000002,
      BCIN(12) => sig00000002,
      BCIN(11) => sig00000002,
      BCIN(10) => sig00000002,
      BCIN(9) => sig00000002,
      BCIN(8) => sig00000002,
      BCIN(7) => sig00000002,
      BCIN(6) => sig00000002,
      BCIN(5) => sig00000002,
      BCIN(4) => sig00000002,
      BCIN(3) => sig00000002,
      BCIN(2) => sig00000002,
      BCIN(1) => sig00000002,
      BCIN(0) => sig00000002,
      BCOUT(17) => NLW_blk00000432_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_blk00000432_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_blk00000432_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_blk00000432_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_blk00000432_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_blk00000432_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_blk00000432_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_blk00000432_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_blk00000432_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_blk00000432_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_blk00000432_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_blk00000432_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_blk00000432_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_blk00000432_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_blk00000432_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_blk00000432_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_blk00000432_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_blk00000432_BCOUT_0_UNCONNECTED,
      P(47) => NLW_blk00000432_P_47_UNCONNECTED,
      P(46) => NLW_blk00000432_P_46_UNCONNECTED,
      P(45) => NLW_blk00000432_P_45_UNCONNECTED,
      P(44) => NLW_blk00000432_P_44_UNCONNECTED,
      P(43) => NLW_blk00000432_P_43_UNCONNECTED,
      P(42) => NLW_blk00000432_P_42_UNCONNECTED,
      P(41) => NLW_blk00000432_P_41_UNCONNECTED,
      P(40) => NLW_blk00000432_P_40_UNCONNECTED,
      P(39) => NLW_blk00000432_P_39_UNCONNECTED,
      P(38) => NLW_blk00000432_P_38_UNCONNECTED,
      P(37) => NLW_blk00000432_P_37_UNCONNECTED,
      P(36) => NLW_blk00000432_P_36_UNCONNECTED,
      P(35) => NLW_blk00000432_P_35_UNCONNECTED,
      P(34) => NLW_blk00000432_P_34_UNCONNECTED,
      P(33) => NLW_blk00000432_P_33_UNCONNECTED,
      P(32) => NLW_blk00000432_P_32_UNCONNECTED,
      P(31) => NLW_blk00000432_P_31_UNCONNECTED,
      P(30) => NLW_blk00000432_P_30_UNCONNECTED,
      P(29) => NLW_blk00000432_P_29_UNCONNECTED,
      P(28) => NLW_blk00000432_P_28_UNCONNECTED,
      P(27) => NLW_blk00000432_P_27_UNCONNECTED,
      P(26) => NLW_blk00000432_P_26_UNCONNECTED,
      P(25) => NLW_blk00000432_P_25_UNCONNECTED,
      P(24) => NLW_blk00000432_P_24_UNCONNECTED,
      P(23) => NLW_blk00000432_P_23_UNCONNECTED,
      P(22) => NLW_blk00000432_P_22_UNCONNECTED,
      P(21) => NLW_blk00000432_P_21_UNCONNECTED,
      P(20) => NLW_blk00000432_P_20_UNCONNECTED,
      P(19) => NLW_blk00000432_P_19_UNCONNECTED,
      P(18) => NLW_blk00000432_P_18_UNCONNECTED,
      P(17) => NLW_blk00000432_P_17_UNCONNECTED,
      P(16) => NLW_blk00000432_P_16_UNCONNECTED,
      P(15) => NLW_blk00000432_P_15_UNCONNECTED,
      P(14) => NLW_blk00000432_P_14_UNCONNECTED,
      P(13) => NLW_blk00000432_P_13_UNCONNECTED,
      P(12) => NLW_blk00000432_P_12_UNCONNECTED,
      P(11) => NLW_blk00000432_P_11_UNCONNECTED,
      P(10) => NLW_blk00000432_P_10_UNCONNECTED,
      P(9) => NLW_blk00000432_P_9_UNCONNECTED,
      P(8) => NLW_blk00000432_P_8_UNCONNECTED,
      P(7) => NLW_blk00000432_P_7_UNCONNECTED,
      P(6) => NLW_blk00000432_P_6_UNCONNECTED,
      P(5) => NLW_blk00000432_P_5_UNCONNECTED,
      P(4) => NLW_blk00000432_P_4_UNCONNECTED,
      P(3) => NLW_blk00000432_P_3_UNCONNECTED,
      P(2) => NLW_blk00000432_P_2_UNCONNECTED,
      P(1) => NLW_blk00000432_P_1_UNCONNECTED,
      P(0) => NLW_blk00000432_P_0_UNCONNECTED,
      ACIN(29) => sig00000002,
      ACIN(28) => sig00000002,
      ACIN(27) => sig00000002,
      ACIN(26) => sig00000002,
      ACIN(25) => sig00000002,
      ACIN(24) => sig00000002,
      ACIN(23) => sig00000002,
      ACIN(22) => sig00000002,
      ACIN(21) => sig00000002,
      ACIN(20) => sig00000002,
      ACIN(19) => sig00000002,
      ACIN(18) => sig00000002,
      ACIN(17) => sig00000002,
      ACIN(16) => sig00000002,
      ACIN(15) => sig00000002,
      ACIN(14) => sig00000002,
      ACIN(13) => sig00000002,
      ACIN(12) => sig00000002,
      ACIN(11) => sig00000002,
      ACIN(10) => sig00000002,
      ACIN(9) => sig00000002,
      ACIN(8) => sig00000002,
      ACIN(7) => sig00000002,
      ACIN(6) => sig00000002,
      ACIN(5) => sig00000002,
      ACIN(4) => sig00000002,
      ACIN(3) => sig00000002,
      ACIN(2) => sig00000002,
      ACIN(1) => sig00000002,
      ACIN(0) => sig00000002
    );
  blk00000433 : DSP48E
    generic map(
      ACASCREG => 2,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATTERN_DETECT => FALSE,
      AUTORESET_PATTERN_DETECT_OPTINV => "MATCH",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      MASK => X"000000000000",
      MREG => 1,
      MULTCARRYINREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      SEL_ROUNDING_MASK => "SEL_MASK",
      SIM_MODE => "SAFE",
      USE_MULT => "MULT_S",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
    port map (
      CEM => ce,
      CLK => clk,
      PATTERNBDETECT => NLW_blk00000433_PATTERNBDETECT_UNCONNECTED,
      RSTC => sig00000002,
      CEB1 => ce,
      MULTSIGNOUT => NLW_blk00000433_MULTSIGNOUT_UNCONNECTED,
      CEC => sig00000002,
      RSTM => sig00000002,
      MULTSIGNIN => sig00000002,
      CEB2 => ce,
      RSTCTRL => sig00000002,
      CEP => ce,
      CARRYCASCOUT => NLW_blk00000433_CARRYCASCOUT_UNCONNECTED,
      RSTA => sig00000002,
      CECARRYIN => sig00000002,
      UNDERFLOW => NLW_blk00000433_UNDERFLOW_UNCONNECTED,
      PATTERNDETECT => NLW_blk00000433_PATTERNDETECT_UNCONNECTED,
      RSTALUMODE => sig00000002,
      RSTALLCARRYIN => sig00000002,
      CEALUMODE => ce,
      CEA2 => ce,
      CEA1 => ce,
      RSTB => sig00000002,
      CEMULTCARRYIN => sig00000002,
      OVERFLOW => NLW_blk00000433_OVERFLOW_UNCONNECTED,
      CECTRL => sig00000002,
      CARRYIN => sig00000002,
      CARRYCASCIN => sig00000002,
      RSTP => sig00000002,
      CARRYINSEL(2) => sig00000002,
      CARRYINSEL(1) => sig00000002,
      CARRYINSEL(0) => sig00000002,
      C(47) => sig00000002,
      C(46) => sig00000002,
      C(45) => sig00000002,
      C(44) => sig00000002,
      C(43) => sig00000002,
      C(42) => sig00000002,
      C(41) => sig00000002,
      C(40) => sig00000002,
      C(39) => sig00000002,
      C(38) => sig00000002,
      C(37) => sig00000002,
      C(36) => sig00000002,
      C(35) => sig00000002,
      C(34) => sig00000002,
      C(33) => sig00000002,
      C(32) => sig00000002,
      C(31) => sig00000002,
      C(30) => sig00000002,
      C(29) => sig00000002,
      C(28) => sig00000002,
      C(27) => sig00000002,
      C(26) => sig00000002,
      C(25) => sig00000002,
      C(24) => sig00000002,
      C(23) => sig00000002,
      C(22) => sig00000002,
      C(21) => sig00000002,
      C(20) => sig00000002,
      C(19) => sig00000002,
      C(18) => sig00000002,
      C(17) => sig00000002,
      C(16) => sig00000002,
      C(15) => sig00000002,
      C(14) => sig00000002,
      C(13) => sig00000002,
      C(12) => sig00000002,
      C(11) => sig00000002,
      C(10) => sig00000002,
      C(9) => sig00000002,
      C(8) => sig00000002,
      C(7) => sig00000002,
      C(6) => sig00000002,
      C(5) => sig00000002,
      C(4) => sig00000002,
      C(3) => sig00000002,
      C(2) => sig00000001,
      C(1) => sig00000001,
      C(0) => sig00000001,
      PCIN(47) => sig0000016b,
      PCIN(46) => sig0000016c,
      PCIN(45) => sig0000016d,
      PCIN(44) => sig0000016e,
      PCIN(43) => sig0000016f,
      PCIN(42) => sig00000170,
      PCIN(41) => sig00000171,
      PCIN(40) => sig00000172,
      PCIN(39) => sig00000173,
      PCIN(38) => sig00000174,
      PCIN(37) => sig00000175,
      PCIN(36) => sig00000176,
      PCIN(35) => sig00000177,
      PCIN(34) => sig00000178,
      PCIN(33) => sig00000179,
      PCIN(32) => sig0000017a,
      PCIN(31) => sig0000017b,
      PCIN(30) => sig0000017c,
      PCIN(29) => sig0000017d,
      PCIN(28) => sig0000017e,
      PCIN(27) => sig0000017f,
      PCIN(26) => sig00000180,
      PCIN(25) => sig00000181,
      PCIN(24) => sig00000182,
      PCIN(23) => sig00000183,
      PCIN(22) => sig00000184,
      PCIN(21) => sig00000185,
      PCIN(20) => sig00000186,
      PCIN(19) => sig00000187,
      PCIN(18) => sig00000188,
      PCIN(17) => sig00000189,
      PCIN(16) => sig0000018a,
      PCIN(15) => sig0000018b,
      PCIN(14) => sig0000018c,
      PCIN(13) => sig0000018d,
      PCIN(12) => sig0000018e,
      PCIN(11) => sig0000018f,
      PCIN(10) => sig00000190,
      PCIN(9) => sig00000191,
      PCIN(8) => sig00000192,
      PCIN(7) => sig00000193,
      PCIN(6) => sig00000194,
      PCIN(5) => sig00000195,
      PCIN(4) => sig00000196,
      PCIN(3) => sig00000197,
      PCIN(2) => sig00000198,
      PCIN(1) => sig00000199,
      PCIN(0) => sig0000019a,
      ALUMODE(3) => sig00000002,
      ALUMODE(2) => sig00000002,
      ALUMODE(1) => sig0000016a,
      ALUMODE(0) => sig0000016a,
      B(17) => sig000001a4,
      B(16) => sig000001a4,
      B(15) => sig000001a4,
      B(14) => sig000001a4,
      B(13) => sig000001a4,
      B(12) => sig000001a4,
      B(11) => sig000001a4,
      B(10) => sig000001a4,
      B(9) => sig000001a4,
      B(8) => sig000001a4,
      B(7) => sig000001a4,
      B(6) => sig000001a3,
      B(5) => sig000001a2,
      B(4) => sig000001a1,
      B(3) => sig000001a0,
      B(2) => sig0000019f,
      B(1) => sig0000019e,
      B(0) => sig0000019d,
      P(47) => NLW_blk00000433_P_47_UNCONNECTED,
      P(46) => NLW_blk00000433_P_46_UNCONNECTED,
      P(45) => NLW_blk00000433_P_45_UNCONNECTED,
      P(44) => NLW_blk00000433_P_44_UNCONNECTED,
      P(43) => NLW_blk00000433_P_43_UNCONNECTED,
      P(42) => NLW_blk00000433_P_42_UNCONNECTED,
      P(41) => NLW_blk00000433_P_41_UNCONNECTED,
      P(40) => NLW_blk00000433_P_40_UNCONNECTED,
      P(39) => NLW_blk00000433_P_39_UNCONNECTED,
      P(38) => NLW_blk00000433_P_38_UNCONNECTED,
      P(37) => NLW_blk00000433_P_37_UNCONNECTED,
      P(36) => NLW_blk00000433_P_36_UNCONNECTED,
      P(35) => NLW_blk00000433_P_35_UNCONNECTED,
      P(34) => NLW_blk00000433_P_34_UNCONNECTED,
      P(33) => NLW_blk00000433_P_33_UNCONNECTED,
      P(32) => NLW_blk00000433_P_32_UNCONNECTED,
      P(31) => NLW_blk00000433_P_31_UNCONNECTED,
      P(30) => NLW_blk00000433_P_30_UNCONNECTED,
      P(29) => NLW_blk00000433_P_29_UNCONNECTED,
      P(28) => NLW_blk00000433_P_28_UNCONNECTED,
      P(27) => NLW_blk00000433_P_27_UNCONNECTED,
      P(26) => NLW_blk00000433_P_26_UNCONNECTED,
      P(25) => NLW_blk00000433_P_25_UNCONNECTED,
      P(24) => NLW_blk00000433_P_24_UNCONNECTED,
      P(23) => NLW_blk00000433_P_23_UNCONNECTED,
      P(22) => NLW_blk00000433_P_22_UNCONNECTED,
      P(21) => NLW_blk00000433_P_21_UNCONNECTED,
      P(20) => NLW_blk00000433_P_20_UNCONNECTED,
      P(19) => NLW_blk00000433_P_19_UNCONNECTED,
      P(18) => NLW_blk00000433_P_18_UNCONNECTED,
      P(17) => NLW_blk00000433_P_17_UNCONNECTED,
      P(16) => NLW_blk00000433_P_16_UNCONNECTED,
      P(15) => sig000001b8,
      P(14) => sig000001b7,
      P(13) => sig000001b6,
      P(12) => sig000001b5,
      P(11) => sig000001b4,
      P(10) => sig000001b3,
      P(9) => sig000001b2,
      P(8) => sig000001b1,
      P(7) => sig000001b0,
      P(6) => sig000001af,
      P(5) => sig000001ae,
      P(4) => sig000001ad,
      P(3) => NLW_blk00000433_P_3_UNCONNECTED,
      P(2) => NLW_blk00000433_P_2_UNCONNECTED,
      P(1) => NLW_blk00000433_P_1_UNCONNECTED,
      P(0) => NLW_blk00000433_P_0_UNCONNECTED,
      A(29) => sig00000002,
      A(28) => sig00000002,
      A(27) => sig00000002,
      A(26) => sig00000002,
      A(25) => sig00000002,
      A(24) => sig000001c1,
      A(23) => sig000001c1,
      A(22) => sig000001c1,
      A(21) => sig000001c1,
      A(20) => sig000001c1,
      A(19) => sig000001c1,
      A(18) => sig000001c1,
      A(17) => sig000001c1,
      A(16) => sig000001c1,
      A(15) => sig000001c1,
      A(14) => sig000001c1,
      A(13) => sig000001c1,
      A(12) => sig000001c1,
      A(11) => sig000001c1,
      A(10) => sig000001c1,
      A(9) => sig000001c1,
      A(8) => sig000001c1,
      A(7) => sig000001c0,
      A(6) => sig000001bf,
      A(5) => sig000001be,
      A(4) => sig000001bd,
      A(3) => sig000001bc,
      A(2) => sig000001bb,
      A(1) => sig000001ba,
      A(0) => sig000001b9,
      PCOUT(47) => NLW_blk00000433_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_blk00000433_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_blk00000433_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_blk00000433_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_blk00000433_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_blk00000433_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_blk00000433_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_blk00000433_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_blk00000433_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_blk00000433_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_blk00000433_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_blk00000433_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_blk00000433_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_blk00000433_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_blk00000433_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_blk00000433_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_blk00000433_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_blk00000433_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_blk00000433_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_blk00000433_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_blk00000433_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_blk00000433_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_blk00000433_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_blk00000433_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_blk00000433_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_blk00000433_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_blk00000433_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_blk00000433_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_blk00000433_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_blk00000433_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_blk00000433_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_blk00000433_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_blk00000433_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_blk00000433_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_blk00000433_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_blk00000433_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_blk00000433_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_blk00000433_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_blk00000433_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_blk00000433_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_blk00000433_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_blk00000433_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_blk00000433_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_blk00000433_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_blk00000433_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_blk00000433_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_blk00000433_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_blk00000433_PCOUT_0_UNCONNECTED,
      ACOUT(29) => NLW_blk00000433_ACOUT_29_UNCONNECTED,
      ACOUT(28) => NLW_blk00000433_ACOUT_28_UNCONNECTED,
      ACOUT(27) => NLW_blk00000433_ACOUT_27_UNCONNECTED,
      ACOUT(26) => NLW_blk00000433_ACOUT_26_UNCONNECTED,
      ACOUT(25) => NLW_blk00000433_ACOUT_25_UNCONNECTED,
      ACOUT(24) => NLW_blk00000433_ACOUT_24_UNCONNECTED,
      ACOUT(23) => NLW_blk00000433_ACOUT_23_UNCONNECTED,
      ACOUT(22) => NLW_blk00000433_ACOUT_22_UNCONNECTED,
      ACOUT(21) => NLW_blk00000433_ACOUT_21_UNCONNECTED,
      ACOUT(20) => NLW_blk00000433_ACOUT_20_UNCONNECTED,
      ACOUT(19) => NLW_blk00000433_ACOUT_19_UNCONNECTED,
      ACOUT(18) => NLW_blk00000433_ACOUT_18_UNCONNECTED,
      ACOUT(17) => NLW_blk00000433_ACOUT_17_UNCONNECTED,
      ACOUT(16) => NLW_blk00000433_ACOUT_16_UNCONNECTED,
      ACOUT(15) => NLW_blk00000433_ACOUT_15_UNCONNECTED,
      ACOUT(14) => NLW_blk00000433_ACOUT_14_UNCONNECTED,
      ACOUT(13) => NLW_blk00000433_ACOUT_13_UNCONNECTED,
      ACOUT(12) => NLW_blk00000433_ACOUT_12_UNCONNECTED,
      ACOUT(11) => NLW_blk00000433_ACOUT_11_UNCONNECTED,
      ACOUT(10) => NLW_blk00000433_ACOUT_10_UNCONNECTED,
      ACOUT(9) => NLW_blk00000433_ACOUT_9_UNCONNECTED,
      ACOUT(8) => NLW_blk00000433_ACOUT_8_UNCONNECTED,
      ACOUT(7) => NLW_blk00000433_ACOUT_7_UNCONNECTED,
      ACOUT(6) => NLW_blk00000433_ACOUT_6_UNCONNECTED,
      ACOUT(5) => NLW_blk00000433_ACOUT_5_UNCONNECTED,
      ACOUT(4) => NLW_blk00000433_ACOUT_4_UNCONNECTED,
      ACOUT(3) => NLW_blk00000433_ACOUT_3_UNCONNECTED,
      ACOUT(2) => NLW_blk00000433_ACOUT_2_UNCONNECTED,
      ACOUT(1) => NLW_blk00000433_ACOUT_1_UNCONNECTED,
      ACOUT(0) => NLW_blk00000433_ACOUT_0_UNCONNECTED,
      OPMODE(6) => sig00000002,
      OPMODE(5) => sig00000002,
      OPMODE(4) => sig00000001,
      OPMODE(3) => sig00000002,
      OPMODE(2) => sig00000001,
      OPMODE(1) => sig00000002,
      OPMODE(0) => sig00000001,
      CARRYOUT(3) => NLW_blk00000433_CARRYOUT_3_UNCONNECTED,
      CARRYOUT(2) => NLW_blk00000433_CARRYOUT_2_UNCONNECTED,
      CARRYOUT(1) => NLW_blk00000433_CARRYOUT_1_UNCONNECTED,
      CARRYOUT(0) => NLW_blk00000433_CARRYOUT_0_UNCONNECTED,
      BCIN(17) => sig00000002,
      BCIN(16) => sig00000002,
      BCIN(15) => sig00000002,
      BCIN(14) => sig00000002,
      BCIN(13) => sig00000002,
      BCIN(12) => sig00000002,
      BCIN(11) => sig00000002,
      BCIN(10) => sig00000002,
      BCIN(9) => sig00000002,
      BCIN(8) => sig00000002,
      BCIN(7) => sig00000002,
      BCIN(6) => sig00000002,
      BCIN(5) => sig00000002,
      BCIN(4) => sig00000002,
      BCIN(3) => sig00000002,
      BCIN(2) => sig00000002,
      BCIN(1) => sig00000002,
      BCIN(0) => sig00000002,
      BCOUT(17) => NLW_blk00000433_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_blk00000433_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_blk00000433_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_blk00000433_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_blk00000433_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_blk00000433_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_blk00000433_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_blk00000433_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_blk00000433_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_blk00000433_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_blk00000433_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_blk00000433_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_blk00000433_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_blk00000433_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_blk00000433_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_blk00000433_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_blk00000433_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_blk00000433_BCOUT_0_UNCONNECTED,
      ACIN(29) => sig00000002,
      ACIN(28) => sig00000002,
      ACIN(27) => sig00000002,
      ACIN(26) => sig00000002,
      ACIN(25) => sig00000002,
      ACIN(24) => sig00000002,
      ACIN(23) => sig00000002,
      ACIN(22) => sig00000002,
      ACIN(21) => sig00000002,
      ACIN(20) => sig00000002,
      ACIN(19) => sig00000002,
      ACIN(18) => sig00000002,
      ACIN(17) => sig00000002,
      ACIN(16) => sig00000002,
      ACIN(15) => sig00000002,
      ACIN(14) => sig00000002,
      ACIN(13) => sig00000002,
      ACIN(12) => sig00000002,
      ACIN(11) => sig00000002,
      ACIN(10) => sig00000002,
      ACIN(9) => sig00000002,
      ACIN(8) => sig00000002,
      ACIN(7) => sig00000002,
      ACIN(6) => sig00000002,
      ACIN(5) => sig00000002,
      ACIN(4) => sig00000002,
      ACIN(3) => sig00000002,
      ACIN(2) => sig00000002,
      ACIN(1) => sig00000002,
      ACIN(0) => sig00000002
    );
  blk00000102_blk00000114 : RAMB18
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      READ_WIDTH_A => 0,
      READ_WIDTH_B => 18,
      SIM_COLLISION_CHECK => "GENERATE_X_ONLY",
      SIM_MODE => "SAFE",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
    port map (
      CLKB => clk,
      REGCEB => ce,
      ENA => ce,
      REGCEA => blk00000102_sig0000043f,
      SSRB => blk00000102_sig0000043f,
      CLKA => clk,
      ENB => ce,
      SSRA => blk00000102_sig0000043f,
      DIPB(1) => blk00000102_sig0000043f,
      DIPB(0) => blk00000102_sig0000043f,
      DIA(15) => blk00000102_sig0000043f,
      DIA(14) => blk00000102_sig0000043f,
      DIA(13) => sig00000099,
      DIA(12) => sig00000098,
      DIA(11) => sig00000097,
      DIA(10) => sig00000096,
      DIA(9) => sig00000095,
      DIA(8) => sig00000094,
      DIA(7) => sig00000092,
      DIA(6) => sig00000091,
      DIA(5) => sig00000090,
      DIA(4) => sig0000008f,
      DIA(3) => sig0000008d,
      DIA(2) => sig0000008c,
      DIA(1) => sig0000008b,
      DIA(0) => sig0000008a,
      WEA(1) => sig00000032,
      WEA(0) => sig00000032,
      ADDRB(13) => sig0000012b,
      ADDRB(12) => sig0000012a,
      ADDRB(11) => sig00000129,
      ADDRB(10) => sig00000128,
      ADDRB(9) => sig00000127,
      ADDRB(8) => sig00000126,
      ADDRB(7) => sig00000125,
      ADDRB(6) => sig00000124,
      ADDRB(5) => sig00000123,
      ADDRB(4) => sig00000122,
      ADDRB(3) => blk00000102_sig0000043f,
      ADDRB(2) => blk00000102_sig0000043f,
      ADDRB(1) => blk00000102_sig0000043f,
      ADDRB(0) => blk00000102_sig0000043f,
      ADDRA(13) => sig00000135,
      ADDRA(12) => sig00000134,
      ADDRA(11) => sig00000133,
      ADDRA(10) => sig00000132,
      ADDRA(9) => sig00000131,
      ADDRA(8) => sig00000130,
      ADDRA(7) => sig0000012f,
      ADDRA(6) => sig0000012e,
      ADDRA(5) => sig0000012d,
      ADDRA(4) => sig0000012c,
      ADDRA(3) => blk00000102_sig0000043f,
      ADDRA(2) => blk00000102_sig0000043f,
      ADDRA(1) => blk00000102_sig0000043f,
      ADDRA(0) => blk00000102_sig0000043f,
      DIPA(1) => sig00000093,
      DIPA(0) => sig0000008e,
      DOPB(1) => blk00000102_sig0000042e,
      DOPB(0) => blk00000102_sig0000042d,
      DOB(15) => NLW_blk00000102_blk00000114_DOB_15_UNCONNECTED,
      DOB(14) => NLW_blk00000102_blk00000114_DOB_14_UNCONNECTED,
      DOB(13) => blk00000102_sig00000427,
      DOB(12) => blk00000102_sig00000428,
      DOB(11) => blk00000102_sig00000429,
      DOB(10) => blk00000102_sig0000042a,
      DOB(9) => blk00000102_sig0000042b,
      DOB(8) => blk00000102_sig0000042c,
      DOB(7) => blk00000102_sig00000423,
      DOB(6) => blk00000102_sig00000424,
      DOB(5) => blk00000102_sig00000425,
      DOB(4) => blk00000102_sig00000426,
      DOB(3) => blk00000102_sig0000041f,
      DOB(2) => blk00000102_sig00000420,
      DOB(1) => blk00000102_sig00000421,
      DOB(0) => blk00000102_sig00000422,
      WEB(1) => blk00000102_sig0000043f,
      WEB(0) => blk00000102_sig0000043f,
      DOA(15) => NLW_blk00000102_blk00000114_DOA_15_UNCONNECTED,
      DOA(14) => NLW_blk00000102_blk00000114_DOA_14_UNCONNECTED,
      DOA(13) => NLW_blk00000102_blk00000114_DOA_13_UNCONNECTED,
      DOA(12) => NLW_blk00000102_blk00000114_DOA_12_UNCONNECTED,
      DOA(11) => NLW_blk00000102_blk00000114_DOA_11_UNCONNECTED,
      DOA(10) => NLW_blk00000102_blk00000114_DOA_10_UNCONNECTED,
      DOA(9) => NLW_blk00000102_blk00000114_DOA_9_UNCONNECTED,
      DOA(8) => NLW_blk00000102_blk00000114_DOA_8_UNCONNECTED,
      DOA(7) => NLW_blk00000102_blk00000114_DOA_7_UNCONNECTED,
      DOA(6) => NLW_blk00000102_blk00000114_DOA_6_UNCONNECTED,
      DOA(5) => NLW_blk00000102_blk00000114_DOA_5_UNCONNECTED,
      DOA(4) => NLW_blk00000102_blk00000114_DOA_4_UNCONNECTED,
      DOA(3) => NLW_blk00000102_blk00000114_DOA_3_UNCONNECTED,
      DOA(2) => NLW_blk00000102_blk00000114_DOA_2_UNCONNECTED,
      DOA(1) => NLW_blk00000102_blk00000114_DOA_1_UNCONNECTED,
      DOA(0) => NLW_blk00000102_blk00000114_DOA_0_UNCONNECTED,
      DIB(15) => blk00000102_sig0000043f,
      DIB(14) => blk00000102_sig0000043f,
      DIB(13) => blk00000102_sig0000043f,
      DIB(12) => blk00000102_sig0000043f,
      DIB(11) => blk00000102_sig0000043f,
      DIB(10) => blk00000102_sig0000043f,
      DIB(9) => blk00000102_sig0000043f,
      DIB(8) => blk00000102_sig0000043f,
      DIB(7) => blk00000102_sig0000043f,
      DIB(6) => blk00000102_sig0000043f,
      DIB(5) => blk00000102_sig0000043f,
      DIB(4) => blk00000102_sig0000043f,
      DIB(3) => blk00000102_sig0000043f,
      DIB(2) => blk00000102_sig0000043f,
      DIB(1) => blk00000102_sig0000043f,
      DIB(0) => blk00000102_sig0000043f,
      DOPA(1) => NLW_blk00000102_blk00000114_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_blk00000102_blk00000114_DOPA_0_UNCONNECTED
    );
  blk00000102_blk00000113 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000427,
      Q => sig000000f9
    );
  blk00000102_blk00000112 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000428,
      Q => sig000000f8
    );
  blk00000102_blk00000111 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000429,
      Q => sig000000f7
    );
  blk00000102_blk00000110 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig0000042a,
      Q => sig000000f6
    );
  blk00000102_blk0000010f : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig0000042b,
      Q => sig000000f5
    );
  blk00000102_blk0000010e : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig0000042c,
      Q => sig000000f4
    );
  blk00000102_blk0000010d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig0000042e,
      Q => sig000000f3
    );
  blk00000102_blk0000010c : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000423,
      Q => sig000000f2
    );
  blk00000102_blk0000010b : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000424,
      Q => sig000000f1
    );
  blk00000102_blk0000010a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000425,
      Q => sig000000f0
    );
  blk00000102_blk00000109 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000426,
      Q => sig000000ef
    );
  blk00000102_blk00000108 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig0000042d,
      Q => sig000000ee
    );
  blk00000102_blk00000107 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig0000041f,
      Q => sig000000ed
    );
  blk00000102_blk00000106 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000420,
      Q => sig000000ec
    );
  blk00000102_blk00000105 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000421,
      Q => sig000000eb
    );
  blk00000102_blk00000104 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000102_sig00000422,
      Q => sig000000ea
    );
  blk00000102_blk00000103 : GND
    port map (
      G => blk00000102_sig0000043f
    );
  blk00000135_blk00000136_blk0000013a : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000135_blk00000136_sig0000044b,
      Q => sig000000e9
    );
  blk00000135_blk00000136_blk00000139 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk00000135_blk00000136_sig00000449,
      A1 => blk00000135_blk00000136_sig0000044a,
      A2 => blk00000135_blk00000136_sig00000449,
      A3 => blk00000135_blk00000136_sig00000449,
      CE => ce,
      CLK => clk,
      D => sig00000009,
      Q => blk00000135_blk00000136_sig0000044b,
      Q15 => NLW_blk00000135_blk00000136_blk00000139_Q15_UNCONNECTED
    );
  blk00000135_blk00000136_blk00000138 : VCC
    port map (
      P => blk00000135_blk00000136_sig0000044a
    );
  blk00000135_blk00000136_blk00000137 : GND
    port map (
      G => blk00000135_blk00000136_sig00000449
    );
  blk0000015b_blk0000015c_blk00000160 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk0000015b_blk0000015c_sig00000456,
      Q => sig000000d8
    );
  blk0000015b_blk0000015c_blk0000015f : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk0000015b_blk0000015c_sig00000455,
      A1 => blk0000015b_blk0000015c_sig00000454,
      A2 => blk0000015b_blk0000015c_sig00000455,
      A3 => blk0000015b_blk0000015c_sig00000454,
      CE => ce,
      CLK => clk,
      D => sig00000069,
      Q => blk0000015b_blk0000015c_sig00000456,
      Q15 => NLW_blk0000015b_blk0000015c_blk0000015f_Q15_UNCONNECTED
    );
  blk0000015b_blk0000015c_blk0000015e : VCC
    port map (
      P => blk0000015b_blk0000015c_sig00000455
    );
  blk0000015b_blk0000015c_blk0000015d : GND
    port map (
      G => blk0000015b_blk0000015c_sig00000454
    );
  blk00000218_blk00000219_blk0000021d : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000218_blk00000219_sig00000462,
      Q => sig0000000b
    );
  blk00000218_blk00000219_blk0000021c : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk00000218_blk00000219_sig00000461,
      A1 => blk00000218_blk00000219_sig00000460,
      A2 => blk00000218_blk00000219_sig00000460,
      A3 => blk00000218_blk00000219_sig00000460,
      CE => ce,
      CLK => clk,
      D => sig00000302,
      Q => blk00000218_blk00000219_sig00000462,
      Q15 => NLW_blk00000218_blk00000219_blk0000021c_Q15_UNCONNECTED
    );
  blk00000218_blk00000219_blk0000021b : VCC
    port map (
      P => blk00000218_blk00000219_sig00000461
    );
  blk00000218_blk00000219_blk0000021a : GND
    port map (
      G => blk00000218_blk00000219_sig00000460
    );
  blk0000024a_blk00000268 : INV
    port map (
      I => sig00000321,
      O => blk0000024a_sig00000482
    );
  blk0000024a_blk00000267 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000322,
      O => blk0000024a_sig0000048a
    );
  blk0000024a_blk00000266 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000323,
      O => blk0000024a_sig00000489
    );
  blk0000024a_blk00000265 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000324,
      O => blk0000024a_sig00000488
    );
  blk0000024a_blk00000264 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000325,
      O => blk0000024a_sig00000487
    );
  blk0000024a_blk00000263 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000326,
      O => blk0000024a_sig00000486
    );
  blk0000024a_blk00000262 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000327,
      O => blk0000024a_sig00000485
    );
  blk0000024a_blk00000261 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000328,
      O => blk0000024a_sig00000484
    );
  blk0000024a_blk00000260 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig00000329,
      O => blk0000024a_sig00000483
    );
  blk0000024a_blk0000025f : MUXCY
    port map (
      CI => blk0000024a_sig00000478,
      DI => blk0000024a_sig00000477,
      S => blk0000024a_sig00000482,
      O => blk0000024a_sig00000481
    );
  blk0000024a_blk0000025e : XORCY
    port map (
      CI => blk0000024a_sig00000478,
      LI => blk0000024a_sig00000482,
      O => sig0000030e
    );
  blk0000024a_blk0000025d : XORCY
    port map (
      CI => blk0000024a_sig00000479,
      LI => sig0000032a,
      O => sig00000317
    );
  blk0000024a_blk0000025c : MUXCY
    port map (
      CI => blk0000024a_sig00000481,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig0000048a,
      O => blk0000024a_sig00000480
    );
  blk0000024a_blk0000025b : XORCY
    port map (
      CI => blk0000024a_sig00000481,
      LI => blk0000024a_sig0000048a,
      O => sig0000030f
    );
  blk0000024a_blk0000025a : MUXCY
    port map (
      CI => blk0000024a_sig00000480,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000489,
      O => blk0000024a_sig0000047f
    );
  blk0000024a_blk00000259 : XORCY
    port map (
      CI => blk0000024a_sig00000480,
      LI => blk0000024a_sig00000489,
      O => sig00000310
    );
  blk0000024a_blk00000258 : MUXCY
    port map (
      CI => blk0000024a_sig0000047f,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000488,
      O => blk0000024a_sig0000047e
    );
  blk0000024a_blk00000257 : XORCY
    port map (
      CI => blk0000024a_sig0000047f,
      LI => blk0000024a_sig00000488,
      O => sig00000311
    );
  blk0000024a_blk00000256 : MUXCY
    port map (
      CI => blk0000024a_sig0000047e,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000487,
      O => blk0000024a_sig0000047d
    );
  blk0000024a_blk00000255 : XORCY
    port map (
      CI => blk0000024a_sig0000047e,
      LI => blk0000024a_sig00000487,
      O => sig00000312
    );
  blk0000024a_blk00000254 : MUXCY
    port map (
      CI => blk0000024a_sig0000047d,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000486,
      O => blk0000024a_sig0000047c
    );
  blk0000024a_blk00000253 : XORCY
    port map (
      CI => blk0000024a_sig0000047d,
      LI => blk0000024a_sig00000486,
      O => sig00000313
    );
  blk0000024a_blk00000252 : MUXCY
    port map (
      CI => blk0000024a_sig0000047c,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000485,
      O => blk0000024a_sig0000047b
    );
  blk0000024a_blk00000251 : XORCY
    port map (
      CI => blk0000024a_sig0000047c,
      LI => blk0000024a_sig00000485,
      O => sig00000314
    );
  blk0000024a_blk00000250 : MUXCY
    port map (
      CI => blk0000024a_sig0000047b,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000484,
      O => blk0000024a_sig0000047a
    );
  blk0000024a_blk0000024f : XORCY
    port map (
      CI => blk0000024a_sig0000047b,
      LI => blk0000024a_sig00000484,
      O => sig00000315
    );
  blk0000024a_blk0000024e : MUXCY
    port map (
      CI => blk0000024a_sig0000047a,
      DI => blk0000024a_sig00000478,
      S => blk0000024a_sig00000483,
      O => blk0000024a_sig00000479
    );
  blk0000024a_blk0000024d : XORCY
    port map (
      CI => blk0000024a_sig0000047a,
      LI => blk0000024a_sig00000483,
      O => sig00000316
    );
  blk0000024a_blk0000024c : GND
    port map (
      G => blk0000024a_sig00000478
    );
  blk0000024a_blk0000024b : VCC
    port map (
      P => blk0000024a_sig00000477
    );
  blk000002d7_blk000002d8_blk000002dc : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk000002d7_blk000002d8_sig00000495,
      Q => sig00000269
    );
  blk000002d7_blk000002d8_blk000002db : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk000002d7_blk000002d8_sig00000493,
      A1 => blk000002d7_blk000002d8_sig00000494,
      A2 => blk000002d7_blk000002d8_sig00000493,
      A3 => blk000002d7_blk000002d8_sig00000494,
      CE => ce,
      CLK => clk,
      D => sig00000273,
      Q => blk000002d7_blk000002d8_sig00000495,
      Q15 => NLW_blk000002d7_blk000002d8_blk000002db_Q15_UNCONNECTED
    );
  blk000002d7_blk000002d8_blk000002da : VCC
    port map (
      P => blk000002d7_blk000002d8_sig00000494
    );
  blk000002d7_blk000002d8_blk000002d9 : GND
    port map (
      G => blk000002d7_blk000002d8_sig00000493
    );
  blk000002dd_blk000002e9 : INV
    port map (
      I => sig000002a8,
      O => blk000002dd_sig000004a3
    );
  blk000002dd_blk000002e8 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig000002a7,
      O => blk000002dd_sig000004a5
    );
  blk000002dd_blk000002e7 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig000002a6,
      O => blk000002dd_sig000004a4
    );
  blk000002dd_blk000002e6 : MUXCY
    port map (
      CI => blk000002dd_sig0000049f,
      DI => blk000002dd_sig0000049e,
      S => blk000002dd_sig000004a3,
      O => blk000002dd_sig000004a2
    );
  blk000002dd_blk000002e5 : XORCY
    port map (
      CI => blk000002dd_sig0000049f,
      LI => blk000002dd_sig000004a3,
      O => sig000002b0
    );
  blk000002dd_blk000002e4 : XORCY
    port map (
      CI => blk000002dd_sig000004a0,
      LI => sig000002a5,
      O => sig000002ad
    );
  blk000002dd_blk000002e3 : MUXCY
    port map (
      CI => blk000002dd_sig000004a2,
      DI => blk000002dd_sig0000049f,
      S => blk000002dd_sig000004a5,
      O => blk000002dd_sig000004a1
    );
  blk000002dd_blk000002e2 : XORCY
    port map (
      CI => blk000002dd_sig000004a2,
      LI => blk000002dd_sig000004a5,
      O => sig000002af
    );
  blk000002dd_blk000002e1 : MUXCY
    port map (
      CI => blk000002dd_sig000004a1,
      DI => blk000002dd_sig0000049f,
      S => blk000002dd_sig000004a4,
      O => blk000002dd_sig000004a0
    );
  blk000002dd_blk000002e0 : XORCY
    port map (
      CI => blk000002dd_sig000004a1,
      LI => blk000002dd_sig000004a4,
      O => sig000002ae
    );
  blk000002dd_blk000002df : GND
    port map (
      G => blk000002dd_sig0000049f
    );
  blk000002dd_blk000002de : VCC
    port map (
      P => blk000002dd_sig0000049e
    );
  blk000002ea_blk000002eb_blk000002ef : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk000002ea_blk000002eb_sig000004b1,
      Q => sig000003a7
    );
  blk000002ea_blk000002eb_blk000002ee : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk000002ea_blk000002eb_sig000004b0,
      A1 => blk000002ea_blk000002eb_sig000004af,
      A2 => blk000002ea_blk000002eb_sig000004af,
      A3 => blk000002ea_blk000002eb_sig000004af,
      CE => ce,
      CLK => clk,
      D => sig000002bc,
      Q => blk000002ea_blk000002eb_sig000004b1,
      Q15 => NLW_blk000002ea_blk000002eb_blk000002ee_Q15_UNCONNECTED
    );
  blk000002ea_blk000002eb_blk000002ed : VCC
    port map (
      P => blk000002ea_blk000002eb_sig000004b0
    );
  blk000002ea_blk000002eb_blk000002ec : GND
    port map (
      G => blk000002ea_blk000002eb_sig000004af
    );
  blk000002f0_blk000002f1_blk000002f5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk000002f0_blk000002f1_sig000004bd,
      Q => sig000002f4
    );
  blk000002f0_blk000002f1_blk000002f4 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk000002f0_blk000002f1_sig000004bc,
      A1 => blk000002f0_blk000002f1_sig000004bb,
      A2 => blk000002f0_blk000002f1_sig000004bb,
      A3 => blk000002f0_blk000002f1_sig000004bb,
      CE => ce,
      CLK => clk,
      D => sig000003a4,
      Q => blk000002f0_blk000002f1_sig000004bd,
      Q15 => NLW_blk000002f0_blk000002f1_blk000002f4_Q15_UNCONNECTED
    );
  blk000002f0_blk000002f1_blk000002f3 : VCC
    port map (
      P => blk000002f0_blk000002f1_sig000004bc
    );
  blk000002f0_blk000002f1_blk000002f2 : GND
    port map (
      G => blk000002f0_blk000002f1_sig000004bb
    );
  blk000002f6_blk000002f7_blk000002fb : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk000002f6_blk000002f7_sig000004c9,
      Q => sig00000005
    );
  blk000002f6_blk000002f7_blk000002fa : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk000002f6_blk000002f7_sig000004c8,
      A1 => blk000002f6_blk000002f7_sig000004c7,
      A2 => blk000002f6_blk000002f7_sig000004c7,
      A3 => blk000002f6_blk000002f7_sig000004c7,
      CE => ce,
      CLK => clk,
      D => NlwRenamedSig_OI_U0_i_synth_non_floating_point_arch_e_xfft_inst_control_addr_gen_io_addr_gen_rfd_i,
      Q => blk000002f6_blk000002f7_sig000004c9,
      Q15 => NLW_blk000002f6_blk000002f7_blk000002fa_Q15_UNCONNECTED
    );
  blk000002f6_blk000002f7_blk000002f9 : VCC
    port map (
      P => blk000002f6_blk000002f7_sig000004c8
    );
  blk000002f6_blk000002f7_blk000002f8 : GND
    port map (
      G => blk000002f6_blk000002f7_sig000004c7
    );
  blk000002fc_blk000002fd_blk00000301 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk000002fc_blk000002fd_sig000004d5,
      Q => sig000003a8
    );
  blk000002fc_blk000002fd_blk00000300 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => blk000002fc_blk000002fd_sig000004d3,
      A1 => blk000002fc_blk000002fd_sig000004d4,
      A2 => blk000002fc_blk000002fd_sig000004d3,
      A3 => blk000002fc_blk000002fd_sig000004d3,
      CE => ce,
      CLK => clk,
      D => sig00000004,
      Q => blk000002fc_blk000002fd_sig000004d5,
      Q15 => NLW_blk000002fc_blk000002fd_blk00000300_Q15_UNCONNECTED
    );
  blk000002fc_blk000002fd_blk000002ff : VCC
    port map (
      P => blk000002fc_blk000002fd_sig000004d4
    );
  blk000002fc_blk000002fd_blk000002fe : GND
    port map (
      G => blk000002fc_blk000002fd_sig000004d3
    );
  blk00000322_blk0000034a : INV
    port map (
      I => sig00000399,
      O => blk00000322_sig00000502
    );
  blk00000322_blk00000349 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000039a,
      O => blk00000322_sig0000050a
    );
  blk00000322_blk00000348 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000039b,
      O => blk00000322_sig00000509
    );
  blk00000322_blk00000347 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000039c,
      O => blk00000322_sig00000508
    );
  blk00000322_blk00000346 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000039d,
      O => blk00000322_sig00000507
    );
  blk00000322_blk00000345 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000039e,
      O => blk00000322_sig00000506
    );
  blk00000322_blk00000344 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig0000039f,
      O => blk00000322_sig00000505
    );
  blk00000322_blk00000343 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig000003a0,
      O => blk00000322_sig00000504
    );
  blk00000322_blk00000342 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig000003a1,
      O => blk00000322_sig00000503
    );
  blk00000322_blk00000341 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig00000500,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(0)
    );
  blk00000322_blk00000340 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004fd,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(1)
    );
  blk00000322_blk0000033f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004fb,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(2)
    );
  blk00000322_blk0000033e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004f9,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(3)
    );
  blk00000322_blk0000033d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004f7,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(4)
    );
  blk00000322_blk0000033c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004f5,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(5)
    );
  blk00000322_blk0000033b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004f3,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(6)
    );
  blk00000322_blk0000033a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004f1,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(7)
    );
  blk00000322_blk00000339 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004ef,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(8)
    );
  blk00000322_blk00000338 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => blk00000322_sig000004ff,
      R => sig00000002,
      Q => NlwRenamedSig_OI_xn_index(9)
    );
  blk00000322_blk00000337 : MUXCY
    port map (
      CI => blk00000322_sig000004ee,
      DI => blk00000322_sig000004ed,
      S => blk00000322_sig00000502,
      O => blk00000322_sig00000501
    );
  blk00000322_blk00000336 : XORCY
    port map (
      CI => blk00000322_sig000004ee,
      LI => blk00000322_sig00000502,
      O => blk00000322_sig00000500
    );
  blk00000322_blk00000335 : XORCY
    port map (
      CI => blk00000322_sig000004f0,
      LI => sig000003a2,
      O => blk00000322_sig000004ff
    );
  blk00000322_blk00000334 : MUXCY
    port map (
      CI => blk00000322_sig00000501,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig0000050a,
      O => blk00000322_sig000004fe
    );
  blk00000322_blk00000333 : XORCY
    port map (
      CI => blk00000322_sig00000501,
      LI => blk00000322_sig0000050a,
      O => blk00000322_sig000004fd
    );
  blk00000322_blk00000332 : MUXCY
    port map (
      CI => blk00000322_sig000004fe,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000509,
      O => blk00000322_sig000004fc
    );
  blk00000322_blk00000331 : XORCY
    port map (
      CI => blk00000322_sig000004fe,
      LI => blk00000322_sig00000509,
      O => blk00000322_sig000004fb
    );
  blk00000322_blk00000330 : MUXCY
    port map (
      CI => blk00000322_sig000004fc,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000508,
      O => blk00000322_sig000004fa
    );
  blk00000322_blk0000032f : XORCY
    port map (
      CI => blk00000322_sig000004fc,
      LI => blk00000322_sig00000508,
      O => blk00000322_sig000004f9
    );
  blk00000322_blk0000032e : MUXCY
    port map (
      CI => blk00000322_sig000004fa,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000507,
      O => blk00000322_sig000004f8
    );
  blk00000322_blk0000032d : XORCY
    port map (
      CI => blk00000322_sig000004fa,
      LI => blk00000322_sig00000507,
      O => blk00000322_sig000004f7
    );
  blk00000322_blk0000032c : MUXCY
    port map (
      CI => blk00000322_sig000004f8,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000506,
      O => blk00000322_sig000004f6
    );
  blk00000322_blk0000032b : XORCY
    port map (
      CI => blk00000322_sig000004f8,
      LI => blk00000322_sig00000506,
      O => blk00000322_sig000004f5
    );
  blk00000322_blk0000032a : MUXCY
    port map (
      CI => blk00000322_sig000004f6,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000505,
      O => blk00000322_sig000004f4
    );
  blk00000322_blk00000329 : XORCY
    port map (
      CI => blk00000322_sig000004f6,
      LI => blk00000322_sig00000505,
      O => blk00000322_sig000004f3
    );
  blk00000322_blk00000328 : MUXCY
    port map (
      CI => blk00000322_sig000004f4,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000504,
      O => blk00000322_sig000004f2
    );
  blk00000322_blk00000327 : XORCY
    port map (
      CI => blk00000322_sig000004f4,
      LI => blk00000322_sig00000504,
      O => blk00000322_sig000004f1
    );
  blk00000322_blk00000326 : MUXCY
    port map (
      CI => blk00000322_sig000004f2,
      DI => blk00000322_sig000004ee,
      S => blk00000322_sig00000503,
      O => blk00000322_sig000004f0
    );
  blk00000322_blk00000325 : XORCY
    port map (
      CI => blk00000322_sig000004f2,
      LI => blk00000322_sig00000503,
      O => blk00000322_sig000004ef
    );
  blk00000322_blk00000324 : GND
    port map (
      G => blk00000322_sig000004ee
    );
  blk00000322_blk00000323 : VCC
    port map (
      P => blk00000322_sig000004ed
    );

end STRUCTURE;

-- synthesis translate_on
