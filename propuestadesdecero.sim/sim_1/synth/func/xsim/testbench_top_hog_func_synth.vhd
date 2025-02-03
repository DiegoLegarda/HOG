-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Jan 10 11:16:44 2025
-- Host        : diego-X555LD running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/diego/propuestadesdecero/propuestadesdecero.sim/sim_1/synth/func/xsim/testbench_top_hog_func_synth.vhd
-- Design      : top_hog_axi
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_sobel is
  port (
    s_axis_tready_OBUF : out STD_LOGIC;
    grad_valid : out STD_LOGIC;
    lock : out STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    s_axis_tready_reg_0 : in STD_LOGIC;
    s_axis_tvalid_IBUF : in STD_LOGIC
  );
end fifo_sobel;

architecture STRUCTURE of fifo_sobel is
  signal fifo_count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \fifo_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \fifo_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \fifo_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \fifo_count_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \fifo_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal fifo_full : STD_LOGIC;
  signal fifo_full_i_2_n_0 : STD_LOGIC;
  signal fifo_full_reg_n_0 : STD_LOGIC;
  signal grad_valid0 : STD_LOGIC;
  signal \^lock\ : STD_LOGIC;
  signal lock_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_fifo_count_reg[6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_fifo_count_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \fifo_count_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \fifo_count_reg[6]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  lock <= \^lock\;
\fifo_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_count_reg__0\(0),
      O => fifo_count(0)
    );
\fifo_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_count_reg__0\(1),
      O => \fifo_count[4]_i_2_n_0\
    );
\fifo_count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \fifo_count_reg__0\(3),
      I1 => \fifo_count_reg__0\(4),
      O => \fifo_count[4]_i_3_n_0\
    );
\fifo_count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \fifo_count_reg__0\(2),
      I1 => \fifo_count_reg__0\(3),
      O => \fifo_count[4]_i_4_n_0\
    );
\fifo_count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \fifo_count_reg__0\(1),
      I1 => \fifo_count_reg__0\(2),
      O => \fifo_count[4]_i_5_n_0\
    );
\fifo_count[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fifo_count_reg__0\(1),
      I1 => sel,
      O => \fifo_count[4]_i_6_n_0\
    );
\fifo_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sel,
      I1 => fifo_full_reg_n_0,
      I2 => s_axis_tvalid_IBUF,
      O => \fifo_count[6]_i_1_n_0\
    );
\fifo_count[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \fifo_count_reg__0\(5),
      I1 => \fifo_count_reg__0\(6),
      O => \fifo_count[6]_i_3_n_0\
    );
\fifo_count[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \fifo_count_reg__0\(4),
      I1 => \fifo_count_reg__0\(5),
      O => \fifo_count[6]_i_4_n_0\
    );
\fifo_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(0),
      Q => \fifo_count_reg__0\(0),
      R => reset_IBUF
    );
\fifo_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(1),
      Q => \fifo_count_reg__0\(1),
      R => reset_IBUF
    );
\fifo_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(2),
      Q => \fifo_count_reg__0\(2),
      R => reset_IBUF
    );
\fifo_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(3),
      Q => \fifo_count_reg__0\(3),
      R => reset_IBUF
    );
\fifo_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(4),
      Q => \fifo_count_reg__0\(4),
      R => reset_IBUF
    );
\fifo_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \fifo_count_reg[4]_i_1_n_0\,
      CO(2) => \fifo_count_reg[4]_i_1_n_1\,
      CO(1) => \fifo_count_reg[4]_i_1_n_2\,
      CO(0) => \fifo_count_reg[4]_i_1_n_3\,
      CYINIT => \fifo_count_reg__0\(0),
      DI(3 downto 1) => \fifo_count_reg__0\(3 downto 1),
      DI(0) => \fifo_count[4]_i_2_n_0\,
      O(3 downto 0) => fifo_count(4 downto 1),
      S(3) => \fifo_count[4]_i_3_n_0\,
      S(2) => \fifo_count[4]_i_4_n_0\,
      S(1) => \fifo_count[4]_i_5_n_0\,
      S(0) => \fifo_count[4]_i_6_n_0\
    );
\fifo_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(5),
      Q => \fifo_count_reg__0\(5),
      R => reset_IBUF
    );
\fifo_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \fifo_count[6]_i_1_n_0\,
      D => fifo_count(6),
      Q => \fifo_count_reg__0\(6),
      R => reset_IBUF
    );
\fifo_count_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_count_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_fifo_count_reg[6]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \fifo_count_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \fifo_count_reg__0\(4),
      O(3 downto 2) => \NLW_fifo_count_reg[6]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => fifo_count(6 downto 5),
      S(3 downto 2) => B"00",
      S(1) => \fifo_count[6]_i_3_n_0\,
      S(0) => \fifo_count[6]_i_4_n_0\
    );
fifo_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => fifo_full_i_2_n_0,
      I1 => \fifo_count_reg__0\(5),
      I2 => \fifo_count_reg__0\(1),
      I3 => \fifo_count_reg__0\(0),
      I4 => \fifo_count_reg__0\(6),
      I5 => \fifo_count_reg__0\(2),
      O => fifo_full
    );
fifo_full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \fifo_count_reg__0\(3),
      I1 => \fifo_count_reg__0\(4),
      O => fifo_full_i_2_n_0
    );
fifo_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => fifo_full,
      Q => fifo_full_reg_n_0,
      R => reset_IBUF
    );
grad_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel,
      I1 => \^lock\,
      O => grad_valid0
    );
grad_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => \fifo_count_reg__0\(6),
      I1 => \fifo_count_reg__0\(5),
      I2 => \fifo_count_reg__0\(2),
      I3 => \fifo_count_reg__0\(0),
      I4 => \fifo_count_reg__0\(1),
      I5 => fifo_full_i_2_n_0,
      O => sel
    );
grad_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => grad_valid0,
      Q => grad_valid,
      R => reset_IBUF
    );
lock_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lock\,
      I1 => sel,
      O => lock_i_1_n_0
    );
lock_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => lock_i_1_n_0,
      Q => \^lock\,
      S => reset_IBUF
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => s_axis_tready_reg_0,
      Q => s_axis_tready_OBUF,
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hog_cell_histogram_with_fifo is
  port (
    mag_complete_reg_0 : out STD_LOGIC;
    lock : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    grad_valid : in STD_LOGIC
  );
end hog_cell_histogram_with_fifo;

architecture STRUCTURE of hog_cell_histogram_with_fifo is
  signal calc_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \calc_counter[31]_i_10_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \calc_counter[31]_i_9_n_0\ : STD_LOGIC;
  signal calc_counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \calc_counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \calc_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \calc_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \calc_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \calc_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal mag_complete_i_1_n_0 : STD_LOGIC;
  signal s_ready_histo : STD_LOGIC;
  signal s_start_i_1_n_0 : STD_LOGIC;
  signal s_start_reg_n_0 : STD_LOGIC;
  signal \NLW_calc_counter_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_calc_counter_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\calc_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => calc_counter(0),
      O => calc_counter_0(0)
    );
