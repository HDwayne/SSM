-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.2 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Sun Mar  3 19:43:22 2024
-- Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/hdway/Documents/vivado/SSM/zybo-tp7/zybo-tp7.sim/sim_1/synth/func/xsim/test_fifo_func_synth.vhd
-- Design      : fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    REN : in STD_LOGIC;
    WEN : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    EMPTY : out STD_LOGIC;
    MID : out STD_LOGIC;
    FULL : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fifo : entity is true;
  attribute ABUS_WIDTH : integer;
  attribute ABUS_WIDTH of fifo : entity is 3;
  attribute DBUS_WIDTH : integer;
  attribute DBUS_WIDTH of fifo : entity is 32;
end fifo;

architecture STRUCTURE of fifo is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DI_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DO1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DO_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \DO_TRI[0]\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_2_n_0\ : STD_LOGIC;
  signal EMPTY_OBUF : STD_LOGIC;
  signal EMPTY_i_1_n_0 : STD_LOGIC;
  signal EMPTY_i_2_n_0 : STD_LOGIC;
  signal FULL_OBUF : STD_LOGIC;
  signal FULL_i_1_n_0 : STD_LOGIC;
  signal FULL_i_2_n_0 : STD_LOGIC;
  signal MID_OBUF : STD_LOGIC;
  signal MID_i_1_n_0 : STD_LOGIC;
  signal MID_i_2_n_0 : STD_LOGIC;
  signal MID_i_3_n_0 : STD_LOGIC;
  signal R : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal REGS_reg_0_7_0_5_i_1_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_0_5_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_0_5_n_1 : STD_LOGIC;
  signal REGS_reg_0_7_0_5_n_2 : STD_LOGIC;
  signal REGS_reg_0_7_0_5_n_3 : STD_LOGIC;
  signal REGS_reg_0_7_0_5_n_4 : STD_LOGIC;
  signal REGS_reg_0_7_0_5_n_5 : STD_LOGIC;
  signal REGS_reg_0_7_12_17_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_12_17_n_1 : STD_LOGIC;
  signal REGS_reg_0_7_12_17_n_2 : STD_LOGIC;
  signal REGS_reg_0_7_12_17_n_3 : STD_LOGIC;
  signal REGS_reg_0_7_12_17_n_4 : STD_LOGIC;
  signal REGS_reg_0_7_12_17_n_5 : STD_LOGIC;
  signal REGS_reg_0_7_18_23_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_18_23_n_1 : STD_LOGIC;
  signal REGS_reg_0_7_18_23_n_2 : STD_LOGIC;
  signal REGS_reg_0_7_18_23_n_3 : STD_LOGIC;
  signal REGS_reg_0_7_18_23_n_4 : STD_LOGIC;
  signal REGS_reg_0_7_18_23_n_5 : STD_LOGIC;
  signal REGS_reg_0_7_24_29_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_24_29_n_1 : STD_LOGIC;
  signal REGS_reg_0_7_24_29_n_2 : STD_LOGIC;
  signal REGS_reg_0_7_24_29_n_3 : STD_LOGIC;
  signal REGS_reg_0_7_24_29_n_4 : STD_LOGIC;
  signal REGS_reg_0_7_24_29_n_5 : STD_LOGIC;
  signal \REGS_reg_0_7_30_31__0_n_0\ : STD_LOGIC;
  signal REGS_reg_0_7_30_31_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_6_11_n_0 : STD_LOGIC;
  signal REGS_reg_0_7_6_11_n_1 : STD_LOGIC;
  signal REGS_reg_0_7_6_11_n_2 : STD_LOGIC;
  signal REGS_reg_0_7_6_11_n_3 : STD_LOGIC;
  signal REGS_reg_0_7_6_11_n_4 : STD_LOGIC;
  signal REGS_reg_0_7_6_11_n_5 : STD_LOGIC;
  signal REN_IBUF : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal \R_ADR[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_ADR[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_ADR[2]_i_1_n_0\ : STD_LOGIC;
  signal \R_ADR[2]_i_3_n_0\ : STD_LOGIC;
  signal WEN_IBUF : STD_LOGIC;
  signal W_ADR : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \W_ADR[0]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[1]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[2]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[2]_i_2_n_0\ : STD_LOGIC;
  signal \W_ADR__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_REGS_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_7_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_7_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_REGS_reg_0_7_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_REGS_reg_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of REGS_reg_0_7_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of REGS_reg_0_7_0_5 : label is "REGS_reg_0_7_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of REGS_reg_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of REGS_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of REGS_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of REGS_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of REGS_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of REGS_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_7_12_17 : label is 256;
  attribute RTL_RAM_NAME of REGS_reg_0_7_12_17 : label is "REGS_reg_0_7_12_17";
  attribute RTL_RAM_TYPE of REGS_reg_0_7_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_7_12_17 : label is 0;
  attribute ram_addr_end of REGS_reg_0_7_12_17 : label is 7;
  attribute ram_offset of REGS_reg_0_7_12_17 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_7_12_17 : label is 12;
  attribute ram_slice_end of REGS_reg_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_7_18_23 : label is 256;
  attribute RTL_RAM_NAME of REGS_reg_0_7_18_23 : label is "REGS_reg_0_7_18_23";
  attribute RTL_RAM_TYPE of REGS_reg_0_7_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_7_18_23 : label is 0;
  attribute ram_addr_end of REGS_reg_0_7_18_23 : label is 7;
  attribute ram_offset of REGS_reg_0_7_18_23 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_7_18_23 : label is 18;
  attribute ram_slice_end of REGS_reg_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_7_24_29 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_7_24_29 : label is 256;
  attribute RTL_RAM_NAME of REGS_reg_0_7_24_29 : label is "REGS_reg_0_7_24_29";
  attribute RTL_RAM_TYPE of REGS_reg_0_7_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_7_24_29 : label is 0;
  attribute ram_addr_end of REGS_reg_0_7_24_29 : label is 7;
  attribute ram_offset of REGS_reg_0_7_24_29 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_7_24_29 : label is 24;
  attribute ram_slice_end of REGS_reg_0_7_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_7_30_31 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_7_30_31 : label is 256;
  attribute RTL_RAM_NAME of REGS_reg_0_7_30_31 : label is "REGS_reg_0_7_30_31";
  attribute RTL_RAM_TYPE of REGS_reg_0_7_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_7_30_31 : label is 0;
  attribute ram_addr_end of REGS_reg_0_7_30_31 : label is 7;
  attribute ram_offset of REGS_reg_0_7_30_31 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_7_30_31 : label is 30;
  attribute ram_slice_end of REGS_reg_0_7_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \REGS_reg_0_7_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \REGS_reg_0_7_30_31__0\ : label is 256;
  attribute RTL_RAM_NAME of \REGS_reg_0_7_30_31__0\ : label is "REGS_reg_0_7_30_31";
  attribute RTL_RAM_TYPE of \REGS_reg_0_7_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \REGS_reg_0_7_30_31__0\ : label is 0;
  attribute ram_addr_end of \REGS_reg_0_7_30_31__0\ : label is 7;
  attribute ram_offset of \REGS_reg_0_7_30_31__0\ : label is 0;
  attribute ram_slice_begin of \REGS_reg_0_7_30_31__0\ : label is 30;
  attribute ram_slice_end of \REGS_reg_0_7_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_7_6_11 : label is 256;
  attribute RTL_RAM_NAME of REGS_reg_0_7_6_11 : label is "REGS_reg_0_7_6_11";
  attribute RTL_RAM_TYPE of REGS_reg_0_7_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_7_6_11 : label is 0;
  attribute ram_addr_end of REGS_reg_0_7_6_11 : label is 7;
  attribute ram_offset of REGS_reg_0_7_6_11 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_7_6_11 : label is 6;
  attribute ram_slice_end of REGS_reg_0_7_6_11 : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_ADR[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_ADR[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_ADR[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \W_ADR[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \W_ADR[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \W_ADR[2]_i_2\ : label is "soft_lutpair1";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\DI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(0),
      O => DI_IBUF(0)
    );
\DI_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(10),
      O => DI_IBUF(10)
    );
\DI_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(11),
      O => DI_IBUF(11)
    );
\DI_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(12),
      O => DI_IBUF(12)
    );
\DI_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(13),
      O => DI_IBUF(13)
    );
\DI_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(14),
      O => DI_IBUF(14)
    );
\DI_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(15),
      O => DI_IBUF(15)
    );
