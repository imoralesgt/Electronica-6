--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: Semaforo_translate.vhd
-- /___/   /\     Timestamp: Sat Feb 22 19:38:37 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Semaforo -w -dir netgen/translate -ofmt vhdl -sim Semaforo.ngd Semaforo_translate.vhd 
-- Device	: 6slx16csg324-3n
-- Input file	: Semaforo.ngd
-- Output file	: C:\Users\Ivan\Desktop\fpgaE6Review\Practica6\netgen\translate\Semaforo_translate.vhd
-- # of Entities	: 1
-- Design Name	: Semaforo
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

entity Semaforo is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    RED : out STD_LOGIC; 
    GREEN : out STD_LOGIC; 
    YELLOW : out STD_LOGIC 
  );
end Semaforo;

architecture Structure of Semaforo is
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_4 : STD_LOGIC; 
  signal GREEN_OBUF_10 : STD_LOGIC; 
  signal YELLOW_OBUF_11 : STD_LOGIC; 
  signal RED_OBUF_12 : STD_LOGIC; 
  signal current_state_1_GND_4_o_wide_mux_12_OUT_4_Q : STD_LOGIC; 
  signal current_state_1_GND_4_o_wide_mux_12_OUT_3_Q : STD_LOGIC; 
  signal current_state_1_GND_4_o_wide_mux_12_OUT_2_Q : STD_LOGIC; 
  signal current_state_1_GND_4_o_wide_mux_12_OUT_1_Q : STD_LOGIC; 
  signal current_state_1_GND_4_o_wide_mux_12_OUT_0_Q : STD_LOGIC; 
  signal current_state_1_PWR_4_o_Mux_14_o : STD_LOGIC; 
  signal current_state_1_GND_4_o_Mux_15_o : STD_LOGIC; 
  signal current_state_1_GND_4_o_Mux_16_o : STD_LOGIC; 
  signal delay_30_GND_4_o_add_9_OUT_4_Q : STD_LOGIC; 
  signal delay_30_GND_4_o_add_9_OUT_3_Q : STD_LOGIC; 
  signal delay_30_GND_4_o_add_9_OUT_2_Q : STD_LOGIC; 
  signal delay_30_GND_4_o_add_9_OUT_1_Q : STD_LOGIC; 
  signal delay_30_GND_4_o_add_9_OUT_0_Q : STD_LOGIC; 
  signal current_state_FSM_FFd4_26 : STD_LOGIC; 
  signal current_state_FSM_FFd3_27 : STD_LOGIC; 
  signal current_state_FSM_FFd1_28 : STD_LOGIC; 
  signal current_state_FSM_FFd1_In : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi_30 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_0_Q_31 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_0_Q_32 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_1_Q_35 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_2_Q_36 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_3_Q_37 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_4_Q_38 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_lutdi : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_lut_0_Q : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_0_Q_42 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_1_Q_43 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_2_Q_44 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_3_Q_45 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_4_Q_46 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_lutdi_48 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_lut_0_Q_49 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_0_Q_50 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_1_Q_51 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_2_Q_52 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_3_Q_53 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_4_Q_54 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_5_Q_55 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_0_Q_58 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_1_Q_59 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_2_Q_60 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_3_Q_61 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal current_state_FSM_FFd4_glue_set : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_1_rt_69 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_2_rt_70 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_cy_3_rt_71 : STD_LOGIC; 
  signal Madd_delay_30_GND_4_o_add_9_OUT_xor_4_rt_72 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_l1 : STD_LOGIC; 
  signal Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_l1 : STD_LOGIC; 
  signal Mmux_current_state_1_GND_4_o_Mux_16_o_0_SW0_cy_rt_78 : STD_LOGIC; 
  signal current_state_FSM_FFd4_glue_set_cy_rt_79 : STD_LOGIC; 
  signal current_state_FSM_FFd1_In1_cy_rt_80 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal delay : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q
    );
  XST_GND : X_ZERO
    port map (
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1
    );
  delay_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_wide_mux_12_OUT_0_Q,
      SRST => rst_IBUF_4,
      O => delay(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  delay_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_wide_mux_12_OUT_1_Q,
      SRST => rst_IBUF_4,
      O => delay(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  delay_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_wide_mux_12_OUT_2_Q,
      SRST => rst_IBUF_4,
      O => delay(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  delay_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_wide_mux_12_OUT_3_Q,
      SRST => rst_IBUF_4,
      O => delay(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  delay_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_wide_mux_12_OUT_4_Q,
      SRST => rst_IBUF_4,
      O => delay(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  GREEN_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_Mux_15_o,
      SRST => rst_IBUF_4,
      O => GREEN_OBUF_10,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  YELLOW_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_GND_4_o_Mux_16_o,
      SRST => rst_IBUF_4,
      O => YELLOW_OBUF_11,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RED_10 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_1_PWR_4_o_Mux_14_o,
      SSET => rst_IBUF_4,
      O => RED_OBUF_12,
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  current_state_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_FSM_FFd1_In,
      SRST => rst_IBUF_4,
      O => current_state_FSM_FFd1_28,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      ADR1 => delay(3),
      ADR2 => delay(2),
      ADR3 => delay(4),
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi_30
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_0_Q : X_LUT5
    generic map(
      INIT => X"00001000"
    )
    port map (
      ADR0 => delay(2),
      ADR1 => delay(4),
      ADR2 => delay(3),
      ADR3 => delay(1),
      ADR4 => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_0_Q_31
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi_30,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_0_Q_31,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_0_Q_32
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_1_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_0_Q_32,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_1_Q_35
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_2_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_1_Q_35,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_2_Q_36
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_3_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_2_Q_36,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_3_Q_37
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_4_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_3_Q_37,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_4_Q_38
    );
  Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_4_Q_38,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      IA => Mcompar_delay_30_GND_4_o_LessThan_5_o_lutdi,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_5_o_lut_0_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_0_Q_42
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_1_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_0_Q_42,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_1_Q_43
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_2_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_1_Q_43,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_2_Q_44
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_3_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_2_Q_44,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_3_Q_45
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_4_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_3_Q_45,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_4_Q_46
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_4_Q_46,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_lutdi : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => delay(4),
      ADR1 => delay(2),
      ADR2 => delay(1),
      ADR3 => delay(3),
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_lutdi_48
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_lut_0_Q : X_LUT5
    generic map(
      INIT => X"00001000"
    )
    port map (
      ADR0 => delay(1),
      ADR1 => delay(3),
      ADR2 => delay(2),
      ADR3 => delay(0),
      ADR4 => delay(4),
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_lut_0_Q_49
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      IA => Mcompar_delay_30_GND_4_o_LessThan_9_o_lutdi_48,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_9_o_lut_0_Q_49,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_0_Q_50
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_1_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_0_Q_50,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_1_Q_51
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_2_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_1_Q_51,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_2_Q_52
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_3_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_2_Q_52,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_3_Q_53
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_4_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_3_Q_53,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_4_Q_54
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_5_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_4_Q_54,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_5_Q_55
    );
  Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_5_Q_55,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      SEL => Madd_delay_30_GND_4_o_add_9_OUT_lut_0_Q,
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_0_Q_58
    );
  Madd_delay_30_GND_4_o_add_9_OUT_xor_0_Q : X_XOR2
    port map (
      I0 => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      I1 => Madd_delay_30_GND_4_o_add_9_OUT_lut_0_Q,
      O => delay_30_GND_4_o_add_9_OUT_0_Q
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_1_Q : X_MUX2
    port map (
      IB => Madd_delay_30_GND_4_o_add_9_OUT_cy_0_Q_58,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Madd_delay_30_GND_4_o_add_9_OUT_cy_1_rt_69,
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_1_Q_59
    );
  Madd_delay_30_GND_4_o_add_9_OUT_xor_1_Q : X_XOR2
    port map (
      I0 => Madd_delay_30_GND_4_o_add_9_OUT_cy_0_Q_58,
      I1 => Madd_delay_30_GND_4_o_add_9_OUT_cy_1_rt_69,
      O => delay_30_GND_4_o_add_9_OUT_1_Q
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_2_Q : X_MUX2
    port map (
      IB => Madd_delay_30_GND_4_o_add_9_OUT_cy_1_Q_59,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Madd_delay_30_GND_4_o_add_9_OUT_cy_2_rt_70,
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_2_Q_60
    );
  Madd_delay_30_GND_4_o_add_9_OUT_xor_2_Q : X_XOR2
    port map (
      I0 => Madd_delay_30_GND_4_o_add_9_OUT_cy_1_Q_59,
      I1 => Madd_delay_30_GND_4_o_add_9_OUT_cy_2_rt_70,
      O => delay_30_GND_4_o_add_9_OUT_2_Q
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_3_Q : X_MUX2
    port map (
      IB => Madd_delay_30_GND_4_o_add_9_OUT_cy_2_Q_60,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => Madd_delay_30_GND_4_o_add_9_OUT_cy_3_rt_71,
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_3_Q_61
    );
  Madd_delay_30_GND_4_o_add_9_OUT_xor_3_Q : X_XOR2
    port map (
      I0 => Madd_delay_30_GND_4_o_add_9_OUT_cy_2_Q_60,
      I1 => Madd_delay_30_GND_4_o_add_9_OUT_cy_3_rt_71,
      O => delay_30_GND_4_o_add_9_OUT_3_Q
    );
  Madd_delay_30_GND_4_o_add_9_OUT_xor_4_Q : X_XOR2
    port map (
      I0 => Madd_delay_30_GND_4_o_add_9_OUT_cy_3_Q_61,
      I1 => Madd_delay_30_GND_4_o_add_9_OUT_xor_4_rt_72,
      O => delay_30_GND_4_o_add_9_OUT_4_Q
    );
  Mmux_current_state_1_GND_4_o_Mux_15_o_0_1 : X_LUT6
    generic map(
      INIT => X"AAA0FAF0EAE0FAF0"
    )
    port map (
      ADR0 => current_state_FSM_FFd4_26,
      ADR1 => current_state_FSM_FFd1_28,
      ADR2 => GREEN_OBUF_10,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39,
      ADR4 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR5 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      O => current_state_1_GND_4_o_Mux_15_o
    );
  Mmux_current_state_1_GND_4_o_Mux_16_o_0_Q : X_LUT6
    generic map(
      INIT => X"CC88EEAAECA8EEAA"
    )
    port map (
      ADR0 => YELLOW_OBUF_11,
      ADR1 => GREEN_OBUF_10,
      ADR2 => current_state_FSM_FFd1_28,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR4 => N5,
      ADR5 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      O => current_state_1_GND_4_o_Mux_16_o
    );
  rst_IBUF : X_BUF
    port map (
      I => rst,
      O => rst_IBUF_4
    );
  current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      O => current_state_FSM_FFd3_27,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  current_state_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => current_state_FSM_FFd4_glue_set,
      O => current_state_FSM_FFd4_26,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_lutdi1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => delay(4),
      ADR1 => delay(3),
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_lutdi
    );
  Mcompar_delay_30_GND_4_o_LessThan_5_o_lut_0_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => delay(2),
      ADR1 => delay(4),
      ADR2 => delay(3),
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_lut_0_Q
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => delay(1),
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_1_rt_69,
      ADR1 => GND
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => delay(2),
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_2_rt_70,
      ADR1 => GND
    );
  Madd_delay_30_GND_4_o_add_9_OUT_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => delay(3),
      O => Madd_delay_30_GND_4_o_add_9_OUT_cy_3_rt_71,
      ADR1 => GND
    );
  Madd_delay_30_GND_4_o_add_9_OUT_xor_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => delay(4),
      O => Madd_delay_30_GND_4_o_add_9_OUT_xor_4_rt_72,
      ADR1 => GND
    );
  Mmux_current_state_1_GND_4_o_wide_mux_12_OUT_0_11_SW0 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => current_state_FSM_FFd4_26,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39,
      O => N7
    );
  Mmux_current_state_1_GND_4_o_wide_mux_12_OUT_0_2 : X_LUT6
    generic map(
      INIT => X"AAAAAAAA20AA2020"
    )
    port map (
      ADR0 => delay_30_GND_4_o_add_9_OUT_0_Q,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR2 => GREEN_OBUF_10,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      ADR4 => current_state_FSM_FFd1_28,
      ADR5 => N7,
      O => current_state_1_GND_4_o_wide_mux_12_OUT_0_Q
    );
  Mmux_current_state_1_GND_4_o_wide_mux_12_OUT_1_1 : X_LUT6
    generic map(
      INIT => X"AAAAAAAA20AA2020"
    )
    port map (
      ADR0 => delay_30_GND_4_o_add_9_OUT_1_Q,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR2 => GREEN_OBUF_10,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      ADR4 => current_state_FSM_FFd1_28,
      ADR5 => N7,
      O => current_state_1_GND_4_o_wide_mux_12_OUT_1_Q
    );
  Mmux_current_state_1_GND_4_o_wide_mux_12_OUT_2_1 : X_LUT6
    generic map(
      INIT => X"AAAAAAAA20AA2020"
    )
    port map (
      ADR0 => delay_30_GND_4_o_add_9_OUT_2_Q,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR2 => GREEN_OBUF_10,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      ADR4 => current_state_FSM_FFd1_28,
      ADR5 => N7,
      O => current_state_1_GND_4_o_wide_mux_12_OUT_2_Q
    );
  Mmux_current_state_1_GND_4_o_wide_mux_12_OUT_3_1 : X_LUT6
    generic map(
      INIT => X"AAAAAAAA20AA2020"
    )
    port map (
      ADR0 => delay_30_GND_4_o_add_9_OUT_3_Q,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR2 => GREEN_OBUF_10,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      ADR4 => current_state_FSM_FFd1_28,
      ADR5 => N7,
      O => current_state_1_GND_4_o_wide_mux_12_OUT_3_Q
    );
  Mmux_current_state_1_GND_4_o_wide_mux_12_OUT_4_1 : X_LUT6
    generic map(
      INIT => X"AAAAAAAA20AA2020"
    )
    port map (
      ADR0 => delay_30_GND_4_o_add_9_OUT_4_Q,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR2 => GREEN_OBUF_10,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      ADR4 => current_state_FSM_FFd1_28,
      ADR5 => N7,
      O => current_state_1_GND_4_o_wide_mux_12_OUT_4_Q
    );
  Mmux_current_state_1_GND_4_o_Mux_16_o_0_SW0_cy : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lut_1_Q,
      SEL => Mmux_current_state_1_GND_4_o_Mux_16_o_0_SW0_cy_rt_78,
      O => N5
    );
  Mmux_current_state_1_PWR_4_o_Mux_14_o_0_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      ADR0 => current_state_FSM_FFd3_27,
      ADR1 => RED_OBUF_12,
      ADR2 => current_state_FSM_FFd4_26,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39,
      O => N17
    );
  Mmux_current_state_1_PWR_4_o_Mux_14_o_0_SW0_SW1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => current_state_FSM_FFd3_27,
      ADR1 => RED_OBUF_12,
      O => N18
    );
  Mmux_current_state_1_PWR_4_o_Mux_14_o_0_Q : X_LUT6
    generic map(
      INIT => X"FFFDF3F1CCECC0E0"
    )
    port map (
      ADR0 => GREEN_OBUF_10,
      ADR1 => current_state_FSM_FFd1_28,
      ADR2 => N18,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      ADR4 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      ADR5 => N17,
      O => current_state_1_PWR_4_o_Mux_14_o
    );
  current_state_FSM_FFd4_glue_set_cy : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => current_state_FSM_FFd4_glue_set_cy_rt_79,
      O => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_l1
    );
  current_state_FSM_FFd1_In1_cy : X_MUX2
    port map (
      IB => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_Q_47,
      IA => Mcompar_delay_30_GND_4_o_LessThan_1_o_lutdi1,
      SEL => current_state_FSM_FFd1_In1_cy_rt_80,
      O => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_l1
    );
  Mmux_current_state_1_GND_4_o_Mux_16_o_0_SW0_cy_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => current_state_FSM_FFd4_26,
      O => Mmux_current_state_1_GND_4_o_Mux_16_o_0_SW0_cy_rt_78,
      ADR1 => GND
    );
  current_state_FSM_FFd4_glue_set_cy_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => current_state_FSM_FFd1_28,
      O => current_state_FSM_FFd4_glue_set_cy_rt_79,
      ADR1 => GND
    );
  current_state_FSM_FFd1_In1_cy_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => GREEN_OBUF_10,
      O => current_state_FSM_FFd1_In1_cy_rt_80,
      ADR1 => GND
    );
  current_state_FSM_FFd1_In1_cy1 : X_LUT3
    generic map(
      INIT => X"CE"
    )
    port map (
      ADR0 => current_state_FSM_FFd1_28,
      ADR1 => Mcompar_delay_30_GND_4_o_LessThan_5_o_cy_5_l1,
      ADR2 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_Q_56,
      O => current_state_FSM_FFd1_In
    );
  current_state_FSM_FFd4_glue_set_cy1_cy : X_LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
    port map (
      ADR0 => rst_IBUF_4,
      ADR1 => current_state_FSM_FFd3_27,
      ADR2 => current_state_FSM_FFd4_26,
      ADR3 => Mcompar_delay_30_GND_4_o_LessThan_1_o_cy_5_Q_39,
      ADR4 => Mcompar_delay_30_GND_4_o_LessThan_9_o_cy_6_l1,
      O => current_state_FSM_FFd4_glue_set
    );
  Madd_delay_30_GND_4_o_add_9_OUT_lut_0_INV_0 : X_INV
    port map (
      I => delay(0),
      O => Madd_delay_30_GND_4_o_add_9_OUT_lut_0_Q
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  RED_OBUF : X_OBUF
    port map (
      I => RED_OBUF_12,
      O => RED
    );
  GREEN_OBUF : X_OBUF
    port map (
      I => GREEN_OBUF_10,
      O => GREEN
    );
  YELLOW_OBUF : X_OBUF
    port map (
      I => YELLOW_OBUF_11,
      O => YELLOW
    );
  NlwBlock_Semaforo_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Semaforo_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