\calc_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(10),
      O => calc_counter_0(10)
    );
\calc_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(11),
      O => calc_counter_0(11)
    );
\calc_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(12),
      O => calc_counter_0(12)
    );
\calc_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(13),
      O => calc_counter_0(13)
    );
\calc_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(14),
      O => calc_counter_0(14)
    );
\calc_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(15),
      O => calc_counter_0(15)
    );
\calc_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(16),
      O => calc_counter_0(16)
    );
\calc_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(17),
      O => calc_counter_0(17)
    );
\calc_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(18),
      O => calc_counter_0(18)
    );
\calc_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(19),
      O => calc_counter_0(19)
    );
\calc_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(1),
      O => calc_counter_0(1)
    );
\calc_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(20),
      O => calc_counter_0(20)
    );
\calc_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(21),
      O => calc_counter_0(21)
    );
\calc_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(22),
      O => calc_counter_0(22)
    );
\calc_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(23),
      O => calc_counter_0(23)
    );
\calc_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(24),
      O => calc_counter_0(24)
    );
\calc_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(25),
      O => calc_counter_0(25)
    );
\calc_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(26),
      O => calc_counter_0(26)
    );
\calc_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(27),
      O => calc_counter_0(27)
    );
\calc_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(28),
      O => calc_counter_0(28)
    );
\calc_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(29),
      O => calc_counter_0(29)
    );
\calc_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(2),
      O => calc_counter_0(2)
    );
\calc_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(30),
      O => calc_counter_0(30)
    );
\calc_counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(31),
      O => calc_counter_0(31)
    );
\calc_counter[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => calc_counter(13),
      I1 => calc_counter(12),
      I2 => calc_counter(15),
      I3 => calc_counter(14),
      O => \calc_counter[31]_i_10_n_0\
    );
\calc_counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => calc_counter(18),
      I1 => calc_counter(19),
      I2 => calc_counter(16),
      I3 => calc_counter(17),
      I4 => \calc_counter[31]_i_7_n_0\,
      O => \calc_counter[31]_i_2_n_0\
    );
\calc_counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => calc_counter(26),
      I1 => calc_counter(27),
      I2 => calc_counter(24),
      I3 => calc_counter(25),
      I4 => \calc_counter[31]_i_8_n_0\,
      O => \calc_counter[31]_i_3_n_0\
    );
\calc_counter[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => calc_counter(2),
      I1 => calc_counter(3),
      I2 => calc_counter(0),
      I3 => calc_counter(1),
      I4 => \calc_counter[31]_i_9_n_0\,
      O => \calc_counter[31]_i_4_n_0\
    );
\calc_counter[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => calc_counter(10),
      I1 => calc_counter(11),
      I2 => calc_counter(8),
      I3 => calc_counter(9),
      I4 => \calc_counter[31]_i_10_n_0\,
      O => \calc_counter[31]_i_5_n_0\
    );
\calc_counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => calc_counter(21),
      I1 => calc_counter(20),
      I2 => calc_counter(23),
      I3 => calc_counter(22),
      O => \calc_counter[31]_i_7_n_0\
    );
\calc_counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => calc_counter(29),
      I1 => calc_counter(28),
      I2 => calc_counter(31),
      I3 => calc_counter(30),
      O => \calc_counter[31]_i_8_n_0\
    );
\calc_counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => calc_counter(5),
      I1 => calc_counter(4),
      I2 => calc_counter(7),
      I3 => calc_counter(6),
      O => \calc_counter[31]_i_9_n_0\
    );
\calc_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(3),
      O => calc_counter_0(3)
    );
\calc_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(4),
      O => calc_counter_0(4)
    );
\calc_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(5),
      O => calc_counter_0(5)
    );
\calc_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(6),
      O => calc_counter_0(6)
    );
\calc_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(7),
      O => calc_counter_0(7)
    );
\calc_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(8),
      O => calc_counter_0(8)
    );
\calc_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \calc_counter[31]_i_2_n_0\,
      I1 => \calc_counter[31]_i_3_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_5_n_0\,
      I4 => data0(9),
      O => calc_counter_0(9)
    );
\calc_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(0),
      Q => calc_counter(0),
      R => reset_IBUF
    );
\calc_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(10),
      Q => calc_counter(10),
      R => reset_IBUF
    );
\calc_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(11),
      Q => calc_counter(11),
      R => reset_IBUF
    );
\calc_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(12),
      Q => calc_counter(12),
      R => reset_IBUF
    );
\calc_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[8]_i_2_n_0\,
      CO(3) => \calc_counter_reg[12]_i_2_n_0\,
      CO(2) => \calc_counter_reg[12]_i_2_n_1\,
      CO(1) => \calc_counter_reg[12]_i_2_n_2\,
      CO(0) => \calc_counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => calc_counter(12 downto 9)
    );
\calc_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(13),
      Q => calc_counter(13),
      R => reset_IBUF
    );
\calc_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(14),
      Q => calc_counter(14),
      R => reset_IBUF
    );
\calc_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(15),
      Q => calc_counter(15),
      R => reset_IBUF
    );
\calc_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(16),
      Q => calc_counter(16),
      R => reset_IBUF
    );
\calc_counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[12]_i_2_n_0\,
      CO(3) => \calc_counter_reg[16]_i_2_n_0\,
      CO(2) => \calc_counter_reg[16]_i_2_n_1\,
      CO(1) => \calc_counter_reg[16]_i_2_n_2\,
      CO(0) => \calc_counter_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => calc_counter(16 downto 13)
    );
\calc_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(17),
      Q => calc_counter(17),
      R => reset_IBUF
    );
\calc_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(18),
      Q => calc_counter(18),
      R => reset_IBUF
    );
\calc_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(19),
      Q => calc_counter(19),
      R => reset_IBUF
    );
\calc_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(1),
      Q => calc_counter(1),
      R => reset_IBUF
    );
\calc_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(20),
      Q => calc_counter(20),
      R => reset_IBUF
    );
\calc_counter_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[16]_i_2_n_0\,
      CO(3) => \calc_counter_reg[20]_i_2_n_0\,
      CO(2) => \calc_counter_reg[20]_i_2_n_1\,
      CO(1) => \calc_counter_reg[20]_i_2_n_2\,
      CO(0) => \calc_counter_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => calc_counter(20 downto 17)
    );
\calc_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(21),
      Q => calc_counter(21),
      R => reset_IBUF
    );
\calc_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(22),
      Q => calc_counter(22),
      R => reset_IBUF
    );