\DI_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(16),
      O => DI_IBUF(16)
    );
\DI_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(17),
      O => DI_IBUF(17)
    );
\DI_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(18),
      O => DI_IBUF(18)
    );
\DI_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(19),
      O => DI_IBUF(19)
    );
\DI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(1),
      O => DI_IBUF(1)
    );
\DI_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(20),
      O => DI_IBUF(20)
    );
\DI_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(21),
      O => DI_IBUF(21)
    );
\DI_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(22),
      O => DI_IBUF(22)
    );
\DI_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(23),
      O => DI_IBUF(23)
    );
\DI_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(24),
      O => DI_IBUF(24)
    );
\DI_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(25),
      O => DI_IBUF(25)
    );
\DI_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(26),
      O => DI_IBUF(26)
    );
\DI_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(27),
      O => DI_IBUF(27)
    );
\DI_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(28),
      O => DI_IBUF(28)
    );
\DI_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(29),
      O => DI_IBUF(29)
    );
\DI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(2),
      O => DI_IBUF(2)
    );
\DI_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(30),
      O => DI_IBUF(30)
    );
\DI_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(31),
      O => DI_IBUF(31)
    );
\DI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(3),
      O => DI_IBUF(3)
    );
\DI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(4),
      O => DI_IBUF(4)
    );
