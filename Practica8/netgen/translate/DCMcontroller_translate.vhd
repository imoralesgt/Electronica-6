--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: DCMcontroller_translate.vhd
-- /___/   /\     Timestamp: Sat Feb 22 22:14:39 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm DCMcontroller -w -dir netgen/translate -ofmt vhdl -sim DCMcontroller.ngd DCMcontroller_translate.vhd 
-- Device	: 6slx16csg324-3n
-- Input file	: DCMcontroller.ngd
-- Output file	: C:\Users\Ivan\Desktop\fpgaE6Review\Practica8\netgen\translate\DCMcontroller_translate.vhd
-- # of Entities	: 1
-- Design Name	: DCMcontroller
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity DCMcontroller is
  port (
    clkIn : in STD_LOGIC := 'X'; 
    clkOut1 : out STD_LOGIC; 
    clkOut2 : out STD_LOGIC; 
    clkOut3 : out STD_LOGIC; 
    lockedOut : out STD_LOGIC 
  );
end DCMcontroller;

architecture Structure of DCMcontroller is
  signal clkOut1_OBUF_9 : STD_LOGIC; 
  signal clkOut2_OBUF_10 : STD_LOGIC; 
  signal clkOut3_OBUF_11 : STD_LOGIC; 
  signal lockedOut_OBUF_12 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal CMTinst_clkout2 : STD_LOGIC; 
  signal CMTinst_clkout1 : STD_LOGIC; 
  signal CMTinst_clkout0 : STD_LOGIC; 
  signal CMTinst_clkin1 : STD_LOGIC; 
  signal CMTinst_clkfbout : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUT3_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM3_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUT5_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKINSEL_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKIN2_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM2_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DRDY_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM1_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DWE_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM5_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKFBDCM_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUT4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_REL_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM0_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_CMTinst_pll_base_inst_PLL_ADV_DO_0_UNCONNECTED : STD_LOGIC; 
begin
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  CMTinst_clkout3_buf : X_CKBUF
    port map (
      O => clkOut3_OBUF_11,
      I => CMTinst_clkout2
    );
  CMTinst_clkout2_buf : X_CKBUF
    port map (
      O => clkOut2_OBUF_10,
      I => CMTinst_clkout1
    );
  CMTinst_clkout1_buf : X_CKBUF
    port map (
      O => clkOut1_OBUF_9,
      I => CMTinst_clkout0
    );
  CMTinst_clkin1_buf : X_CKBUF
    port map (
      I => clkIn,
      O => CMTinst_clkin1
    );
  CMTinst_pll_base_inst_PLL_ADV : X_PLL_ADV
    generic map(
      SIM_DEVICE => "SPARTAN6",
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 41,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE => 4,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 102,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 3,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLK_FEEDBACK => "CLKFBOUT",
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 4,
      REF_JITTER => 0.010000
    )
    port map (
      CLKOUT3 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUT3_UNCONNECTED,
      CLKFBIN => CMTinst_clkfbout,
      CLKOUTDCM3 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM3_UNCONNECTED,
      CLKFBOUT => CMTinst_clkfbout,
      DCLK => NLW_CMTinst_pll_base_inst_PLL_ADV_DCLK_UNCONNECTED,
      CLKOUTDCM4 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM4_UNCONNECTED,
      CLKOUT1 => CMTinst_clkout1,
      DEN => NLW_CMTinst_pll_base_inst_PLL_ADV_DEN_UNCONNECTED,
      CLKOUT5 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUT5_UNCONNECTED,
      CLKINSEL => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKINSEL_UNCONNECTED,
      CLKIN2 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKIN2_UNCONNECTED,
      CLKOUTDCM2 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM2_UNCONNECTED,
      DRDY => NLW_CMTinst_pll_base_inst_PLL_ADV_DRDY_UNCONNECTED,
      CLKOUTDCM1 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM1_UNCONNECTED,
      RST => N0,
      DWE => NLW_CMTinst_pll_base_inst_PLL_ADV_DWE_UNCONNECTED,
      CLKOUTDCM5 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM5_UNCONNECTED,
      CLKFBDCM => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKFBDCM_UNCONNECTED,
      CLKOUT0 => CMTinst_clkout0,
      CLKOUT4 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUT4_UNCONNECTED,
      REL => NLW_CMTinst_pll_base_inst_PLL_ADV_REL_UNCONNECTED,
      CLKIN1 => CMTinst_clkin1,
      CLKOUT2 => CMTinst_clkout2,
      CLKOUTDCM0 => NLW_CMTinst_pll_base_inst_PLL_ADV_CLKOUTDCM0_UNCONNECTED,
      LOCKED => lockedOut_OBUF_12,
      DADDR(4) => NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_4_UNCONNECTED,
      DADDR(3) => NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_3_UNCONNECTED,
      DADDR(2) => NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_2_UNCONNECTED,
      DADDR(1) => NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_1_UNCONNECTED,
      DADDR(0) => NLW_CMTinst_pll_base_inst_PLL_ADV_DADDR_0_UNCONNECTED,
      DI(15) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_15_UNCONNECTED,
      DI(14) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_14_UNCONNECTED,
      DI(13) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_13_UNCONNECTED,
      DI(12) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_12_UNCONNECTED,
      DI(11) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_11_UNCONNECTED,
      DI(10) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_10_UNCONNECTED,
      DI(9) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_9_UNCONNECTED,
      DI(8) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_8_UNCONNECTED,
      DI(7) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_7_UNCONNECTED,
      DI(6) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_6_UNCONNECTED,
      DI(5) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_5_UNCONNECTED,
      DI(4) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_4_UNCONNECTED,
      DI(3) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_3_UNCONNECTED,
      DI(2) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_2_UNCONNECTED,
      DI(1) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_1_UNCONNECTED,
      DI(0) => NLW_CMTinst_pll_base_inst_PLL_ADV_DI_0_UNCONNECTED,
      DO(15) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_15_UNCONNECTED,
      DO(14) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_14_UNCONNECTED,
      DO(13) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_13_UNCONNECTED,
      DO(12) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_12_UNCONNECTED,
      DO(11) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_11_UNCONNECTED,
      DO(10) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_10_UNCONNECTED,
      DO(9) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_9_UNCONNECTED,
      DO(8) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_8_UNCONNECTED,
      DO(7) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_7_UNCONNECTED,
      DO(6) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_6_UNCONNECTED,
      DO(5) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_5_UNCONNECTED,
      DO(4) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_4_UNCONNECTED,
      DO(3) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_3_UNCONNECTED,
      DO(2) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_2_UNCONNECTED,
      DO(1) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_1_UNCONNECTED,
      DO(0) => NLW_CMTinst_pll_base_inst_PLL_ADV_DO_0_UNCONNECTED
    );
  clkOut1_OBUF : X_OBUF
    port map (
      I => clkOut1_OBUF_9,
      O => clkOut1
    );
  clkOut2_OBUF : X_OBUF
    port map (
      I => clkOut2_OBUF_10,
      O => clkOut2
    );
  clkOut3_OBUF : X_OBUF
    port map (
      I => clkOut3_OBUF_11,
      O => clkOut3
    );
  lockedOut_OBUF : X_OBUF
    port map (
      I => lockedOut_OBUF_12,
      O => lockedOut
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