\calc_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(23),
      Q => calc_counter(23),
      R => reset_IBUF
    );
\calc_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(24),
      Q => calc_counter(24),
      R => reset_IBUF
    );
\calc_counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[20]_i_2_n_0\,
      CO(3) => \calc_counter_reg[24]_i_2_n_0\,
      CO(2) => \calc_counter_reg[24]_i_2_n_1\,
      CO(1) => \calc_counter_reg[24]_i_2_n_2\,
      CO(0) => \calc_counter_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => calc_counter(24 downto 21)
    );
\calc_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(25),
      Q => calc_counter(25),
      R => reset_IBUF
    );
\calc_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(26),
      Q => calc_counter(26),
      R => reset_IBUF
    );
\calc_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(27),
      Q => calc_counter(27),
      R => reset_IBUF
    );
\calc_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(28),
      Q => calc_counter(28),
      R => reset_IBUF
    );
\calc_counter_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[24]_i_2_n_0\,
      CO(3) => \calc_counter_reg[28]_i_2_n_0\,
      CO(2) => \calc_counter_reg[28]_i_2_n_1\,
      CO(1) => \calc_counter_reg[28]_i_2_n_2\,
      CO(0) => \calc_counter_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => calc_counter(28 downto 25)
    );
\calc_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(29),
      Q => calc_counter(29),
      R => reset_IBUF
    );
\calc_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(2),
      Q => calc_counter(2),
      R => reset_IBUF
    );
\calc_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(30),
      Q => calc_counter(30),
      R => reset_IBUF
    );
\calc_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(31),
      Q => calc_counter(31),
      R => reset_IBUF
    );
\calc_counter_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_calc_counter_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_counter_reg[31]_i_6_n_2\,
      CO(0) => \calc_counter_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_calc_counter_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => calc_counter(31 downto 29)
    );
\calc_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(3),
      Q => calc_counter(3),
      R => reset_IBUF
    );
\calc_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(4),
      Q => calc_counter(4),
      R => reset_IBUF
    );
\calc_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_counter_reg[4]_i_2_n_0\,
      CO(2) => \calc_counter_reg[4]_i_2_n_1\,
      CO(1) => \calc_counter_reg[4]_i_2_n_2\,
      CO(0) => \calc_counter_reg[4]_i_2_n_3\,
      CYINIT => calc_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => calc_counter(4 downto 1)
    );
\calc_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(5),
      Q => calc_counter(5),
      R => reset_IBUF
    );
\calc_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(6),
      Q => calc_counter(6),
      R => reset_IBUF
    );
\calc_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(7),
      Q => calc_counter(7),
      R => reset_IBUF
    );
\calc_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(8),
      Q => calc_counter(8),
      R => reset_IBUF
    );
\calc_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_counter_reg[4]_i_2_n_0\,
      CO(3) => \calc_counter_reg[8]_i_2_n_0\,
      CO(2) => \calc_counter_reg[8]_i_2_n_1\,
      CO(1) => \calc_counter_reg[8]_i_2_n_2\,
      CO(0) => \calc_counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => calc_counter(8 downto 5)
    );
\calc_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_start_reg_n_0,
      D => calc_counter_0(9),
      Q => calc_counter(9),
      R => reset_IBUF
    );
mag_complete_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_start_reg_n_0,
      I1 => \calc_counter[31]_i_5_n_0\,
      I2 => \calc_counter[31]_i_4_n_0\,
      I3 => \calc_counter[31]_i_3_n_0\,
      I4 => \calc_counter[31]_i_2_n_0\,
      O => mag_complete_i_1_n_0
    );
mag_complete_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => mag_complete_i_1_n_0,
      Q => s_ready_histo,
      R => reset_IBUF
    );
s_axis_tready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_ready_histo,
      I1 => lock,
      O => mag_complete_reg_0
    );
s_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE2"
    )
        port map (
      I0 => grad_valid,
      I1 => s_start_reg_n_0,
      I2 => \calc_counter[31]_i_5_n_0\,
      I3 => \calc_counter[31]_i_4_n_0\,
      I4 => \calc_counter[31]_i_3_n_0\,
      I5 => \calc_counter[31]_i_2_n_0\,
      O => s_start_i_1_n_0
    );
s_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_start_i_1_n_0,
      Q => s_start_reg_n_0,
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_hog_axi is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 575 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_hog_axi : entity is true;
end top_hog_axi;

architecture STRUCTURE of top_hog_axi is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal grad_valid : STD_LOGIC;
  signal hog_cell_histogram_inst_n_0 : STD_LOGIC;
  signal lock : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal s_axis_tready_OBUF : STD_LOGIC;
  signal s_axis_tvalid_IBUF : STD_LOGIC;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
fifo_sobel_inst: entity work.fifo_sobel
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      grad_valid => grad_valid,
      lock => lock,
      reset_IBUF => reset_IBUF,
      s_axis_tready_OBUF => s_axis_tready_OBUF,
      s_axis_tready_reg_0 => hog_cell_histogram_inst_n_0,
      s_axis_tvalid_IBUF => s_axis_tvalid_IBUF
    );
hog_cell_histogram_inst: entity work.hog_cell_histogram_with_fifo
     port map (
      CLK => clk_IBUF_BUFG,
      grad_valid => grad_valid,
      lock => lock,
      mag_complete_reg_0 => hog_cell_histogram_inst_n_0,
      reset_IBUF => reset_IBUF
    );
\m_axis_tdata_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(0)
    );
\m_axis_tdata_OBUF[100]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(100)
    );
\m_axis_tdata_OBUF[101]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(101)
    );
\m_axis_tdata_OBUF[102]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(102)
    );
\m_axis_tdata_OBUF[103]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(103)
    );
\m_axis_tdata_OBUF[104]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(104)
    );
\m_axis_tdata_OBUF[105]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(105)
    );
\m_axis_tdata_OBUF[106]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(106)
    );
\m_axis_tdata_OBUF[107]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(107)
    );
\m_axis_tdata_OBUF[108]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(108)
    );
\m_axis_tdata_OBUF[109]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(109)
    );
\m_axis_tdata_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(10)
    );
\m_axis_tdata_OBUF[110]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(110)
    );
\m_axis_tdata_OBUF[111]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(111)
    );
\m_axis_tdata_OBUF[112]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(112)
    );
\m_axis_tdata_OBUF[113]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(113)
    );
\m_axis_tdata_OBUF[114]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(114)
    );
\m_axis_tdata_OBUF[115]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(115)
    );
\m_axis_tdata_OBUF[116]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(116)
    );
\m_axis_tdata_OBUF[117]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(117)
    );
\m_axis_tdata_OBUF[118]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(118)
    );
\m_axis_tdata_OBUF[119]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(119)
    );
\m_axis_tdata_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(11)
    );