\DI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(5),
      O => DI_IBUF(5)
    );
\DI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(6),
      O => DI_IBUF(6)
    );
\DI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(7),
      O => DI_IBUF(7)
    );
\DI_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(8),
      O => DI_IBUF(8)
    );
\DI_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(9),
      O => DI_IBUF(9)
    );
\DO_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(0),
      O => DO(0),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(10),
      O => DO(10),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(11),
      O => DO(11),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(12),
      O => DO(12),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(13),
      O => DO(13),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(14),
      O => DO(14),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(15),
      O => DO(15),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[16]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(16),
      O => DO(16),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[17]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(17),
      O => DO(17),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[18]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(18),
      O => DO(18),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[19]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(19),
      O => DO(19),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(1),
      O => DO(1),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[20]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(20),
      O => DO(20),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[21]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(21),
      O => DO(21),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[22]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(22),
      O => DO(22),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[23]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(23),
      O => DO(23),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[24]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(24),
      O => DO(24),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[25]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(25),
      O => DO(25),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[26]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(26),
      O => DO(26),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[27]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(27),
      O => DO(27),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[28]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(28),
      O => DO(28),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[29]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(29),
      O => DO(29),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(2),
      O => DO(2),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[30]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(30),
      O => DO(30),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[31]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(31),
      O => DO(31),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[31]_inst_i_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => \W_ADR[2]_i_1_n_0\,
      Q => \DO_TRI[0]\,
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(3),
      O => DO(3),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(4),
      O => DO(4),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(5),
      O => DO(5),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(6),
      O => DO(6),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(7),
      O => DO(7),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(8),
      O => DO(8),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(9),
      O => DO(9),
      T => \DO_TRI[0]\
    );
\DO_tristate_oe[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => REN_IBUF,
      I1 => RST_IBUF,
      I2 => EMPTY_OBUF,
      O => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => RST_IBUF,
      I1 => REN_IBUF,
      O => \DO_tristate_oe[31]_i_2_n_0\
    );
