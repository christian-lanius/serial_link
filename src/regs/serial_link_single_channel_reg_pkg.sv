// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package serial_link_single_channel_reg_pkg;

  // Param list
  parameter int NumChannels = 1;
  parameter int Log2NumChannels = 1;
  parameter int NumBits = 16;
  parameter int Log2MaxClkDiv = 10;
  parameter int Log2RawModeTXFifoDepth = 3;

  // Address widths within the block
  parameter int BlockAw = 6;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } clk_ena;
    struct packed {
      logic        q;
    } reset_n;
    struct packed {
      logic        q;
    } axi_in_isolate;
    struct packed {
      logic        q;
    } axi_out_isolate;
  } serial_link_single_channel_reg2hw_ctrl_reg_t;

  typedef struct packed {
    logic [10:0] q;
  } serial_link_single_channel_reg2hw_tx_phy_ctrl1_mreg_t;

  typedef struct packed {
    struct packed {
      logic [10:0] q;
    } clk_shift_start;
    struct packed {
      logic [10:0] q;
    } clk_shift_end;
  } serial_link_single_channel_reg2hw_tx_phy_ctrl2_mreg_t;

  typedef struct packed {
    logic        q;
  } serial_link_single_channel_reg2hw_raw_mode_en_reg_t;

  typedef struct packed {
    logic        q;
  } serial_link_single_channel_reg2hw_raw_mode_in_ch_sel_reg_t;

  typedef struct packed {
    logic [15:0] q;
    logic        re;
  } serial_link_single_channel_reg2hw_raw_mode_in_data_reg_t;

  typedef struct packed {
    logic        q;
  } serial_link_single_channel_reg2hw_raw_mode_out_ch_mask_reg_t;

  typedef struct packed {
    logic [15:0] q;
    logic        qe;
  } serial_link_single_channel_reg2hw_raw_mode_out_data_fifo_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } clear;
  } serial_link_single_channel_reg2hw_raw_mode_out_data_fifo_ctrl_reg_t;

  typedef struct packed {
    logic        q;
  } serial_link_single_channel_reg2hw_raw_mode_out_en_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } serial_link_single_channel_reg2hw_flow_control_fifo_clear_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
    } axi_in;
    struct packed {
      logic        d;
    } axi_out;
  } serial_link_single_channel_hw2reg_isolated_reg_t;

  typedef struct packed {
    logic        d;
  } serial_link_single_channel_hw2reg_raw_mode_in_data_valid_reg_t;

  typedef struct packed {
    logic [15:0] d;
  } serial_link_single_channel_hw2reg_raw_mode_in_data_reg_t;

  typedef struct packed {
    struct packed {
      logic [2:0]  d;
    } fill_state;
    struct packed {
      logic        d;
    } is_full;
  } serial_link_single_channel_hw2reg_raw_mode_out_data_fifo_ctrl_reg_t;

  // Register -> HW type
  typedef struct packed {
    serial_link_single_channel_reg2hw_ctrl_reg_t ctrl; // [78:75]
    serial_link_single_channel_reg2hw_tx_phy_ctrl1_mreg_t [0:0] tx_phy_ctrl1; // [74:64]
    serial_link_single_channel_reg2hw_tx_phy_ctrl2_mreg_t [0:0] tx_phy_ctrl2; // [63:42]
    serial_link_single_channel_reg2hw_raw_mode_en_reg_t raw_mode_en; // [41:41]
    serial_link_single_channel_reg2hw_raw_mode_in_ch_sel_reg_t raw_mode_in_ch_sel; // [40:40]
    serial_link_single_channel_reg2hw_raw_mode_in_data_reg_t raw_mode_in_data; // [39:23]
    serial_link_single_channel_reg2hw_raw_mode_out_ch_mask_reg_t raw_mode_out_ch_mask; // [22:22]
    serial_link_single_channel_reg2hw_raw_mode_out_data_fifo_reg_t raw_mode_out_data_fifo; // [21:5]
    serial_link_single_channel_reg2hw_raw_mode_out_data_fifo_ctrl_reg_t raw_mode_out_data_fifo_ctrl; // [4:3]
    serial_link_single_channel_reg2hw_raw_mode_out_en_reg_t raw_mode_out_en; // [2:2]
    serial_link_single_channel_reg2hw_flow_control_fifo_clear_reg_t flow_control_fifo_clear; // [1:0]
  } serial_link_single_channel_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    serial_link_single_channel_hw2reg_isolated_reg_t isolated; // [22:21]
    serial_link_single_channel_hw2reg_raw_mode_in_data_valid_reg_t raw_mode_in_data_valid; // [20:20]
    serial_link_single_channel_hw2reg_raw_mode_in_data_reg_t raw_mode_in_data; // [19:4]
    serial_link_single_channel_hw2reg_raw_mode_out_data_fifo_ctrl_reg_t raw_mode_out_data_fifo_ctrl; // [3:0]
  } serial_link_single_channel_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_CTRL_OFFSET = 6'h 0;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_OFFSET = 6'h 4;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_OFFSET = 6'h 8;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_OFFSET = 6'h c;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_EN_OFFSET = 6'h 10;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_CH_SEL_OFFSET = 6'h 14;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_VALID_OFFSET = 6'h 18;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_OFFSET = 6'h 1c;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_CH_MASK_OFFSET = 6'h 20;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_OFFSET = 6'h 24;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_OFFSET = 6'h 28;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_EN_OFFSET = 6'h 2c;
  parameter logic [BlockAw-1:0] SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR_OFFSET = 6'h 30;

  // Reset values for hwext registers and their fields
  parameter logic [1:0] SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_RESVAL = 2'h 3;
  parameter logic [0:0] SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_AXI_IN_RESVAL = 1'h 1;
  parameter logic [0:0] SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_AXI_OUT_RESVAL = 1'h 1;
  parameter logic [0:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_VALID_RESVAL = 1'h 0;
  parameter logic [15:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_RESVAL = 16'h 0;
  parameter logic [31:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_RESVAL = 32'h 0;
  parameter logic [2:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_FILL_STATE_RESVAL = 3'h 0;
  parameter logic [0:0] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_IS_FULL_RESVAL = 1'h 0;
  parameter logic [0:0] SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR_RESVAL = 1'h 0;
  parameter logic [0:0] SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR_FLOW_CONTROL_FIFO_CLEAR_RESVAL = 1'h 0;

  // Register index
  typedef enum int {
    SERIAL_LINK_SINGLE_CHANNEL_CTRL,
    SERIAL_LINK_SINGLE_CHANNEL_ISOLATED,
    SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1,
    SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_EN,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_CH_SEL,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_VALID,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_CH_MASK,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL,
    SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_EN,
    SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR
  } serial_link_single_channel_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] SERIAL_LINK_SINGLE_CHANNEL_PERMIT [13] = '{
    4'b 0011, // index[ 0] SERIAL_LINK_SINGLE_CHANNEL_CTRL
    4'b 0001, // index[ 1] SERIAL_LINK_SINGLE_CHANNEL_ISOLATED
    4'b 0011, // index[ 2] SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1
    4'b 0011, // index[ 3] SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2
    4'b 0001, // index[ 4] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_EN
    4'b 0001, // index[ 5] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_CH_SEL
    4'b 0001, // index[ 6] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_VALID
    4'b 0011, // index[ 7] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA
    4'b 0001, // index[ 8] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_CH_MASK
    4'b 0011, // index[ 9] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO
    4'b 1111, // index[10] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL
    4'b 0001, // index[11] SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_EN
    4'b 0001  // index[12] SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR
  };

endpackage