\m_axis_tdata_OBUF[120]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(120)
    );
\m_axis_tdata_OBUF[121]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(121)
    );
\m_axis_tdata_OBUF[122]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(122)
    );
\m_axis_tdata_OBUF[123]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(123)
    );
\m_axis_tdata_OBUF[124]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(124)
    );
\m_axis_tdata_OBUF[125]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(125)
    );
\m_axis_tdata_OBUF[126]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(126)
    );
\m_axis_tdata_OBUF[127]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(127)
    );
\m_axis_tdata_OBUF[128]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(128)
    );
\m_axis_tdata_OBUF[129]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(129)
    );
\m_axis_tdata_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(12)
    );
\m_axis_tdata_OBUF[130]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(130)
    );
\m_axis_tdata_OBUF[131]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(131)
    );
\m_axis_tdata_OBUF[132]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(132)
    );
\m_axis_tdata_OBUF[133]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(133)
    );
\m_axis_tdata_OBUF[134]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(134)
    );
\m_axis_tdata_OBUF[135]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(135)
    );
\m_axis_tdata_OBUF[136]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(136)
    );
\m_axis_tdata_OBUF[137]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(137)
    );
\m_axis_tdata_OBUF[138]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(138)
    );
\m_axis_tdata_OBUF[139]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(139)
    );
\m_axis_tdata_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(13)
    );
\m_axis_tdata_OBUF[140]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(140)
    );
\m_axis_tdata_OBUF[141]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(141)
    );
\m_axis_tdata_OBUF[142]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(142)
    );
\m_axis_tdata_OBUF[143]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(143)
    );
\m_axis_tdata_OBUF[144]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(144)
    );
\m_axis_tdata_OBUF[145]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(145)
    );
\m_axis_tdata_OBUF[146]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(146)
    );
\m_axis_tdata_OBUF[147]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(147)
    );
\m_axis_tdata_OBUF[148]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(148)
    );
\m_axis_tdata_OBUF[149]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(149)
    );
\m_axis_tdata_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(14)
    );
\m_axis_tdata_OBUF[150]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(150)
    );
\m_axis_tdata_OBUF[151]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(151)
    );
\m_axis_tdata_OBUF[152]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(152)
    );
\m_axis_tdata_OBUF[153]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(153)
    );
\m_axis_tdata_OBUF[154]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(154)
    );
\m_axis_tdata_OBUF[155]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(155)
    );
\m_axis_tdata_OBUF[156]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(156)
    );
\m_axis_tdata_OBUF[157]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(157)
    );
\m_axis_tdata_OBUF[158]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(158)
    );
\m_axis_tdata_OBUF[159]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(159)
    );
\m_axis_tdata_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(15)
    );
\m_axis_tdata_OBUF[160]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(160)
    );
\m_axis_tdata_OBUF[161]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(161)
    );
\m_axis_tdata_OBUF[162]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(162)
    );
\m_axis_tdata_OBUF[163]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(163)
    );
\m_axis_tdata_OBUF[164]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(164)
    );
\m_axis_tdata_OBUF[165]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(165)
    );
\m_axis_tdata_OBUF[166]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(166)
    );
\m_axis_tdata_OBUF[167]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(167)
    );
\m_axis_tdata_OBUF[168]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(168)
    );
\m_axis_tdata_OBUF[169]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(169)
    );
\m_axis_tdata_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(16)
    );
\m_axis_tdata_OBUF[170]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(170)
    );
\m_axis_tdata_OBUF[171]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(171)
    );
\m_axis_tdata_OBUF[172]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(172)
    );
\m_axis_tdata_OBUF[173]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(173)
    );
\m_axis_tdata_OBUF[174]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(174)
    );
\m_axis_tdata_OBUF[175]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(175)
    );
\m_axis_tdata_OBUF[176]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(176)
    );
\m_axis_tdata_OBUF[177]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(177)
    );
\m_axis_tdata_OBUF[178]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(178)
    );
\m_axis_tdata_OBUF[179]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(179)
    );
\m_axis_tdata_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(17)
    );
\m_axis_tdata_OBUF[180]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(180)
    );
\m_axis_tdata_OBUF[181]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(181)
    );
\m_axis_tdata_OBUF[182]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(182)
    );
\m_axis_tdata_OBUF[183]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(183)
    );
\m_axis_tdata_OBUF[184]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(184)
    );
\m_axis_tdata_OBUF[185]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(185)
    );
\m_axis_tdata_OBUF[186]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(186)
    );
\m_axis_tdata_OBUF[187]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(187)
    );
\m_axis_tdata_OBUF[188]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(188)
    );
\m_axis_tdata_OBUF[189]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(189)
    );
\m_axis_tdata_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(18)
    );
\m_axis_tdata_OBUF[190]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(190)
    );
\m_axis_tdata_OBUF[191]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(191)
    );
\m_axis_tdata_OBUF[192]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(192)
    );
\m_axis_tdata_OBUF[193]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(193)
    );
\m_axis_tdata_OBUF[194]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(194)
    );
\m_axis_tdata_OBUF[195]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(195)
    );
\m_axis_tdata_OBUF[196]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(196)
    );
\m_axis_tdata_OBUF[197]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(197)
    );
\m_axis_tdata_OBUF[198]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(198)
    );
\m_axis_tdata_OBUF[199]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(199)
    );
\m_axis_tdata_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(19)
    );
\m_axis_tdata_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(1)
    );
\m_axis_tdata_OBUF[200]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(200)
    );
\m_axis_tdata_OBUF[201]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(201)
    );
\m_axis_tdata_OBUF[202]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(202)
    );
\m_axis_tdata_OBUF[203]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(203)
    );
\m_axis_tdata_OBUF[204]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(204)
    );
\m_axis_tdata_OBUF[205]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(205)
    );
\m_axis_tdata_OBUF[206]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(206)
    );
\m_axis_tdata_OBUF[207]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(207)
    );
\m_axis_tdata_OBUF[208]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(208)
    );
\m_axis_tdata_OBUF[209]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(209)
    );
\m_axis_tdata_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(20)
    );
\m_axis_tdata_OBUF[210]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(210)
    );
\m_axis_tdata_OBUF[211]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(211)
    );
\m_axis_tdata_OBUF[212]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(212)
    );
\m_axis_tdata_OBUF[213]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(213)
    );
\m_axis_tdata_OBUF[214]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(214)
    );
\m_axis_tdata_OBUF[215]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(215)
    );
\m_axis_tdata_OBUF[216]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(216)
    );
\m_axis_tdata_OBUF[217]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(217)
    );
\m_axis_tdata_OBUF[218]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(218)
    );
\m_axis_tdata_OBUF[219]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(219)
    );
\m_axis_tdata_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(21)
    );
\m_axis_tdata_OBUF[220]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(220)
    );
\m_axis_tdata_OBUF[221]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(221)
    );