\DO_tristate_oe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_0_5_n_1,
      Q => DO_OBUF(0),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_6_11_n_5,
      Q => DO_OBUF(10),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_6_11_n_4,
      Q => DO_OBUF(11),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_12_17_n_1,
      Q => DO_OBUF(12),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_12_17_n_0,
      Q => DO_OBUF(13),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_12_17_n_3,
      Q => DO_OBUF(14),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_12_17_n_2,
      Q => DO_OBUF(15),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_12_17_n_5,
      Q => DO_OBUF(16),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_12_17_n_4,
      Q => DO_OBUF(17),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_18_23_n_1,
      Q => DO_OBUF(18),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_18_23_n_0,
      Q => DO_OBUF(19),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_0_5_n_0,
      Q => DO_OBUF(1),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_18_23_n_3,
      Q => DO_OBUF(20),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_18_23_n_2,
      Q => DO_OBUF(21),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_18_23_n_5,
      Q => DO_OBUF(22),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_18_23_n_4,
      Q => DO_OBUF(23),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_24_29_n_1,
      Q => DO_OBUF(24),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_24_29_n_0,
      Q => DO_OBUF(25),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_24_29_n_3,
      Q => DO_OBUF(26),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_24_29_n_2,
      Q => DO_OBUF(27),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_24_29_n_5,
      Q => DO_OBUF(28),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_24_29_n_4,
      Q => DO_OBUF(29),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_0_5_n_3,
      Q => DO_OBUF(2),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_30_31_n_0,
      Q => DO_OBUF(30),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => \REGS_reg_0_7_30_31__0_n_0\,
      Q => DO_OBUF(31),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_0_5_n_2,
      Q => DO_OBUF(3),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_0_5_n_5,
      Q => DO_OBUF(4),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_0_5_n_4,
      Q => DO_OBUF(5),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_6_11_n_1,
      Q => DO_OBUF(6),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_6_11_n_0,
      Q => DO_OBUF(7),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_6_11_n_3,
      Q => DO_OBUF(8),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]_i_2_n_0\,
      D => REGS_reg_0_7_6_11_n_2,
      Q => DO_OBUF(9),
      R => \DO_tristate_oe[31]_i_1_n_0\
    );
EMPTY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => EMPTY_OBUF,
      O => EMPTY
    );
EMPTY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88C8FFFF"
    )
        port map (
      I0 => EMPTY_OBUF,
      I1 => WEN_IBUF,
      I2 => EMPTY_i_2_n_0,
      I3 => REN_IBUF,
      I4 => RST_IBUF,
      O => EMPTY_i_1_n_0
    );
EMPTY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000096090090000"
    )
        port map (
      I0 => R(2),
      I1 => W_ADR(2),
      I2 => R(1),
      I3 => W_ADR(1),
      I4 => W_ADR(0),
      I5 => R(0),
      O => EMPTY_i_2_n_0
    );
EMPTY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => EMPTY_i_1_n_0,
      Q => EMPTY_OBUF,
      R => '0'
    );
FULL_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => FULL_OBUF,
      O => FULL
    );
FULL_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80000"
    )
        port map (
      I0 => FULL_OBUF,
      I1 => REN_IBUF,
      I2 => FULL_i_2_n_0,
      I3 => WEN_IBUF,
      I4 => RST_IBUF,
      O => FULL_i_1_n_0
    );
FULL_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090060000099000"
    )
        port map (
      I0 => R(2),
      I1 => W_ADR(2),
      I2 => R(1),
      I3 => W_ADR(0),
      I4 => R(0),
      I5 => W_ADR(1),
      O => FULL_i_2_n_0
    );
FULL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FULL_i_1_n_0,
      Q => FULL_OBUF,
      R => '0'
    );
MID_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MID_OBUF,
      O => MID
    );
MID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => MID_i_3_n_0,
      I2 => REN_IBUF,
      O => MID_i_1_n_0
    );
MID_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => MID_i_3_n_0,
      I2 => REN_IBUF,
      O => MID_i_2_n_0
    );
MID_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669666696669696"
    )
        port map (
      I0 => R(2),
      I1 => W_ADR(2),
      I2 => R(1),
      I3 => R(0),
      I4 => W_ADR(0),
      I5 => W_ADR(1),
      O => MID_i_3_n_0
    );
MID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => MID_i_1_n_0,
      D => MID_i_2_n_0,
      Q => MID_OBUF,
      R => \W_ADR[2]_i_1_n_0\
    );
