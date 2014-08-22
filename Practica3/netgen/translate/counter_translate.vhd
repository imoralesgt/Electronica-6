--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: counter_translate.vhd
-- /___/   /\     Timestamp: Sat Feb 22 17:02:14 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm counter -w -dir netgen/translate -ofmt vhdl -sim counter.ngd counter_translate.vhd 
-- Device	: 6slx16csg324-3n
-- Input file	: counter.ngd
-- Output file	: C:\Users\Ivan\Desktop\fpgaE6Review\Practica3\netgen\translate\counter_translate.vhd
-- # of Entities	: 1
-- Design Name	: counter
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

entity counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    count_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end counter;

architecture Structure of counter is
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_4 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Mcount_count_cy_1_rt_41 : STD_LOGIC; 
  signal Mcount_count_cy_2_rt_42 : STD_LOGIC; 
  signal Mcount_count_cy_3_rt_43 : STD_LOGIC; 
  signal Mcount_count_cy_4_rt_44 : STD_LOGIC; 
  signal Mcount_count_cy_5_rt_45 : STD_LOGIC; 
  signal Mcount_count_cy_6_rt_46 : STD_LOGIC; 
  signal Mcount_count_xor_7_rt_47 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => N0
    );
  XST_GND : X_ZERO
    port map (
      O => N1
    );
  count_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(0),
      SRST => rst_IBUF_4,
      O => count(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(1),
      SRST => rst_IBUF_4,
      O => count(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(2),
      SRST => rst_IBUF_4,
      O => count(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(3),
      SRST => rst_IBUF_4,
      O => count(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(4),
      SRST => rst_IBUF_4,
      O => count(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(5),
      SRST => rst_IBUF_4,
      O => count(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(6),
      SRST => rst_IBUF_4,
      O => count(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Result(7),
      SRST => rst_IBUF_4,
      O => count(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_count_cy_0_Q : X_MUX2
    port map (
      IB => N1,
      IA => N0,
      SEL => Mcount_count_lut(0),
      O => Mcount_count_cy(0)
    );
  Mcount_count_xor_0_Q : X_XOR2
    port map (
      I0 => N1,
      I1 => Mcount_count_lut(0),
      O => Result(0)
    );
  Mcount_count_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_count_cy(0),
      IA => N1,
      SEL => Mcount_count_cy_1_rt_41,
      O => Mcount_count_cy(1)
    );
  Mcount_count_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(0),
      I1 => Mcount_count_cy_1_rt_41,
      O => Result(1)
    );
  Mcount_count_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_count_cy(1),
      IA => N1,
      SEL => Mcount_count_cy_2_rt_42,
      O => Mcount_count_cy(2)
    );
  Mcount_count_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(1),
      I1 => Mcount_count_cy_2_rt_42,
      O => Result(2)
    );
  Mcount_count_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_count_cy(2),
      IA => N1,
      SEL => Mcount_count_cy_3_rt_43,
      O => Mcount_count_cy(3)
    );
  Mcount_count_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(2),
      I1 => Mcount_count_cy_3_rt_43,
      O => Result(3)
    );
  Mcount_count_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_count_cy(3),
      IA => N1,
      SEL => Mcount_count_cy_4_rt_44,
      O => Mcount_count_cy(4)
    );
  Mcount_count_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(3),
      I1 => Mcount_count_cy_4_rt_44,
      O => Result(4)
    );
  Mcount_count_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_count_cy(4),
      IA => N1,
      SEL => Mcount_count_cy_5_rt_45,
      O => Mcount_count_cy(5)
    );
  Mcount_count_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(4),
      I1 => Mcount_count_cy_5_rt_45,
      O => Result(5)
    );
  Mcount_count_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_count_cy(5),
      IA => N1,
      SEL => Mcount_count_cy_6_rt_46,
      O => Mcount_count_cy(6)
    );
  Mcount_count_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(5),
      I1 => Mcount_count_cy_6_rt_46,
      O => Result(6)
    );
  Mcount_count_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_count_cy(6),
      I1 => Mcount_count_xor_7_rt_47,
      O => Result(7)
    );
  rst_IBUF : X_BUF
    port map (
      I => rst,
      O => rst_IBUF_4
    );
  Mcount_count_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(1),
      O => Mcount_count_cy_1_rt_41,
      ADR1 => GND
    );
  Mcount_count_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(2),
      O => Mcount_count_cy_2_rt_42,
      ADR1 => GND
    );
  Mcount_count_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(3),
      O => Mcount_count_cy_3_rt_43,
      ADR1 => GND
    );
  Mcount_count_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(4),
      O => Mcount_count_cy_4_rt_44,
      ADR1 => GND
    );
  Mcount_count_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(5),
      O => Mcount_count_cy_5_rt_45,
      ADR1 => GND
    );
  Mcount_count_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(6),
      O => Mcount_count_cy_6_rt_46,
      ADR1 => GND
    );
  Mcount_count_xor_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => count(7),
      O => Mcount_count_xor_7_rt_47,
      ADR1 => GND
    );
  Mcount_count_lut_0_INV_0 : X_INV
    port map (
      I => count(0),
      O => Mcount_count_lut(0)
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
  count_out_7_OBUF : X_OBUF
    port map (
      I => count(7),
      O => count_out(7)
    );
  count_out_6_OBUF : X_OBUF
    port map (
      I => count(6),
      O => count_out(6)
    );
  count_out_5_OBUF : X_OBUF
    port map (
      I => count(5),
      O => count_out(5)
    );
  count_out_4_OBUF : X_OBUF
    port map (
      I => count(4),
      O => count_out(4)
    );
  count_out_3_OBUF : X_OBUF
    port map (
      I => count(3),
      O => count_out(3)
    );
  count_out_2_OBUF : X_OBUF
    port map (
      I => count(2),
      O => count_out(2)
    );
  count_out_1_OBUF : X_OBUF
    port map (
      I => count(1),
      O => count_out(1)
    );
  count_out_0_OBUF : X_OBUF
    port map (
      I => count(0),
      O => count_out(0)
    );
  NlwBlock_counter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_counter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