\m_axis_tdata_OBUF[222]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(222)
    );
\m_axis_tdata_OBUF[223]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(223)
    );
\m_axis_tdata_OBUF[224]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(224)
    );
\m_axis_tdata_OBUF[225]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(225)
    );
\m_axis_tdata_OBUF[226]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(226)
    );
\m_axis_tdata_OBUF[227]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(227)
    );
\m_axis_tdata_OBUF[228]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(228)
    );
\m_axis_tdata_OBUF[229]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(229)
    );
\m_axis_tdata_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(22)
    );
\m_axis_tdata_OBUF[230]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(230)
    );
\m_axis_tdata_OBUF[231]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(231)
    );
\m_axis_tdata_OBUF[232]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(232)
    );
\m_axis_tdata_OBUF[233]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(233)
    );
\m_axis_tdata_OBUF[234]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(234)
    );
\m_axis_tdata_OBUF[235]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(235)
    );
\m_axis_tdata_OBUF[236]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(236)
    );
\m_axis_tdata_OBUF[237]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(237)
    );
\m_axis_tdata_OBUF[238]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(238)
    );
\m_axis_tdata_OBUF[239]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(239)
    );
\m_axis_tdata_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(23)
    );
\m_axis_tdata_OBUF[240]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(240)
    );
\m_axis_tdata_OBUF[241]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(241)
    );
\m_axis_tdata_OBUF[242]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(242)
    );
\m_axis_tdata_OBUF[243]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(243)
    );
\m_axis_tdata_OBUF[244]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(244)
    );
\m_axis_tdata_OBUF[245]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(245)
    );
\m_axis_tdata_OBUF[246]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(246)
    );
\m_axis_tdata_OBUF[247]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(247)
    );
\m_axis_tdata_OBUF[248]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(248)
    );
\m_axis_tdata_OBUF[249]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(249)
    );
\m_axis_tdata_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(24)
    );
\m_axis_tdata_OBUF[250]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(250)
    );
\m_axis_tdata_OBUF[251]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(251)
    );
\m_axis_tdata_OBUF[252]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(252)
    );
\m_axis_tdata_OBUF[253]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(253)
    );
\m_axis_tdata_OBUF[254]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(254)
    );
\m_axis_tdata_OBUF[255]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(255)
    );
\m_axis_tdata_OBUF[256]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(256)
    );
\m_axis_tdata_OBUF[257]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(257)
    );
\m_axis_tdata_OBUF[258]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(258)
    );
\m_axis_tdata_OBUF[259]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(259)
    );
\m_axis_tdata_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(25)
    );
\m_axis_tdata_OBUF[260]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(260)
    );
\m_axis_tdata_OBUF[261]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(261)
    );
\m_axis_tdata_OBUF[262]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(262)
    );
\m_axis_tdata_OBUF[263]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(263)
    );
\m_axis_tdata_OBUF[264]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(264)
    );
\m_axis_tdata_OBUF[265]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(265)
    );
\m_axis_tdata_OBUF[266]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(266)
    );
\m_axis_tdata_OBUF[267]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(267)
    );
\m_axis_tdata_OBUF[268]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(268)
    );
\m_axis_tdata_OBUF[269]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(269)
    );
\m_axis_tdata_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(26)
    );
\m_axis_tdata_OBUF[270]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(270)
    );
\m_axis_tdata_OBUF[271]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(271)
    );
\m_axis_tdata_OBUF[272]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(272)
    );
\m_axis_tdata_OBUF[273]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(273)
    );
\m_axis_tdata_OBUF[274]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(274)
    );
\m_axis_tdata_OBUF[275]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(275)
    );
\m_axis_tdata_OBUF[276]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(276)
    );
\m_axis_tdata_OBUF[277]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(277)
    );
\m_axis_tdata_OBUF[278]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(278)
    );
\m_axis_tdata_OBUF[279]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(279)
    );
\m_axis_tdata_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(27)
    );
\m_axis_tdata_OBUF[280]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(280)
    );
\m_axis_tdata_OBUF[281]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(281)
    );
\m_axis_tdata_OBUF[282]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(282)
    );
\m_axis_tdata_OBUF[283]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(283)
    );
\m_axis_tdata_OBUF[284]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(284)
    );
\m_axis_tdata_OBUF[285]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(285)
    );
\m_axis_tdata_OBUF[286]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(286)
    );
\m_axis_tdata_OBUF[287]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(287)
    );
\m_axis_tdata_OBUF[288]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(288)
    );
\m_axis_tdata_OBUF[289]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(289)
    );
\m_axis_tdata_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(28)
    );
\m_axis_tdata_OBUF[290]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(290)
    );
\m_axis_tdata_OBUF[291]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(291)
    );
\m_axis_tdata_OBUF[292]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(292)
    );
\m_axis_tdata_OBUF[293]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(293)
    );
\m_axis_tdata_OBUF[294]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(294)
    );
\m_axis_tdata_OBUF[295]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(295)
    );
\m_axis_tdata_OBUF[296]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(296)
    );
\m_axis_tdata_OBUF[297]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(297)
    );
\m_axis_tdata_OBUF[298]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(298)
    );
\m_axis_tdata_OBUF[299]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(299)
    );
\m_axis_tdata_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(29)
    );
\m_axis_tdata_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(2)
    );
\m_axis_tdata_OBUF[300]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(300)
    );
\m_axis_tdata_OBUF[301]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(301)
    );
\m_axis_tdata_OBUF[302]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(302)
    );
\m_axis_tdata_OBUF[303]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(303)
    );
\m_axis_tdata_OBUF[304]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(304)
    );
\m_axis_tdata_OBUF[305]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(305)
    );
\m_axis_tdata_OBUF[306]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(306)
    );
\m_axis_tdata_OBUF[307]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(307)
    );
\m_axis_tdata_OBUF[308]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(308)
    );
\m_axis_tdata_OBUF[309]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(309)
    );
\m_axis_tdata_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(30)
    );
\m_axis_tdata_OBUF[310]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(310)
    );
\m_axis_tdata_OBUF[311]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(311)
    );
\m_axis_tdata_OBUF[312]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(312)
    );
\m_axis_tdata_OBUF[313]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(313)
    );
\m_axis_tdata_OBUF[314]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(314)
    );
\m_axis_tdata_OBUF[315]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(315)
    );
\m_axis_tdata_OBUF[316]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(316)
    );
\m_axis_tdata_OBUF[317]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(317)
    );
\m_axis_tdata_OBUF[318]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(318)
    );
\m_axis_tdata_OBUF[319]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(319)
    );
\m_axis_tdata_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(31)
    );
\m_axis_tdata_OBUF[320]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(320)
    );
\m_axis_tdata_OBUF[321]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(321)
    );
\m_axis_tdata_OBUF[322]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(322)
    );