REGS_reg_0_7_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => DO1(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => DO1(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => DO1(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => W_ADR(2 downto 0),
      DIA(1 downto 0) => DI_IBUF(1 downto 0),
      DIB(1 downto 0) => DI_IBUF(3 downto 2),
      DIC(1 downto 0) => DI_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => REGS_reg_0_7_0_5_n_0,
      DOA(0) => REGS_reg_0_7_0_5_n_1,
      DOB(1) => REGS_reg_0_7_0_5_n_2,
      DOB(0) => REGS_reg_0_7_0_5_n_3,
      DOC(1) => REGS_reg_0_7_0_5_n_4,
      DOC(0) => REGS_reg_0_7_0_5_n_5,
      DOD(1 downto 0) => NLW_REGS_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
REGS_reg_0_7_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RST_IBUF,
      I1 => WEN_IBUF,
      O => REGS_reg_0_7_0_5_i_1_n_0
    );
REGS_reg_0_7_0_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => W_ADR(2),
      I1 => FULL_OBUF,
      I2 => R(2),
      O => DO1(2)
    );
REGS_reg_0_7_0_5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => W_ADR(1),
      I1 => FULL_OBUF,
      I2 => R(1),
      O => DO1(1)
    );
REGS_reg_0_7_0_5_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => W_ADR(0),
      I1 => FULL_OBUF,
      I2 => R(0),
      O => DO1(0)
    );