\m_axis_tdata_OBUF[323]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(323)
    );
\m_axis_tdata_OBUF[324]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(324)
    );
\m_axis_tdata_OBUF[325]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(325)
    );
\m_axis_tdata_OBUF[326]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(326)
    );
\m_axis_tdata_OBUF[327]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(327)
    );
\m_axis_tdata_OBUF[328]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(328)
    );
\m_axis_tdata_OBUF[329]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(329)
    );
\m_axis_tdata_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(32)
    );
\m_axis_tdata_OBUF[330]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(330)
    );
\m_axis_tdata_OBUF[331]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(331)
    );
\m_axis_tdata_OBUF[332]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(332)
    );
\m_axis_tdata_OBUF[333]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(333)
    );
\m_axis_tdata_OBUF[334]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(334)
    );
\m_axis_tdata_OBUF[335]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(335)
    );
\m_axis_tdata_OBUF[336]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(336)
    );
\m_axis_tdata_OBUF[337]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(337)
    );
\m_axis_tdata_OBUF[338]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(338)
    );
\m_axis_tdata_OBUF[339]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(339)
    );
\m_axis_tdata_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(33)
    );
\m_axis_tdata_OBUF[340]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(340)
    );
\m_axis_tdata_OBUF[341]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(341)
    );
\m_axis_tdata_OBUF[342]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(342)
    );
\m_axis_tdata_OBUF[343]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(343)
    );
\m_axis_tdata_OBUF[344]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(344)
    );
\m_axis_tdata_OBUF[345]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(345)
    );
\m_axis_tdata_OBUF[346]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(346)
    );
\m_axis_tdata_OBUF[347]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(347)
    );
\m_axis_tdata_OBUF[348]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(348)
    );
\m_axis_tdata_OBUF[349]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(349)
    );
\m_axis_tdata_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(34)
    );
\m_axis_tdata_OBUF[350]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(350)
    );
\m_axis_tdata_OBUF[351]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(351)
    );
\m_axis_tdata_OBUF[352]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(352)
    );
\m_axis_tdata_OBUF[353]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(353)
    );
\m_axis_tdata_OBUF[354]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(354)
    );
\m_axis_tdata_OBUF[355]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(355)
    );
\m_axis_tdata_OBUF[356]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(356)
    );
\m_axis_tdata_OBUF[357]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(357)
    );
\m_axis_tdata_OBUF[358]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(358)
    );
\m_axis_tdata_OBUF[359]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(359)
    );
\m_axis_tdata_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(35)
    );
\m_axis_tdata_OBUF[360]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(360)
    );
\m_axis_tdata_OBUF[361]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(361)
    );
\m_axis_tdata_OBUF[362]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(362)
    );
\m_axis_tdata_OBUF[363]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(363)
    );
\m_axis_tdata_OBUF[364]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(364)
    );
\m_axis_tdata_OBUF[365]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(365)
    );
\m_axis_tdata_OBUF[366]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(366)
    );
\m_axis_tdata_OBUF[367]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(367)
    );
\m_axis_tdata_OBUF[368]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(368)
    );
\m_axis_tdata_OBUF[369]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(369)
    );
\m_axis_tdata_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(36)
    );
\m_axis_tdata_OBUF[370]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(370)
    );
\m_axis_tdata_OBUF[371]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(371)
    );
\m_axis_tdata_OBUF[372]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(372)
    );
\m_axis_tdata_OBUF[373]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(373)
    );
\m_axis_tdata_OBUF[374]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(374)
    );
\m_axis_tdata_OBUF[375]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(375)
    );
\m_axis_tdata_OBUF[376]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(376)
    );
\m_axis_tdata_OBUF[377]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(377)
    );
\m_axis_tdata_OBUF[378]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(378)
    );
\m_axis_tdata_OBUF[379]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(379)
    );
\m_axis_tdata_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(37)
    );
\m_axis_tdata_OBUF[380]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(380)
    );
\m_axis_tdata_OBUF[381]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(381)
    );
\m_axis_tdata_OBUF[382]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(382)
    );
\m_axis_tdata_OBUF[383]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(383)
    );
\m_axis_tdata_OBUF[384]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(384)
    );
\m_axis_tdata_OBUF[385]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(385)
    );
\m_axis_tdata_OBUF[386]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(386)
    );
\m_axis_tdata_OBUF[387]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(387)
    );
\m_axis_tdata_OBUF[388]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(388)
    );
\m_axis_tdata_OBUF[389]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(389)
    );
\m_axis_tdata_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(38)
    );
\m_axis_tdata_OBUF[390]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(390)
    );
\m_axis_tdata_OBUF[391]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(391)
    );
\m_axis_tdata_OBUF[392]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(392)
    );
\m_axis_tdata_OBUF[393]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(393)
    );
\m_axis_tdata_OBUF[394]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(394)
    );
\m_axis_tdata_OBUF[395]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(395)
    );
\m_axis_tdata_OBUF[396]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(396)
    );
\m_axis_tdata_OBUF[397]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(397)
    );
\m_axis_tdata_OBUF[398]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(398)
    );
\m_axis_tdata_OBUF[399]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(399)
    );
\m_axis_tdata_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(39)
    );
\m_axis_tdata_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(3)
    );
\m_axis_tdata_OBUF[400]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(400)
    );
\m_axis_tdata_OBUF[401]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(401)
    );
\m_axis_tdata_OBUF[402]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(402)
    );
\m_axis_tdata_OBUF[403]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(403)
    );
\m_axis_tdata_OBUF[404]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(404)
    );
\m_axis_tdata_OBUF[405]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(405)
    );
\m_axis_tdata_OBUF[406]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(406)
    );
\m_axis_tdata_OBUF[407]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(407)
    );
\m_axis_tdata_OBUF[408]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(408)
    );
\m_axis_tdata_OBUF[409]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(409)
    );
\m_axis_tdata_OBUF[40]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(40)
    );
\m_axis_tdata_OBUF[410]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(410)
    );
\m_axis_tdata_OBUF[411]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(411)
    );
\m_axis_tdata_OBUF[412]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(412)
    );
\m_axis_tdata_OBUF[413]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(413)
    );
\m_axis_tdata_OBUF[414]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(414)
    );
\m_axis_tdata_OBUF[415]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(415)
    );
\m_axis_tdata_OBUF[416]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(416)
    );
\m_axis_tdata_OBUF[417]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(417)
    );
\m_axis_tdata_OBUF[418]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(418)
    );
\m_axis_tdata_OBUF[419]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(419)
    );
\m_axis_tdata_OBUF[41]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(41)
    );
\m_axis_tdata_OBUF[420]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(420)
    );
\m_axis_tdata_OBUF[421]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(421)
    );
\m_axis_tdata_OBUF[422]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(422)
    );
\m_axis_tdata_OBUF[423]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(423)
    );