REGS_reg_0_7_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => DO1(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => DO1(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => DO1(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => W_ADR(2 downto 0),
      DIA(1 downto 0) => DI_IBUF(13 downto 12),
      DIB(1 downto 0) => DI_IBUF(15 downto 14),
      DIC(1 downto 0) => DI_IBUF(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => REGS_reg_0_7_12_17_n_0,
      DOA(0) => REGS_reg_0_7_12_17_n_1,
      DOB(1) => REGS_reg_0_7_12_17_n_2,
      DOB(0) => REGS_reg_0_7_12_17_n_3,
      DOC(1) => REGS_reg_0_7_12_17_n_4,
      DOC(0) => REGS_reg_0_7_12_17_n_5,
      DOD(1 downto 0) => NLW_REGS_reg_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
REGS_reg_0_7_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => DO1(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => DO1(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => DO1(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => W_ADR(2 downto 0),
      DIA(1 downto 0) => DI_IBUF(19 downto 18),
      DIB(1 downto 0) => DI_IBUF(21 downto 20),
      DIC(1 downto 0) => DI_IBUF(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => REGS_reg_0_7_18_23_n_0,
      DOA(0) => REGS_reg_0_7_18_23_n_1,
      DOB(1) => REGS_reg_0_7_18_23_n_2,
      DOB(0) => REGS_reg_0_7_18_23_n_3,
      DOC(1) => REGS_reg_0_7_18_23_n_4,
      DOC(0) => REGS_reg_0_7_18_23_n_5,
      DOD(1 downto 0) => NLW_REGS_reg_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
REGS_reg_0_7_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => DO1(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => DO1(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => DO1(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => W_ADR(2 downto 0),
      DIA(1 downto 0) => DI_IBUF(25 downto 24),
      DIB(1 downto 0) => DI_IBUF(27 downto 26),
      DIC(1 downto 0) => DI_IBUF(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1) => REGS_reg_0_7_24_29_n_0,
      DOA(0) => REGS_reg_0_7_24_29_n_1,
      DOB(1) => REGS_reg_0_7_24_29_n_2,
      DOB(0) => REGS_reg_0_7_24_29_n_3,
      DOC(1) => REGS_reg_0_7_24_29_n_4,
      DOC(0) => REGS_reg_0_7_24_29_n_5,
      DOD(1 downto 0) => NLW_REGS_reg_0_7_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
REGS_reg_0_7_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => W_ADR(0),
      A1 => W_ADR(1),
      A2 => W_ADR(2),
      A3 => '0',
      A4 => '0',
      D => DI_IBUF(30),
      DPO => REGS_reg_0_7_30_31_n_0,
      DPRA0 => DO1(0),
      DPRA1 => DO1(1),
      DPRA2 => DO1(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_REGS_reg_0_7_30_31_SPO_UNCONNECTED,
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
\REGS_reg_0_7_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => W_ADR(0),
      A1 => W_ADR(1),
      A2 => W_ADR(2),
      A3 => '0',
      A4 => '0',
      D => DI_IBUF(31),
      DPO => \REGS_reg_0_7_30_31__0_n_0\,
      DPRA0 => DO1(0),
      DPRA1 => DO1(1),
      DPRA2 => DO1(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_REGS_reg_0_7_30_31__0_SPO_UNCONNECTED\,
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
REGS_reg_0_7_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => DO1(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => DO1(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => DO1(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => W_ADR(2 downto 0),
      DIA(1 downto 0) => DI_IBUF(7 downto 6),
      DIB(1 downto 0) => DI_IBUF(9 downto 8),
      DIC(1 downto 0) => DI_IBUF(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => REGS_reg_0_7_6_11_n_0,
      DOA(0) => REGS_reg_0_7_6_11_n_1,
      DOB(1) => REGS_reg_0_7_6_11_n_2,
      DOB(0) => REGS_reg_0_7_6_11_n_3,
      DOC(1) => REGS_reg_0_7_6_11_n_4,
      DOC(0) => REGS_reg_0_7_6_11_n_5,
      DOD(1 downto 0) => NLW_REGS_reg_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_7_0_5_i_1_n_0
    );
REN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => REN,
      O => REN_IBUF
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
\R_ADR[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40007"
    )
        port map (
      I0 => W_ADR(0),
      I1 => FULL_OBUF,
      I2 => REN_IBUF,
      I3 => EMPTY_OBUF,
      I4 => R(0),
      O => \R_ADR[0]_i_1_n_0\
    );
\R_ADR[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606FFFFF6F600000"
    )
        port map (
      I0 => W_ADR(1),
      I1 => W_ADR(0),
      I2 => FULL_OBUF,
      I3 => R(0),
      I4 => \R_ADR[2]_i_3_n_0\,
      I5 => R(1),
      O => \R_ADR[1]_i_1_n_0\
    );
\R_ADR[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBFFFFB8880000"
    )
        port map (
      I0 => \W_ADR__0\(2),
      I1 => FULL_OBUF,
      I2 => R(1),
      I3 => R(0),
      I4 => \R_ADR[2]_i_3_n_0\,
      I5 => R(2),
      O => \R_ADR[2]_i_1_n_0\
    );
\R_ADR[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => W_ADR(2),
      I1 => W_ADR(1),
      I2 => W_ADR(0),
      O => \W_ADR__0\(2)
    );
\R_ADR[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => REN_IBUF,
      I1 => EMPTY_OBUF,
      O => \R_ADR[2]_i_3_n_0\
    );
\R_ADR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \R_ADR[0]_i_1_n_0\,
      Q => R(0),
      R => \W_ADR[2]_i_1_n_0\
    );
\R_ADR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \R_ADR[1]_i_1_n_0\,
      Q => R(1),
      R => \W_ADR[2]_i_1_n_0\
    );
\R_ADR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \R_ADR[2]_i_1_n_0\,
      Q => R(2),
      R => \W_ADR[2]_i_1_n_0\
    );
WEN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WEN,
      O => WEN_IBUF
    );
\W_ADR[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR(0),
      O => \W_ADR[0]_i_1_n_0\
    );
\W_ADR[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => W_ADR(0),
      I1 => WEN_IBUF,
      I2 => W_ADR(1),
      O => \W_ADR[1]_i_1_n_0\
    );
\W_ADR[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => \W_ADR[2]_i_1_n_0\
    );
\W_ADR[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => W_ADR(1),
      I1 => W_ADR(0),
      I2 => WEN_IBUF,
      I3 => W_ADR(2),
      O => \W_ADR[2]_i_2_n_0\
    );
\W_ADR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[0]_i_1_n_0\,
      Q => W_ADR(0),
      R => \W_ADR[2]_i_1_n_0\
    );
\W_ADR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[1]_i_1_n_0\,
      Q => W_ADR(1),
      R => \W_ADR[2]_i_1_n_0\
    );
\W_ADR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[2]_i_2_n_0\,
      Q => W_ADR(2),
      R => \W_ADR[2]_i_1_n_0\
    );
end STRUCTURE;