\m_axis_tdata_OBUF[424]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(424)
    );
\m_axis_tdata_OBUF[425]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(425)
    );
\m_axis_tdata_OBUF[426]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(426)
    );
\m_axis_tdata_OBUF[427]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(427)
    );
\m_axis_tdata_OBUF[428]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(428)
    );
\m_axis_tdata_OBUF[429]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(429)
    );
\m_axis_tdata_OBUF[42]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(42)
    );
\m_axis_tdata_OBUF[430]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(430)
    );
\m_axis_tdata_OBUF[431]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(431)
    );
\m_axis_tdata_OBUF[432]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(432)
    );
\m_axis_tdata_OBUF[433]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(433)
    );
\m_axis_tdata_OBUF[434]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(434)
    );
\m_axis_tdata_OBUF[435]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(435)
    );
\m_axis_tdata_OBUF[436]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(436)
    );
\m_axis_tdata_OBUF[437]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(437)
    );
\m_axis_tdata_OBUF[438]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(438)
    );
\m_axis_tdata_OBUF[439]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(439)
    );
\m_axis_tdata_OBUF[43]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(43)
    );
\m_axis_tdata_OBUF[440]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(440)
    );
\m_axis_tdata_OBUF[441]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(441)
    );
\m_axis_tdata_OBUF[442]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(442)
    );
\m_axis_tdata_OBUF[443]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(443)
    );
\m_axis_tdata_OBUF[444]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(444)
    );
\m_axis_tdata_OBUF[445]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(445)
    );
\m_axis_tdata_OBUF[446]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(446)
    );
\m_axis_tdata_OBUF[447]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(447)
    );
\m_axis_tdata_OBUF[448]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(448)
    );
\m_axis_tdata_OBUF[449]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(449)
    );
\m_axis_tdata_OBUF[44]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(44)
    );
\m_axis_tdata_OBUF[450]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(450)
    );
\m_axis_tdata_OBUF[451]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(451)
    );
\m_axis_tdata_OBUF[452]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(452)
    );
\m_axis_tdata_OBUF[453]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(453)
    );
\m_axis_tdata_OBUF[454]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(454)
    );
\m_axis_tdata_OBUF[455]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(455)
    );
\m_axis_tdata_OBUF[456]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(456)
    );
\m_axis_tdata_OBUF[457]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(457)
    );
\m_axis_tdata_OBUF[458]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(458)
    );
\m_axis_tdata_OBUF[459]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(459)
    );
\m_axis_tdata_OBUF[45]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(45)
    );
\m_axis_tdata_OBUF[460]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(460)
    );
\m_axis_tdata_OBUF[461]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(461)
    );
\m_axis_tdata_OBUF[462]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(462)
    );
\m_axis_tdata_OBUF[463]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(463)
    );
\m_axis_tdata_OBUF[464]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(464)
    );
\m_axis_tdata_OBUF[465]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(465)
    );
\m_axis_tdata_OBUF[466]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(466)
    );
\m_axis_tdata_OBUF[467]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(467)
    );
\m_axis_tdata_OBUF[468]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(468)
    );
\m_axis_tdata_OBUF[469]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(469)
    );
\m_axis_tdata_OBUF[46]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(46)
    );
\m_axis_tdata_OBUF[470]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(470)
    );
\m_axis_tdata_OBUF[471]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(471)
    );
\m_axis_tdata_OBUF[472]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(472)
    );
\m_axis_tdata_OBUF[473]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(473)
    );
\m_axis_tdata_OBUF[474]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(474)
    );
\m_axis_tdata_OBUF[475]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(475)
    );
\m_axis_tdata_OBUF[476]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(476)
    );
\m_axis_tdata_OBUF[477]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(477)
    );
\m_axis_tdata_OBUF[478]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(478)
    );
\m_axis_tdata_OBUF[479]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(479)
    );
\m_axis_tdata_OBUF[47]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(47)
    );
\m_axis_tdata_OBUF[480]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(480)
    );
\m_axis_tdata_OBUF[481]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(481)
    );
\m_axis_tdata_OBUF[482]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(482)
    );
\m_axis_tdata_OBUF[483]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(483)
    );
\m_axis_tdata_OBUF[484]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(484)
    );
\m_axis_tdata_OBUF[485]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(485)
    );
\m_axis_tdata_OBUF[486]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(486)
    );
\m_axis_tdata_OBUF[487]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(487)
    );
\m_axis_tdata_OBUF[488]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(488)
    );
\m_axis_tdata_OBUF[489]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(489)
    );
\m_axis_tdata_OBUF[48]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(48)
    );
\m_axis_tdata_OBUF[490]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(490)
    );
\m_axis_tdata_OBUF[491]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(491)
    );
\m_axis_tdata_OBUF[492]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(492)
    );
\m_axis_tdata_OBUF[493]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(493)
    );
\m_axis_tdata_OBUF[494]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(494)
    );
\m_axis_tdata_OBUF[495]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(495)
    );
\m_axis_tdata_OBUF[496]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(496)
    );
\m_axis_tdata_OBUF[497]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(497)
    );
\m_axis_tdata_OBUF[498]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(498)
    );
\m_axis_tdata_OBUF[499]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(499)
    );
\m_axis_tdata_OBUF[49]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(49)
    );
\m_axis_tdata_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(4)
    );
\m_axis_tdata_OBUF[500]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(500)
    );
\m_axis_tdata_OBUF[501]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(501)
    );
\m_axis_tdata_OBUF[502]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(502)
    );
\m_axis_tdata_OBUF[503]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(503)
    );
\m_axis_tdata_OBUF[504]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(504)
    );
\m_axis_tdata_OBUF[505]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(505)
    );
\m_axis_tdata_OBUF[506]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(506)
    );
\m_axis_tdata_OBUF[507]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(507)
    );
\m_axis_tdata_OBUF[508]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(508)
    );
\m_axis_tdata_OBUF[509]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(509)
    );
\m_axis_tdata_OBUF[50]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(50)
    );
\m_axis_tdata_OBUF[510]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(510)
    );
\m_axis_tdata_OBUF[511]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(511)
    );
\m_axis_tdata_OBUF[512]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(512)
    );
\m_axis_tdata_OBUF[513]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(513)
    );
\m_axis_tdata_OBUF[514]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(514)
    );
\m_axis_tdata_OBUF[515]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(515)
    );
\m_axis_tdata_OBUF[516]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(516)
    );
\m_axis_tdata_OBUF[517]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(517)
    );
\m_axis_tdata_OBUF[518]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(518)
    );
\m_axis_tdata_OBUF[519]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(519)
    );
\m_axis_tdata_OBUF[51]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(51)
    );
\m_axis_tdata_OBUF[520]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(520)
    );
\m_axis_tdata_OBUF[521]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(521)
    );
\m_axis_tdata_OBUF[522]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(522)
    );
\m_axis_tdata_OBUF[523]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(523)
    );
\m_axis_tdata_OBUF[524]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(524)
    );
\m_axis_tdata_OBUF[525]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(525)
    );
\m_axis_tdata_OBUF[526]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(526)
    );
\m_axis_tdata_OBUF[527]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(527)
    );
\m_axis_tdata_OBUF[528]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(528)
    );
\m_axis_tdata_OBUF[529]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(529)
    );
\m_axis_tdata_OBUF[52]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(52)
    );
\m_axis_tdata_OBUF[530]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(530)
    );
\m_axis_tdata_OBUF[531]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(531)
    );
\m_axis_tdata_OBUF[532]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(532)
    );
\m_axis_tdata_OBUF[533]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(533)
    );
\m_axis_tdata_OBUF[534]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(534)
    );
\m_axis_tdata_OBUF[535]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(535)
    );
\m_axis_tdata_OBUF[536]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(536)
    );
\m_axis_tdata_OBUF[537]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(537)
    );
\m_axis_tdata_OBUF[538]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(538)
    );
\m_axis_tdata_OBUF[539]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(539)
    );
\m_axis_tdata_OBUF[53]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(53)
    );
\m_axis_tdata_OBUF[540]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(540)
    );
\m_axis_tdata_OBUF[541]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(541)
    );
\m_axis_tdata_OBUF[542]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(542)
    );
\m_axis_tdata_OBUF[543]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(543)
    );
\m_axis_tdata_OBUF[544]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(544)
    );
\m_axis_tdata_OBUF[545]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(545)
    );
\m_axis_tdata_OBUF[546]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(546)
    );
\m_axis_tdata_OBUF[547]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(547)
    );
\m_axis_tdata_OBUF[548]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(548)
    );
\m_axis_tdata_OBUF[549]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(549)
    );
\m_axis_tdata_OBUF[54]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(54)
    );
\m_axis_tdata_OBUF[550]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(550)
    );
\m_axis_tdata_OBUF[551]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(551)
    );
\m_axis_tdata_OBUF[552]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(552)
    );
\m_axis_tdata_OBUF[553]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(553)
    );
\m_axis_tdata_OBUF[554]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(554)
    );
\m_axis_tdata_OBUF[555]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(555)
    );
\m_axis_tdata_OBUF[556]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(556)
    );
\m_axis_tdata_OBUF[557]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(557)
    );
\m_axis_tdata_OBUF[558]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(558)
    );
\m_axis_tdata_OBUF[559]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(559)
    );
\m_axis_tdata_OBUF[55]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(55)
    );
\m_axis_tdata_OBUF[560]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(560)
    );
\m_axis_tdata_OBUF[561]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(561)
    );
\m_axis_tdata_OBUF[562]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(562)
    );
\m_axis_tdata_OBUF[563]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(563)
    );
\m_axis_tdata_OBUF[564]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(564)
    );
\m_axis_tdata_OBUF[565]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(565)
    );
\m_axis_tdata_OBUF[566]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(566)
    );
\m_axis_tdata_OBUF[567]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(567)
    );
\m_axis_tdata_OBUF[568]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(568)
    );
\m_axis_tdata_OBUF[569]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(569)
    );
\m_axis_tdata_OBUF[56]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(56)
    );
\m_axis_tdata_OBUF[570]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(570)
    );
\m_axis_tdata_OBUF[571]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(571)
    );
\m_axis_tdata_OBUF[572]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(572)
    );
\m_axis_tdata_OBUF[573]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(573)
    );
\m_axis_tdata_OBUF[574]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(574)
    );
\m_axis_tdata_OBUF[575]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(575)
    );
\m_axis_tdata_OBUF[57]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(57)
    );
\m_axis_tdata_OBUF[58]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(58)
    );
\m_axis_tdata_OBUF[59]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(59)
    );
\m_axis_tdata_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(5)
    );
\m_axis_tdata_OBUF[60]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(60)
    );
\m_axis_tdata_OBUF[61]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(61)
    );
\m_axis_tdata_OBUF[62]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(62)
    );
\m_axis_tdata_OBUF[63]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(63)
    );
\m_axis_tdata_OBUF[64]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(64)
    );
\m_axis_tdata_OBUF[65]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(65)
    );
\m_axis_tdata_OBUF[66]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(66)
    );
\m_axis_tdata_OBUF[67]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(67)
    );
\m_axis_tdata_OBUF[68]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(68)
    );
\m_axis_tdata_OBUF[69]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(69)
    );
\m_axis_tdata_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(6)
    );
\m_axis_tdata_OBUF[70]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(70)
    );
\m_axis_tdata_OBUF[71]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(71)
    );
\m_axis_tdata_OBUF[72]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(72)
    );
\m_axis_tdata_OBUF[73]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(73)
    );
\m_axis_tdata_OBUF[74]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(74)
    );
\m_axis_tdata_OBUF[75]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(75)
    );
\m_axis_tdata_OBUF[76]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(76)
    );
\m_axis_tdata_OBUF[77]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(77)
    );
\m_axis_tdata_OBUF[78]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(78)
    );
\m_axis_tdata_OBUF[79]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(79)
    );
\m_axis_tdata_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(7)
    );
\m_axis_tdata_OBUF[80]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(80)
    );
\m_axis_tdata_OBUF[81]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(81)
    );
\m_axis_tdata_OBUF[82]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(82)
    );
\m_axis_tdata_OBUF[83]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(83)
    );
\m_axis_tdata_OBUF[84]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(84)
    );
\m_axis_tdata_OBUF[85]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(85)
    );
\m_axis_tdata_OBUF[86]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(86)
    );
\m_axis_tdata_OBUF[87]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(87)
    );
\m_axis_tdata_OBUF[88]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(88)
    );
\m_axis_tdata_OBUF[89]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(89)
    );
\m_axis_tdata_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(8)
    );
\m_axis_tdata_OBUF[90]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(90)
    );
\m_axis_tdata_OBUF[91]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(91)
    );
\m_axis_tdata_OBUF[92]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(92)
    );
\m_axis_tdata_OBUF[93]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(93)
    );
\m_axis_tdata_OBUF[94]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(94)
    );
\m_axis_tdata_OBUF[95]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(95)
    );
\m_axis_tdata_OBUF[96]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(96)
    );
\m_axis_tdata_OBUF[97]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(97)
    );
\m_axis_tdata_OBUF[98]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(98)
    );
\m_axis_tdata_OBUF[99]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(99)
    );
\m_axis_tdata_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tdata(9)
    );
m_axis_tvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => m_axis_tvalid
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
s_axis_tready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s_axis_tready_OBUF,
      O => s_axis_tready
    );
s_axis_tvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s_axis_tvalid,
      O => s_axis_tvalid_IBUF
    );
end STRUCTURE;
