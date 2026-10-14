// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:43:03 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_cam_input_0_0/system_cam_input_0_0_sim_netlist.v
// Design      : system_cam_input_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_cam_input_0_0,cam_input,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cam_input,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_cam_input_0_0
   (clk,
    pclk,
    gpio_o,
    cam_d,
    cam_pclk,
    cam_vsync,
    cam_href,
    cam_pwdn,
    cam2_d,
    cam2_pclk,
    cam2_vsync,
    cam2_href,
    cam2_pwdn,
    cap_rst,
    prst,
    raw0_rd,
    raw0_dout,
    raw0_count,
    raw1_rd,
    raw1_dout,
    raw1_count,
    rows_gray0,
    rows_gray1,
    sof_toggle0,
    sof_toggle1,
    frame_base0,
    frame_base1,
    rd_addr0,
    rd_addr1,
    rd_data0,
    rd_data1,
    start_us1,
    genlock,
    frame_led0,
    frame_led1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input pclk;
  input [63:0]gpio_o;
  input [7:0]cam_d;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  output cam_pwdn;
  input [7:0]cam2_d;
  input cam2_pclk;
  input cam2_vsync;
  input cam2_href;
  output cam2_pwdn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cap_rst RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cap_rst;
  output prst;
  input raw0_rd;
  output [7:0]raw0_dout;
  output [13:0]raw0_count;
  input raw1_rd;
  output [7:0]raw1_dout;
  output [13:0]raw1_count;
  output [9:0]rows_gray0;
  output [9:0]rows_gray1;
  output sof_toggle0;
  output sof_toggle1;
  output [15:0]frame_base0;
  output [15:0]frame_base1;
  input [15:0]rd_addr0;
  input [15:0]rd_addr1;
  output [7:0]rd_data0;
  output [7:0]rd_data1;
  output [31:0]start_us1;
  output [31:0]genlock;
  output frame_led0;
  output frame_led1;

  wire [7:0]cam2_d;
  wire cam2_href;
  wire cam2_pclk;
  wire cam2_vsync;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire cap_rst;
  wire clk;
  wire [15:0]frame_base0;
  wire [15:0]frame_base1;
  wire frame_led0;
  wire frame_led1;
  wire [31:0]genlock;
  wire [63:0]gpio_o;
  wire pclk;
  wire prst;
  wire [13:0]raw0_count;
  wire [7:0]raw0_dout;
  wire raw0_rd;
  wire [13:0]raw1_count;
  wire [7:0]raw1_dout;
  wire raw1_rd;
  wire [15:0]rd_addr0;
  wire [15:0]rd_addr1;
  wire [7:0]rd_data0;
  wire [7:0]rd_data1;
  wire [9:0]rows_gray0;
  wire [9:0]rows_gray1;
  wire sof_toggle0;
  wire sof_toggle1;
  wire [31:0]start_us1;

  assign cam2_pwdn = gpio_o[2];
  assign cam_pwdn = gpio_o[0];
  system_cam_input_0_0_cam_input inst
       (.Q(raw0_count),
        .cam2_d(cam2_d),
        .cam2_href(cam2_href),
        .cam2_pclk(cam2_pclk),
        .cam2_vsync(cam2_vsync),
        .cam_d(cam_d),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .clk(clk),
        .\count_reg[13] (raw1_count),
        .\en_sync_reg[2]_0 (cap_rst),
        .frame_base0(frame_base0),
        .frame_base1(frame_base1),
        .frame_led0(frame_led0),
        .frame_led1(frame_led1),
        .genlock(genlock),
        .gpio_o({gpio_o[19:3],gpio_o[1]}),
        .pclk(pclk),
        .prst(prst),
        .raw0_dout(raw0_dout),
        .raw0_rd(raw0_rd),
        .raw1_dout(raw1_dout),
        .raw1_rd(raw1_rd),
        .rd_addr0(rd_addr0[11:0]),
        .rd_addr1(rd_addr1[11:0]),
        .rd_data0(rd_data0),
        .rd_data1(rd_data1),
        .rows_gray0(rows_gray0),
        .rows_gray1(rows_gray1),
        .sof_toggle0(sof_toggle0),
        .sof_toggle1(sof_toggle1),
        .\start_us_reg[31] (start_us1));
endmodule

(* ORIG_REF_NAME = "byte_fifo" *) 
module system_cam_input_0_0_byte_fifo
   (c0_afull,
    Q,
    raw0_dout,
    \rp_reg[0]_0 ,
    clk,
    do_wr,
    raw0_rd,
    c0_wr,
    din);
  output c0_afull;
  output [13:0]Q;
  output [7:0]raw0_dout;
  input \rp_reg[0]_0 ;
  input clk;
  input do_wr;
  input raw0_rd;
  input c0_wr;
  input [7:0]din;

  wire [13:0]Q;
  wire almost_full_i_1_n_0;
  wire almost_full_i_2_n_0;
  wire c0_afull;
  wire c0_wr;
  wire clk;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_i_3_n_0;
  wire count0_carry__0_i_4_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_i_1_n_0;
  wire count0_carry__1_i_2_n_0;
  wire count0_carry__1_i_3_n_0;
  wire count0_carry__1_i_4_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_i_1_n_0;
  wire count0_carry__2_i_2_n_0;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_i_5_n_0;
  wire count0_carry_i_6_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire [7:0]din;
  wire do_wr;
  wire mem_reg_1_i_14_n_0;
  wire [12:0]raddr;
  wire [7:0]raw0_dout;
  wire raw0_rd;
  wire [12:0]rp;
  wire \rp_inc[0]_i_2_n_0 ;
  wire [12:0]rp_inc_reg;
  wire \rp_inc_reg[0]_i_1_n_0 ;
  wire \rp_inc_reg[0]_i_1_n_1 ;
  wire \rp_inc_reg[0]_i_1_n_2 ;
  wire \rp_inc_reg[0]_i_1_n_3 ;
  wire \rp_inc_reg[0]_i_1_n_4 ;
  wire \rp_inc_reg[0]_i_1_n_5 ;
  wire \rp_inc_reg[0]_i_1_n_6 ;
  wire \rp_inc_reg[0]_i_1_n_7 ;
  wire \rp_inc_reg[12]_i_1_n_7 ;
  wire \rp_inc_reg[4]_i_1_n_0 ;
  wire \rp_inc_reg[4]_i_1_n_1 ;
  wire \rp_inc_reg[4]_i_1_n_2 ;
  wire \rp_inc_reg[4]_i_1_n_3 ;
  wire \rp_inc_reg[4]_i_1_n_4 ;
  wire \rp_inc_reg[4]_i_1_n_5 ;
  wire \rp_inc_reg[4]_i_1_n_6 ;
  wire \rp_inc_reg[4]_i_1_n_7 ;
  wire \rp_inc_reg[8]_i_1_n_0 ;
  wire \rp_inc_reg[8]_i_1_n_1 ;
  wire \rp_inc_reg[8]_i_1_n_2 ;
  wire \rp_inc_reg[8]_i_1_n_3 ;
  wire \rp_inc_reg[8]_i_1_n_4 ;
  wire \rp_inc_reg[8]_i_1_n_5 ;
  wire \rp_inc_reg[8]_i_1_n_6 ;
  wire \rp_inc_reg[8]_i_1_n_7 ;
  wire \rp_reg[0]_0 ;
  wire \wp[0]_i_3_n_0 ;
  wire [12:0]wp_reg;
  wire \wp_reg[0]_i_2_n_0 ;
  wire \wp_reg[0]_i_2_n_1 ;
  wire \wp_reg[0]_i_2_n_2 ;
  wire \wp_reg[0]_i_2_n_3 ;
  wire \wp_reg[0]_i_2_n_4 ;
  wire \wp_reg[0]_i_2_n_5 ;
  wire \wp_reg[0]_i_2_n_6 ;
  wire \wp_reg[0]_i_2_n_7 ;
  wire \wp_reg[12]_i_1_n_7 ;
  wire \wp_reg[4]_i_1_n_0 ;
  wire \wp_reg[4]_i_1_n_1 ;
  wire \wp_reg[4]_i_1_n_2 ;
  wire \wp_reg[4]_i_1_n_3 ;
  wire \wp_reg[4]_i_1_n_4 ;
  wire \wp_reg[4]_i_1_n_5 ;
  wire \wp_reg[4]_i_1_n_6 ;
  wire \wp_reg[4]_i_1_n_7 ;
  wire \wp_reg[8]_i_1_n_0 ;
  wire \wp_reg[8]_i_1_n_1 ;
  wire \wp_reg[8]_i_1_n_2 ;
  wire \wp_reg[8]_i_1_n_3 ;
  wire \wp_reg[8]_i_1_n_4 ;
  wire \wp_reg[8]_i_1_n_5 ;
  wire \wp_reg[8]_i_1_n_6 ;
  wire \wp_reg[8]_i_1_n_7 ;
  wire [3:1]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__2_O_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:4]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:4]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire [3:0]\NLW_rp_inc_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rp_inc_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wp_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wp_reg[12]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    almost_full_i_1
       (.I0(Q[13]),
        .I1(almost_full_i_2_n_0),
        .I2(Q[9]),
        .I3(Q[11]),
        .I4(Q[5]),
        .O(almost_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    almost_full_i_2
       (.I0(Q[8]),
        .I1(Q[4]),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(almost_full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    almost_full_reg
       (.C(clk),
        .CE(1'b1),
        .D(almost_full_i_1_n_0),
        .Q(c0_afull),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[2:1],count0_carry_i_1_n_0,count0_carry_i_2_n_0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({count0_carry_i_3_n_0,count0_carry_i_4_n_0,count0_carry_i_5_n_0,count0_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[6:3]),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({count0_carry__0_i_1_n_0,count0_carry__0_i_2_n_0,count0_carry__0_i_3_n_0,count0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(count0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_2
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(count0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_3
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(count0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_4
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(count0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[10:7]),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({count0_carry__1_i_1_n_0,count0_carry__1_i_2_n_0,count0_carry__1_i_3_n_0,count0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_1
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(count0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_2
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(count0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_3
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(count0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_4
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(count0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({NLW_count0_carry__2_CO_UNCONNECTED[3:1],count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[11]}),
        .O({NLW_count0_carry__2_O_UNCONNECTED[3:2],count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({1'b0,1'b0,count0_carry__2_i_1_n_0,count0_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__2_i_1
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(count0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__2_i_2
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(count0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    count0_carry_i_1
       (.I0(Q[0]),
        .I1(Q[13]),
        .I2(c0_wr),
        .O(count0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    count0_carry_i_2
       (.I0(c0_wr),
        .I1(Q[13]),
        .I2(Q[0]),
        .O(count0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(count0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(count0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hF20D)) 
    count0_carry_i_5
       (.I0(c0_wr),
        .I1(Q[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(count0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h659A)) 
    count0_carry_i_6
       (.I0(Q[0]),
        .I1(Q[13]),
        .I2(c0_wr),
        .I3(raw0_rd),
        .O(count0_carry_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_7),
        .Q(Q[0]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_5),
        .Q(Q[10]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_4),
        .Q(Q[11]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__2_n_7),
        .Q(Q[12]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__2_n_6),
        .Q(Q[13]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_6),
        .Q(Q[1]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_5),
        .Q(Q[2]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_4),
        .Q(Q[3]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_7),
        .Q(Q[4]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_6),
        .Q(Q[5]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_5),
        .Q(Q[6]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_4),
        .Q(Q[7]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_7),
        .Q(Q[8]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_6),
        .Q(Q[9]),
        .R(\rp_reg[0]_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/u_cfifo0/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,wp_reg,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,raddr,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:4],raw0_dout[3:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(c0_wr),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_i_14_n_0,mem_reg_1_i_14_n_0,mem_reg_1_i_14_n_0,mem_reg_1_i_14_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/u_cfifo0/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,wp_reg,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,raddr,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:4],raw0_dout[7:4]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(c0_wr),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_i_14_n_0,mem_reg_1_i_14_n_0,mem_reg_1_i_14_n_0,mem_reg_1_i_14_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_1
       (.I0(rp_inc_reg[12]),
        .I1(raw0_rd),
        .I2(rp[12]),
        .O(raddr[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_10
       (.I0(rp_inc_reg[3]),
        .I1(raw0_rd),
        .I2(rp[3]),
        .O(raddr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_11
       (.I0(rp_inc_reg[2]),
        .I1(raw0_rd),
        .I2(rp[2]),
        .O(raddr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_12
       (.I0(rp_inc_reg[1]),
        .I1(raw0_rd),
        .I2(rp[1]),
        .O(raddr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_13
       (.I0(rp_inc_reg[0]),
        .I1(raw0_rd),
        .I2(rp[0]),
        .O(raddr[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_1_i_14
       (.I0(Q[13]),
        .O(mem_reg_1_i_14_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_2
       (.I0(rp_inc_reg[11]),
        .I1(raw0_rd),
        .I2(rp[11]),
        .O(raddr[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_3
       (.I0(rp_inc_reg[10]),
        .I1(raw0_rd),
        .I2(rp[10]),
        .O(raddr[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_4
       (.I0(rp_inc_reg[9]),
        .I1(raw0_rd),
        .I2(rp[9]),
        .O(raddr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_5
       (.I0(rp_inc_reg[8]),
        .I1(raw0_rd),
        .I2(rp[8]),
        .O(raddr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_6
       (.I0(rp_inc_reg[7]),
        .I1(raw0_rd),
        .I2(rp[7]),
        .O(raddr[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_7
       (.I0(rp_inc_reg[6]),
        .I1(raw0_rd),
        .I2(rp[6]),
        .O(raddr[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_8
       (.I0(rp_inc_reg[5]),
        .I1(raw0_rd),
        .I2(rp[5]),
        .O(raddr[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_9
       (.I0(rp_inc_reg[4]),
        .I1(raw0_rd),
        .I2(rp[4]),
        .O(raddr[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \rp_inc[0]_i_2 
       (.I0(rp_inc_reg[0]),
        .O(\rp_inc[0]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rp_inc_reg[0] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[0]_i_1_n_7 ),
        .Q(rp_inc_reg[0]),
        .S(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\rp_inc_reg[0]_i_1_n_0 ,\rp_inc_reg[0]_i_1_n_1 ,\rp_inc_reg[0]_i_1_n_2 ,\rp_inc_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rp_inc_reg[0]_i_1_n_4 ,\rp_inc_reg[0]_i_1_n_5 ,\rp_inc_reg[0]_i_1_n_6 ,\rp_inc_reg[0]_i_1_n_7 }),
        .S({rp_inc_reg[3:1],\rp_inc[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[10] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[8]_i_1_n_5 ),
        .Q(rp_inc_reg[10]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[11] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[8]_i_1_n_4 ),
        .Q(rp_inc_reg[11]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[12] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[12]_i_1_n_7 ),
        .Q(rp_inc_reg[12]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[12]_i_1 
       (.CI(\rp_inc_reg[8]_i_1_n_0 ),
        .CO(\NLW_rp_inc_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rp_inc_reg[12]_i_1_O_UNCONNECTED [3:1],\rp_inc_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,rp_inc_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[1] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[0]_i_1_n_6 ),
        .Q(rp_inc_reg[1]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[2] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[0]_i_1_n_5 ),
        .Q(rp_inc_reg[2]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[3] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[0]_i_1_n_4 ),
        .Q(rp_inc_reg[3]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[4] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[4]_i_1_n_7 ),
        .Q(rp_inc_reg[4]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[4]_i_1 
       (.CI(\rp_inc_reg[0]_i_1_n_0 ),
        .CO({\rp_inc_reg[4]_i_1_n_0 ,\rp_inc_reg[4]_i_1_n_1 ,\rp_inc_reg[4]_i_1_n_2 ,\rp_inc_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rp_inc_reg[4]_i_1_n_4 ,\rp_inc_reg[4]_i_1_n_5 ,\rp_inc_reg[4]_i_1_n_6 ,\rp_inc_reg[4]_i_1_n_7 }),
        .S(rp_inc_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[5] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[4]_i_1_n_6 ),
        .Q(rp_inc_reg[5]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[6] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[4]_i_1_n_5 ),
        .Q(rp_inc_reg[6]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[7] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[4]_i_1_n_4 ),
        .Q(rp_inc_reg[7]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[8] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[8]_i_1_n_7 ),
        .Q(rp_inc_reg[8]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[8]_i_1 
       (.CI(\rp_inc_reg[4]_i_1_n_0 ),
        .CO({\rp_inc_reg[8]_i_1_n_0 ,\rp_inc_reg[8]_i_1_n_1 ,\rp_inc_reg[8]_i_1_n_2 ,\rp_inc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rp_inc_reg[8]_i_1_n_4 ,\rp_inc_reg[8]_i_1_n_5 ,\rp_inc_reg[8]_i_1_n_6 ,\rp_inc_reg[8]_i_1_n_7 }),
        .S(rp_inc_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[9] 
       (.C(clk),
        .CE(raw0_rd),
        .D(\rp_inc_reg[8]_i_1_n_6 ),
        .Q(rp_inc_reg[9]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[0] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[0]),
        .Q(rp[0]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[10] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[10]),
        .Q(rp[10]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[11] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[11]),
        .Q(rp[11]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[12] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[12]),
        .Q(rp[12]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[1] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[1]),
        .Q(rp[1]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[2] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[2]),
        .Q(rp[2]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[3] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[3]),
        .Q(rp[3]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[4] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[4]),
        .Q(rp[4]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[5] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[5]),
        .Q(rp[5]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[6] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[6]),
        .Q(rp[6]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[7] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[7]),
        .Q(rp[7]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[8] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[8]),
        .Q(rp[8]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[9] 
       (.C(clk),
        .CE(raw0_rd),
        .D(rp_inc_reg[9]),
        .Q(rp[9]),
        .R(\rp_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wp[0]_i_3 
       (.I0(wp_reg[0]),
        .O(\wp[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[0] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2_n_7 ),
        .Q(wp_reg[0]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\wp_reg[0]_i_2_n_0 ,\wp_reg[0]_i_2_n_1 ,\wp_reg[0]_i_2_n_2 ,\wp_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wp_reg[0]_i_2_n_4 ,\wp_reg[0]_i_2_n_5 ,\wp_reg[0]_i_2_n_6 ,\wp_reg[0]_i_2_n_7 }),
        .S({wp_reg[3:1],\wp[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[10] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1_n_5 ),
        .Q(wp_reg[10]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[11] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1_n_4 ),
        .Q(wp_reg[11]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[12] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[12]_i_1_n_7 ),
        .Q(wp_reg[12]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[12]_i_1 
       (.CI(\wp_reg[8]_i_1_n_0 ),
        .CO(\NLW_wp_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wp_reg[12]_i_1_O_UNCONNECTED [3:1],\wp_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wp_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[1] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2_n_6 ),
        .Q(wp_reg[1]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[2] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2_n_5 ),
        .Q(wp_reg[2]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[3] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2_n_4 ),
        .Q(wp_reg[3]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[4] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1_n_7 ),
        .Q(wp_reg[4]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[4]_i_1 
       (.CI(\wp_reg[0]_i_2_n_0 ),
        .CO({\wp_reg[4]_i_1_n_0 ,\wp_reg[4]_i_1_n_1 ,\wp_reg[4]_i_1_n_2 ,\wp_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wp_reg[4]_i_1_n_4 ,\wp_reg[4]_i_1_n_5 ,\wp_reg[4]_i_1_n_6 ,\wp_reg[4]_i_1_n_7 }),
        .S(wp_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[5] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1_n_6 ),
        .Q(wp_reg[5]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[6] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1_n_5 ),
        .Q(wp_reg[6]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[7] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1_n_4 ),
        .Q(wp_reg[7]),
        .R(\rp_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[8] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1_n_7 ),
        .Q(wp_reg[8]),
        .R(\rp_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[8]_i_1 
       (.CI(\wp_reg[4]_i_1_n_0 ),
        .CO({\wp_reg[8]_i_1_n_0 ,\wp_reg[8]_i_1_n_1 ,\wp_reg[8]_i_1_n_2 ,\wp_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wp_reg[8]_i_1_n_4 ,\wp_reg[8]_i_1_n_5 ,\wp_reg[8]_i_1_n_6 ,\wp_reg[8]_i_1_n_7 }),
        .S(wp_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[9] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1_n_6 ),
        .Q(wp_reg[9]),
        .R(\rp_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "byte_fifo" *) 
module system_cam_input_0_0_byte_fifo_3
   (c1_afull,
    \en_sync_reg[2] ,
    Q,
    raw1_dout,
    clk,
    do_wr,
    raw1_rd,
    c1_wr,
    out,
    din);
  output c1_afull;
  output \en_sync_reg[2] ;
  output [13:0]Q;
  output [7:0]raw1_dout;
  input clk;
  input do_wr;
  input raw1_rd;
  input c1_wr;
  input [0:0]out;
  input [7:0]din;

  wire [13:0]Q;
  wire almost_full_i_1__0_n_0;
  wire almost_full_i_2__0_n_0;
  wire c1_afull;
  wire c1_wr;
  wire clk;
  wire count0_carry__0_i_1__0_n_0;
  wire count0_carry__0_i_2__0_n_0;
  wire count0_carry__0_i_3__0_n_0;
  wire count0_carry__0_i_4__0_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_i_1__0_n_0;
  wire count0_carry__1_i_2__0_n_0;
  wire count0_carry__1_i_3__0_n_0;
  wire count0_carry__1_i_4__0_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_i_1__0_n_0;
  wire count0_carry__2_i_2__0_n_0;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry_i_1__0_n_0;
  wire count0_carry_i_2__0_n_0;
  wire count0_carry_i_3__0_n_0;
  wire count0_carry_i_4__0_n_0;
  wire count0_carry_i_5__0_n_0;
  wire count0_carry_i_6__0_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire [7:0]din;
  wire do_wr;
  wire \en_sync_reg[2] ;
  wire mem_reg_1_i_14__0_n_0;
  wire [0:0]out;
  wire [12:0]raddr;
  wire [7:0]raw1_dout;
  wire raw1_rd;
  wire [12:0]rp;
  wire \rp_inc[0]_i_2__0_n_0 ;
  wire [12:0]rp_inc_reg;
  wire \rp_inc_reg[0]_i_1__0_n_0 ;
  wire \rp_inc_reg[0]_i_1__0_n_1 ;
  wire \rp_inc_reg[0]_i_1__0_n_2 ;
  wire \rp_inc_reg[0]_i_1__0_n_3 ;
  wire \rp_inc_reg[0]_i_1__0_n_4 ;
  wire \rp_inc_reg[0]_i_1__0_n_5 ;
  wire \rp_inc_reg[0]_i_1__0_n_6 ;
  wire \rp_inc_reg[0]_i_1__0_n_7 ;
  wire \rp_inc_reg[12]_i_1__0_n_7 ;
  wire \rp_inc_reg[4]_i_1__0_n_0 ;
  wire \rp_inc_reg[4]_i_1__0_n_1 ;
  wire \rp_inc_reg[4]_i_1__0_n_2 ;
  wire \rp_inc_reg[4]_i_1__0_n_3 ;
  wire \rp_inc_reg[4]_i_1__0_n_4 ;
  wire \rp_inc_reg[4]_i_1__0_n_5 ;
  wire \rp_inc_reg[4]_i_1__0_n_6 ;
  wire \rp_inc_reg[4]_i_1__0_n_7 ;
  wire \rp_inc_reg[8]_i_1__0_n_0 ;
  wire \rp_inc_reg[8]_i_1__0_n_1 ;
  wire \rp_inc_reg[8]_i_1__0_n_2 ;
  wire \rp_inc_reg[8]_i_1__0_n_3 ;
  wire \rp_inc_reg[8]_i_1__0_n_4 ;
  wire \rp_inc_reg[8]_i_1__0_n_5 ;
  wire \rp_inc_reg[8]_i_1__0_n_6 ;
  wire \rp_inc_reg[8]_i_1__0_n_7 ;
  wire \wp[0]_i_3__0_n_0 ;
  wire [12:0]wp_reg;
  wire \wp_reg[0]_i_2__0_n_0 ;
  wire \wp_reg[0]_i_2__0_n_1 ;
  wire \wp_reg[0]_i_2__0_n_2 ;
  wire \wp_reg[0]_i_2__0_n_3 ;
  wire \wp_reg[0]_i_2__0_n_4 ;
  wire \wp_reg[0]_i_2__0_n_5 ;
  wire \wp_reg[0]_i_2__0_n_6 ;
  wire \wp_reg[0]_i_2__0_n_7 ;
  wire \wp_reg[12]_i_1__0_n_7 ;
  wire \wp_reg[4]_i_1__0_n_0 ;
  wire \wp_reg[4]_i_1__0_n_1 ;
  wire \wp_reg[4]_i_1__0_n_2 ;
  wire \wp_reg[4]_i_1__0_n_3 ;
  wire \wp_reg[4]_i_1__0_n_4 ;
  wire \wp_reg[4]_i_1__0_n_5 ;
  wire \wp_reg[4]_i_1__0_n_6 ;
  wire \wp_reg[4]_i_1__0_n_7 ;
  wire \wp_reg[8]_i_1__0_n_0 ;
  wire \wp_reg[8]_i_1__0_n_1 ;
  wire \wp_reg[8]_i_1__0_n_2 ;
  wire \wp_reg[8]_i_1__0_n_3 ;
  wire \wp_reg[8]_i_1__0_n_4 ;
  wire \wp_reg[8]_i_1__0_n_5 ;
  wire \wp_reg[8]_i_1__0_n_6 ;
  wire \wp_reg[8]_i_1__0_n_7 ;
  wire [3:1]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__2_O_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:4]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:4]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire [3:0]\NLW_rp_inc_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_rp_inc_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wp_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wp_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    almost_full_i_1__0
       (.I0(Q[13]),
        .I1(almost_full_i_2__0_n_0),
        .I2(Q[9]),
        .I3(Q[11]),
        .I4(Q[5]),
        .O(almost_full_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    almost_full_i_2__0
       (.I0(Q[8]),
        .I1(Q[4]),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(almost_full_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    almost_full_reg
       (.C(clk),
        .CE(1'b1),
        .D(almost_full_i_1__0_n_0),
        .Q(c1_afull),
        .R(\en_sync_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    cap_rst_INST_0
       (.I0(out),
        .O(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[2:1],count0_carry_i_1__0_n_0,count0_carry_i_2__0_n_0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({count0_carry_i_3__0_n_0,count0_carry_i_4__0_n_0,count0_carry_i_5__0_n_0,count0_carry_i_6__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[6:3]),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({count0_carry__0_i_1__0_n_0,count0_carry__0_i_2__0_n_0,count0_carry__0_i_3__0_n_0,count0_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_1__0
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(count0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_2__0
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(count0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_3__0
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(count0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__0_i_4__0
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(count0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[10:7]),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({count0_carry__1_i_1__0_n_0,count0_carry__1_i_2__0_n_0,count0_carry__1_i_3__0_n_0,count0_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_1__0
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(count0_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_2__0
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(count0_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_3__0
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(count0_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__1_i_4__0
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(count0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({NLW_count0_carry__2_CO_UNCONNECTED[3:1],count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[11]}),
        .O({NLW_count0_carry__2_O_UNCONNECTED[3:2],count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({1'b0,1'b0,count0_carry__2_i_1__0_n_0,count0_carry__2_i_2__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__2_i_1__0
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(count0_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry__2_i_2__0
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(count0_carry__2_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    count0_carry_i_1__0
       (.I0(Q[0]),
        .I1(Q[13]),
        .I2(c1_wr),
        .O(count0_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    count0_carry_i_2__0
       (.I0(c1_wr),
        .I1(Q[13]),
        .I2(Q[0]),
        .O(count0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_3__0
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(count0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count0_carry_i_4__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(count0_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hF20D)) 
    count0_carry_i_5__0
       (.I0(c1_wr),
        .I1(Q[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(count0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h659A)) 
    count0_carry_i_6__0
       (.I0(Q[0]),
        .I1(Q[13]),
        .I2(c1_wr),
        .I3(raw1_rd),
        .O(count0_carry_i_6__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_7),
        .Q(Q[0]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_5),
        .Q(Q[10]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_4),
        .Q(Q[11]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__2_n_7),
        .Q(Q[12]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__2_n_6),
        .Q(Q[13]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_6),
        .Q(Q[1]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_5),
        .Q(Q[2]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry_n_4),
        .Q(Q[3]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_7),
        .Q(Q[4]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_6),
        .Q(Q[5]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_5),
        .Q(Q[6]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__0_n_4),
        .Q(Q[7]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_7),
        .Q(Q[8]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(count0_carry__1_n_6),
        .Q(Q[9]),
        .R(\en_sync_reg[2] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/u_cfifo1/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,wp_reg,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,raddr,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:4],raw1_dout[3:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(c1_wr),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_i_14__0_n_0,mem_reg_1_i_14__0_n_0,mem_reg_1_i_14__0_n_0,mem_reg_1_i_14__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/u_cfifo1/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,wp_reg,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,raddr,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:4],raw1_dout[7:4]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(c1_wr),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_i_14__0_n_0,mem_reg_1_i_14__0_n_0,mem_reg_1_i_14__0_n_0,mem_reg_1_i_14__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_10__0
       (.I0(rp_inc_reg[3]),
        .I1(raw1_rd),
        .I2(rp[3]),
        .O(raddr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_11__0
       (.I0(rp_inc_reg[2]),
        .I1(raw1_rd),
        .I2(rp[2]),
        .O(raddr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_12__0
       (.I0(rp_inc_reg[1]),
        .I1(raw1_rd),
        .I2(rp[1]),
        .O(raddr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_13__0
       (.I0(rp_inc_reg[0]),
        .I1(raw1_rd),
        .I2(rp[0]),
        .O(raddr[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_1_i_14__0
       (.I0(Q[13]),
        .O(mem_reg_1_i_14__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_1__0
       (.I0(rp_inc_reg[12]),
        .I1(raw1_rd),
        .I2(rp[12]),
        .O(raddr[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_2__0
       (.I0(rp_inc_reg[11]),
        .I1(raw1_rd),
        .I2(rp[11]),
        .O(raddr[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_3__0
       (.I0(rp_inc_reg[10]),
        .I1(raw1_rd),
        .I2(rp[10]),
        .O(raddr[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_4__0
       (.I0(rp_inc_reg[9]),
        .I1(raw1_rd),
        .I2(rp[9]),
        .O(raddr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_5__0
       (.I0(rp_inc_reg[8]),
        .I1(raw1_rd),
        .I2(rp[8]),
        .O(raddr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_6__0
       (.I0(rp_inc_reg[7]),
        .I1(raw1_rd),
        .I2(rp[7]),
        .O(raddr[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_7__0
       (.I0(rp_inc_reg[6]),
        .I1(raw1_rd),
        .I2(rp[6]),
        .O(raddr[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_8__0
       (.I0(rp_inc_reg[5]),
        .I1(raw1_rd),
        .I2(rp[5]),
        .O(raddr[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_1_i_9__0
       (.I0(rp_inc_reg[4]),
        .I1(raw1_rd),
        .I2(rp[4]),
        .O(raddr[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \rp_inc[0]_i_2__0 
       (.I0(rp_inc_reg[0]),
        .O(\rp_inc[0]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rp_inc_reg[0] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[0]_i_1__0_n_7 ),
        .Q(rp_inc_reg[0]),
        .S(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\rp_inc_reg[0]_i_1__0_n_0 ,\rp_inc_reg[0]_i_1__0_n_1 ,\rp_inc_reg[0]_i_1__0_n_2 ,\rp_inc_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rp_inc_reg[0]_i_1__0_n_4 ,\rp_inc_reg[0]_i_1__0_n_5 ,\rp_inc_reg[0]_i_1__0_n_6 ,\rp_inc_reg[0]_i_1__0_n_7 }),
        .S({rp_inc_reg[3:1],\rp_inc[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[10] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[8]_i_1__0_n_5 ),
        .Q(rp_inc_reg[10]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[11] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[8]_i_1__0_n_4 ),
        .Q(rp_inc_reg[11]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[12] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[12]_i_1__0_n_7 ),
        .Q(rp_inc_reg[12]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[12]_i_1__0 
       (.CI(\rp_inc_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_rp_inc_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rp_inc_reg[12]_i_1__0_O_UNCONNECTED [3:1],\rp_inc_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,rp_inc_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[1] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[0]_i_1__0_n_6 ),
        .Q(rp_inc_reg[1]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[2] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[0]_i_1__0_n_5 ),
        .Q(rp_inc_reg[2]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[3] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[0]_i_1__0_n_4 ),
        .Q(rp_inc_reg[3]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[4] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[4]_i_1__0_n_7 ),
        .Q(rp_inc_reg[4]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[4]_i_1__0 
       (.CI(\rp_inc_reg[0]_i_1__0_n_0 ),
        .CO({\rp_inc_reg[4]_i_1__0_n_0 ,\rp_inc_reg[4]_i_1__0_n_1 ,\rp_inc_reg[4]_i_1__0_n_2 ,\rp_inc_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rp_inc_reg[4]_i_1__0_n_4 ,\rp_inc_reg[4]_i_1__0_n_5 ,\rp_inc_reg[4]_i_1__0_n_6 ,\rp_inc_reg[4]_i_1__0_n_7 }),
        .S(rp_inc_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[5] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[4]_i_1__0_n_6 ),
        .Q(rp_inc_reg[5]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[6] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[4]_i_1__0_n_5 ),
        .Q(rp_inc_reg[6]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[7] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[4]_i_1__0_n_4 ),
        .Q(rp_inc_reg[7]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[8] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[8]_i_1__0_n_7 ),
        .Q(rp_inc_reg[8]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rp_inc_reg[8]_i_1__0 
       (.CI(\rp_inc_reg[4]_i_1__0_n_0 ),
        .CO({\rp_inc_reg[8]_i_1__0_n_0 ,\rp_inc_reg[8]_i_1__0_n_1 ,\rp_inc_reg[8]_i_1__0_n_2 ,\rp_inc_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rp_inc_reg[8]_i_1__0_n_4 ,\rp_inc_reg[8]_i_1__0_n_5 ,\rp_inc_reg[8]_i_1__0_n_6 ,\rp_inc_reg[8]_i_1__0_n_7 }),
        .S(rp_inc_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rp_inc_reg[9] 
       (.C(clk),
        .CE(raw1_rd),
        .D(\rp_inc_reg[8]_i_1__0_n_6 ),
        .Q(rp_inc_reg[9]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[0] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[0]),
        .Q(rp[0]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[10] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[10]),
        .Q(rp[10]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[11] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[11]),
        .Q(rp[11]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[12] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[12]),
        .Q(rp[12]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[1] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[1]),
        .Q(rp[1]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[2] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[2]),
        .Q(rp[2]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[3] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[3]),
        .Q(rp[3]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[4] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[4]),
        .Q(rp[4]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[5] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[5]),
        .Q(rp[5]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[6] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[6]),
        .Q(rp[6]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[7] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[7]),
        .Q(rp[7]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[8] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[8]),
        .Q(rp[8]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \rp_reg[9] 
       (.C(clk),
        .CE(raw1_rd),
        .D(rp_inc_reg[9]),
        .Q(rp[9]),
        .R(\en_sync_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \wp[0]_i_3__0 
       (.I0(wp_reg[0]),
        .O(\wp[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[0] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2__0_n_7 ),
        .Q(wp_reg[0]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\wp_reg[0]_i_2__0_n_0 ,\wp_reg[0]_i_2__0_n_1 ,\wp_reg[0]_i_2__0_n_2 ,\wp_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wp_reg[0]_i_2__0_n_4 ,\wp_reg[0]_i_2__0_n_5 ,\wp_reg[0]_i_2__0_n_6 ,\wp_reg[0]_i_2__0_n_7 }),
        .S({wp_reg[3:1],\wp[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[10] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1__0_n_5 ),
        .Q(wp_reg[10]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[11] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1__0_n_4 ),
        .Q(wp_reg[11]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[12] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[12]_i_1__0_n_7 ),
        .Q(wp_reg[12]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[12]_i_1__0 
       (.CI(\wp_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wp_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wp_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wp_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wp_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[1] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2__0_n_6 ),
        .Q(wp_reg[1]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[2] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2__0_n_5 ),
        .Q(wp_reg[2]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[3] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[0]_i_2__0_n_4 ),
        .Q(wp_reg[3]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[4] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1__0_n_7 ),
        .Q(wp_reg[4]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[4]_i_1__0 
       (.CI(\wp_reg[0]_i_2__0_n_0 ),
        .CO({\wp_reg[4]_i_1__0_n_0 ,\wp_reg[4]_i_1__0_n_1 ,\wp_reg[4]_i_1__0_n_2 ,\wp_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wp_reg[4]_i_1__0_n_4 ,\wp_reg[4]_i_1__0_n_5 ,\wp_reg[4]_i_1__0_n_6 ,\wp_reg[4]_i_1__0_n_7 }),
        .S(wp_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[5] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1__0_n_6 ),
        .Q(wp_reg[5]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[6] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1__0_n_5 ),
        .Q(wp_reg[6]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[7] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[4]_i_1__0_n_4 ),
        .Q(wp_reg[7]),
        .R(\en_sync_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[8] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1__0_n_7 ),
        .Q(wp_reg[8]),
        .R(\en_sync_reg[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wp_reg[8]_i_1__0 
       (.CI(\wp_reg[4]_i_1__0_n_0 ),
        .CO({\wp_reg[8]_i_1__0_n_0 ,\wp_reg[8]_i_1__0_n_1 ,\wp_reg[8]_i_1__0_n_2 ,\wp_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wp_reg[8]_i_1__0_n_4 ,\wp_reg[8]_i_1__0_n_5 ,\wp_reg[8]_i_1__0_n_6 ,\wp_reg[8]_i_1__0_n_7 }),
        .S(wp_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wp_reg[9] 
       (.C(clk),
        .CE(do_wr),
        .D(\wp_reg[8]_i_1__0_n_6 ),
        .Q(wp_reg[9]),
        .R(\en_sync_reg[2] ));
endmodule

(* ORIG_REF_NAME = "cam_capture" *) 
module system_cam_input_0_0_cam_capture
   (s0_stb,
    s0_vsync,
    s0_href,
    frame_led0,
    c0_wr,
    do_wr,
    vsync_d_reg,
    \en_sync_reg[2] ,
    href_d,
    second,
    SR,
    \en_sync_reg[2]_0 ,
    stb_reg_0,
    stb_reg_1,
    \d_q_reg[7]_0 ,
    \start_us_reg[23]_0 ,
    href_q_reg_0,
    vsync_q_reg_0,
    \fifo_din_reg[7]_0 ,
    cam_d,
    clk,
    \state_reg[0]_0 ,
    out,
    Q,
    vsync_d,
    c0_afull,
    \px_reg[1] ,
    href_d_reg,
    tick,
    cam_pclk,
    cam_vsync,
    cam_href,
    D,
    \h_tof_mm_reg[15]_0 ,
    \h_tof_seq_reg[7]_0 ,
    \h_tof_us_reg[31]_0 );
  output s0_stb;
  output s0_vsync;
  output s0_href;
  output frame_led0;
  output c0_wr;
  output do_wr;
  output vsync_d_reg;
  output \en_sync_reg[2] ;
  output href_d;
  output second;
  output [0:0]SR;
  output \en_sync_reg[2]_0 ;
  output stb_reg_0;
  output stb_reg_1;
  output [7:0]\d_q_reg[7]_0 ;
  output [23:0]\start_us_reg[23]_0 ;
  output href_q_reg_0;
  output vsync_q_reg_0;
  output [7:0]\fifo_din_reg[7]_0 ;
  input [7:0]cam_d;
  input clk;
  input \state_reg[0]_0 ;
  input [0:0]out;
  input [0:0]Q;
  input vsync_d;
  input c0_afull;
  input \px_reg[1] ;
  input href_d_reg;
  input tick;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [31:0]D;
  input [15:0]\h_tof_mm_reg[15]_0 ;
  input [7:0]\h_tof_seq_reg[7]_0 ;
  input [31:0]\h_tof_us_reg[31]_0 ;

  wire [31:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire c0_afull;
  wire c0_wr;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire clear;
  wire clk;
  wire [7:0]d_h0;
  wire [7:0]d_h1;
  (* async_reg = "true" *) wire [7:0]d_m0;
  (* async_reg = "true" *) wire [7:0]d_m1;
  wire [7:0]\d_q_reg[7]_0 ;
  wire [7:0]data1;
  wire [7:0]data14;
  wire [7:0]data16;
  wire [7:0]data19;
  wire [7:0]data20;
  wire [7:0]data21;
  wire [7:0]data3;
  wire [7:0]data5;
  wire [7:0]data7;
  wire [7:0]data9;
  wire do_wr;
  wire \en_sync_reg[2] ;
  wire \en_sync_reg[2]_0 ;
  wire fifo_din;
  wire \fifo_din[0]_i_10_n_0 ;
  wire \fifo_din[0]_i_11_n_0 ;
  wire \fifo_din[0]_i_12_n_0 ;
  wire \fifo_din[0]_i_1_n_0 ;
  wire \fifo_din[0]_i_2_n_0 ;
  wire \fifo_din[0]_i_3_n_0 ;
  wire \fifo_din[0]_i_4_n_0 ;
  wire \fifo_din[0]_i_6_n_0 ;
  wire \fifo_din[0]_i_7_n_0 ;
  wire \fifo_din[0]_i_8_n_0 ;
  wire \fifo_din[0]_i_9_n_0 ;
  wire \fifo_din[1]_i_10_n_0 ;
  wire \fifo_din[1]_i_11_n_0 ;
  wire \fifo_din[1]_i_12_n_0 ;
  wire \fifo_din[1]_i_1_n_0 ;
  wire \fifo_din[1]_i_2_n_0 ;
  wire \fifo_din[1]_i_4__0_n_0 ;
  wire \fifo_din[1]_i_5_n_0 ;
  wire \fifo_din[1]_i_6_n_0 ;
  wire \fifo_din[1]_i_7_n_0 ;
  wire \fifo_din[1]_i_8_n_0 ;
  wire \fifo_din[1]_i_9_n_0 ;
  wire \fifo_din[2]_i_10__0_n_0 ;
  wire \fifo_din[2]_i_11_n_0 ;
  wire \fifo_din[2]_i_12_n_0 ;
  wire \fifo_din[2]_i_13_n_0 ;
  wire \fifo_din[2]_i_14_n_0 ;
  wire \fifo_din[2]_i_1_n_0 ;
  wire \fifo_din[2]_i_2_n_0 ;
  wire \fifo_din[2]_i_7_n_0 ;
  wire \fifo_din[2]_i_8_n_0 ;
  wire \fifo_din[2]_i_9_n_0 ;
  wire \fifo_din[3]_i_10_n_0 ;
  wire \fifo_din[3]_i_11_n_0 ;
  wire \fifo_din[3]_i_12_n_0 ;
  wire \fifo_din[3]_i_1_n_0 ;
  wire \fifo_din[3]_i_2_n_0 ;
  wire \fifo_din[3]_i_3_n_0 ;
  wire \fifo_din[3]_i_4_n_0 ;
  wire \fifo_din[3]_i_6_n_0 ;
  wire \fifo_din[3]_i_7_n_0 ;
  wire \fifo_din[3]_i_8_n_0 ;
  wire \fifo_din[3]_i_9_n_0 ;
  wire \fifo_din[4]_i_10_n_0 ;
  wire \fifo_din[4]_i_11_n_0 ;
  wire \fifo_din[4]_i_12_n_0 ;
  wire \fifo_din[4]_i_1_n_0 ;
  wire \fifo_din[4]_i_2_n_0 ;
  wire \fifo_din[4]_i_3_n_0 ;
  wire \fifo_din[4]_i_4_n_0 ;
  wire \fifo_din[4]_i_5_n_0 ;
  wire \fifo_din[4]_i_6_n_0 ;
  wire \fifo_din[4]_i_7_n_0 ;
  wire \fifo_din[4]_i_8_n_0 ;
  wire \fifo_din[4]_i_9_n_0 ;
  wire \fifo_din[5]_i_10_n_0 ;
  wire \fifo_din[5]_i_11_n_0 ;
  wire \fifo_din[5]_i_12_n_0 ;
  wire \fifo_din[5]_i_1_n_0 ;
  wire \fifo_din[5]_i_2_n_0 ;
  wire \fifo_din[5]_i_3_n_0 ;
  wire \fifo_din[5]_i_5_n_0 ;
  wire \fifo_din[5]_i_6_n_0 ;
  wire \fifo_din[5]_i_7_n_0 ;
  wire \fifo_din[5]_i_8_n_0 ;
  wire \fifo_din[5]_i_9_n_0 ;
  wire \fifo_din[6]_i_10_n_0 ;
  wire \fifo_din[6]_i_11_n_0 ;
  wire \fifo_din[6]_i_12_n_0 ;
  wire \fifo_din[6]_i_1_n_0 ;
  wire \fifo_din[6]_i_2_n_0 ;
  wire \fifo_din[6]_i_3_n_0 ;
  wire \fifo_din[6]_i_4_n_0 ;
  wire \fifo_din[6]_i_6_n_0 ;
  wire \fifo_din[6]_i_7_n_0 ;
  wire \fifo_din[6]_i_8_n_0 ;
  wire \fifo_din[6]_i_9_n_0 ;
  wire \fifo_din[7]_i_10_n_0 ;
  wire \fifo_din[7]_i_11_n_0 ;
  wire \fifo_din[7]_i_12_n_0 ;
  wire \fifo_din[7]_i_13_n_0 ;
  wire \fifo_din[7]_i_14_n_0 ;
  wire \fifo_din[7]_i_15_n_0 ;
  wire \fifo_din[7]_i_2_n_0 ;
  wire \fifo_din[7]_i_3_n_0 ;
  wire \fifo_din[7]_i_4_n_0 ;
  wire \fifo_din[7]_i_5_n_0 ;
  wire \fifo_din[7]_i_6_n_0 ;
  wire \fifo_din[7]_i_7_n_0 ;
  wire \fifo_din[7]_i_9_n_0 ;
  wire \fifo_din_reg[0]_i_5_n_0 ;
  wire \fifo_din_reg[1]_i_3_n_0 ;
  wire \fifo_din_reg[2]_i_3_n_0 ;
  wire \fifo_din_reg[2]_i_4_n_0 ;
  wire \fifo_din_reg[2]_i_5_n_0 ;
  wire \fifo_din_reg[2]_i_6_n_0 ;
  wire \fifo_din_reg[3]_i_5_n_0 ;
  wire \fifo_din_reg[5]_i_4_n_0 ;
  wire \fifo_din_reg[6]_i_5_n_0 ;
  wire [7:0]\fifo_din_reg[7]_0 ;
  wire \fifo_din_reg[7]_i_8_n_0 ;
  wire fifo_wr_en_i_1_n_0;
  wire frame_led0;
  wire \frame_no[2]_i_3_n_0 ;
  wire \frame_no_reg[12]_i_1_n_1 ;
  wire \frame_no_reg[12]_i_1_n_2 ;
  wire \frame_no_reg[12]_i_1_n_3 ;
  wire \frame_no_reg[12]_i_1_n_4 ;
  wire \frame_no_reg[12]_i_1_n_5 ;
  wire \frame_no_reg[12]_i_1_n_6 ;
  wire \frame_no_reg[12]_i_1_n_7 ;
  wire \frame_no_reg[2]_i_2_n_0 ;
  wire \frame_no_reg[2]_i_2_n_1 ;
  wire \frame_no_reg[2]_i_2_n_2 ;
  wire \frame_no_reg[2]_i_2_n_3 ;
  wire \frame_no_reg[2]_i_2_n_4 ;
  wire \frame_no_reg[2]_i_2_n_5 ;
  wire \frame_no_reg[2]_i_2_n_6 ;
  wire \frame_no_reg[2]_i_2_n_7 ;
  wire \frame_no_reg[4]_i_1_n_0 ;
  wire \frame_no_reg[4]_i_1_n_1 ;
  wire \frame_no_reg[4]_i_1_n_2 ;
  wire \frame_no_reg[4]_i_1_n_3 ;
  wire \frame_no_reg[4]_i_1_n_4 ;
  wire \frame_no_reg[4]_i_1_n_5 ;
  wire \frame_no_reg[4]_i_1_n_6 ;
  wire \frame_no_reg[4]_i_1_n_7 ;
  wire \frame_no_reg[8]_i_1_n_0 ;
  wire \frame_no_reg[8]_i_1_n_1 ;
  wire \frame_no_reg[8]_i_1_n_2 ;
  wire \frame_no_reg[8]_i_1_n_3 ;
  wire \frame_no_reg[8]_i_1_n_4 ;
  wire \frame_no_reg[8]_i_1_n_5 ;
  wire \frame_no_reg[8]_i_1_n_6 ;
  wire \frame_no_reg[8]_i_1_n_7 ;
  wire \frame_no_reg_n_0_[0] ;
  wire \frame_no_reg_n_0_[1] ;
  wire \frame_no_reg_n_0_[3] ;
  wire \frame_no_reg_n_0_[4] ;
  wire \frame_no_reg_n_0_[5] ;
  wire \frame_no_reg_n_0_[6] ;
  wire \frame_no_reg_n_0_[7] ;
  wire [15:0]\h_tof_mm_reg[15]_0 ;
  wire \h_tof_mm_reg_n_0_[0] ;
  wire \h_tof_mm_reg_n_0_[1] ;
  wire \h_tof_mm_reg_n_0_[2] ;
  wire \h_tof_mm_reg_n_0_[3] ;
  wire \h_tof_mm_reg_n_0_[4] ;
  wire \h_tof_mm_reg_n_0_[5] ;
  wire \h_tof_mm_reg_n_0_[6] ;
  wire \h_tof_mm_reg_n_0_[7] ;
  wire [7:0]h_tof_seq;
  wire [7:0]\h_tof_seq_reg[7]_0 ;
  wire [31:0]\h_tof_us_reg[31]_0 ;
  wire \h_tof_us_reg_n_0_[0] ;
  wire \h_tof_us_reg_n_0_[1] ;
  wire \h_tof_us_reg_n_0_[2] ;
  wire \h_tof_us_reg_n_0_[3] ;
  wire \h_tof_us_reg_n_0_[4] ;
  wire \h_tof_us_reg_n_0_[5] ;
  wire \h_tof_us_reg_n_0_[6] ;
  wire \h_tof_us_reg_n_0_[7] ;
  wire href_d;
  wire href_d_reg;
  wire [1:0]href_h;
  (* async_reg = "true" *) wire [1:0]href_m;
  wire href_q_reg_0;
  wire href_qq;
  wire href_qq_i_1_n_0;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[4]_i_1_n_0 ;
  wire [4:0]idx_reg;
  wire [15:0]last_bpl;
  wire \last_bpl[15]_i_1_n_0 ;
  wire \line_bytes[0]_i_1_n_0 ;
  wire \line_bytes[0]_i_3_n_0 ;
  wire [15:0]line_bytes_reg;
  wire \line_bytes_reg[0]_i_2_n_0 ;
  wire \line_bytes_reg[0]_i_2_n_1 ;
  wire \line_bytes_reg[0]_i_2_n_2 ;
  wire \line_bytes_reg[0]_i_2_n_3 ;
  wire \line_bytes_reg[0]_i_2_n_4 ;
  wire \line_bytes_reg[0]_i_2_n_5 ;
  wire \line_bytes_reg[0]_i_2_n_6 ;
  wire \line_bytes_reg[0]_i_2_n_7 ;
  wire \line_bytes_reg[12]_i_1_n_1 ;
  wire \line_bytes_reg[12]_i_1_n_2 ;
  wire \line_bytes_reg[12]_i_1_n_3 ;
  wire \line_bytes_reg[12]_i_1_n_4 ;
  wire \line_bytes_reg[12]_i_1_n_5 ;
  wire \line_bytes_reg[12]_i_1_n_6 ;
  wire \line_bytes_reg[12]_i_1_n_7 ;
  wire \line_bytes_reg[4]_i_1_n_0 ;
  wire \line_bytes_reg[4]_i_1_n_1 ;
  wire \line_bytes_reg[4]_i_1_n_2 ;
  wire \line_bytes_reg[4]_i_1_n_3 ;
  wire \line_bytes_reg[4]_i_1_n_4 ;
  wire \line_bytes_reg[4]_i_1_n_5 ;
  wire \line_bytes_reg[4]_i_1_n_6 ;
  wire \line_bytes_reg[4]_i_1_n_7 ;
  wire \line_bytes_reg[8]_i_1_n_0 ;
  wire \line_bytes_reg[8]_i_1_n_1 ;
  wire \line_bytes_reg[8]_i_1_n_2 ;
  wire \line_bytes_reg[8]_i_1_n_3 ;
  wire \line_bytes_reg[8]_i_1_n_4 ;
  wire \line_bytes_reg[8]_i_1_n_5 ;
  wire \line_bytes_reg[8]_i_1_n_6 ;
  wire \line_bytes_reg[8]_i_1_n_7 ;
  wire \lines[0]_i_2_n_0 ;
  wire [15:0]lines_reg;
  wire \lines_reg[0]_i_1_n_0 ;
  wire \lines_reg[0]_i_1_n_1 ;
  wire \lines_reg[0]_i_1_n_2 ;
  wire \lines_reg[0]_i_1_n_3 ;
  wire \lines_reg[0]_i_1_n_4 ;
  wire \lines_reg[0]_i_1_n_5 ;
  wire \lines_reg[0]_i_1_n_6 ;
  wire \lines_reg[0]_i_1_n_7 ;
  wire \lines_reg[12]_i_1_n_1 ;
  wire \lines_reg[12]_i_1_n_2 ;
  wire \lines_reg[12]_i_1_n_3 ;
  wire \lines_reg[12]_i_1_n_4 ;
  wire \lines_reg[12]_i_1_n_5 ;
  wire \lines_reg[12]_i_1_n_6 ;
  wire \lines_reg[12]_i_1_n_7 ;
  wire \lines_reg[4]_i_1_n_0 ;
  wire \lines_reg[4]_i_1_n_1 ;
  wire \lines_reg[4]_i_1_n_2 ;
  wire \lines_reg[4]_i_1_n_3 ;
  wire \lines_reg[4]_i_1_n_4 ;
  wire \lines_reg[4]_i_1_n_5 ;
  wire \lines_reg[4]_i_1_n_6 ;
  wire \lines_reg[4]_i_1_n_7 ;
  wire \lines_reg[8]_i_1_n_0 ;
  wire \lines_reg[8]_i_1_n_1 ;
  wire \lines_reg[8]_i_1_n_2 ;
  wire \lines_reg[8]_i_1_n_3 ;
  wire \lines_reg[8]_i_1_n_4 ;
  wire \lines_reg[8]_i_1_n_5 ;
  wire \lines_reg[8]_i_1_n_6 ;
  wire \lines_reg[8]_i_1_n_7 ;
  wire [0:0]out;
  wire p_0_in_0;
  wire [4:1]p_0_in__1;
  wire \pclk_2khz_reg_n_0_[0] ;
  wire \pclk_2khz_reg_n_0_[1] ;
  wire \pclk_2khz_reg_n_0_[2] ;
  wire \pclk_2khz_reg_n_0_[3] ;
  wire \pclk_2khz_reg_n_0_[4] ;
  wire \pclk_2khz_reg_n_0_[5] ;
  wire \pclk_2khz_reg_n_0_[6] ;
  wire \pclk_2khz_reg_n_0_[7] ;
  wire [15:0]pclk_cnt;
  wire [15:1]pclk_cnt0;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_0 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_1 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_0 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_1 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_0 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_1 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_3 ;
  wire \pclk_cnt[0]_i_1_n_0 ;
  wire \pclk_cnt[15]_i_1_n_0 ;
  wire \pclk_cnt[15]_i_2_n_0 ;
  wire \pclk_cnt[15]_i_3_n_0 ;
  wire \pclk_cnt[15]_i_4_n_0 ;
  wire \pclk_cnt[15]_i_5_n_0 ;
  wire pclk_f;
  wire pclk_f_i_1_n_0;
  wire [1:0]pclk_h;
  (* async_reg = "true" *) wire [1:0]pclk_m;
  wire \prev_bpl_reg_n_0_[0] ;
  wire \prev_bpl_reg_n_0_[1] ;
  wire \prev_bpl_reg_n_0_[2] ;
  wire \prev_bpl_reg_n_0_[3] ;
  wire \prev_bpl_reg_n_0_[4] ;
  wire \prev_bpl_reg_n_0_[5] ;
  wire \prev_bpl_reg_n_0_[6] ;
  wire \prev_bpl_reg_n_0_[7] ;
  wire \prev_lines_reg_n_0_[0] ;
  wire \prev_lines_reg_n_0_[1] ;
  wire \prev_lines_reg_n_0_[2] ;
  wire \prev_lines_reg_n_0_[3] ;
  wire \prev_lines_reg_n_0_[4] ;
  wire \prev_lines_reg_n_0_[5] ;
  wire \prev_lines_reg_n_0_[6] ;
  wire \prev_lines_reg_n_0_[7] ;
  wire \prev_ticks_reg_n_0_[0] ;
  wire \prev_ticks_reg_n_0_[1] ;
  wire \prev_ticks_reg_n_0_[2] ;
  wire \prev_ticks_reg_n_0_[3] ;
  wire \prev_ticks_reg_n_0_[4] ;
  wire \prev_ticks_reg_n_0_[5] ;
  wire \prev_ticks_reg_n_0_[6] ;
  wire \prev_ticks_reg_n_0_[7] ;
  wire prev_trunc;
  wire \px_reg[1] ;
  wire s0_href;
  wire s0_stb;
  wire s0_vsync;
  wire second;
  wire [23:0]\start_us_reg[23]_0 ;
  wire state1_in;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire stb0__0;
  wire stb_reg_0;
  wire stb_reg_1;
  wire tick;
  wire \ticks[0]_i_1_n_0 ;
  wire \ticks[0]_i_3_n_0 ;
  wire \ticks[0]_i_4_n_0 ;
  wire \ticks[0]_i_5_n_0 ;
  wire \ticks[0]_i_6_n_0 ;
  wire \ticks[0]_i_7_n_0 ;
  wire [15:0]ticks_reg;
  wire \ticks_reg[0]_i_2_n_0 ;
  wire \ticks_reg[0]_i_2_n_1 ;
  wire \ticks_reg[0]_i_2_n_2 ;
  wire \ticks_reg[0]_i_2_n_3 ;
  wire \ticks_reg[0]_i_2_n_4 ;
  wire \ticks_reg[0]_i_2_n_5 ;
  wire \ticks_reg[0]_i_2_n_6 ;
  wire \ticks_reg[0]_i_2_n_7 ;
  wire \ticks_reg[12]_i_1_n_1 ;
  wire \ticks_reg[12]_i_1_n_2 ;
  wire \ticks_reg[12]_i_1_n_3 ;
  wire \ticks_reg[12]_i_1_n_4 ;
  wire \ticks_reg[12]_i_1_n_5 ;
  wire \ticks_reg[12]_i_1_n_6 ;
  wire \ticks_reg[12]_i_1_n_7 ;
  wire \ticks_reg[4]_i_1_n_0 ;
  wire \ticks_reg[4]_i_1_n_1 ;
  wire \ticks_reg[4]_i_1_n_2 ;
  wire \ticks_reg[4]_i_1_n_3 ;
  wire \ticks_reg[4]_i_1_n_4 ;
  wire \ticks_reg[4]_i_1_n_5 ;
  wire \ticks_reg[4]_i_1_n_6 ;
  wire \ticks_reg[4]_i_1_n_7 ;
  wire \ticks_reg[8]_i_1_n_0 ;
  wire \ticks_reg[8]_i_1_n_1 ;
  wire \ticks_reg[8]_i_1_n_2 ;
  wire \ticks_reg[8]_i_1_n_3 ;
  wire \ticks_reg[8]_i_1_n_4 ;
  wire \ticks_reg[8]_i_1_n_5 ;
  wire \ticks_reg[8]_i_1_n_6 ;
  wire \ticks_reg[8]_i_1_n_7 ;
  wire trunc_i_1_n_0;
  wire trunc_i_2_n_0;
  wire trunc_reg_n_0;
  wire vsync_d;
  wire vsync_d_reg;
  wire \vsync_h_reg_n_0_[0] ;
  (* async_reg = "true" *) wire [1:0]vsync_m;
  wire vsync_q_reg_0;
  wire vsync_qq;
  wire vsync_qq_i_1_n_0;
  wire [3:3]\NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_bytes_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_lines_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:3]\NLW_ticks_reg[12]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[0]),
        .Q(d_h0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[1]),
        .Q(d_h0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[2]),
        .Q(d_h0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[3]),
        .Q(d_h0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[4]),
        .Q(d_h0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[5]),
        .Q(d_h0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[6]),
        .Q(d_h0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[7]),
        .Q(d_h0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[0]),
        .Q(d_h1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[1]),
        .Q(d_h1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[2]),
        .Q(d_h1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[3]),
        .Q(d_h1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[4]),
        .Q(d_h1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[5]),
        .Q(d_h1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[6]),
        .Q(d_h1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d_h0[7]),
        .Q(d_h1[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[0]),
        .Q(d_m0[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[1]),
        .Q(d_m0[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[2]),
        .Q(d_m0[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[3]),
        .Q(d_m0[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[4]),
        .Q(d_m0[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[5]),
        .Q(d_m0[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[6]),
        .Q(d_m0[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_d[7]),
        .Q(d_m0[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[0]),
        .Q(d_m1[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[1]),
        .Q(d_m1[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[2]),
        .Q(d_m1[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[3]),
        .Q(d_m1[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[4]),
        .Q(d_m1[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[5]),
        .Q(d_m1[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[6]),
        .Q(d_m1[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[7]),
        .Q(d_m1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[0] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[0]),
        .Q(\d_q_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[1] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[1]),
        .Q(\d_q_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[2] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[2]),
        .Q(\d_q_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[3] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[3]),
        .Q(\d_q_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[4] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[4]),
        .Q(\d_q_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[5] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[5]),
        .Q(\d_q_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[6] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[6]),
        .Q(\d_q_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[7] 
       (.C(clk),
        .CE(stb0__0),
        .D(d_h1[7]),
        .Q(\d_q_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h888AAA8A88888888)) 
    \fifo_din[0]_i_1 
       (.I0(\fifo_din[0]_i_2_n_0 ),
        .I1(\fifo_din[0]_i_3_n_0 ),
        .I2(\fifo_din[0]_i_4_n_0 ),
        .I3(\fifo_din[7]_i_7_n_0 ),
        .I4(\fifo_din_reg[0]_i_5_n_0 ),
        .I5(\fifo_din[7]_i_5_n_0 ),
        .O(\fifo_din[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[0]_i_10 
       (.I0(data7[0]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[0] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[0]_i_12_n_0 ),
        .O(\fifo_din[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4373)) 
    \fifo_din[0]_i_11 
       (.I0(data1[0]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\frame_no_reg_n_0_[0] ),
        .O(\fifo_din[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4070)) 
    \fifo_din[0]_i_12 
       (.I0(data5[0]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[0] ),
        .O(\fifo_din[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[0]_i_2 
       (.I0(\d_q_reg[7]_0 [0]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAEAEAAAAAAA)) 
    \fifo_din[0]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[0]_i_6_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[0]_i_7_n_0 ),
        .O(\fifo_din[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F35555FFF35555)) 
    \fifo_din[0]_i_4 
       (.I0(\fifo_din[0]_i_8_n_0 ),
        .I1(prev_trunc),
        .I2(idx_reg[0]),
        .I3(idx_reg[3]),
        .I4(idx_reg[1]),
        .I5(h_tof_seq[0]),
        .O(\fifo_din[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[0]_i_6 
       (.I0(data21[0]),
        .I1(data14[0]),
        .I2(idx_reg[0]),
        .I3(data20[0]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [16]),
        .O(\fifo_din[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[0]_i_7 
       (.I0(data19[0]),
        .I1(\start_us_reg[23]_0 [8]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[0] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [0]),
        .O(\fifo_din[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[0]_i_8 
       (.I0(data16[0]),
        .I1(data9[0]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[0] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[0] ),
        .O(\fifo_din[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[0]_i_9 
       (.I0(data3[0]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[0] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[0]_i_11_n_0 ),
        .O(\fifo_din[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F888F8888)) 
    \fifo_din[1]_i_1 
       (.I0(\d_q_reg[7]_0 [1]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\fifo_din[1]_i_2_n_0 ),
        .I3(\fifo_din_reg[1]_i_3_n_0 ),
        .I4(\fifo_din[7]_i_7_n_0 ),
        .I5(\fifo_din[1]_i_4__0_n_0 ),
        .O(\fifo_din[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[1]_i_10 
       (.I0(data16[1]),
        .I1(data9[1]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[1] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[1] ),
        .O(\fifo_din[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[1]_i_11 
       (.I0(data1[1]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\frame_no_reg_n_0_[1] ),
        .O(\fifo_din[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[1]_i_12 
       (.I0(data5[1]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[1] ),
        .O(\fifo_din[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAFAAAAA)) 
    \fifo_din[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\fifo_din[1]_i_5_n_0 ),
        .I2(idx_reg[2]),
        .I3(idx_reg[1]),
        .I4(idx_reg[4]),
        .I5(\fifo_din[1]_i_6_n_0 ),
        .O(\fifo_din[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000073400000)) 
    \fifo_din[1]_i_4__0 
       (.I0(\fifo_din[1]_i_9_n_0 ),
        .I1(idx_reg[1]),
        .I2(h_tof_seq[1]),
        .I3(\fifo_din[1]_i_10_n_0 ),
        .I4(idx_reg[4]),
        .I5(idx_reg[2]),
        .O(\fifo_din[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[1]_i_5 
       (.I0(data21[1]),
        .I1(data14[1]),
        .I2(idx_reg[0]),
        .I3(data20[1]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [17]),
        .O(\fifo_din[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[1]_i_6 
       (.I0(data19[1]),
        .I1(\start_us_reg[23]_0 [9]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[1] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [1]),
        .O(\fifo_din[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[1]_i_7 
       (.I0(data3[1]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[1] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[1]_i_11_n_0 ),
        .O(\fifo_din[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F7FFFFF4F7F0000)) 
    \fifo_din[1]_i_8 
       (.I0(data7[1]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[1] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[1]_i_12_n_0 ),
        .O(\fifo_din[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[1]_i_9 
       (.I0(idx_reg[0]),
        .I1(idx_reg[3]),
        .O(\fifo_din[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \fifo_din[2]_i_1 
       (.I0(\d_q_reg[7]_0 [2]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\fifo_din[2]_i_2_n_0 ),
        .I3(idx_reg[2]),
        .I4(idx_reg[4]),
        .I5(\fifo_din_reg[2]_i_3_n_0 ),
        .O(\fifo_din[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \fifo_din[2]_i_10__0 
       (.I0(data7[2]),
        .I1(idx_reg[0]),
        .I2(\pclk_2khz_reg_n_0_[2] ),
        .I3(idx_reg[3]),
        .O(\fifo_din[2]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \fifo_din[2]_i_11 
       (.I0(data1[2]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_led0),
        .O(\fifo_din[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \fifo_din[2]_i_12 
       (.I0(data3[2]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[2] ),
        .O(\fifo_din[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[2]_i_13 
       (.I0(data16[2]),
        .I1(data9[2]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[2] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[2] ),
        .O(\fifo_din[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \fifo_din[2]_i_14 
       (.I0(h_tof_seq[2]),
        .I1(idx_reg[3]),
        .I2(idx_reg[0]),
        .O(\fifo_din[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFACACA000ACAC)) 
    \fifo_din[2]_i_2 
       (.I0(\fifo_din_reg[2]_i_4_n_0 ),
        .I1(\fifo_din_reg[2]_i_5_n_0 ),
        .I2(idx_reg[2]),
        .I3(idx_reg[1]),
        .I4(idx_reg[4]),
        .I5(\fifo_din_reg[2]_i_6_n_0 ),
        .O(\fifo_din[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[2]_i_7 
       (.I0(data19[2]),
        .I1(\start_us_reg[23]_0 [10]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[2] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [2]),
        .O(\fifo_din[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[2]_i_8 
       (.I0(data21[2]),
        .I1(data14[2]),
        .I2(idx_reg[0]),
        .I3(data20[2]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [18]),
        .O(\fifo_din[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \fifo_din[2]_i_9 
       (.I0(data5[2]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[2] ),
        .O(\fifo_din[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888AAA8A88888888)) 
    \fifo_din[3]_i_1 
       (.I0(\fifo_din[3]_i_2_n_0 ),
        .I1(\fifo_din[3]_i_3_n_0 ),
        .I2(\fifo_din[3]_i_4_n_0 ),
        .I3(\fifo_din[7]_i_7_n_0 ),
        .I4(\fifo_din_reg[3]_i_5_n_0 ),
        .I5(\fifo_din[7]_i_5_n_0 ),
        .O(\fifo_din[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[3]_i_10 
       (.I0(data7[3]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[3] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[3]_i_12_n_0 ),
        .O(\fifo_din[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[3]_i_11 
       (.I0(data1[3]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\frame_no_reg_n_0_[3] ),
        .O(\fifo_din[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \fifo_din[3]_i_12 
       (.I0(data5[3]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[3] ),
        .O(\fifo_din[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[3]_i_2 
       (.I0(\d_q_reg[7]_0 [3]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAEAEAAAAAAA)) 
    \fifo_din[3]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[3]_i_6_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[3]_i_7_n_0 ),
        .O(\fifo_din[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hC4CCF7FF)) 
    \fifo_din[3]_i_4 
       (.I0(h_tof_seq[3]),
        .I1(idx_reg[1]),
        .I2(idx_reg[0]),
        .I3(idx_reg[3]),
        .I4(\fifo_din[3]_i_8_n_0 ),
        .O(\fifo_din[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[3]_i_6 
       (.I0(data21[3]),
        .I1(data14[3]),
        .I2(idx_reg[0]),
        .I3(data20[3]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [19]),
        .O(\fifo_din[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[3]_i_7 
       (.I0(data19[3]),
        .I1(\start_us_reg[23]_0 [11]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[3] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [3]),
        .O(\fifo_din[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[3]_i_8 
       (.I0(data16[3]),
        .I1(data9[3]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[3] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[3] ),
        .O(\fifo_din[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[3]_i_9 
       (.I0(data3[3]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[3] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[3]_i_11_n_0 ),
        .O(\fifo_din[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B8BBB8)) 
    \fifo_din[4]_i_1 
       (.I0(\d_q_reg[7]_0 [4]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\fifo_din[4]_i_2_n_0 ),
        .I3(idx_reg[2]),
        .I4(\fifo_din[4]_i_3_n_0 ),
        .I5(\fifo_din[4]_i_4_n_0 ),
        .O(\fifo_din[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB080C0C0)) 
    \fifo_din[4]_i_10 
       (.I0(data7[4]),
        .I1(idx_reg[0]),
        .I2(idx_reg[1]),
        .I3(\pclk_2khz_reg_n_0_[4] ),
        .I4(idx_reg[3]),
        .I5(idx_reg[4]),
        .O(\fifo_din[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[4]_i_11 
       (.I0(data19[4]),
        .I1(\start_us_reg[23]_0 [12]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[4] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [4]),
        .O(\fifo_din[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[4]_i_12 
       (.I0(data21[4]),
        .I1(data14[4]),
        .I2(idx_reg[0]),
        .I3(data20[4]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [20]),
        .O(\fifo_din[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5F554F4F5F554444)) 
    \fifo_din[4]_i_2 
       (.I0(\fifo_din[4]_i_5_n_0 ),
        .I1(\fifo_din[4]_i_6_n_0 ),
        .I2(\fifo_din[4]_i_7_n_0 ),
        .I3(\fifo_din[4]_i_8_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[4]_i_9_n_0 ),
        .O(\fifo_din[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF1FDF)) 
    \fifo_din[4]_i_3 
       (.I0(\prev_lines_reg_n_0_[4] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(data5[4]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[4]_i_10_n_0 ),
        .O(\fifo_din[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0400C400)) 
    \fifo_din[4]_i_4 
       (.I0(\fifo_din[4]_i_11_n_0 ),
        .I1(idx_reg[4]),
        .I2(idx_reg[1]),
        .I3(idx_reg[2]),
        .I4(\fifo_din[4]_i_12_n_0 ),
        .O(\fifo_din[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF55555555)) 
    \fifo_din[4]_i_5 
       (.I0(idx_reg[4]),
        .I1(idx_reg[2]),
        .I2(h_tof_seq[4]),
        .I3(idx_reg[3]),
        .I4(idx_reg[0]),
        .I5(idx_reg[1]),
        .O(\fifo_din[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[4]_i_6 
       (.I0(data16[4]),
        .I1(data9[4]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[4] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[4] ),
        .O(\fifo_din[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fifo_din[4]_i_7 
       (.I0(idx_reg[2]),
        .I1(idx_reg[4]),
        .O(\fifo_din[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \fifo_din[4]_i_8 
       (.I0(data3[4]),
        .I1(idx_reg[0]),
        .I2(\prev_bpl_reg_n_0_[4] ),
        .I3(idx_reg[3]),
        .O(\fifo_din[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \fifo_din[4]_i_9 
       (.I0(data1[4]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\frame_no_reg_n_0_[4] ),
        .O(\fifo_din[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAEEEAE)) 
    \fifo_din[5]_i_1 
       (.I0(\fifo_din[5]_i_2_n_0 ),
        .I1(\fifo_din[7]_i_5_n_0 ),
        .I2(\fifo_din[5]_i_3_n_0 ),
        .I3(\fifo_din[7]_i_7_n_0 ),
        .I4(\fifo_din_reg[5]_i_4_n_0 ),
        .I5(\fifo_din[5]_i_5_n_0 ),
        .O(\fifo_din[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[5]_i_10 
       (.I0(data7[5]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[5] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[5]_i_12_n_0 ),
        .O(\fifo_din[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[5]_i_11 
       (.I0(data1[5]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\frame_no_reg_n_0_[5] ),
        .O(\fifo_din[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \fifo_din[5]_i_12 
       (.I0(data5[5]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[5] ),
        .O(\fifo_din[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAEAEAAAAAAA)) 
    \fifo_din[5]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[5]_i_6_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[5]_i_7_n_0 ),
        .O(\fifo_din[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFF3F5555)) 
    \fifo_din[5]_i_3 
       (.I0(\fifo_din[5]_i_8_n_0 ),
        .I1(h_tof_seq[5]),
        .I2(idx_reg[3]),
        .I3(idx_reg[0]),
        .I4(idx_reg[1]),
        .O(\fifo_din[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fifo_din[5]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\d_q_reg[7]_0 [5]),
        .O(\fifo_din[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[5]_i_6 
       (.I0(data21[5]),
        .I1(data14[5]),
        .I2(idx_reg[0]),
        .I3(data20[5]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [21]),
        .O(\fifo_din[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[5]_i_7 
       (.I0(data19[5]),
        .I1(\start_us_reg[23]_0 [13]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[5] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [5]),
        .O(\fifo_din[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[5]_i_8 
       (.I0(data16[5]),
        .I1(data9[5]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[5] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[5] ),
        .O(\fifo_din[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[5]_i_9 
       (.I0(data3[5]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[5] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[5]_i_11_n_0 ),
        .O(\fifo_din[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888AAA8A88888888)) 
    \fifo_din[6]_i_1 
       (.I0(\fifo_din[6]_i_2_n_0 ),
        .I1(\fifo_din[6]_i_3_n_0 ),
        .I2(\fifo_din[6]_i_4_n_0 ),
        .I3(\fifo_din[7]_i_7_n_0 ),
        .I4(\fifo_din_reg[6]_i_5_n_0 ),
        .I5(\fifo_din[7]_i_5_n_0 ),
        .O(\fifo_din[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[6]_i_10 
       (.I0(data7[6]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[6] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[6]_i_12_n_0 ),
        .O(\fifo_din[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4373)) 
    \fifo_din[6]_i_11 
       (.I0(data1[6]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\frame_no_reg_n_0_[6] ),
        .O(\fifo_din[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4070)) 
    \fifo_din[6]_i_12 
       (.I0(data5[6]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[6] ),
        .O(\fifo_din[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[6]_i_2 
       (.I0(\d_q_reg[7]_0 [6]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAEAEAAAAAAA)) 
    \fifo_din[6]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[6]_i_6_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[6]_i_7_n_0 ),
        .O(\fifo_din[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hC4CCF7FF)) 
    \fifo_din[6]_i_4 
       (.I0(h_tof_seq[6]),
        .I1(idx_reg[1]),
        .I2(idx_reg[0]),
        .I3(idx_reg[3]),
        .I4(\fifo_din[6]_i_8_n_0 ),
        .O(\fifo_din[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[6]_i_6 
       (.I0(data21[6]),
        .I1(data14[6]),
        .I2(idx_reg[0]),
        .I3(data20[6]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [22]),
        .O(\fifo_din[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[6]_i_7 
       (.I0(data19[6]),
        .I1(\start_us_reg[23]_0 [14]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[6] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [6]),
        .O(\fifo_din[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[6]_i_8 
       (.I0(data16[6]),
        .I1(data9[6]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[6] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[6] ),
        .O(\fifo_din[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[6]_i_9 
       (.I0(data3[6]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[6] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[6]_i_11_n_0 ),
        .O(\fifo_din[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0002020000000200)) 
    \fifo_din[7]_i_1 
       (.I0(s0_stb),
        .I1(c0_afull),
        .I2(trunc_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(s0_href),
        .O(fifo_din));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[7]_i_10 
       (.I0(data19[7]),
        .I1(\start_us_reg[23]_0 [15]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[7] ),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [7]),
        .O(\fifo_din[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[7]_i_11 
       (.I0(data16[7]),
        .I1(data9[7]),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[7] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[7] ),
        .O(\fifo_din[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB833FFFFB8330000)) 
    \fifo_din[7]_i_12 
       (.I0(data3[7]),
        .I1(idx_reg[0]),
        .I2(\prev_bpl_reg_n_0_[7] ),
        .I3(idx_reg[3]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[7]_i_14_n_0 ),
        .O(\fifo_din[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \fifo_din[7]_i_13 
       (.I0(data7[7]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[7] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[7]_i_15_n_0 ),
        .O(\fifo_din[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \fifo_din[7]_i_14 
       (.I0(data1[7]),
        .I1(idx_reg[0]),
        .I2(\frame_no_reg_n_0_[7] ),
        .I3(idx_reg[3]),
        .O(\fifo_din[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \fifo_din[7]_i_15 
       (.I0(data5[7]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[7] ),
        .O(\fifo_din[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \fifo_din[7]_i_2 
       (.I0(\fifo_din[7]_i_3_n_0 ),
        .I1(\fifo_din[7]_i_4_n_0 ),
        .I2(\fifo_din[7]_i_5_n_0 ),
        .I3(\fifo_din[7]_i_6_n_0 ),
        .I4(\fifo_din[7]_i_7_n_0 ),
        .I5(\fifo_din_reg[7]_i_8_n_0 ),
        .O(\fifo_din[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[7]_i_3 
       (.I0(\d_q_reg[7]_0 [7]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAEAEAAAAAAA)) 
    \fifo_din[7]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[7]_i_9_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[7]_i_10_n_0 ),
        .O(\fifo_din[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo_din[7]_i_5 
       (.I0(idx_reg[2]),
        .I1(idx_reg[4]),
        .O(\fifo_din[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \fifo_din[7]_i_6 
       (.I0(h_tof_seq[7]),
        .I1(idx_reg[3]),
        .I2(idx_reg[0]),
        .I3(idx_reg[1]),
        .I4(\fifo_din[7]_i_11_n_0 ),
        .O(\fifo_din[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \fifo_din[7]_i_7 
       (.I0(idx_reg[2]),
        .I1(idx_reg[1]),
        .I2(idx_reg[4]),
        .O(\fifo_din[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[7]_i_9 
       (.I0(data21[7]),
        .I1(data14[7]),
        .I2(idx_reg[0]),
        .I3(data20[7]),
        .I4(idx_reg[3]),
        .I5(\start_us_reg[23]_0 [23]),
        .O(\fifo_din[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[0] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[0]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [0]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[0]_i_5 
       (.I0(\fifo_din[0]_i_9_n_0 ),
        .I1(\fifo_din[0]_i_10_n_0 ),
        .O(\fifo_din_reg[0]_i_5_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[1] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[1]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [1]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[1]_i_3 
       (.I0(\fifo_din[1]_i_7_n_0 ),
        .I1(\fifo_din[1]_i_8_n_0 ),
        .O(\fifo_din_reg[1]_i_3_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[2] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[2]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [2]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[2]_i_3 
       (.I0(\fifo_din[2]_i_7_n_0 ),
        .I1(\fifo_din[2]_i_8_n_0 ),
        .O(\fifo_din_reg[2]_i_3_n_0 ),
        .S(\fifo_din[7]_i_7_n_0 ));
  MUXF7 \fifo_din_reg[2]_i_4 
       (.I0(\fifo_din[2]_i_9_n_0 ),
        .I1(\fifo_din[2]_i_10__0_n_0 ),
        .O(\fifo_din_reg[2]_i_4_n_0 ),
        .S(idx_reg[1]));
  MUXF7 \fifo_din_reg[2]_i_5 
       (.I0(\fifo_din[2]_i_11_n_0 ),
        .I1(\fifo_din[2]_i_12_n_0 ),
        .O(\fifo_din_reg[2]_i_5_n_0 ),
        .S(idx_reg[1]));
  MUXF7 \fifo_din_reg[2]_i_6 
       (.I0(\fifo_din[2]_i_13_n_0 ),
        .I1(\fifo_din[2]_i_14_n_0 ),
        .O(\fifo_din_reg[2]_i_6_n_0 ),
        .S(idx_reg[1]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[3] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[3]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [3]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[3]_i_5 
       (.I0(\fifo_din[3]_i_9_n_0 ),
        .I1(\fifo_din[3]_i_10_n_0 ),
        .O(\fifo_din_reg[3]_i_5_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[4] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[4]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[5] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[5]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [5]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[5]_i_4 
       (.I0(\fifo_din[5]_i_9_n_0 ),
        .I1(\fifo_din[5]_i_10_n_0 ),
        .O(\fifo_din_reg[5]_i_4_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[6] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[6]_i_1_n_0 ),
        .Q(\fifo_din_reg[7]_0 [6]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[6]_i_5 
       (.I0(\fifo_din[6]_i_9_n_0 ),
        .I1(\fifo_din[6]_i_10_n_0 ),
        .O(\fifo_din_reg[6]_i_5_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[7] 
       (.C(clk),
        .CE(fifo_din),
        .D(\fifo_din[7]_i_2_n_0 ),
        .Q(\fifo_din_reg[7]_0 [7]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[7]_i_8 
       (.I0(\fifo_din[7]_i_12_n_0 ),
        .I1(\fifo_din[7]_i_13_n_0 ),
        .O(\fifo_din_reg[7]_i_8_n_0 ),
        .S(idx_reg[2]));
  LUT6 #(
    .INIT(64'h0002020000000200)) 
    fifo_wr_en_i_1
       (.I0(href_d),
        .I1(c0_afull),
        .I2(trunc_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(s0_href),
        .O(fifo_wr_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_wr_en_i_1_n_0),
        .Q(c0_wr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA2AA)) 
    fill_i_2
       (.I0(out),
        .I1(s0_vsync),
        .I2(vsync_d),
        .I3(s0_stb),
        .O(\en_sync_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \frame_no[2]_i_1 
       (.I0(s0_vsync),
        .I1(s0_stb),
        .I2(vsync_qq),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_no[2]_i_3 
       (.I0(\frame_no_reg_n_0_[0] ),
        .O(\frame_no[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[2]_i_2_n_7 ),
        .Q(\frame_no_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[8]_i_1_n_5 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[8]_i_1_n_4 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[12]_i_1_n_7 ),
        .Q(data1[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[12]_i_1 
       (.CI(\frame_no_reg[8]_i_1_n_0 ),
        .CO({\NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED [3],\frame_no_reg[12]_i_1_n_1 ,\frame_no_reg[12]_i_1_n_2 ,\frame_no_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[12]_i_1_n_4 ,\frame_no_reg[12]_i_1_n_5 ,\frame_no_reg[12]_i_1_n_6 ,\frame_no_reg[12]_i_1_n_7 }),
        .S(data1[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[12]_i_1_n_6 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[12]_i_1_n_5 ),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[12]_i_1_n_4 ),
        .Q(data1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[2]_i_2_n_6 ),
        .Q(\frame_no_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[2]_i_2_n_5 ),
        .Q(frame_led0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\frame_no_reg[2]_i_2_n_0 ,\frame_no_reg[2]_i_2_n_1 ,\frame_no_reg[2]_i_2_n_2 ,\frame_no_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_no_reg[2]_i_2_n_4 ,\frame_no_reg[2]_i_2_n_5 ,\frame_no_reg[2]_i_2_n_6 ,\frame_no_reg[2]_i_2_n_7 }),
        .S({\frame_no_reg_n_0_[3] ,frame_led0,\frame_no_reg_n_0_[1] ,\frame_no[2]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[2]_i_2_n_4 ),
        .Q(\frame_no_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[4]_i_1_n_7 ),
        .Q(\frame_no_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[4]_i_1 
       (.CI(\frame_no_reg[2]_i_2_n_0 ),
        .CO({\frame_no_reg[4]_i_1_n_0 ,\frame_no_reg[4]_i_1_n_1 ,\frame_no_reg[4]_i_1_n_2 ,\frame_no_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[4]_i_1_n_4 ,\frame_no_reg[4]_i_1_n_5 ,\frame_no_reg[4]_i_1_n_6 ,\frame_no_reg[4]_i_1_n_7 }),
        .S({\frame_no_reg_n_0_[7] ,\frame_no_reg_n_0_[6] ,\frame_no_reg_n_0_[5] ,\frame_no_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[4]_i_1_n_6 ),
        .Q(\frame_no_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[4]_i_1_n_5 ),
        .Q(\frame_no_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[4]_i_1_n_4 ),
        .Q(\frame_no_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[8]_i_1_n_7 ),
        .Q(data1[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[8]_i_1 
       (.CI(\frame_no_reg[4]_i_1_n_0 ),
        .CO({\frame_no_reg[8]_i_1_n_0 ,\frame_no_reg[8]_i_1_n_1 ,\frame_no_reg[8]_i_1_n_2 ,\frame_no_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[8]_i_1_n_4 ,\frame_no_reg[8]_i_1_n_5 ,\frame_no_reg[8]_i_1_n_6 ,\frame_no_reg[8]_i_1_n_7 }),
        .S(data1[3:0]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(\frame_no_reg[8]_i_1_n_6 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [0]),
        .Q(\h_tof_mm_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [10]),
        .Q(data16[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [11]),
        .Q(data16[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [12]),
        .Q(data16[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [13]),
        .Q(data16[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [14]),
        .Q(data16[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [15]),
        .Q(data16[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [1]),
        .Q(\h_tof_mm_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [2]),
        .Q(\h_tof_mm_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [3]),
        .Q(\h_tof_mm_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [4]),
        .Q(\h_tof_mm_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [5]),
        .Q(\h_tof_mm_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [6]),
        .Q(\h_tof_mm_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [7]),
        .Q(\h_tof_mm_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [8]),
        .Q(data16[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_mm_reg[15]_0 [9]),
        .Q(data16[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [0]),
        .Q(h_tof_seq[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [1]),
        .Q(h_tof_seq[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [2]),
        .Q(h_tof_seq[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [3]),
        .Q(h_tof_seq[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [4]),
        .Q(h_tof_seq[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [5]),
        .Q(h_tof_seq[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [6]),
        .Q(h_tof_seq[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_seq_reg[7]_0 [7]),
        .Q(h_tof_seq[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [0]),
        .Q(\h_tof_us_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [10]),
        .Q(data19[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [11]),
        .Q(data19[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [12]),
        .Q(data19[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [13]),
        .Q(data19[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [14]),
        .Q(data19[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [15]),
        .Q(data19[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[16] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [16]),
        .Q(data20[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[17] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [17]),
        .Q(data20[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[18] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [18]),
        .Q(data20[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[19] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [19]),
        .Q(data20[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [1]),
        .Q(\h_tof_us_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[20] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [20]),
        .Q(data20[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[21] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [21]),
        .Q(data20[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[22] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [22]),
        .Q(data20[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[23] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [23]),
        .Q(data20[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[24] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [24]),
        .Q(data21[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[25] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [25]),
        .Q(data21[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[26] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [26]),
        .Q(data21[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[27] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [27]),
        .Q(data21[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[28] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [28]),
        .Q(data21[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[29] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [29]),
        .Q(data21[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [2]),
        .Q(\h_tof_us_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[30] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [30]),
        .Q(data21[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[31] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [31]),
        .Q(data21[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [3]),
        .Q(\h_tof_us_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [4]),
        .Q(\h_tof_us_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [5]),
        .Q(\h_tof_us_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [6]),
        .Q(\h_tof_us_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [7]),
        .Q(\h_tof_us_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [8]),
        .Q(data19[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(\h_tof_us_reg[31]_0 [9]),
        .Q(data19[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    href_d_i_1
       (.I0(s0_href),
        .I1(s0_stb),
        .I2(out),
        .I3(href_d_reg),
        .O(href_q_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \href_h_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(href_m[1]),
        .Q(href_h[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \href_h_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(href_h[0]),
        .Q(href_h[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \href_m_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_href),
        .Q(href_m[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \href_m_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(href_m[0]),
        .Q(href_m[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    href_q_reg
       (.C(clk),
        .CE(stb0__0),
        .D(href_h[1]),
        .Q(s0_href),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    href_qq_i_1
       (.I0(s0_href),
        .I1(s0_stb),
        .I2(href_qq),
        .O(href_qq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    href_qq_reg
       (.C(clk),
        .CE(1'b1),
        .D(href_qq_i_1_n_0),
        .Q(href_qq),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \idx[0]_i_1 
       (.I0(idx_reg[0]),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx[1]_i_1 
       (.I0(idx_reg[1]),
        .I1(idx_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \idx[2]_i_1 
       (.I0(idx_reg[2]),
        .I1(idx_reg[0]),
        .I2(idx_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \idx[3]_i_1 
       (.I0(idx_reg[3]),
        .I1(idx_reg[0]),
        .I2(idx_reg[1]),
        .I3(idx_reg[2]),
        .O(p_0_in__1[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \idx[4]_i_1 
       (.I0(s0_stb),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\idx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \idx[4]_i_2 
       (.I0(idx_reg[4]),
        .I1(idx_reg[2]),
        .I2(idx_reg[1]),
        .I3(idx_reg[0]),
        .I4(idx_reg[3]),
        .O(p_0_in__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(\idx[0]_i_1_n_0 ),
        .Q(idx_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(idx_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(clk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(idx_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[3] 
       (.C(clk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(idx_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[4] 
       (.C(clk),
        .CE(\idx[4]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(idx_reg[4]),
        .R(clear));
  LUT3 #(
    .INIT(8'h08)) 
    \last_bpl[15]_i_1 
       (.I0(href_qq),
        .I1(s0_stb),
        .I2(s0_href),
        .O(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[0] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[0]),
        .Q(last_bpl[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[10] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[10]),
        .Q(last_bpl[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[11] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[11]),
        .Q(last_bpl[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[12] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[12]),
        .Q(last_bpl[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[13] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[13]),
        .Q(last_bpl[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[14] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[14]),
        .Q(last_bpl[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[15] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[15]),
        .Q(last_bpl[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[1] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[1]),
        .Q(last_bpl[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[2] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[2]),
        .Q(last_bpl[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[3] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[3]),
        .Q(last_bpl[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[4] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[4]),
        .Q(last_bpl[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[5] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[5]),
        .Q(last_bpl[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[6] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[6]),
        .Q(last_bpl[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[7] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[7]),
        .Q(last_bpl[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[8] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[8]),
        .Q(last_bpl[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[9] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(line_bytes_reg[9]),
        .Q(last_bpl[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \line_bytes[0]_i_1 
       (.I0(s0_stb),
        .I1(s0_href),
        .O(\line_bytes[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \line_bytes[0]_i_3 
       (.I0(line_bytes_reg[0]),
        .O(\line_bytes[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[0] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[0]_i_2_n_7 ),
        .Q(line_bytes_reg[0]),
        .R(\last_bpl[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\line_bytes_reg[0]_i_2_n_0 ,\line_bytes_reg[0]_i_2_n_1 ,\line_bytes_reg[0]_i_2_n_2 ,\line_bytes_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\line_bytes_reg[0]_i_2_n_4 ,\line_bytes_reg[0]_i_2_n_5 ,\line_bytes_reg[0]_i_2_n_6 ,\line_bytes_reg[0]_i_2_n_7 }),
        .S({line_bytes_reg[3:1],\line_bytes[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[10] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[8]_i_1_n_5 ),
        .Q(line_bytes_reg[10]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[11] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[8]_i_1_n_4 ),
        .Q(line_bytes_reg[11]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[12] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[12]_i_1_n_7 ),
        .Q(line_bytes_reg[12]),
        .R(\last_bpl[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[12]_i_1 
       (.CI(\line_bytes_reg[8]_i_1_n_0 ),
        .CO({\NLW_line_bytes_reg[12]_i_1_CO_UNCONNECTED [3],\line_bytes_reg[12]_i_1_n_1 ,\line_bytes_reg[12]_i_1_n_2 ,\line_bytes_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_bytes_reg[12]_i_1_n_4 ,\line_bytes_reg[12]_i_1_n_5 ,\line_bytes_reg[12]_i_1_n_6 ,\line_bytes_reg[12]_i_1_n_7 }),
        .S(line_bytes_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[13] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[12]_i_1_n_6 ),
        .Q(line_bytes_reg[13]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[14] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[12]_i_1_n_5 ),
        .Q(line_bytes_reg[14]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[15] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[12]_i_1_n_4 ),
        .Q(line_bytes_reg[15]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[1] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[0]_i_2_n_6 ),
        .Q(line_bytes_reg[1]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[2] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[0]_i_2_n_5 ),
        .Q(line_bytes_reg[2]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[3] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[0]_i_2_n_4 ),
        .Q(line_bytes_reg[3]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[4] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[4]_i_1_n_7 ),
        .Q(line_bytes_reg[4]),
        .R(\last_bpl[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[4]_i_1 
       (.CI(\line_bytes_reg[0]_i_2_n_0 ),
        .CO({\line_bytes_reg[4]_i_1_n_0 ,\line_bytes_reg[4]_i_1_n_1 ,\line_bytes_reg[4]_i_1_n_2 ,\line_bytes_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_bytes_reg[4]_i_1_n_4 ,\line_bytes_reg[4]_i_1_n_5 ,\line_bytes_reg[4]_i_1_n_6 ,\line_bytes_reg[4]_i_1_n_7 }),
        .S(line_bytes_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[5] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[4]_i_1_n_6 ),
        .Q(line_bytes_reg[5]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[6] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[4]_i_1_n_5 ),
        .Q(line_bytes_reg[6]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[7] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[4]_i_1_n_4 ),
        .Q(line_bytes_reg[7]),
        .R(\last_bpl[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[8] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[8]_i_1_n_7 ),
        .Q(line_bytes_reg[8]),
        .R(\last_bpl[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[8]_i_1 
       (.CI(\line_bytes_reg[4]_i_1_n_0 ),
        .CO({\line_bytes_reg[8]_i_1_n_0 ,\line_bytes_reg[8]_i_1_n_1 ,\line_bytes_reg[8]_i_1_n_2 ,\line_bytes_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_bytes_reg[8]_i_1_n_4 ,\line_bytes_reg[8]_i_1_n_5 ,\line_bytes_reg[8]_i_1_n_6 ,\line_bytes_reg[8]_i_1_n_7 }),
        .S(line_bytes_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[9] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1_n_0 ),
        .D(\line_bytes_reg[8]_i_1_n_6 ),
        .Q(line_bytes_reg[9]),
        .R(\last_bpl[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lines[0]_i_2 
       (.I0(lines_reg[0]),
        .O(\lines[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[0] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[0]_i_1_n_7 ),
        .Q(lines_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\lines_reg[0]_i_1_n_0 ,\lines_reg[0]_i_1_n_1 ,\lines_reg[0]_i_1_n_2 ,\lines_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\lines_reg[0]_i_1_n_4 ,\lines_reg[0]_i_1_n_5 ,\lines_reg[0]_i_1_n_6 ,\lines_reg[0]_i_1_n_7 }),
        .S({lines_reg[3:1],\lines[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[10] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[8]_i_1_n_5 ),
        .Q(lines_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[11] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[8]_i_1_n_4 ),
        .Q(lines_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[12] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[12]_i_1_n_7 ),
        .Q(lines_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[12]_i_1 
       (.CI(\lines_reg[8]_i_1_n_0 ),
        .CO({\NLW_lines_reg[12]_i_1_CO_UNCONNECTED [3],\lines_reg[12]_i_1_n_1 ,\lines_reg[12]_i_1_n_2 ,\lines_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lines_reg[12]_i_1_n_4 ,\lines_reg[12]_i_1_n_5 ,\lines_reg[12]_i_1_n_6 ,\lines_reg[12]_i_1_n_7 }),
        .S(lines_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[13] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[12]_i_1_n_6 ),
        .Q(lines_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[14] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[12]_i_1_n_5 ),
        .Q(lines_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[15] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[12]_i_1_n_4 ),
        .Q(lines_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[1] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[0]_i_1_n_6 ),
        .Q(lines_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[2] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[0]_i_1_n_5 ),
        .Q(lines_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[3] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[0]_i_1_n_4 ),
        .Q(lines_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[4] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[4]_i_1_n_7 ),
        .Q(lines_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[4]_i_1 
       (.CI(\lines_reg[0]_i_1_n_0 ),
        .CO({\lines_reg[4]_i_1_n_0 ,\lines_reg[4]_i_1_n_1 ,\lines_reg[4]_i_1_n_2 ,\lines_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lines_reg[4]_i_1_n_4 ,\lines_reg[4]_i_1_n_5 ,\lines_reg[4]_i_1_n_6 ,\lines_reg[4]_i_1_n_7 }),
        .S(lines_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[5] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[4]_i_1_n_6 ),
        .Q(lines_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[6] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[4]_i_1_n_5 ),
        .Q(lines_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[7] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[4]_i_1_n_4 ),
        .Q(lines_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[8] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[8]_i_1_n_7 ),
        .Q(lines_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[8]_i_1 
       (.CI(\lines_reg[4]_i_1_n_0 ),
        .CO({\lines_reg[8]_i_1_n_0 ,\lines_reg[8]_i_1_n_1 ,\lines_reg[8]_i_1_n_2 ,\lines_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lines_reg[8]_i_1_n_4 ,\lines_reg[8]_i_1_n_5 ,\lines_reg[8]_i_1_n_6 ,\lines_reg[8]_i_1_n_7 }),
        .S(lines_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[9] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1_n_0 ),
        .D(\lines_reg[8]_i_1_n_6 ),
        .Q(lines_reg[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[0] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[0]),
        .Q(\pclk_2khz_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[10] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[10]),
        .Q(data7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[11] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[11]),
        .Q(data7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[12] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[12]),
        .Q(data7[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[13] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[13]),
        .Q(data7[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[14] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[14]),
        .Q(data7[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[15] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[15]),
        .Q(data7[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[1] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[1]),
        .Q(\pclk_2khz_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[2] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[2]),
        .Q(\pclk_2khz_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[3] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[3]),
        .Q(\pclk_2khz_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[4] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[4]),
        .Q(\pclk_2khz_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[5] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[5]),
        .Q(\pclk_2khz_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[6] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[6]),
        .Q(\pclk_2khz_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[7] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[7]),
        .Q(\pclk_2khz_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[8] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[8]),
        .Q(data7[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[9] 
       (.C(clk),
        .CE(tick),
        .D(pclk_cnt[9]),
        .Q(data7[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\pclk_cnt0_inferred__0/i__carry_n_0 ,\pclk_cnt0_inferred__0/i__carry_n_1 ,\pclk_cnt0_inferred__0/i__carry_n_2 ,\pclk_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(pclk_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pclk_cnt0[4:1]),
        .S(pclk_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry__0 
       (.CI(\pclk_cnt0_inferred__0/i__carry_n_0 ),
        .CO({\pclk_cnt0_inferred__0/i__carry__0_n_0 ,\pclk_cnt0_inferred__0/i__carry__0_n_1 ,\pclk_cnt0_inferred__0/i__carry__0_n_2 ,\pclk_cnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pclk_cnt0[8:5]),
        .S(pclk_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry__1 
       (.CI(\pclk_cnt0_inferred__0/i__carry__0_n_0 ),
        .CO({\pclk_cnt0_inferred__0/i__carry__1_n_0 ,\pclk_cnt0_inferred__0/i__carry__1_n_1 ,\pclk_cnt0_inferred__0/i__carry__1_n_2 ,\pclk_cnt0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pclk_cnt0[12:9]),
        .S(pclk_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry__2 
       (.CI(\pclk_cnt0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\pclk_cnt0_inferred__0/i__carry__2_n_2 ,\pclk_cnt0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED [3],pclk_cnt0[15:13]}),
        .S({1'b0,pclk_cnt[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8FB0)) 
    \pclk_cnt[0]_i_1 
       (.I0(s0_stb),
        .I1(tick),
        .I2(\pclk_cnt[15]_i_1_n_0 ),
        .I3(pclk_cnt[0]),
        .O(\pclk_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAAAA)) 
    \pclk_cnt[15]_i_1 
       (.I0(tick),
        .I1(\pclk_cnt[15]_i_2_n_0 ),
        .I2(\pclk_cnt[15]_i_3_n_0 ),
        .I3(\pclk_cnt[15]_i_4_n_0 ),
        .I4(\pclk_cnt[15]_i_5_n_0 ),
        .I5(s0_stb),
        .O(\pclk_cnt[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pclk_cnt[15]_i_2 
       (.I0(pclk_cnt[13]),
        .I1(pclk_cnt[10]),
        .I2(pclk_cnt[7]),
        .I3(pclk_cnt[1]),
        .O(\pclk_cnt[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \pclk_cnt[15]_i_3 
       (.I0(pclk_cnt[12]),
        .I1(pclk_cnt[5]),
        .I2(pclk_cnt[6]),
        .I3(pclk_cnt[0]),
        .O(\pclk_cnt[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pclk_cnt[15]_i_4 
       (.I0(pclk_cnt[15]),
        .I1(pclk_cnt[8]),
        .I2(pclk_cnt[14]),
        .I3(pclk_cnt[11]),
        .O(\pclk_cnt[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pclk_cnt[15]_i_5 
       (.I0(pclk_cnt[3]),
        .I1(pclk_cnt[2]),
        .I2(pclk_cnt[9]),
        .I3(pclk_cnt[4]),
        .O(\pclk_cnt[15]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pclk_cnt[0]_i_1_n_0 ),
        .Q(pclk_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[10] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[10]),
        .Q(pclk_cnt[10]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[11] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[11]),
        .Q(pclk_cnt[11]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[12] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[12]),
        .Q(pclk_cnt[12]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[13] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[13]),
        .Q(pclk_cnt[13]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[14] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[14]),
        .Q(pclk_cnt[14]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[15] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[15]),
        .Q(pclk_cnt[15]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[1] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[1]),
        .Q(pclk_cnt[1]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[2] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[2]),
        .Q(pclk_cnt[2]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[3] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[3]),
        .Q(pclk_cnt[3]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[4] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[4]),
        .Q(pclk_cnt[4]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[5] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[5]),
        .Q(pclk_cnt[5]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[6] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[6]),
        .Q(pclk_cnt[6]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[7] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[7]),
        .Q(pclk_cnt[7]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[8] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[8]),
        .Q(pclk_cnt[8]),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[9] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1_n_0 ),
        .D(pclk_cnt0[9]),
        .Q(pclk_cnt[9]),
        .R(tick));
  LUT3 #(
    .INIT(8'hE8)) 
    pclk_f_i_1
       (.I0(pclk_f),
        .I1(pclk_h[0]),
        .I2(pclk_h[1]),
        .O(pclk_f_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pclk_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(pclk_f_i_1_n_0),
        .Q(pclk_f),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_h_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pclk_m[1]),
        .Q(pclk_h[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_h_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pclk_h[0]),
        .Q(pclk_h[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \pclk_m_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_pclk),
        .Q(pclk_m[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \pclk_m_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pclk_m[0]),
        .Q(pclk_m[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[0]),
        .Q(\prev_bpl_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[10]),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[11]),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[12]),
        .Q(data3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[13]),
        .Q(data3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[14]),
        .Q(data3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[15]),
        .Q(data3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[1]),
        .Q(\prev_bpl_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[2]),
        .Q(\prev_bpl_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[3]),
        .Q(\prev_bpl_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[4]),
        .Q(\prev_bpl_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[5]),
        .Q(\prev_bpl_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[6]),
        .Q(\prev_bpl_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[7]),
        .Q(\prev_bpl_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[8]),
        .Q(data3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(last_bpl[9]),
        .Q(data3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[0]),
        .Q(\prev_lines_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[10]),
        .Q(data5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[11]),
        .Q(data5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[12]),
        .Q(data5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[13]),
        .Q(data5[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[14]),
        .Q(data5[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[15]),
        .Q(data5[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[1]),
        .Q(\prev_lines_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[2]),
        .Q(\prev_lines_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[3]),
        .Q(\prev_lines_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[4]),
        .Q(\prev_lines_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[5]),
        .Q(\prev_lines_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[6]),
        .Q(\prev_lines_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[7]),
        .Q(\prev_lines_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[8]),
        .Q(data5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(lines_reg[9]),
        .Q(data5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[0]),
        .Q(\prev_ticks_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[10]),
        .Q(data9[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[11]),
        .Q(data9[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[12]),
        .Q(data9[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[13]),
        .Q(data9[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[14]),
        .Q(data9[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[15]),
        .Q(data9[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[1]),
        .Q(\prev_ticks_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[2]),
        .Q(\prev_ticks_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[3]),
        .Q(\prev_ticks_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[4]),
        .Q(\prev_ticks_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[5]),
        .Q(\prev_ticks_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[6]),
        .Q(\prev_ticks_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[7]),
        .Q(\prev_ticks_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[8]),
        .Q(data9[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(ticks_reg[9]),
        .Q(data9[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_trunc_reg
       (.C(clk),
        .CE(clear),
        .D(trunc_reg_n_0),
        .Q(prev_trunc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \px[10]_i_10 
       (.I0(s0_stb),
        .I1(s0_href),
        .I2(href_d_reg),
        .O(stb_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \px[1]_i_3 
       (.I0(s0_href),
        .I1(s0_stb),
        .I2(\px_reg[1] ),
        .O(second));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \row[7]_i_1 
       (.I0(s0_stb),
        .I1(vsync_d),
        .I2(s0_vsync),
        .I3(out),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \row[8]_i_3 
       (.I0(s0_stb),
        .I1(vsync_d),
        .I2(s0_vsync),
        .O(stb_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(D[0]),
        .Q(\start_us_reg[23]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(D[10]),
        .Q(\start_us_reg[23]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(D[11]),
        .Q(\start_us_reg[23]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(D[12]),
        .Q(\start_us_reg[23]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(D[13]),
        .Q(\start_us_reg[23]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(D[14]),
        .Q(\start_us_reg[23]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(D[15]),
        .Q(\start_us_reg[23]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[16] 
       (.C(clk),
        .CE(clear),
        .D(D[16]),
        .Q(\start_us_reg[23]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[17] 
       (.C(clk),
        .CE(clear),
        .D(D[17]),
        .Q(\start_us_reg[23]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[18] 
       (.C(clk),
        .CE(clear),
        .D(D[18]),
        .Q(\start_us_reg[23]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[19] 
       (.C(clk),
        .CE(clear),
        .D(D[19]),
        .Q(\start_us_reg[23]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(D[1]),
        .Q(\start_us_reg[23]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[20] 
       (.C(clk),
        .CE(clear),
        .D(D[20]),
        .Q(\start_us_reg[23]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[21] 
       (.C(clk),
        .CE(clear),
        .D(D[21]),
        .Q(\start_us_reg[23]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[22] 
       (.C(clk),
        .CE(clear),
        .D(D[22]),
        .Q(\start_us_reg[23]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[23] 
       (.C(clk),
        .CE(clear),
        .D(D[23]),
        .Q(\start_us_reg[23]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[24] 
       (.C(clk),
        .CE(clear),
        .D(D[24]),
        .Q(data14[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[25] 
       (.C(clk),
        .CE(clear),
        .D(D[25]),
        .Q(data14[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[26] 
       (.C(clk),
        .CE(clear),
        .D(D[26]),
        .Q(data14[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[27] 
       (.C(clk),
        .CE(clear),
        .D(D[27]),
        .Q(data14[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[28] 
       (.C(clk),
        .CE(clear),
        .D(D[28]),
        .Q(data14[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[29] 
       (.C(clk),
        .CE(clear),
        .D(D[29]),
        .Q(data14[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(D[2]),
        .Q(\start_us_reg[23]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[30] 
       (.C(clk),
        .CE(clear),
        .D(D[30]),
        .Q(data14[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[31] 
       (.C(clk),
        .CE(clear),
        .D(D[31]),
        .Q(data14[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(D[3]),
        .Q(\start_us_reg[23]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(D[4]),
        .Q(\start_us_reg[23]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(D[5]),
        .Q(\start_us_reg[23]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(D[6]),
        .Q(\start_us_reg[23]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(D[7]),
        .Q(\start_us_reg[23]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(D[8]),
        .Q(\start_us_reg[23]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(D[9]),
        .Q(\start_us_reg[23]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF007F00)) 
    \state[0]_i_1 
       (.I0(idx_reg[4]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(s0_stb),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(clear),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[0]_i_2 
       (.I0(idx_reg[3]),
        .I1(idx_reg[0]),
        .I2(idx_reg[1]),
        .I3(idx_reg[2]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(state1_in),
        .I2(out),
        .I3(clear),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[1]_i_2 
       (.I0(\idx[4]_i_1_n_0 ),
        .I1(idx_reg[3]),
        .I2(idx_reg[0]),
        .I3(idx_reg[1]),
        .I4(idx_reg[2]),
        .I5(idx_reg[4]),
        .O(state1_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(\state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    stb0
       (.I0(pclk_h[1]),
        .I1(pclk_h[0]),
        .I2(pclk_f),
        .O(stb0__0));
  FDRE #(
    .INIT(1'b0)) 
    stb_reg
       (.C(clk),
        .CE(1'b1),
        .D(stb0__0),
        .Q(s0_stb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \ticks[0]_i_1 
       (.I0(tick),
        .I1(\ticks[0]_i_3_n_0 ),
        .I2(\ticks[0]_i_4_n_0 ),
        .I3(\ticks[0]_i_5_n_0 ),
        .I4(\ticks[0]_i_6_n_0 ),
        .O(\ticks[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ticks[0]_i_3 
       (.I0(ticks_reg[11]),
        .I1(ticks_reg[2]),
        .I2(ticks_reg[15]),
        .I3(ticks_reg[4]),
        .O(\ticks[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ticks[0]_i_4 
       (.I0(ticks_reg[14]),
        .I1(ticks_reg[0]),
        .I2(ticks_reg[12]),
        .I3(ticks_reg[3]),
        .O(\ticks[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ticks[0]_i_5 
       (.I0(ticks_reg[6]),
        .I1(ticks_reg[5]),
        .I2(ticks_reg[9]),
        .I3(ticks_reg[8]),
        .O(\ticks[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ticks[0]_i_6 
       (.I0(ticks_reg[13]),
        .I1(ticks_reg[10]),
        .I2(ticks_reg[7]),
        .I3(ticks_reg[1]),
        .O(\ticks[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_7 
       (.I0(ticks_reg[0]),
        .O(\ticks[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[0]_i_2_n_7 ),
        .Q(ticks_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ticks_reg[0]_i_2_n_0 ,\ticks_reg[0]_i_2_n_1 ,\ticks_reg[0]_i_2_n_2 ,\ticks_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ticks_reg[0]_i_2_n_4 ,\ticks_reg[0]_i_2_n_5 ,\ticks_reg[0]_i_2_n_6 ,\ticks_reg[0]_i_2_n_7 }),
        .S({ticks_reg[3:1],\ticks[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[10] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[8]_i_1_n_5 ),
        .Q(ticks_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[8]_i_1_n_4 ),
        .Q(ticks_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[12]_i_1_n_7 ),
        .Q(ticks_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[12]_i_1 
       (.CI(\ticks_reg[8]_i_1_n_0 ),
        .CO({\NLW_ticks_reg[12]_i_1_CO_UNCONNECTED [3],\ticks_reg[12]_i_1_n_1 ,\ticks_reg[12]_i_1_n_2 ,\ticks_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[12]_i_1_n_4 ,\ticks_reg[12]_i_1_n_5 ,\ticks_reg[12]_i_1_n_6 ,\ticks_reg[12]_i_1_n_7 }),
        .S(ticks_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[13] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[12]_i_1_n_6 ),
        .Q(ticks_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[12]_i_1_n_5 ),
        .Q(ticks_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[12]_i_1_n_4 ),
        .Q(ticks_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[0]_i_2_n_6 ),
        .Q(ticks_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[0]_i_2_n_5 ),
        .Q(ticks_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[0]_i_2_n_4 ),
        .Q(ticks_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[4]_i_1_n_7 ),
        .Q(ticks_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[4]_i_1 
       (.CI(\ticks_reg[0]_i_2_n_0 ),
        .CO({\ticks_reg[4]_i_1_n_0 ,\ticks_reg[4]_i_1_n_1 ,\ticks_reg[4]_i_1_n_2 ,\ticks_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[4]_i_1_n_4 ,\ticks_reg[4]_i_1_n_5 ,\ticks_reg[4]_i_1_n_6 ,\ticks_reg[4]_i_1_n_7 }),
        .S(ticks_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[4]_i_1_n_6 ),
        .Q(ticks_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[4]_i_1_n_5 ),
        .Q(ticks_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[4]_i_1_n_4 ),
        .Q(ticks_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[8]_i_1_n_7 ),
        .Q(ticks_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[8]_i_1 
       (.CI(\ticks_reg[4]_i_1_n_0 ),
        .CO({\ticks_reg[8]_i_1_n_0 ,\ticks_reg[8]_i_1_n_1 ,\ticks_reg[8]_i_1_n_2 ,\ticks_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[8]_i_1_n_4 ,\ticks_reg[8]_i_1_n_5 ,\ticks_reg[8]_i_1_n_6 ,\ticks_reg[8]_i_1_n_7 }),
        .S(ticks_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[9] 
       (.C(clk),
        .CE(\ticks[0]_i_1_n_0 ),
        .D(\ticks_reg[8]_i_1_n_6 ),
        .Q(ticks_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    trunc_i_1
       (.I0(trunc_i_2_n_0),
        .I1(out),
        .I2(clear),
        .O(trunc_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A800000)) 
    trunc_i_2
       (.I0(s0_stb),
        .I1(s0_href),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(c0_afull),
        .I5(trunc_reg_n_0),
        .O(trunc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trunc_reg
       (.C(clk),
        .CE(1'b1),
        .D(trunc_i_1_n_0),
        .Q(trunc_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    vsync_d_i_1
       (.I0(s0_vsync),
        .I1(s0_stb),
        .I2(out),
        .I3(vsync_d),
        .O(vsync_q_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \vsync_h_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(vsync_m[1]),
        .Q(\vsync_h_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vsync_h_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\vsync_h_reg_n_0_[0] ),
        .Q(p_0_in_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vsync_m_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam_vsync),
        .Q(vsync_m[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vsync_m_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(vsync_m[0]),
        .Q(vsync_m[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_q_reg
       (.C(clk),
        .CE(stb0__0),
        .D(p_0_in_0),
        .Q(s0_vsync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_qq_i_1
       (.I0(s0_vsync),
        .I1(s0_stb),
        .I2(vsync_qq),
        .O(vsync_qq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_qq_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_qq_i_1_n_0),
        .Q(vsync_qq),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wp[0]_i_1 
       (.I0(c0_wr),
        .I1(Q),
        .O(do_wr));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    wr_sof_i_1
       (.I0(out),
        .I1(s0_stb),
        .I2(vsync_d),
        .I3(s0_vsync),
        .O(\en_sync_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \yr[-1111111104]__0_i_4 
       (.I0(vsync_d),
        .I1(s0_vsync),
        .I2(out),
        .I3(s0_stb),
        .O(vsync_d_reg));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \yr[-1111111104]_i_2 
       (.I0(s0_stb),
        .I1(out),
        .O(href_d));
endmodule

(* ORIG_REF_NAME = "cam_capture" *) 
module system_cam_input_0_0_cam_capture_2
   (s1_stb,
    s1_vsync,
    s1_href,
    frame_led1,
    c1_wr,
    S,
    Q,
    \start_us_reg[19]_0 ,
    \start_us_reg[15]_0 ,
    \start_us_reg[11]_0 ,
    \start_us_reg[7]_0 ,
    \start_us_reg[3]_0 ,
    do_wr,
    vsync_d_reg,
    stb_reg_0,
    href_d,
    second,
    SR,
    \en_sync_reg[2] ,
    stb_reg_1,
    stb_reg_2,
    \d_q_reg[7]_0 ,
    \us1_seen_reg[11] ,
    \start_us_reg[23]_0 ,
    \start_us_reg[31]_0 ,
    href_q_reg_0,
    vsync_q_reg_0,
    \fifo_din_reg[7]_0 ,
    cam2_d,
    clk,
    \state_reg[0]_0 ,
    \gl_phase_reg[23] ,
    out,
    \wp_reg[12] ,
    vsync_d,
    c1_afull,
    \px_reg[1] ,
    href_d_reg,
    tick,
    \gl_seq_reg[0] ,
    cam2_pclk,
    cam2_vsync,
    cam2_href,
    D,
    \h_tof_mm_reg[15]_0 ,
    \h_tof_seq_reg[7]_0 ,
    \h_tof_us_reg[31]_0 );
  output s1_stb;
  output s1_vsync;
  output s1_href;
  output frame_led1;
  output c1_wr;
  output [3:0]S;
  output [31:0]Q;
  output [3:0]\start_us_reg[19]_0 ;
  output [3:0]\start_us_reg[15]_0 ;
  output [3:0]\start_us_reg[11]_0 ;
  output [3:0]\start_us_reg[7]_0 ;
  output [3:0]\start_us_reg[3]_0 ;
  output do_wr;
  output vsync_d_reg;
  output stb_reg_0;
  output href_d;
  output second;
  output [0:0]SR;
  output \en_sync_reg[2] ;
  output stb_reg_1;
  output stb_reg_2;
  output [7:0]\d_q_reg[7]_0 ;
  output [3:0]\us1_seen_reg[11] ;
  output [3:0]\start_us_reg[23]_0 ;
  output [2:0]\start_us_reg[31]_0 ;
  output href_q_reg_0;
  output vsync_q_reg_0;
  output [7:0]\fifo_din_reg[7]_0 ;
  input [7:0]cam2_d;
  input clk;
  input \state_reg[0]_0 ;
  input [23:0]\gl_phase_reg[23] ;
  input [0:0]out;
  input [0:0]\wp_reg[12] ;
  input vsync_d;
  input c1_afull;
  input \px_reg[1] ;
  input href_d_reg;
  input tick;
  input [31:0]\gl_seq_reg[0] ;
  input cam2_pclk;
  input cam2_vsync;
  input cam2_href;
  input [31:0]D;
  input [15:0]\h_tof_mm_reg[15]_0 ;
  input [7:0]\h_tof_seq_reg[7]_0 ;
  input [31:0]\h_tof_us_reg[31]_0 ;

  wire [31:0]D;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire c1_afull;
  wire c1_wr;
  wire [7:0]cam2_d;
  wire cam2_href;
  wire cam2_pclk;
  wire cam2_vsync;
  wire clk;
  wire \d_h0_reg_n_0_[0] ;
  wire \d_h0_reg_n_0_[1] ;
  wire \d_h0_reg_n_0_[2] ;
  wire \d_h0_reg_n_0_[3] ;
  wire \d_h0_reg_n_0_[4] ;
  wire \d_h0_reg_n_0_[5] ;
  wire \d_h0_reg_n_0_[6] ;
  wire \d_h0_reg_n_0_[7] ;
  wire \d_h1_reg_n_0_[0] ;
  wire \d_h1_reg_n_0_[1] ;
  wire \d_h1_reg_n_0_[2] ;
  wire \d_h1_reg_n_0_[3] ;
  wire \d_h1_reg_n_0_[4] ;
  wire \d_h1_reg_n_0_[5] ;
  wire \d_h1_reg_n_0_[6] ;
  wire \d_h1_reg_n_0_[7] ;
  (* async_reg = "true" *) wire [7:0]d_m0;
  (* async_reg = "true" *) wire [7:0]d_m1;
  wire [7:0]\d_q_reg[7]_0 ;
  wire do_wr;
  wire \en_sync_reg[2] ;
  wire \fifo_din[0]_i_10__0_n_0 ;
  wire \fifo_din[0]_i_11__0_n_0 ;
  wire \fifo_din[0]_i_12__0_n_0 ;
  wire \fifo_din[0]_i_1__0_n_0 ;
  wire \fifo_din[0]_i_2__0_n_0 ;
  wire \fifo_din[0]_i_4__0_n_0 ;
  wire \fifo_din[0]_i_5_n_0 ;
  wire \fifo_din[0]_i_6__0_n_0 ;
  wire \fifo_din[0]_i_7__0_n_0 ;
  wire \fifo_din[0]_i_8__0_n_0 ;
  wire \fifo_din[0]_i_9__0_n_0 ;
  wire \fifo_din[1]_i_10__0_n_0 ;
  wire \fifo_din[1]_i_11__0_n_0 ;
  wire \fifo_din[1]_i_12__0_n_0 ;
  wire \fifo_din[1]_i_1__0_n_0 ;
  wire \fifo_din[1]_i_2__0_n_0 ;
  wire \fifo_din[1]_i_4_n_0 ;
  wire \fifo_din[1]_i_5__0_n_0 ;
  wire \fifo_din[1]_i_6__0_n_0 ;
  wire \fifo_din[1]_i_7__0_n_0 ;
  wire \fifo_din[1]_i_8__0_n_0 ;
  wire \fifo_din[1]_i_9__0_n_0 ;
  wire \fifo_din[2]_i_10_n_0 ;
  wire \fifo_din[2]_i_11__0_n_0 ;
  wire \fifo_din[2]_i_12__0_n_0 ;
  wire \fifo_din[2]_i_13__0_n_0 ;
  wire \fifo_din[2]_i_1__0_n_0 ;
  wire \fifo_din[2]_i_2__0_n_0 ;
  wire \fifo_din[2]_i_3_n_0 ;
  wire \fifo_din[2]_i_4_n_0 ;
  wire \fifo_din[2]_i_5_n_0 ;
  wire \fifo_din[2]_i_6_n_0 ;
  wire \fifo_din[2]_i_7__0_n_0 ;
  wire \fifo_din[2]_i_8__0_n_0 ;
  wire \fifo_din[2]_i_9__0_n_0 ;
  wire \fifo_din[3]_i_10__0_n_0 ;
  wire \fifo_din[3]_i_11__0_n_0 ;
  wire \fifo_din[3]_i_12__0_n_0 ;
  wire \fifo_din[3]_i_1__0_n_0 ;
  wire \fifo_din[3]_i_2__0_n_0 ;
  wire \fifo_din[3]_i_4__0_n_0 ;
  wire \fifo_din[3]_i_5_n_0 ;
  wire \fifo_din[3]_i_6__0_n_0 ;
  wire \fifo_din[3]_i_7__0_n_0 ;
  wire \fifo_din[3]_i_8__0_n_0 ;
  wire \fifo_din[3]_i_9__0_n_0 ;
  wire \fifo_din[4]_i_10__0_n_0 ;
  wire \fifo_din[4]_i_11__0_n_0 ;
  wire \fifo_din[4]_i_12__0_n_0 ;
  wire \fifo_din[4]_i_1__0_n_0 ;
  wire \fifo_din[4]_i_2__0_n_0 ;
  wire \fifo_din[4]_i_3__0_n_0 ;
  wire \fifo_din[4]_i_5__0_n_0 ;
  wire \fifo_din[4]_i_6__0_n_0 ;
  wire \fifo_din[4]_i_7__0_n_0 ;
  wire \fifo_din[4]_i_8__0_n_0 ;
  wire \fifo_din[4]_i_9__0_n_0 ;
  wire \fifo_din[5]_i_10__0_n_0 ;
  wire \fifo_din[5]_i_11__0_n_0 ;
  wire \fifo_din[5]_i_12__0_n_0 ;
  wire \fifo_din[5]_i_1__0_n_0 ;
  wire \fifo_din[5]_i_2__0_n_0 ;
  wire \fifo_din[5]_i_3__0_n_0 ;
  wire \fifo_din[5]_i_5__0_n_0 ;
  wire \fifo_din[5]_i_6__0_n_0 ;
  wire \fifo_din[5]_i_7__0_n_0 ;
  wire \fifo_din[5]_i_8__0_n_0 ;
  wire \fifo_din[5]_i_9__0_n_0 ;
  wire \fifo_din[6]_i_10__0_n_0 ;
  wire \fifo_din[6]_i_11__0_n_0 ;
  wire \fifo_din[6]_i_12__0_n_0 ;
  wire \fifo_din[6]_i_1__0_n_0 ;
  wire \fifo_din[6]_i_2__0_n_0 ;
  wire \fifo_din[6]_i_3__0_n_0 ;
  wire \fifo_din[6]_i_5_n_0 ;
  wire \fifo_din[6]_i_6__0_n_0 ;
  wire \fifo_din[6]_i_7__0_n_0 ;
  wire \fifo_din[6]_i_8__0_n_0 ;
  wire \fifo_din[6]_i_9__0_n_0 ;
  wire \fifo_din[7]_i_10__0_n_0 ;
  wire \fifo_din[7]_i_11__0_n_0 ;
  wire \fifo_din[7]_i_12__0_n_0 ;
  wire \fifo_din[7]_i_13__0_n_0 ;
  wire \fifo_din[7]_i_14__0_n_0 ;
  wire \fifo_din[7]_i_15__0_n_0 ;
  wire \fifo_din[7]_i_1__0_n_0 ;
  wire \fifo_din[7]_i_2__0_n_0 ;
  wire \fifo_din[7]_i_3__0_n_0 ;
  wire \fifo_din[7]_i_4__0_n_0 ;
  wire \fifo_din[7]_i_5__0_n_0 ;
  wire \fifo_din[7]_i_7__0_n_0 ;
  wire \fifo_din[7]_i_8_n_0 ;
  wire \fifo_din[7]_i_9__0_n_0 ;
  wire \fifo_din_reg[0]_i_3_n_0 ;
  wire \fifo_din_reg[1]_i_3__0_n_0 ;
  wire \fifo_din_reg[3]_i_3_n_0 ;
  wire \fifo_din_reg[4]_i_4_n_0 ;
  wire \fifo_din_reg[5]_i_4__0_n_0 ;
  wire \fifo_din_reg[6]_i_4_n_0 ;
  wire [7:0]\fifo_din_reg[7]_0 ;
  wire \fifo_din_reg[7]_i_6_n_0 ;
  wire fifo_wr_en_i_1__0_n_0;
  wire frame_led1;
  wire \frame_no[2]_i_2_n_0 ;
  wire [15:0]frame_no_reg;
  wire \frame_no_reg[12]_i_1__0_n_1 ;
  wire \frame_no_reg[12]_i_1__0_n_2 ;
  wire \frame_no_reg[12]_i_1__0_n_3 ;
  wire \frame_no_reg[12]_i_1__0_n_4 ;
  wire \frame_no_reg[12]_i_1__0_n_5 ;
  wire \frame_no_reg[12]_i_1__0_n_6 ;
  wire \frame_no_reg[12]_i_1__0_n_7 ;
  wire \frame_no_reg[2]_i_1_n_0 ;
  wire \frame_no_reg[2]_i_1_n_1 ;
  wire \frame_no_reg[2]_i_1_n_2 ;
  wire \frame_no_reg[2]_i_1_n_3 ;
  wire \frame_no_reg[2]_i_1_n_4 ;
  wire \frame_no_reg[2]_i_1_n_5 ;
  wire \frame_no_reg[2]_i_1_n_6 ;
  wire \frame_no_reg[2]_i_1_n_7 ;
  wire \frame_no_reg[4]_i_1__0_n_0 ;
  wire \frame_no_reg[4]_i_1__0_n_1 ;
  wire \frame_no_reg[4]_i_1__0_n_2 ;
  wire \frame_no_reg[4]_i_1__0_n_3 ;
  wire \frame_no_reg[4]_i_1__0_n_4 ;
  wire \frame_no_reg[4]_i_1__0_n_5 ;
  wire \frame_no_reg[4]_i_1__0_n_6 ;
  wire \frame_no_reg[4]_i_1__0_n_7 ;
  wire \frame_no_reg[8]_i_1__0_n_0 ;
  wire \frame_no_reg[8]_i_1__0_n_1 ;
  wire \frame_no_reg[8]_i_1__0_n_2 ;
  wire \frame_no_reg[8]_i_1__0_n_3 ;
  wire \frame_no_reg[8]_i_1__0_n_4 ;
  wire \frame_no_reg[8]_i_1__0_n_5 ;
  wire \frame_no_reg[8]_i_1__0_n_6 ;
  wire \frame_no_reg[8]_i_1__0_n_7 ;
  wire [23:0]\gl_phase_reg[23] ;
  wire [31:0]\gl_seq_reg[0] ;
  wire [15:0]\h_tof_mm_reg[15]_0 ;
  wire \h_tof_mm_reg_n_0_[0] ;
  wire \h_tof_mm_reg_n_0_[10] ;
  wire \h_tof_mm_reg_n_0_[11] ;
  wire \h_tof_mm_reg_n_0_[12] ;
  wire \h_tof_mm_reg_n_0_[13] ;
  wire \h_tof_mm_reg_n_0_[14] ;
  wire \h_tof_mm_reg_n_0_[15] ;
  wire \h_tof_mm_reg_n_0_[1] ;
  wire \h_tof_mm_reg_n_0_[2] ;
  wire \h_tof_mm_reg_n_0_[3] ;
  wire \h_tof_mm_reg_n_0_[4] ;
  wire \h_tof_mm_reg_n_0_[5] ;
  wire \h_tof_mm_reg_n_0_[6] ;
  wire \h_tof_mm_reg_n_0_[7] ;
  wire \h_tof_mm_reg_n_0_[8] ;
  wire \h_tof_mm_reg_n_0_[9] ;
  wire [7:0]\h_tof_seq_reg[7]_0 ;
  wire \h_tof_seq_reg_n_0_[0] ;
  wire \h_tof_seq_reg_n_0_[1] ;
  wire \h_tof_seq_reg_n_0_[2] ;
  wire \h_tof_seq_reg_n_0_[3] ;
  wire \h_tof_seq_reg_n_0_[4] ;
  wire \h_tof_seq_reg_n_0_[5] ;
  wire \h_tof_seq_reg_n_0_[6] ;
  wire \h_tof_seq_reg_n_0_[7] ;
  wire [31:0]\h_tof_us_reg[31]_0 ;
  wire \h_tof_us_reg_n_0_[0] ;
  wire \h_tof_us_reg_n_0_[10] ;
  wire \h_tof_us_reg_n_0_[11] ;
  wire \h_tof_us_reg_n_0_[12] ;
  wire \h_tof_us_reg_n_0_[13] ;
  wire \h_tof_us_reg_n_0_[14] ;
  wire \h_tof_us_reg_n_0_[15] ;
  wire \h_tof_us_reg_n_0_[16] ;
  wire \h_tof_us_reg_n_0_[17] ;
  wire \h_tof_us_reg_n_0_[18] ;
  wire \h_tof_us_reg_n_0_[19] ;
  wire \h_tof_us_reg_n_0_[1] ;
  wire \h_tof_us_reg_n_0_[20] ;
  wire \h_tof_us_reg_n_0_[21] ;
  wire \h_tof_us_reg_n_0_[22] ;
  wire \h_tof_us_reg_n_0_[23] ;
  wire \h_tof_us_reg_n_0_[24] ;
  wire \h_tof_us_reg_n_0_[25] ;
  wire \h_tof_us_reg_n_0_[26] ;
  wire \h_tof_us_reg_n_0_[27] ;
  wire \h_tof_us_reg_n_0_[28] ;
  wire \h_tof_us_reg_n_0_[29] ;
  wire \h_tof_us_reg_n_0_[2] ;
  wire \h_tof_us_reg_n_0_[30] ;
  wire \h_tof_us_reg_n_0_[31] ;
  wire \h_tof_us_reg_n_0_[3] ;
  wire \h_tof_us_reg_n_0_[4] ;
  wire \h_tof_us_reg_n_0_[5] ;
  wire \h_tof_us_reg_n_0_[6] ;
  wire \h_tof_us_reg_n_0_[7] ;
  wire \h_tof_us_reg_n_0_[8] ;
  wire \h_tof_us_reg_n_0_[9] ;
  wire href_d;
  wire href_d_reg;
  wire \href_h_reg_n_0_[0] ;
  wire \href_h_reg_n_0_[1] ;
  (* async_reg = "true" *) wire [1:0]href_m;
  wire href_q_reg_0;
  wire href_qq_i_1__0_n_0;
  wire href_qq_reg_n_0;
  wire \idx[0]_i_1__0_n_0 ;
  wire \idx[2]_i_1__0_n_0 ;
  wire \idx[4]_i_1__0_n_0 ;
  wire [4:0]idx_reg;
  wire \last_bpl[15]_i_1__0_n_0 ;
  wire \last_bpl_reg_n_0_[0] ;
  wire \last_bpl_reg_n_0_[10] ;
  wire \last_bpl_reg_n_0_[11] ;
  wire \last_bpl_reg_n_0_[12] ;
  wire \last_bpl_reg_n_0_[13] ;
  wire \last_bpl_reg_n_0_[14] ;
  wire \last_bpl_reg_n_0_[15] ;
  wire \last_bpl_reg_n_0_[1] ;
  wire \last_bpl_reg_n_0_[2] ;
  wire \last_bpl_reg_n_0_[3] ;
  wire \last_bpl_reg_n_0_[4] ;
  wire \last_bpl_reg_n_0_[5] ;
  wire \last_bpl_reg_n_0_[6] ;
  wire \last_bpl_reg_n_0_[7] ;
  wire \last_bpl_reg_n_0_[8] ;
  wire \last_bpl_reg_n_0_[9] ;
  wire \line_bytes[0]_i_1__0_n_0 ;
  wire \line_bytes[0]_i_3__0_n_0 ;
  wire [15:0]line_bytes_reg;
  wire \line_bytes_reg[0]_i_2__0_n_0 ;
  wire \line_bytes_reg[0]_i_2__0_n_1 ;
  wire \line_bytes_reg[0]_i_2__0_n_2 ;
  wire \line_bytes_reg[0]_i_2__0_n_3 ;
  wire \line_bytes_reg[0]_i_2__0_n_4 ;
  wire \line_bytes_reg[0]_i_2__0_n_5 ;
  wire \line_bytes_reg[0]_i_2__0_n_6 ;
  wire \line_bytes_reg[0]_i_2__0_n_7 ;
  wire \line_bytes_reg[12]_i_1__0_n_1 ;
  wire \line_bytes_reg[12]_i_1__0_n_2 ;
  wire \line_bytes_reg[12]_i_1__0_n_3 ;
  wire \line_bytes_reg[12]_i_1__0_n_4 ;
  wire \line_bytes_reg[12]_i_1__0_n_5 ;
  wire \line_bytes_reg[12]_i_1__0_n_6 ;
  wire \line_bytes_reg[12]_i_1__0_n_7 ;
  wire \line_bytes_reg[4]_i_1__0_n_0 ;
  wire \line_bytes_reg[4]_i_1__0_n_1 ;
  wire \line_bytes_reg[4]_i_1__0_n_2 ;
  wire \line_bytes_reg[4]_i_1__0_n_3 ;
  wire \line_bytes_reg[4]_i_1__0_n_4 ;
  wire \line_bytes_reg[4]_i_1__0_n_5 ;
  wire \line_bytes_reg[4]_i_1__0_n_6 ;
  wire \line_bytes_reg[4]_i_1__0_n_7 ;
  wire \line_bytes_reg[8]_i_1__0_n_0 ;
  wire \line_bytes_reg[8]_i_1__0_n_1 ;
  wire \line_bytes_reg[8]_i_1__0_n_2 ;
  wire \line_bytes_reg[8]_i_1__0_n_3 ;
  wire \line_bytes_reg[8]_i_1__0_n_4 ;
  wire \line_bytes_reg[8]_i_1__0_n_5 ;
  wire \line_bytes_reg[8]_i_1__0_n_6 ;
  wire \line_bytes_reg[8]_i_1__0_n_7 ;
  wire \lines[0]_i_2__0_n_0 ;
  wire [15:0]lines_reg;
  wire \lines_reg[0]_i_1__0_n_0 ;
  wire \lines_reg[0]_i_1__0_n_1 ;
  wire \lines_reg[0]_i_1__0_n_2 ;
  wire \lines_reg[0]_i_1__0_n_3 ;
  wire \lines_reg[0]_i_1__0_n_4 ;
  wire \lines_reg[0]_i_1__0_n_5 ;
  wire \lines_reg[0]_i_1__0_n_6 ;
  wire \lines_reg[0]_i_1__0_n_7 ;
  wire \lines_reg[12]_i_1__0_n_1 ;
  wire \lines_reg[12]_i_1__0_n_2 ;
  wire \lines_reg[12]_i_1__0_n_3 ;
  wire \lines_reg[12]_i_1__0_n_4 ;
  wire \lines_reg[12]_i_1__0_n_5 ;
  wire \lines_reg[12]_i_1__0_n_6 ;
  wire \lines_reg[12]_i_1__0_n_7 ;
  wire \lines_reg[4]_i_1__0_n_0 ;
  wire \lines_reg[4]_i_1__0_n_1 ;
  wire \lines_reg[4]_i_1__0_n_2 ;
  wire \lines_reg[4]_i_1__0_n_3 ;
  wire \lines_reg[4]_i_1__0_n_4 ;
  wire \lines_reg[4]_i_1__0_n_5 ;
  wire \lines_reg[4]_i_1__0_n_6 ;
  wire \lines_reg[4]_i_1__0_n_7 ;
  wire \lines_reg[8]_i_1__0_n_0 ;
  wire \lines_reg[8]_i_1__0_n_1 ;
  wire \lines_reg[8]_i_1__0_n_2 ;
  wire \lines_reg[8]_i_1__0_n_3 ;
  wire \lines_reg[8]_i_1__0_n_4 ;
  wire \lines_reg[8]_i_1__0_n_5 ;
  wire \lines_reg[8]_i_1__0_n_6 ;
  wire \lines_reg[8]_i_1__0_n_7 ;
  wire [0:0]out;
  wire [4:1]p_0_in__3;
  wire \pclk_2khz_reg_n_0_[0] ;
  wire \pclk_2khz_reg_n_0_[10] ;
  wire \pclk_2khz_reg_n_0_[11] ;
  wire \pclk_2khz_reg_n_0_[12] ;
  wire \pclk_2khz_reg_n_0_[13] ;
  wire \pclk_2khz_reg_n_0_[14] ;
  wire \pclk_2khz_reg_n_0_[15] ;
  wire \pclk_2khz_reg_n_0_[1] ;
  wire \pclk_2khz_reg_n_0_[2] ;
  wire \pclk_2khz_reg_n_0_[3] ;
  wire \pclk_2khz_reg_n_0_[4] ;
  wire \pclk_2khz_reg_n_0_[5] ;
  wire \pclk_2khz_reg_n_0_[6] ;
  wire \pclk_2khz_reg_n_0_[7] ;
  wire \pclk_2khz_reg_n_0_[8] ;
  wire \pclk_2khz_reg_n_0_[9] ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_0 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_1 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_4 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_5 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_6 ;
  wire \pclk_cnt0_inferred__0/i__carry__0_n_7 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_0 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_1 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_4 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_5 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_6 ;
  wire \pclk_cnt0_inferred__0/i__carry__1_n_7 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_5 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_6 ;
  wire \pclk_cnt0_inferred__0/i__carry__2_n_7 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_0 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_1 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_2 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_3 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_4 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_5 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_6 ;
  wire \pclk_cnt0_inferred__0/i__carry_n_7 ;
  wire \pclk_cnt[0]_i_1_n_0 ;
  wire \pclk_cnt[15]_i_1__0_n_0 ;
  wire \pclk_cnt[15]_i_2__0_n_0 ;
  wire \pclk_cnt[15]_i_3__0_n_0 ;
  wire \pclk_cnt[15]_i_4__0_n_0 ;
  wire \pclk_cnt[15]_i_5__0_n_0 ;
  wire \pclk_cnt_reg_n_0_[0] ;
  wire \pclk_cnt_reg_n_0_[10] ;
  wire \pclk_cnt_reg_n_0_[11] ;
  wire \pclk_cnt_reg_n_0_[12] ;
  wire \pclk_cnt_reg_n_0_[13] ;
  wire \pclk_cnt_reg_n_0_[14] ;
  wire \pclk_cnt_reg_n_0_[15] ;
  wire \pclk_cnt_reg_n_0_[1] ;
  wire \pclk_cnt_reg_n_0_[2] ;
  wire \pclk_cnt_reg_n_0_[3] ;
  wire \pclk_cnt_reg_n_0_[4] ;
  wire \pclk_cnt_reg_n_0_[5] ;
  wire \pclk_cnt_reg_n_0_[6] ;
  wire \pclk_cnt_reg_n_0_[7] ;
  wire \pclk_cnt_reg_n_0_[8] ;
  wire \pclk_cnt_reg_n_0_[9] ;
  wire pclk_f_i_1__0_n_0;
  wire pclk_f_reg_n_0;
  wire \pclk_h_reg_n_0_[0] ;
  wire \pclk_h_reg_n_0_[1] ;
  (* async_reg = "true" *) wire [1:0]pclk_m;
  wire \prev_bpl_reg_n_0_[0] ;
  wire \prev_bpl_reg_n_0_[10] ;
  wire \prev_bpl_reg_n_0_[11] ;
  wire \prev_bpl_reg_n_0_[12] ;
  wire \prev_bpl_reg_n_0_[13] ;
  wire \prev_bpl_reg_n_0_[14] ;
  wire \prev_bpl_reg_n_0_[15] ;
  wire \prev_bpl_reg_n_0_[1] ;
  wire \prev_bpl_reg_n_0_[2] ;
  wire \prev_bpl_reg_n_0_[3] ;
  wire \prev_bpl_reg_n_0_[4] ;
  wire \prev_bpl_reg_n_0_[5] ;
  wire \prev_bpl_reg_n_0_[6] ;
  wire \prev_bpl_reg_n_0_[7] ;
  wire \prev_bpl_reg_n_0_[8] ;
  wire \prev_bpl_reg_n_0_[9] ;
  wire \prev_lines_reg_n_0_[0] ;
  wire \prev_lines_reg_n_0_[10] ;
  wire \prev_lines_reg_n_0_[11] ;
  wire \prev_lines_reg_n_0_[12] ;
  wire \prev_lines_reg_n_0_[13] ;
  wire \prev_lines_reg_n_0_[14] ;
  wire \prev_lines_reg_n_0_[15] ;
  wire \prev_lines_reg_n_0_[1] ;
  wire \prev_lines_reg_n_0_[2] ;
  wire \prev_lines_reg_n_0_[3] ;
  wire \prev_lines_reg_n_0_[4] ;
  wire \prev_lines_reg_n_0_[5] ;
  wire \prev_lines_reg_n_0_[6] ;
  wire \prev_lines_reg_n_0_[7] ;
  wire \prev_lines_reg_n_0_[8] ;
  wire \prev_lines_reg_n_0_[9] ;
  wire \prev_ticks_reg_n_0_[0] ;
  wire \prev_ticks_reg_n_0_[10] ;
  wire \prev_ticks_reg_n_0_[11] ;
  wire \prev_ticks_reg_n_0_[12] ;
  wire \prev_ticks_reg_n_0_[13] ;
  wire \prev_ticks_reg_n_0_[14] ;
  wire \prev_ticks_reg_n_0_[15] ;
  wire \prev_ticks_reg_n_0_[1] ;
  wire \prev_ticks_reg_n_0_[2] ;
  wire \prev_ticks_reg_n_0_[3] ;
  wire \prev_ticks_reg_n_0_[4] ;
  wire \prev_ticks_reg_n_0_[5] ;
  wire \prev_ticks_reg_n_0_[6] ;
  wire \prev_ticks_reg_n_0_[7] ;
  wire \prev_ticks_reg_n_0_[8] ;
  wire \prev_ticks_reg_n_0_[9] ;
  wire prev_trunc_reg_n_0;
  wire \px_reg[1] ;
  wire s1_href;
  wire s1_stb;
  wire s1_vsync;
  wire second;
  wire \start_us[31]_i_1_n_0 ;
  wire [3:0]\start_us_reg[11]_0 ;
  wire [3:0]\start_us_reg[15]_0 ;
  wire [3:0]\start_us_reg[19]_0 ;
  wire [3:0]\start_us_reg[23]_0 ;
  wire [2:0]\start_us_reg[31]_0 ;
  wire [3:0]\start_us_reg[3]_0 ;
  wire [3:0]\start_us_reg[7]_0 ;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire stb0_n_0;
  wire stb_reg_0;
  wire stb_reg_1;
  wire stb_reg_2;
  wire tick;
  wire \ticks[0]_i_1__0_n_0 ;
  wire \ticks[0]_i_3__0_n_0 ;
  wire \ticks[0]_i_4__0_n_0 ;
  wire \ticks[0]_i_5__0_n_0 ;
  wire \ticks[0]_i_6__0_n_0 ;
  wire \ticks[0]_i_7__0_n_0 ;
  wire [15:0]ticks_reg;
  wire \ticks_reg[0]_i_2__0_n_0 ;
  wire \ticks_reg[0]_i_2__0_n_1 ;
  wire \ticks_reg[0]_i_2__0_n_2 ;
  wire \ticks_reg[0]_i_2__0_n_3 ;
  wire \ticks_reg[0]_i_2__0_n_4 ;
  wire \ticks_reg[0]_i_2__0_n_5 ;
  wire \ticks_reg[0]_i_2__0_n_6 ;
  wire \ticks_reg[0]_i_2__0_n_7 ;
  wire \ticks_reg[12]_i_1__0_n_1 ;
  wire \ticks_reg[12]_i_1__0_n_2 ;
  wire \ticks_reg[12]_i_1__0_n_3 ;
  wire \ticks_reg[12]_i_1__0_n_4 ;
  wire \ticks_reg[12]_i_1__0_n_5 ;
  wire \ticks_reg[12]_i_1__0_n_6 ;
  wire \ticks_reg[12]_i_1__0_n_7 ;
  wire \ticks_reg[4]_i_1__0_n_0 ;
  wire \ticks_reg[4]_i_1__0_n_1 ;
  wire \ticks_reg[4]_i_1__0_n_2 ;
  wire \ticks_reg[4]_i_1__0_n_3 ;
  wire \ticks_reg[4]_i_1__0_n_4 ;
  wire \ticks_reg[4]_i_1__0_n_5 ;
  wire \ticks_reg[4]_i_1__0_n_6 ;
  wire \ticks_reg[4]_i_1__0_n_7 ;
  wire \ticks_reg[8]_i_1__0_n_0 ;
  wire \ticks_reg[8]_i_1__0_n_1 ;
  wire \ticks_reg[8]_i_1__0_n_2 ;
  wire \ticks_reg[8]_i_1__0_n_3 ;
  wire \ticks_reg[8]_i_1__0_n_4 ;
  wire \ticks_reg[8]_i_1__0_n_5 ;
  wire \ticks_reg[8]_i_1__0_n_6 ;
  wire \ticks_reg[8]_i_1__0_n_7 ;
  wire trunc_i_1__0_n_0;
  wire trunc_i_2__0_n_0;
  wire trunc_reg_n_0;
  wire [3:0]\us1_seen_reg[11] ;
  wire vsync_d;
  wire vsync_d_reg;
  wire \vsync_h_reg_n_0_[0] ;
  wire \vsync_h_reg_n_0_[1] ;
  (* async_reg = "true" *) wire [1:0]vsync_m;
  wire vsync_q_reg_0;
  wire vsync_qq_i_1__0_n_0;
  wire vsync_qq_reg_n_0;
  wire [0:0]\wp_reg[12] ;
  wire [3:3]\NLW_frame_no_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_bytes_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_lines_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:3]\NLW_ticks_reg[12]_i_1__0_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[0]),
        .Q(\d_h0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[1]),
        .Q(\d_h0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[2]),
        .Q(\d_h0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[3]),
        .Q(\d_h0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[4]),
        .Q(\d_h0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[5]),
        .Q(\d_h0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[6]),
        .Q(\d_h0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m1[7]),
        .Q(\d_h0_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[0] ),
        .Q(\d_h1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[1] ),
        .Q(\d_h1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[2] ),
        .Q(\d_h1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[3] ),
        .Q(\d_h1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[4] ),
        .Q(\d_h1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[5] ),
        .Q(\d_h1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[6] ),
        .Q(\d_h1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_h1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\d_h0_reg_n_0_[7] ),
        .Q(\d_h1_reg_n_0_[7] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[0]),
        .Q(d_m0[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[1]),
        .Q(d_m0[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[2]),
        .Q(d_m0[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[3]),
        .Q(d_m0[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[4]),
        .Q(d_m0[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[5]),
        .Q(d_m0[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[6]),
        .Q(d_m0[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_d[7]),
        .Q(d_m0[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[0]),
        .Q(d_m1[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[1]),
        .Q(d_m1[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[2]),
        .Q(d_m1[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[3]),
        .Q(d_m1[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[4]),
        .Q(d_m1[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[5]),
        .Q(d_m1[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[6]),
        .Q(d_m1[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_m1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d_m0[7]),
        .Q(d_m1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[0] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[0] ),
        .Q(\d_q_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[1] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[1] ),
        .Q(\d_q_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[2] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[2] ),
        .Q(\d_q_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[3] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[3] ),
        .Q(\d_q_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[4] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[4] ),
        .Q(\d_q_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[5] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[5] ),
        .Q(\d_q_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[6] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[6] ),
        .Q(\d_q_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_q_reg[7] 
       (.C(clk),
        .CE(stb0_n_0),
        .D(\d_h1_reg_n_0_[7] ),
        .Q(\d_q_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[0]_i_10__0 
       (.I0(\h_tof_mm_reg_n_0_[8] ),
        .I1(\prev_ticks_reg_n_0_[8] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[0] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[0] ),
        .O(\fifo_din[0]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \fifo_din[0]_i_11__0 
       (.I0(frame_no_reg[8]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_no_reg[0]),
        .O(\fifo_din[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hEF2F)) 
    \fifo_din[0]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[0] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[8] ),
        .O(\fifo_din[0]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDDDDDD0)) 
    \fifo_din[0]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\d_q_reg[7]_0 [0]),
        .I2(\fifo_din[0]_i_2__0_n_0 ),
        .I3(\fifo_din_reg[0]_i_3_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[0]_i_4__0_n_0 ),
        .O(\fifo_din[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    \fifo_din[0]_i_2__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[0]_i_5_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[0]_i_6__0_n_0 ),
        .O(\fifo_din[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hF400F500)) 
    \fifo_din[0]_i_4__0 
       (.I0(\fifo_din[0]_i_9__0_n_0 ),
        .I1(idx_reg[1]),
        .I2(idx_reg[2]),
        .I3(idx_reg[4]),
        .I4(\fifo_din[0]_i_10__0_n_0 ),
        .O(\fifo_din[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[0]_i_5 
       (.I0(\h_tof_us_reg_n_0_[8] ),
        .I1(Q[8]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[0] ),
        .I4(idx_reg[3]),
        .I5(Q[0]),
        .O(\fifo_din[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[0]_i_6__0 
       (.I0(\h_tof_us_reg_n_0_[24] ),
        .I1(Q[24]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[16] ),
        .I4(idx_reg[3]),
        .I5(Q[16]),
        .O(\fifo_din[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hBC8CFFFFBC8C0000)) 
    \fifo_din[0]_i_7__0 
       (.I0(\prev_bpl_reg_n_0_[8] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[0] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[0]_i_11__0_n_0 ),
        .O(\fifo_din[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hB833FFFFB8330000)) 
    \fifo_din[0]_i_8__0 
       (.I0(\pclk_2khz_reg_n_0_[8] ),
        .I1(idx_reg[0]),
        .I2(\pclk_2khz_reg_n_0_[0] ),
        .I3(idx_reg[3]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[0]_i_12__0_n_0 ),
        .O(\fifo_din[0]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00B80000)) 
    \fifo_din[0]_i_9__0 
       (.I0(\h_tof_seq_reg_n_0_[0] ),
        .I1(idx_reg[3]),
        .I2(prev_trunc_reg_n_0),
        .I3(idx_reg[0]),
        .I4(idx_reg[1]),
        .O(\fifo_din[0]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[1]_i_10__0 
       (.I0(\h_tof_mm_reg_n_0_[9] ),
        .I1(\prev_ticks_reg_n_0_[9] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[1] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[1] ),
        .O(\fifo_din[1]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \fifo_din[1]_i_11__0 
       (.I0(frame_no_reg[9]),
        .I1(idx_reg[0]),
        .I2(frame_no_reg[1]),
        .I3(idx_reg[3]),
        .O(\fifo_din[1]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \fifo_din[1]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[9] ),
        .I1(idx_reg[0]),
        .I2(\prev_lines_reg_n_0_[1] ),
        .I3(idx_reg[3]),
        .O(\fifo_din[1]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDDDDDD0)) 
    \fifo_din[1]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\d_q_reg[7]_0 [1]),
        .I2(\fifo_din[1]_i_2__0_n_0 ),
        .I3(\fifo_din_reg[1]_i_3__0_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[1]_i_4_n_0 ),
        .O(\fifo_din[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    \fifo_din[1]_i_2__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[1]_i_5__0_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[1]_i_6__0_n_0 ),
        .O(\fifo_din[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEF00AA00EF00EF00)) 
    \fifo_din[1]_i_4 
       (.I0(idx_reg[2]),
        .I1(\fifo_din[1]_i_9__0_n_0 ),
        .I2(\h_tof_seq_reg_n_0_[1] ),
        .I3(idx_reg[4]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[1]_i_10__0_n_0 ),
        .O(\fifo_din[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[1]_i_5__0 
       (.I0(\h_tof_us_reg_n_0_[9] ),
        .I1(Q[9]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[1] ),
        .I4(idx_reg[3]),
        .I5(Q[1]),
        .O(\fifo_din[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[1]_i_6__0 
       (.I0(\h_tof_us_reg_n_0_[25] ),
        .I1(Q[25]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[17] ),
        .I4(idx_reg[3]),
        .I5(Q[17]),
        .O(\fifo_din[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hBC8CFFFFBC8C0000)) 
    \fifo_din[1]_i_7__0 
       (.I0(\prev_bpl_reg_n_0_[9] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[1] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[1]_i_11__0_n_0 ),
        .O(\fifo_din[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h8C80FFFF8C800000)) 
    \fifo_din[1]_i_8__0 
       (.I0(\pclk_2khz_reg_n_0_[9] ),
        .I1(idx_reg[3]),
        .I2(idx_reg[0]),
        .I3(\pclk_2khz_reg_n_0_[1] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[1]_i_12__0_n_0 ),
        .O(\fifo_din[1]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \fifo_din[1]_i_9__0 
       (.I0(idx_reg[1]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .O(\fifo_din[1]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFDCCDDCC)) 
    \fifo_din[2]_i_10 
       (.I0(idx_reg[3]),
        .I1(idx_reg[2]),
        .I2(idx_reg[1]),
        .I3(idx_reg[0]),
        .I4(\prev_bpl_reg_n_0_[10] ),
        .O(\fifo_din[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7F3F7FF)) 
    \fifo_din[2]_i_11__0 
       (.I0(\prev_bpl_reg_n_0_[2] ),
        .I1(idx_reg[3]),
        .I2(idx_reg[0]),
        .I3(idx_reg[1]),
        .I4(frame_led1),
        .O(\fifo_din[2]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \fifo_din[2]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[2] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[10] ),
        .O(\fifo_din[2]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \fifo_din[2]_i_13__0 
       (.I0(\pclk_2khz_reg_n_0_[10] ),
        .I1(idx_reg[0]),
        .I2(\pclk_2khz_reg_n_0_[2] ),
        .I3(idx_reg[3]),
        .O(\fifo_din[2]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0D0D0DD)) 
    \fifo_din[2]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\d_q_reg[7]_0 [2]),
        .I2(\fifo_din[2]_i_2__0_n_0 ),
        .I3(\fifo_din[2]_i_3_n_0 ),
        .I4(\fifo_din[2]_i_4_n_0 ),
        .I5(\fifo_din[2]_i_5_n_0 ),
        .O(\fifo_din[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    \fifo_din[2]_i_2__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[2]_i_6_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[2]_i_7__0_n_0 ),
        .O(\fifo_din[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAF7FF00000000)) 
    \fifo_din[2]_i_3 
       (.I0(idx_reg[1]),
        .I1(idx_reg[3]),
        .I2(idx_reg[0]),
        .I3(\h_tof_seq_reg_n_0_[2] ),
        .I4(\fifo_din[2]_i_8__0_n_0 ),
        .I5(idx_reg[4]),
        .O(\fifo_din[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \fifo_din[2]_i_4 
       (.I0(idx_reg[4]),
        .I1(idx_reg[2]),
        .I2(\fifo_din[2]_i_9__0_n_0 ),
        .I3(\fifo_din[2]_i_10_n_0 ),
        .I4(\fifo_din[2]_i_11__0_n_0 ),
        .O(\fifo_din[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \fifo_din[2]_i_5 
       (.I0(idx_reg[2]),
        .I1(\fifo_din[2]_i_12__0_n_0 ),
        .I2(idx_reg[1]),
        .I3(\fifo_din[2]_i_13__0_n_0 ),
        .O(\fifo_din[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[2]_i_6 
       (.I0(\h_tof_us_reg_n_0_[10] ),
        .I1(Q[10]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[2] ),
        .I4(idx_reg[3]),
        .I5(Q[2]),
        .O(\fifo_din[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[2]_i_7__0 
       (.I0(\h_tof_us_reg_n_0_[26] ),
        .I1(Q[26]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[18] ),
        .I4(idx_reg[3]),
        .I5(Q[18]),
        .O(\fifo_din[2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[2]_i_8__0 
       (.I0(\h_tof_mm_reg_n_0_[10] ),
        .I1(\prev_ticks_reg_n_0_[10] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[2] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[2] ),
        .O(\fifo_din[2]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \fifo_din[2]_i_9__0 
       (.I0(idx_reg[4]),
        .I1(idx_reg[1]),
        .I2(idx_reg[0]),
        .I3(frame_no_reg[10]),
        .O(\fifo_din[2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[3]_i_10__0 
       (.I0(\h_tof_mm_reg_n_0_[11] ),
        .I1(\prev_ticks_reg_n_0_[11] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[3] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[3] ),
        .O(\fifo_din[3]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[3]_i_11__0 
       (.I0(frame_no_reg[11]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_no_reg[3]),
        .O(\fifo_din[3]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h1FDF)) 
    \fifo_din[3]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[3] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[11] ),
        .O(\fifo_din[3]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8888888F)) 
    \fifo_din[3]_i_1__0 
       (.I0(\d_q_reg[7]_0 [3]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\fifo_din[3]_i_2__0_n_0 ),
        .I3(\fifo_din_reg[3]_i_3_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[3]_i_4__0_n_0 ),
        .O(\fifo_din[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAFAAABAAA)) 
    \fifo_din[3]_i_2__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\fifo_din[3]_i_5_n_0 ),
        .I2(idx_reg[4]),
        .I3(idx_reg[2]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[3]_i_6__0_n_0 ),
        .O(\fifo_din[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F0000FF800000)) 
    \fifo_din[3]_i_4__0 
       (.I0(\h_tof_seq_reg_n_0_[3] ),
        .I1(\fifo_din[3]_i_9__0_n_0 ),
        .I2(idx_reg[1]),
        .I3(idx_reg[2]),
        .I4(idx_reg[4]),
        .I5(\fifo_din[3]_i_10__0_n_0 ),
        .O(\fifo_din[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[3]_i_5 
       (.I0(\h_tof_us_reg_n_0_[11] ),
        .I1(Q[11]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[3] ),
        .I4(idx_reg[3]),
        .I5(Q[3]),
        .O(\fifo_din[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[3]_i_6__0 
       (.I0(\h_tof_us_reg_n_0_[27] ),
        .I1(Q[27]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[19] ),
        .I4(idx_reg[3]),
        .I5(Q[19]),
        .O(\fifo_din[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[3]_i_7__0 
       (.I0(\prev_bpl_reg_n_0_[11] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[3] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[3]_i_11__0_n_0 ),
        .O(\fifo_din[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[3]_i_8__0 
       (.I0(\pclk_2khz_reg_n_0_[11] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[3] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[3]_i_12__0_n_0 ),
        .O(\fifo_din[3]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fifo_din[3]_i_9__0 
       (.I0(idx_reg[3]),
        .I1(idx_reg[0]),
        .O(\fifo_din[3]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[4]_i_10__0 
       (.I0(\h_tof_mm_reg_n_0_[12] ),
        .I1(\prev_ticks_reg_n_0_[12] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[4] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[4] ),
        .O(\fifo_din[4]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h4373)) 
    \fifo_din[4]_i_11__0 
       (.I0(frame_no_reg[12]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_no_reg[4]),
        .O(\fifo_din[4]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \fifo_din[4]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[12] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[4] ),
        .O(\fifo_din[4]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A8A8A888A)) 
    \fifo_din[4]_i_1__0 
       (.I0(\fifo_din[4]_i_2__0_n_0 ),
        .I1(\fifo_din[4]_i_3__0_n_0 ),
        .I2(\fifo_din[7]_i_5__0_n_0 ),
        .I3(\fifo_din_reg[4]_i_4_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[4]_i_5__0_n_0 ),
        .O(\fifo_din[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[4]_i_2__0 
       (.I0(\d_q_reg[7]_0 [4]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    \fifo_din[4]_i_3__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[4]_i_6__0_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[4]_i_7__0_n_0 ),
        .O(\fifo_din[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hDF00DFFF)) 
    \fifo_din[4]_i_5__0 
       (.I0(\h_tof_seq_reg_n_0_[4] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(idx_reg[1]),
        .I4(\fifo_din[4]_i_10__0_n_0 ),
        .O(\fifo_din[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[4]_i_6__0 
       (.I0(\h_tof_us_reg_n_0_[12] ),
        .I1(Q[12]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[4] ),
        .I4(idx_reg[3]),
        .I5(Q[4]),
        .O(\fifo_din[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[4]_i_7__0 
       (.I0(\h_tof_us_reg_n_0_[28] ),
        .I1(Q[28]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[20] ),
        .I4(idx_reg[3]),
        .I5(Q[20]),
        .O(\fifo_din[4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[4]_i_8__0 
       (.I0(\prev_bpl_reg_n_0_[12] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[4] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[4]_i_11__0_n_0 ),
        .O(\fifo_din[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[4]_i_9__0 
       (.I0(\pclk_2khz_reg_n_0_[12] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[4] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[4]_i_12__0_n_0 ),
        .O(\fifo_din[4]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[5]_i_10__0 
       (.I0(\h_tof_mm_reg_n_0_[13] ),
        .I1(\prev_ticks_reg_n_0_[13] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[5] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[5] ),
        .O(\fifo_din[5]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[5]_i_11__0 
       (.I0(frame_no_reg[13]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_no_reg[5]),
        .O(\fifo_din[5]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \fifo_din[5]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[13] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[5] ),
        .O(\fifo_din[5]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABBBBBBBABB)) 
    \fifo_din[5]_i_1__0 
       (.I0(\fifo_din[5]_i_2__0_n_0 ),
        .I1(\fifo_din[5]_i_3__0_n_0 ),
        .I2(\fifo_din[7]_i_5__0_n_0 ),
        .I3(\fifo_din_reg[5]_i_4__0_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[5]_i_5__0_n_0 ),
        .O(\fifo_din[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[5]_i_2__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\d_q_reg[7]_0 [5]),
        .O(\fifo_din[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAFAAABAAA)) 
    \fifo_din[5]_i_3__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\fifo_din[5]_i_6__0_n_0 ),
        .I2(idx_reg[4]),
        .I3(idx_reg[2]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[5]_i_7__0_n_0 ),
        .O(\fifo_din[5]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hF3FF5555)) 
    \fifo_din[5]_i_5__0 
       (.I0(\fifo_din[5]_i_10__0_n_0 ),
        .I1(\h_tof_seq_reg_n_0_[5] ),
        .I2(idx_reg[0]),
        .I3(idx_reg[3]),
        .I4(idx_reg[1]),
        .O(\fifo_din[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[5]_i_6__0 
       (.I0(\h_tof_us_reg_n_0_[13] ),
        .I1(Q[13]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[5] ),
        .I4(idx_reg[3]),
        .I5(Q[5]),
        .O(\fifo_din[5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[5]_i_7__0 
       (.I0(\h_tof_us_reg_n_0_[29] ),
        .I1(Q[29]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[21] ),
        .I4(idx_reg[3]),
        .I5(Q[21]),
        .O(\fifo_din[5]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[5]_i_8__0 
       (.I0(\prev_bpl_reg_n_0_[13] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[5] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[5]_i_11__0_n_0 ),
        .O(\fifo_din[5]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h4373FFFF43730000)) 
    \fifo_din[5]_i_9__0 
       (.I0(\pclk_2khz_reg_n_0_[13] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[5] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[5]_i_12__0_n_0 ),
        .O(\fifo_din[5]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[6]_i_10__0 
       (.I0(\h_tof_mm_reg_n_0_[14] ),
        .I1(\prev_ticks_reg_n_0_[14] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[6] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[6] ),
        .O(\fifo_din[6]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h4373)) 
    \fifo_din[6]_i_11__0 
       (.I0(frame_no_reg[14]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_no_reg[6]),
        .O(\fifo_din[6]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h4070)) 
    \fifo_din[6]_i_12__0 
       (.I0(\prev_lines_reg_n_0_[14] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[6] ),
        .O(\fifo_din[6]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A8A8A888A)) 
    \fifo_din[6]_i_1__0 
       (.I0(\fifo_din[6]_i_2__0_n_0 ),
        .I1(\fifo_din[6]_i_3__0_n_0 ),
        .I2(\fifo_din[7]_i_5__0_n_0 ),
        .I3(\fifo_din_reg[6]_i_4_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[6]_i_5_n_0 ),
        .O(\fifo_din[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[6]_i_2__0 
       (.I0(\d_q_reg[7]_0 [6]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAFAAABAAA)) 
    \fifo_din[6]_i_3__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\fifo_din[6]_i_6__0_n_0 ),
        .I2(idx_reg[4]),
        .I3(idx_reg[2]),
        .I4(idx_reg[1]),
        .I5(\fifo_din[6]_i_7__0_n_0 ),
        .O(\fifo_din[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hDF00DFFF)) 
    \fifo_din[6]_i_5 
       (.I0(\h_tof_seq_reg_n_0_[6] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(idx_reg[1]),
        .I4(\fifo_din[6]_i_10__0_n_0 ),
        .O(\fifo_din[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \fifo_din[6]_i_6__0 
       (.I0(\h_tof_us_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[14] ),
        .I4(idx_reg[3]),
        .I5(Q[14]),
        .O(\fifo_din[6]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \fifo_din[6]_i_7__0 
       (.I0(\h_tof_us_reg_n_0_[22] ),
        .I1(Q[22]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[30] ),
        .I4(idx_reg[3]),
        .I5(Q[30]),
        .O(\fifo_din[6]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[6]_i_8__0 
       (.I0(\prev_bpl_reg_n_0_[14] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[6] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[6]_i_11__0_n_0 ),
        .O(\fifo_din[6]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[6]_i_9__0 
       (.I0(\pclk_2khz_reg_n_0_[14] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[6] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[6]_i_12__0_n_0 ),
        .O(\fifo_din[6]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[7]_i_10__0 
       (.I0(\h_tof_us_reg_n_0_[31] ),
        .I1(Q[31]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[23] ),
        .I4(idx_reg[3]),
        .I5(Q[23]),
        .O(\fifo_din[7]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C7CFFFF4C7C0000)) 
    \fifo_din[7]_i_11__0 
       (.I0(\prev_bpl_reg_n_0_[15] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_bpl_reg_n_0_[7] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[7]_i_14__0_n_0 ),
        .O(\fifo_din[7]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h4F7FFFFF4F7F0000)) 
    \fifo_din[7]_i_12__0 
       (.I0(\pclk_2khz_reg_n_0_[15] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\pclk_2khz_reg_n_0_[7] ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[7]_i_15__0_n_0 ),
        .O(\fifo_din[7]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[7]_i_13__0 
       (.I0(\h_tof_mm_reg_n_0_[15] ),
        .I1(\prev_ticks_reg_n_0_[15] ),
        .I2(idx_reg[0]),
        .I3(\h_tof_mm_reg_n_0_[7] ),
        .I4(idx_reg[3]),
        .I5(\prev_ticks_reg_n_0_[7] ),
        .O(\fifo_din[7]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'h4C7C)) 
    \fifo_din[7]_i_14__0 
       (.I0(frame_no_reg[15]),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(frame_no_reg[7]),
        .O(\fifo_din[7]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \fifo_din[7]_i_15__0 
       (.I0(\prev_lines_reg_n_0_[15] ),
        .I1(idx_reg[0]),
        .I2(idx_reg[3]),
        .I3(\prev_lines_reg_n_0_[7] ),
        .O(\fifo_din[7]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002020000000200)) 
    \fifo_din[7]_i_1__0 
       (.I0(s1_stb),
        .I1(c1_afull),
        .I2(trunc_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(s1_href),
        .O(\fifo_din[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A8A8A888A)) 
    \fifo_din[7]_i_2__0 
       (.I0(\fifo_din[7]_i_3__0_n_0 ),
        .I1(\fifo_din[7]_i_4__0_n_0 ),
        .I2(\fifo_din[7]_i_5__0_n_0 ),
        .I3(\fifo_din_reg[7]_i_6_n_0 ),
        .I4(\fifo_din[7]_i_7__0_n_0 ),
        .I5(\fifo_din[7]_i_8_n_0 ),
        .O(\fifo_din[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_din[7]_i_3__0 
       (.I0(\d_q_reg[7]_0 [7]),
        .I1(\state_reg_n_0_[1] ),
        .O(\fifo_din[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    \fifo_din[7]_i_4__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx_reg[2]),
        .I2(idx_reg[4]),
        .I3(\fifo_din[7]_i_9__0_n_0 ),
        .I4(idx_reg[1]),
        .I5(\fifo_din[7]_i_10__0_n_0 ),
        .O(\fifo_din[7]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_din[7]_i_5__0 
       (.I0(idx_reg[2]),
        .I1(idx_reg[4]),
        .O(\fifo_din[7]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \fifo_din[7]_i_7__0 
       (.I0(idx_reg[4]),
        .I1(idx_reg[2]),
        .I2(idx_reg[1]),
        .O(\fifo_din[7]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hC5F5F5F5)) 
    \fifo_din[7]_i_8 
       (.I0(\fifo_din[7]_i_13__0_n_0 ),
        .I1(idx_reg[0]),
        .I2(idx_reg[1]),
        .I3(\h_tof_seq_reg_n_0_[7] ),
        .I4(idx_reg[3]),
        .O(\fifo_din[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_din[7]_i_9__0 
       (.I0(\h_tof_us_reg_n_0_[15] ),
        .I1(Q[15]),
        .I2(idx_reg[0]),
        .I3(\h_tof_us_reg_n_0_[7] ),
        .I4(idx_reg[3]),
        .I5(Q[7]),
        .O(\fifo_din[7]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[0] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[0]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [0]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[0]_i_3 
       (.I0(\fifo_din[0]_i_7__0_n_0 ),
        .I1(\fifo_din[0]_i_8__0_n_0 ),
        .O(\fifo_din_reg[0]_i_3_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[1] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[1]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [1]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[1]_i_3__0 
       (.I0(\fifo_din[1]_i_7__0_n_0 ),
        .I1(\fifo_din[1]_i_8__0_n_0 ),
        .O(\fifo_din_reg[1]_i_3__0_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[2] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[2]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[3] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[3]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [3]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[3]_i_3 
       (.I0(\fifo_din[3]_i_7__0_n_0 ),
        .I1(\fifo_din[3]_i_8__0_n_0 ),
        .O(\fifo_din_reg[3]_i_3_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[4] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[4]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [4]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[4]_i_4 
       (.I0(\fifo_din[4]_i_8__0_n_0 ),
        .I1(\fifo_din[4]_i_9__0_n_0 ),
        .O(\fifo_din_reg[4]_i_4_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[5] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[5]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [5]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[5]_i_4__0 
       (.I0(\fifo_din[5]_i_8__0_n_0 ),
        .I1(\fifo_din[5]_i_9__0_n_0 ),
        .O(\fifo_din_reg[5]_i_4__0_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[6] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[6]_i_1__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [6]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[6]_i_4 
       (.I0(\fifo_din[6]_i_8__0_n_0 ),
        .I1(\fifo_din[6]_i_9__0_n_0 ),
        .O(\fifo_din_reg[6]_i_4_n_0 ),
        .S(idx_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[7] 
       (.C(clk),
        .CE(\fifo_din[7]_i_1__0_n_0 ),
        .D(\fifo_din[7]_i_2__0_n_0 ),
        .Q(\fifo_din_reg[7]_0 [7]),
        .R(1'b0));
  MUXF7 \fifo_din_reg[7]_i_6 
       (.I0(\fifo_din[7]_i_11__0_n_0 ),
        .I1(\fifo_din[7]_i_12__0_n_0 ),
        .O(\fifo_din_reg[7]_i_6_n_0 ),
        .S(idx_reg[2]));
  LUT6 #(
    .INIT(64'h0002020000000200)) 
    fifo_wr_en_i_1__0
       (.I0(href_d),
        .I1(c1_afull),
        .I2(trunc_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(s1_href),
        .O(fifo_wr_en_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_wr_en_i_1__0_n_0),
        .Q(c1_wr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hA2AA)) 
    fill_i_2__0
       (.I0(out),
        .I1(s1_vsync),
        .I2(vsync_d),
        .I3(s1_stb),
        .O(\en_sync_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_no[2]_i_2 
       (.I0(frame_no_reg[0]),
        .O(\frame_no[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[2]_i_1_n_7 ),
        .Q(frame_no_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[8]_i_1__0_n_5 ),
        .Q(frame_no_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[8]_i_1__0_n_4 ),
        .Q(frame_no_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[12]_i_1__0_n_7 ),
        .Q(frame_no_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[12]_i_1__0 
       (.CI(\frame_no_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_frame_no_reg[12]_i_1__0_CO_UNCONNECTED [3],\frame_no_reg[12]_i_1__0_n_1 ,\frame_no_reg[12]_i_1__0_n_2 ,\frame_no_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[12]_i_1__0_n_4 ,\frame_no_reg[12]_i_1__0_n_5 ,\frame_no_reg[12]_i_1__0_n_6 ,\frame_no_reg[12]_i_1__0_n_7 }),
        .S(frame_no_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[12]_i_1__0_n_6 ),
        .Q(frame_no_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[12]_i_1__0_n_5 ),
        .Q(frame_no_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[12]_i_1__0_n_4 ),
        .Q(frame_no_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[2]_i_1_n_6 ),
        .Q(frame_no_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[2]_i_1_n_5 ),
        .Q(frame_led1),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\frame_no_reg[2]_i_1_n_0 ,\frame_no_reg[2]_i_1_n_1 ,\frame_no_reg[2]_i_1_n_2 ,\frame_no_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_no_reg[2]_i_1_n_4 ,\frame_no_reg[2]_i_1_n_5 ,\frame_no_reg[2]_i_1_n_6 ,\frame_no_reg[2]_i_1_n_7 }),
        .S({frame_no_reg[3],frame_led1,frame_no_reg[1],\frame_no[2]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[2]_i_1_n_4 ),
        .Q(frame_no_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[4]_i_1__0_n_7 ),
        .Q(frame_no_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[4]_i_1__0 
       (.CI(\frame_no_reg[2]_i_1_n_0 ),
        .CO({\frame_no_reg[4]_i_1__0_n_0 ,\frame_no_reg[4]_i_1__0_n_1 ,\frame_no_reg[4]_i_1__0_n_2 ,\frame_no_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[4]_i_1__0_n_4 ,\frame_no_reg[4]_i_1__0_n_5 ,\frame_no_reg[4]_i_1__0_n_6 ,\frame_no_reg[4]_i_1__0_n_7 }),
        .S(frame_no_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[4]_i_1__0_n_6 ),
        .Q(frame_no_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[4]_i_1__0_n_5 ),
        .Q(frame_no_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[4]_i_1__0_n_4 ),
        .Q(frame_no_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[8]_i_1__0_n_7 ),
        .Q(frame_no_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[8]_i_1__0 
       (.CI(\frame_no_reg[4]_i_1__0_n_0 ),
        .CO({\frame_no_reg[8]_i_1__0_n_0 ,\frame_no_reg[8]_i_1__0_n_1 ,\frame_no_reg[8]_i_1__0_n_2 ,\frame_no_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[8]_i_1__0_n_4 ,\frame_no_reg[8]_i_1__0_n_5 ,\frame_no_reg[8]_i_1__0_n_6 ,\frame_no_reg[8]_i_1__0_n_7 }),
        .S(frame_no_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\frame_no_reg[8]_i_1__0_n_6 ),
        .Q(frame_no_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\gl_phase_reg[23] [7]),
        .O(\start_us_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\gl_phase_reg[23] [6]),
        .O(\start_us_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\gl_phase_reg[23] [5]),
        .O(\start_us_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__0_i_4
       (.I0(Q[4]),
        .I1(\gl_phase_reg[23] [4]),
        .O(\start_us_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__1_i_1
       (.I0(Q[11]),
        .I1(\gl_phase_reg[23] [11]),
        .O(\start_us_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__1_i_2
       (.I0(Q[10]),
        .I1(\gl_phase_reg[23] [10]),
        .O(\start_us_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__1_i_3
       (.I0(Q[9]),
        .I1(\gl_phase_reg[23] [9]),
        .O(\start_us_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__1_i_4
       (.I0(Q[8]),
        .I1(\gl_phase_reg[23] [8]),
        .O(\start_us_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__2_i_1
       (.I0(Q[15]),
        .I1(\gl_phase_reg[23] [15]),
        .O(\start_us_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__2_i_2
       (.I0(Q[14]),
        .I1(\gl_phase_reg[23] [14]),
        .O(\start_us_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__2_i_3
       (.I0(Q[13]),
        .I1(\gl_phase_reg[23] [13]),
        .O(\start_us_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__2_i_4
       (.I0(Q[12]),
        .I1(\gl_phase_reg[23] [12]),
        .O(\start_us_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__3_i_1
       (.I0(Q[19]),
        .I1(\gl_phase_reg[23] [19]),
        .O(\start_us_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__3_i_2
       (.I0(Q[18]),
        .I1(\gl_phase_reg[23] [18]),
        .O(\start_us_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__3_i_3
       (.I0(Q[17]),
        .I1(\gl_phase_reg[23] [17]),
        .O(\start_us_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__3_i_4
       (.I0(Q[16]),
        .I1(\gl_phase_reg[23] [16]),
        .O(\start_us_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__4_i_1
       (.I0(Q[23]),
        .I1(\gl_phase_reg[23] [23]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__4_i_2
       (.I0(Q[22]),
        .I1(\gl_phase_reg[23] [22]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__4_i_3
       (.I0(Q[21]),
        .I1(\gl_phase_reg[23] [21]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry__4_i_4
       (.I0(Q[20]),
        .I1(\gl_phase_reg[23] [20]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry_i_1
       (.I0(Q[3]),
        .I1(\gl_phase_reg[23] [3]),
        .O(\start_us_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry_i_2
       (.I0(Q[2]),
        .I1(\gl_phase_reg[23] [2]),
        .O(\start_us_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry_i_3
       (.I0(Q[1]),
        .I1(\gl_phase_reg[23] [1]),
        .O(\start_us_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    gl_phase0_carry_i_4
       (.I0(Q[0]),
        .I1(\gl_phase_reg[23] [0]),
        .O(\start_us_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry__0_i_1
       (.I0(Q[23]),
        .I1(\gl_seq_reg[0] [23]),
        .I2(\gl_seq_reg[0] [21]),
        .I3(Q[21]),
        .I4(\gl_seq_reg[0] [22]),
        .I5(Q[22]),
        .O(\start_us_reg[23]_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry__0_i_2
       (.I0(\gl_seq_reg[0] [18]),
        .I1(Q[18]),
        .I2(\gl_seq_reg[0] [19]),
        .I3(Q[19]),
        .I4(Q[20]),
        .I5(\gl_seq_reg[0] [20]),
        .O(\start_us_reg[23]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry__0_i_3
       (.I0(\gl_seq_reg[0] [15]),
        .I1(Q[15]),
        .I2(\gl_seq_reg[0] [16]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(\gl_seq_reg[0] [17]),
        .O(\start_us_reg[23]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry__0_i_4
       (.I0(\gl_seq_reg[0] [12]),
        .I1(Q[12]),
        .I2(\gl_seq_reg[0] [13]),
        .I3(Q[13]),
        .I4(Q[14]),
        .I5(\gl_seq_reg[0] [14]),
        .O(\start_us_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    gl_seq0_carry__1_i_1
       (.I0(Q[31]),
        .I1(\gl_seq_reg[0] [31]),
        .I2(Q[30]),
        .I3(\gl_seq_reg[0] [30]),
        .O(\start_us_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry__1_i_2
       (.I0(\gl_seq_reg[0] [27]),
        .I1(Q[27]),
        .I2(\gl_seq_reg[0] [28]),
        .I3(Q[28]),
        .I4(Q[29]),
        .I5(\gl_seq_reg[0] [29]),
        .O(\start_us_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry__1_i_3
       (.I0(\gl_seq_reg[0] [26]),
        .I1(Q[26]),
        .I2(\gl_seq_reg[0] [24]),
        .I3(Q[24]),
        .I4(Q[25]),
        .I5(\gl_seq_reg[0] [25]),
        .O(\start_us_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry_i_1
       (.I0(\gl_seq_reg[0] [11]),
        .I1(Q[11]),
        .I2(\gl_seq_reg[0] [9]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\gl_seq_reg[0] [10]),
        .O(\us1_seen_reg[11] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry_i_2
       (.I0(\gl_seq_reg[0] [7]),
        .I1(Q[7]),
        .I2(\gl_seq_reg[0] [6]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\gl_seq_reg[0] [8]),
        .O(\us1_seen_reg[11] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry_i_3
       (.I0(\gl_seq_reg[0] [3]),
        .I1(Q[3]),
        .I2(\gl_seq_reg[0] [4]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\gl_seq_reg[0] [5]),
        .O(\us1_seen_reg[11] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    gl_seq0_carry_i_4
       (.I0(\gl_seq_reg[0] [0]),
        .I1(Q[0]),
        .I2(\gl_seq_reg[0] [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\gl_seq_reg[0] [2]),
        .O(\us1_seen_reg[11] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [0]),
        .Q(\h_tof_mm_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [10]),
        .Q(\h_tof_mm_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [11]),
        .Q(\h_tof_mm_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [12]),
        .Q(\h_tof_mm_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [13]),
        .Q(\h_tof_mm_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [14]),
        .Q(\h_tof_mm_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [15]),
        .Q(\h_tof_mm_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [1]),
        .Q(\h_tof_mm_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [2]),
        .Q(\h_tof_mm_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [3]),
        .Q(\h_tof_mm_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [4]),
        .Q(\h_tof_mm_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [5]),
        .Q(\h_tof_mm_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [6]),
        .Q(\h_tof_mm_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [7]),
        .Q(\h_tof_mm_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [8]),
        .Q(\h_tof_mm_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_mm_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_mm_reg[15]_0 [9]),
        .Q(\h_tof_mm_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [0]),
        .Q(\h_tof_seq_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [1]),
        .Q(\h_tof_seq_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [2]),
        .Q(\h_tof_seq_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [3]),
        .Q(\h_tof_seq_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [4]),
        .Q(\h_tof_seq_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [5]),
        .Q(\h_tof_seq_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [6]),
        .Q(\h_tof_seq_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_seq_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_seq_reg[7]_0 [7]),
        .Q(\h_tof_seq_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [0]),
        .Q(\h_tof_us_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [10]),
        .Q(\h_tof_us_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [11]),
        .Q(\h_tof_us_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [12]),
        .Q(\h_tof_us_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [13]),
        .Q(\h_tof_us_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [14]),
        .Q(\h_tof_us_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [15]),
        .Q(\h_tof_us_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[16] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [16]),
        .Q(\h_tof_us_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[17] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [17]),
        .Q(\h_tof_us_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[18] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [18]),
        .Q(\h_tof_us_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[19] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [19]),
        .Q(\h_tof_us_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [1]),
        .Q(\h_tof_us_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[20] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [20]),
        .Q(\h_tof_us_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[21] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [21]),
        .Q(\h_tof_us_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[22] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [22]),
        .Q(\h_tof_us_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[23] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [23]),
        .Q(\h_tof_us_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[24] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [24]),
        .Q(\h_tof_us_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[25] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [25]),
        .Q(\h_tof_us_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[26] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [26]),
        .Q(\h_tof_us_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[27] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [27]),
        .Q(\h_tof_us_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[28] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [28]),
        .Q(\h_tof_us_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[29] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [29]),
        .Q(\h_tof_us_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [2]),
        .Q(\h_tof_us_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[30] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [30]),
        .Q(\h_tof_us_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[31] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [31]),
        .Q(\h_tof_us_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [3]),
        .Q(\h_tof_us_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [4]),
        .Q(\h_tof_us_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [5]),
        .Q(\h_tof_us_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [6]),
        .Q(\h_tof_us_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [7]),
        .Q(\h_tof_us_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [8]),
        .Q(\h_tof_us_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_tof_us_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\h_tof_us_reg[31]_0 [9]),
        .Q(\h_tof_us_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    href_d_i_1__0
       (.I0(s1_href),
        .I1(out),
        .I2(s1_stb),
        .I3(href_d_reg),
        .O(href_q_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \href_h_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(href_m[1]),
        .Q(\href_h_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \href_h_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\href_h_reg_n_0_[0] ),
        .Q(\href_h_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \href_m_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_href),
        .Q(href_m[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \href_m_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(href_m[0]),
        .Q(href_m[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    href_q_reg
       (.C(clk),
        .CE(stb0_n_0),
        .D(\href_h_reg_n_0_[1] ),
        .Q(s1_href),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    href_qq_i_1__0
       (.I0(s1_href),
        .I1(s1_stb),
        .I2(href_qq_reg_n_0),
        .O(href_qq_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    href_qq_reg
       (.C(clk),
        .CE(1'b1),
        .D(href_qq_i_1__0_n_0),
        .Q(href_qq_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \idx[0]_i_1__0 
       (.I0(idx_reg[0]),
        .O(\idx[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx[1]_i_1__0 
       (.I0(idx_reg[1]),
        .I1(idx_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \idx[2]_i_1__0 
       (.I0(idx_reg[2]),
        .I1(idx_reg[0]),
        .I2(idx_reg[1]),
        .O(\idx[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \idx[3]_i_1__0 
       (.I0(idx_reg[3]),
        .I1(idx_reg[1]),
        .I2(idx_reg[0]),
        .I3(idx_reg[2]),
        .O(p_0_in__3[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \idx[4]_i_1__0 
       (.I0(s1_stb),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\idx[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \idx[4]_i_2__0 
       (.I0(idx_reg[4]),
        .I1(idx_reg[3]),
        .I2(idx_reg[2]),
        .I3(idx_reg[0]),
        .I4(idx_reg[1]),
        .O(p_0_in__3[4]));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk),
        .CE(\idx[4]_i_1__0_n_0 ),
        .D(\idx[0]_i_1__0_n_0 ),
        .Q(idx_reg[0]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk),
        .CE(\idx[4]_i_1__0_n_0 ),
        .D(p_0_in__3[1]),
        .Q(idx_reg[1]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(clk),
        .CE(\idx[4]_i_1__0_n_0 ),
        .D(\idx[2]_i_1__0_n_0 ),
        .Q(idx_reg[2]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[3] 
       (.C(clk),
        .CE(\idx[4]_i_1__0_n_0 ),
        .D(p_0_in__3[3]),
        .Q(idx_reg[3]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[4] 
       (.C(clk),
        .CE(\idx[4]_i_1__0_n_0 ),
        .D(p_0_in__3[4]),
        .Q(idx_reg[4]),
        .R(\start_us[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \last_bpl[15]_i_1__0 
       (.I0(href_qq_reg_n_0),
        .I1(s1_stb),
        .I2(s1_href),
        .O(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[0] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[0]),
        .Q(\last_bpl_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[10] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[10]),
        .Q(\last_bpl_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[11] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[11]),
        .Q(\last_bpl_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[12] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[12]),
        .Q(\last_bpl_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[13] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[13]),
        .Q(\last_bpl_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[14] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[14]),
        .Q(\last_bpl_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[15] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[15]),
        .Q(\last_bpl_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[1] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[1]),
        .Q(\last_bpl_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[2] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[2]),
        .Q(\last_bpl_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[3] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[3]),
        .Q(\last_bpl_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[4] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[4]),
        .Q(\last_bpl_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[5] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[5]),
        .Q(\last_bpl_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[6] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[6]),
        .Q(\last_bpl_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[7] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[7]),
        .Q(\last_bpl_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[8] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[8]),
        .Q(\last_bpl_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_bpl_reg[9] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(line_bytes_reg[9]),
        .Q(\last_bpl_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \line_bytes[0]_i_1__0 
       (.I0(s1_stb),
        .I1(s1_href),
        .O(\line_bytes[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \line_bytes[0]_i_3__0 
       (.I0(line_bytes_reg[0]),
        .O(\line_bytes[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[0] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[0]_i_2__0_n_7 ),
        .Q(line_bytes_reg[0]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\line_bytes_reg[0]_i_2__0_n_0 ,\line_bytes_reg[0]_i_2__0_n_1 ,\line_bytes_reg[0]_i_2__0_n_2 ,\line_bytes_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\line_bytes_reg[0]_i_2__0_n_4 ,\line_bytes_reg[0]_i_2__0_n_5 ,\line_bytes_reg[0]_i_2__0_n_6 ,\line_bytes_reg[0]_i_2__0_n_7 }),
        .S({line_bytes_reg[3:1],\line_bytes[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[10] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[8]_i_1__0_n_5 ),
        .Q(line_bytes_reg[10]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[11] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[8]_i_1__0_n_4 ),
        .Q(line_bytes_reg[11]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[12] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[12]_i_1__0_n_7 ),
        .Q(line_bytes_reg[12]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[12]_i_1__0 
       (.CI(\line_bytes_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_line_bytes_reg[12]_i_1__0_CO_UNCONNECTED [3],\line_bytes_reg[12]_i_1__0_n_1 ,\line_bytes_reg[12]_i_1__0_n_2 ,\line_bytes_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_bytes_reg[12]_i_1__0_n_4 ,\line_bytes_reg[12]_i_1__0_n_5 ,\line_bytes_reg[12]_i_1__0_n_6 ,\line_bytes_reg[12]_i_1__0_n_7 }),
        .S(line_bytes_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[13] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[12]_i_1__0_n_6 ),
        .Q(line_bytes_reg[13]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[14] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[12]_i_1__0_n_5 ),
        .Q(line_bytes_reg[14]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[15] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[12]_i_1__0_n_4 ),
        .Q(line_bytes_reg[15]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[1] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[0]_i_2__0_n_6 ),
        .Q(line_bytes_reg[1]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[2] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[0]_i_2__0_n_5 ),
        .Q(line_bytes_reg[2]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[3] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[0]_i_2__0_n_4 ),
        .Q(line_bytes_reg[3]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[4] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[4]_i_1__0_n_7 ),
        .Q(line_bytes_reg[4]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[4]_i_1__0 
       (.CI(\line_bytes_reg[0]_i_2__0_n_0 ),
        .CO({\line_bytes_reg[4]_i_1__0_n_0 ,\line_bytes_reg[4]_i_1__0_n_1 ,\line_bytes_reg[4]_i_1__0_n_2 ,\line_bytes_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_bytes_reg[4]_i_1__0_n_4 ,\line_bytes_reg[4]_i_1__0_n_5 ,\line_bytes_reg[4]_i_1__0_n_6 ,\line_bytes_reg[4]_i_1__0_n_7 }),
        .S(line_bytes_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[5] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[4]_i_1__0_n_6 ),
        .Q(line_bytes_reg[5]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[6] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[4]_i_1__0_n_5 ),
        .Q(line_bytes_reg[6]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[7] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[4]_i_1__0_n_4 ),
        .Q(line_bytes_reg[7]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[8] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[8]_i_1__0_n_7 ),
        .Q(line_bytes_reg[8]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_bytes_reg[8]_i_1__0 
       (.CI(\line_bytes_reg[4]_i_1__0_n_0 ),
        .CO({\line_bytes_reg[8]_i_1__0_n_0 ,\line_bytes_reg[8]_i_1__0_n_1 ,\line_bytes_reg[8]_i_1__0_n_2 ,\line_bytes_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_bytes_reg[8]_i_1__0_n_4 ,\line_bytes_reg[8]_i_1__0_n_5 ,\line_bytes_reg[8]_i_1__0_n_6 ,\line_bytes_reg[8]_i_1__0_n_7 }),
        .S(line_bytes_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \line_bytes_reg[9] 
       (.C(clk),
        .CE(\line_bytes[0]_i_1__0_n_0 ),
        .D(\line_bytes_reg[8]_i_1__0_n_6 ),
        .Q(line_bytes_reg[9]),
        .R(\last_bpl[15]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lines[0]_i_2__0 
       (.I0(lines_reg[0]),
        .O(\lines[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[0] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[0]_i_1__0_n_7 ),
        .Q(lines_reg[0]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\lines_reg[0]_i_1__0_n_0 ,\lines_reg[0]_i_1__0_n_1 ,\lines_reg[0]_i_1__0_n_2 ,\lines_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\lines_reg[0]_i_1__0_n_4 ,\lines_reg[0]_i_1__0_n_5 ,\lines_reg[0]_i_1__0_n_6 ,\lines_reg[0]_i_1__0_n_7 }),
        .S({lines_reg[3:1],\lines[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[10] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[8]_i_1__0_n_5 ),
        .Q(lines_reg[10]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[11] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[8]_i_1__0_n_4 ),
        .Q(lines_reg[11]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[12] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[12]_i_1__0_n_7 ),
        .Q(lines_reg[12]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[12]_i_1__0 
       (.CI(\lines_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_lines_reg[12]_i_1__0_CO_UNCONNECTED [3],\lines_reg[12]_i_1__0_n_1 ,\lines_reg[12]_i_1__0_n_2 ,\lines_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lines_reg[12]_i_1__0_n_4 ,\lines_reg[12]_i_1__0_n_5 ,\lines_reg[12]_i_1__0_n_6 ,\lines_reg[12]_i_1__0_n_7 }),
        .S(lines_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[13] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[12]_i_1__0_n_6 ),
        .Q(lines_reg[13]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[14] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[12]_i_1__0_n_5 ),
        .Q(lines_reg[14]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[15] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[12]_i_1__0_n_4 ),
        .Q(lines_reg[15]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[1] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[0]_i_1__0_n_6 ),
        .Q(lines_reg[1]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[2] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[0]_i_1__0_n_5 ),
        .Q(lines_reg[2]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[3] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[0]_i_1__0_n_4 ),
        .Q(lines_reg[3]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[4] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[4]_i_1__0_n_7 ),
        .Q(lines_reg[4]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[4]_i_1__0 
       (.CI(\lines_reg[0]_i_1__0_n_0 ),
        .CO({\lines_reg[4]_i_1__0_n_0 ,\lines_reg[4]_i_1__0_n_1 ,\lines_reg[4]_i_1__0_n_2 ,\lines_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lines_reg[4]_i_1__0_n_4 ,\lines_reg[4]_i_1__0_n_5 ,\lines_reg[4]_i_1__0_n_6 ,\lines_reg[4]_i_1__0_n_7 }),
        .S(lines_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[5] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[4]_i_1__0_n_6 ),
        .Q(lines_reg[5]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[6] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[4]_i_1__0_n_5 ),
        .Q(lines_reg[6]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[7] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[4]_i_1__0_n_4 ),
        .Q(lines_reg[7]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[8] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[8]_i_1__0_n_7 ),
        .Q(lines_reg[8]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lines_reg[8]_i_1__0 
       (.CI(\lines_reg[4]_i_1__0_n_0 ),
        .CO({\lines_reg[8]_i_1__0_n_0 ,\lines_reg[8]_i_1__0_n_1 ,\lines_reg[8]_i_1__0_n_2 ,\lines_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lines_reg[8]_i_1__0_n_4 ,\lines_reg[8]_i_1__0_n_5 ,\lines_reg[8]_i_1__0_n_6 ,\lines_reg[8]_i_1__0_n_7 }),
        .S(lines_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \lines_reg[9] 
       (.C(clk),
        .CE(\last_bpl[15]_i_1__0_n_0 ),
        .D(\lines_reg[8]_i_1__0_n_6 ),
        .Q(lines_reg[9]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[0] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[0] ),
        .Q(\pclk_2khz_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[10] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[10] ),
        .Q(\pclk_2khz_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[11] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[11] ),
        .Q(\pclk_2khz_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[12] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[12] ),
        .Q(\pclk_2khz_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[13] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[13] ),
        .Q(\pclk_2khz_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[14] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[14] ),
        .Q(\pclk_2khz_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[15] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[15] ),
        .Q(\pclk_2khz_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[1] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[1] ),
        .Q(\pclk_2khz_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[2] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[2] ),
        .Q(\pclk_2khz_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[3] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[3] ),
        .Q(\pclk_2khz_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[4] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[4] ),
        .Q(\pclk_2khz_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[5] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[5] ),
        .Q(\pclk_2khz_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[6] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[6] ),
        .Q(\pclk_2khz_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[7] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[7] ),
        .Q(\pclk_2khz_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[8] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[8] ),
        .Q(\pclk_2khz_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_2khz_reg[9] 
       (.C(clk),
        .CE(tick),
        .D(\pclk_cnt_reg_n_0_[9] ),
        .Q(\pclk_2khz_reg_n_0_[9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\pclk_cnt0_inferred__0/i__carry_n_0 ,\pclk_cnt0_inferred__0/i__carry_n_1 ,\pclk_cnt0_inferred__0/i__carry_n_2 ,\pclk_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(\pclk_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt0_inferred__0/i__carry_n_4 ,\pclk_cnt0_inferred__0/i__carry_n_5 ,\pclk_cnt0_inferred__0/i__carry_n_6 ,\pclk_cnt0_inferred__0/i__carry_n_7 }),
        .S({\pclk_cnt_reg_n_0_[4] ,\pclk_cnt_reg_n_0_[3] ,\pclk_cnt_reg_n_0_[2] ,\pclk_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry__0 
       (.CI(\pclk_cnt0_inferred__0/i__carry_n_0 ),
        .CO({\pclk_cnt0_inferred__0/i__carry__0_n_0 ,\pclk_cnt0_inferred__0/i__carry__0_n_1 ,\pclk_cnt0_inferred__0/i__carry__0_n_2 ,\pclk_cnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt0_inferred__0/i__carry__0_n_4 ,\pclk_cnt0_inferred__0/i__carry__0_n_5 ,\pclk_cnt0_inferred__0/i__carry__0_n_6 ,\pclk_cnt0_inferred__0/i__carry__0_n_7 }),
        .S({\pclk_cnt_reg_n_0_[8] ,\pclk_cnt_reg_n_0_[7] ,\pclk_cnt_reg_n_0_[6] ,\pclk_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry__1 
       (.CI(\pclk_cnt0_inferred__0/i__carry__0_n_0 ),
        .CO({\pclk_cnt0_inferred__0/i__carry__1_n_0 ,\pclk_cnt0_inferred__0/i__carry__1_n_1 ,\pclk_cnt0_inferred__0/i__carry__1_n_2 ,\pclk_cnt0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt0_inferred__0/i__carry__1_n_4 ,\pclk_cnt0_inferred__0/i__carry__1_n_5 ,\pclk_cnt0_inferred__0/i__carry__1_n_6 ,\pclk_cnt0_inferred__0/i__carry__1_n_7 }),
        .S({\pclk_cnt_reg_n_0_[12] ,\pclk_cnt_reg_n_0_[11] ,\pclk_cnt_reg_n_0_[10] ,\pclk_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt0_inferred__0/i__carry__2 
       (.CI(\pclk_cnt0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\pclk_cnt0_inferred__0/i__carry__2_n_2 ,\pclk_cnt0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED [3],\pclk_cnt0_inferred__0/i__carry__2_n_5 ,\pclk_cnt0_inferred__0/i__carry__2_n_6 ,\pclk_cnt0_inferred__0/i__carry__2_n_7 }),
        .S({1'b0,\pclk_cnt_reg_n_0_[15] ,\pclk_cnt_reg_n_0_[14] ,\pclk_cnt_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8FB0)) 
    \pclk_cnt[0]_i_1 
       (.I0(s1_stb),
        .I1(tick),
        .I2(\pclk_cnt[15]_i_1__0_n_0 ),
        .I3(\pclk_cnt_reg_n_0_[0] ),
        .O(\pclk_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAAAA)) 
    \pclk_cnt[15]_i_1__0 
       (.I0(tick),
        .I1(\pclk_cnt[15]_i_2__0_n_0 ),
        .I2(\pclk_cnt[15]_i_3__0_n_0 ),
        .I3(\pclk_cnt[15]_i_4__0_n_0 ),
        .I4(\pclk_cnt[15]_i_5__0_n_0 ),
        .I5(s1_stb),
        .O(\pclk_cnt[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pclk_cnt[15]_i_2__0 
       (.I0(\pclk_cnt_reg_n_0_[13] ),
        .I1(\pclk_cnt_reg_n_0_[10] ),
        .I2(\pclk_cnt_reg_n_0_[7] ),
        .I3(\pclk_cnt_reg_n_0_[1] ),
        .O(\pclk_cnt[15]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \pclk_cnt[15]_i_3__0 
       (.I0(\pclk_cnt_reg_n_0_[12] ),
        .I1(\pclk_cnt_reg_n_0_[5] ),
        .I2(\pclk_cnt_reg_n_0_[6] ),
        .I3(\pclk_cnt_reg_n_0_[0] ),
        .O(\pclk_cnt[15]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pclk_cnt[15]_i_4__0 
       (.I0(\pclk_cnt_reg_n_0_[15] ),
        .I1(\pclk_cnt_reg_n_0_[8] ),
        .I2(\pclk_cnt_reg_n_0_[14] ),
        .I3(\pclk_cnt_reg_n_0_[11] ),
        .O(\pclk_cnt[15]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pclk_cnt[15]_i_5__0 
       (.I0(\pclk_cnt_reg_n_0_[3] ),
        .I1(\pclk_cnt_reg_n_0_[2] ),
        .I2(\pclk_cnt_reg_n_0_[9] ),
        .I3(\pclk_cnt_reg_n_0_[4] ),
        .O(\pclk_cnt[15]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pclk_cnt[0]_i_1_n_0 ),
        .Q(\pclk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[10] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[10] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[11] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[11] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[12] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__1_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[12] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[13] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__2_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[13] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[14] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__2_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[14] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[15] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__2_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[15] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[1] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[1] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[2] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[2] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[3] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[3] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[4] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[4] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[5] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__0_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[5] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[6] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__0_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[6] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[7] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__0_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[7] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[8] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__0_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[8] ),
        .R(tick));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[9] 
       (.C(clk),
        .CE(\pclk_cnt[15]_i_1__0_n_0 ),
        .D(\pclk_cnt0_inferred__0/i__carry__1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[9] ),
        .R(tick));
  LUT3 #(
    .INIT(8'hE8)) 
    pclk_f_i_1__0
       (.I0(pclk_f_reg_n_0),
        .I1(\pclk_h_reg_n_0_[0] ),
        .I2(\pclk_h_reg_n_0_[1] ),
        .O(pclk_f_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pclk_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(pclk_f_i_1__0_n_0),
        .Q(pclk_f_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_h_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pclk_m[1]),
        .Q(\pclk_h_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_h_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pclk_h_reg_n_0_[0] ),
        .Q(\pclk_h_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \pclk_m_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_pclk),
        .Q(pclk_m[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \pclk_m_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pclk_m[0]),
        .Q(pclk_m[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[0] ),
        .Q(\prev_bpl_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[10] ),
        .Q(\prev_bpl_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[11] ),
        .Q(\prev_bpl_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[12] ),
        .Q(\prev_bpl_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[13] ),
        .Q(\prev_bpl_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[14] ),
        .Q(\prev_bpl_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[15] ),
        .Q(\prev_bpl_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[1] ),
        .Q(\prev_bpl_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[2] ),
        .Q(\prev_bpl_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[3] ),
        .Q(\prev_bpl_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[4] ),
        .Q(\prev_bpl_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[5] ),
        .Q(\prev_bpl_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[6] ),
        .Q(\prev_bpl_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[7] ),
        .Q(\prev_bpl_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[8] ),
        .Q(\prev_bpl_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_bpl_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(\last_bpl_reg_n_0_[9] ),
        .Q(\prev_bpl_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[0]),
        .Q(\prev_lines_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[10]),
        .Q(\prev_lines_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[11]),
        .Q(\prev_lines_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[12]),
        .Q(\prev_lines_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[13]),
        .Q(\prev_lines_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[14]),
        .Q(\prev_lines_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[15]),
        .Q(\prev_lines_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[1]),
        .Q(\prev_lines_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[2]),
        .Q(\prev_lines_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[3]),
        .Q(\prev_lines_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[4]),
        .Q(\prev_lines_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[5]),
        .Q(\prev_lines_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[6]),
        .Q(\prev_lines_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[7]),
        .Q(\prev_lines_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[8]),
        .Q(\prev_lines_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_lines_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(lines_reg[9]),
        .Q(\prev_lines_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[0]),
        .Q(\prev_ticks_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[10]),
        .Q(\prev_ticks_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[11]),
        .Q(\prev_ticks_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[12]),
        .Q(\prev_ticks_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[13]),
        .Q(\prev_ticks_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[14]),
        .Q(\prev_ticks_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[15]),
        .Q(\prev_ticks_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[1]),
        .Q(\prev_ticks_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[2]),
        .Q(\prev_ticks_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[3]),
        .Q(\prev_ticks_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[4]),
        .Q(\prev_ticks_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[5]),
        .Q(\prev_ticks_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[6]),
        .Q(\prev_ticks_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[7]),
        .Q(\prev_ticks_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[8]),
        .Q(\prev_ticks_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_ticks_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(ticks_reg[9]),
        .Q(\prev_ticks_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_trunc_reg
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(trunc_reg_n_0),
        .Q(prev_trunc_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \px[10]_i_10__0 
       (.I0(s1_stb),
        .I1(s1_href),
        .I2(href_d_reg),
        .O(stb_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \px[1]_i_3__0 
       (.I0(s1_href),
        .I1(s1_stb),
        .I2(\px_reg[1] ),
        .O(second));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \row[7]_i_1__0 
       (.I0(s1_stb),
        .I1(vsync_d),
        .I2(s1_vsync),
        .I3(out),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \row[8]_i_3__0 
       (.I0(s1_stb),
        .I1(vsync_d),
        .I2(s1_vsync),
        .O(stb_reg_1));
  LUT3 #(
    .INIT(8'h08)) 
    \start_us[31]_i_1 
       (.I0(s1_vsync),
        .I1(s1_stb),
        .I2(vsync_qq_reg_n_0),
        .O(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[0] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[10] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[11] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[12] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[13] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[14] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[15] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[16] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[17] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[18] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[19] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[1] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[20] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[21] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[22] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[23] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[24] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[25] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[26] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[27] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[28] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[29] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[2] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[30] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[31] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[3] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[4] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[5] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[6] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[7] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[8] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_us_reg[9] 
       (.C(clk),
        .CE(\start_us[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF007F00)) 
    \state[0]_i_1__0 
       (.I0(idx_reg[4]),
        .I1(\state[0]_i_2__0_n_0 ),
        .I2(s1_stb),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\start_us[31]_i_1_n_0 ),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[0]_i_2__0 
       (.I0(idx_reg[1]),
        .I1(idx_reg[0]),
        .I2(idx_reg[2]),
        .I3(idx_reg[3]),
        .O(\state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \state[1]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[1]_i_2__0_n_0 ),
        .I2(out),
        .I3(\start_us[31]_i_1_n_0 ),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[1]_i_2__0 
       (.I0(\idx[4]_i_1__0_n_0 ),
        .I1(idx_reg[1]),
        .I2(idx_reg[0]),
        .I3(idx_reg[2]),
        .I4(idx_reg[3]),
        .I5(idx_reg[4]),
        .O(\state[1]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(\state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    stb0
       (.I0(\pclk_h_reg_n_0_[1] ),
        .I1(\pclk_h_reg_n_0_[0] ),
        .I2(pclk_f_reg_n_0),
        .O(stb0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stb_reg
       (.C(clk),
        .CE(1'b1),
        .D(stb0_n_0),
        .Q(s1_stb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \ticks[0]_i_1__0 
       (.I0(tick),
        .I1(\ticks[0]_i_3__0_n_0 ),
        .I2(\ticks[0]_i_4__0_n_0 ),
        .I3(\ticks[0]_i_5__0_n_0 ),
        .I4(\ticks[0]_i_6__0_n_0 ),
        .O(\ticks[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ticks[0]_i_3__0 
       (.I0(ticks_reg[11]),
        .I1(ticks_reg[2]),
        .I2(ticks_reg[15]),
        .I3(ticks_reg[4]),
        .O(\ticks[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ticks[0]_i_4__0 
       (.I0(ticks_reg[14]),
        .I1(ticks_reg[0]),
        .I2(ticks_reg[12]),
        .I3(ticks_reg[3]),
        .O(\ticks[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ticks[0]_i_5__0 
       (.I0(ticks_reg[6]),
        .I1(ticks_reg[5]),
        .I2(ticks_reg[9]),
        .I3(ticks_reg[8]),
        .O(\ticks[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ticks[0]_i_6__0 
       (.I0(ticks_reg[13]),
        .I1(ticks_reg[10]),
        .I2(ticks_reg[7]),
        .I3(ticks_reg[1]),
        .O(\ticks[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_7__0 
       (.I0(ticks_reg[0]),
        .O(\ticks[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[0]_i_2__0_n_7 ),
        .Q(ticks_reg[0]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\ticks_reg[0]_i_2__0_n_0 ,\ticks_reg[0]_i_2__0_n_1 ,\ticks_reg[0]_i_2__0_n_2 ,\ticks_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ticks_reg[0]_i_2__0_n_4 ,\ticks_reg[0]_i_2__0_n_5 ,\ticks_reg[0]_i_2__0_n_6 ,\ticks_reg[0]_i_2__0_n_7 }),
        .S({ticks_reg[3:1],\ticks[0]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[10] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[8]_i_1__0_n_5 ),
        .Q(ticks_reg[10]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[8]_i_1__0_n_4 ),
        .Q(ticks_reg[11]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[12]_i_1__0_n_7 ),
        .Q(ticks_reg[12]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[12]_i_1__0 
       (.CI(\ticks_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_ticks_reg[12]_i_1__0_CO_UNCONNECTED [3],\ticks_reg[12]_i_1__0_n_1 ,\ticks_reg[12]_i_1__0_n_2 ,\ticks_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[12]_i_1__0_n_4 ,\ticks_reg[12]_i_1__0_n_5 ,\ticks_reg[12]_i_1__0_n_6 ,\ticks_reg[12]_i_1__0_n_7 }),
        .S(ticks_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[13] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[12]_i_1__0_n_6 ),
        .Q(ticks_reg[13]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[12]_i_1__0_n_5 ),
        .Q(ticks_reg[14]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[12]_i_1__0_n_4 ),
        .Q(ticks_reg[15]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[0]_i_2__0_n_6 ),
        .Q(ticks_reg[1]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[0]_i_2__0_n_5 ),
        .Q(ticks_reg[2]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[0]_i_2__0_n_4 ),
        .Q(ticks_reg[3]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[4]_i_1__0_n_7 ),
        .Q(ticks_reg[4]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[4]_i_1__0 
       (.CI(\ticks_reg[0]_i_2__0_n_0 ),
        .CO({\ticks_reg[4]_i_1__0_n_0 ,\ticks_reg[4]_i_1__0_n_1 ,\ticks_reg[4]_i_1__0_n_2 ,\ticks_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[4]_i_1__0_n_4 ,\ticks_reg[4]_i_1__0_n_5 ,\ticks_reg[4]_i_1__0_n_6 ,\ticks_reg[4]_i_1__0_n_7 }),
        .S(ticks_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[4]_i_1__0_n_6 ),
        .Q(ticks_reg[5]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[4]_i_1__0_n_5 ),
        .Q(ticks_reg[6]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[4]_i_1__0_n_4 ),
        .Q(ticks_reg[7]),
        .R(\start_us[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[8]_i_1__0_n_7 ),
        .Q(ticks_reg[8]),
        .R(\start_us[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ticks_reg[8]_i_1__0 
       (.CI(\ticks_reg[4]_i_1__0_n_0 ),
        .CO({\ticks_reg[8]_i_1__0_n_0 ,\ticks_reg[8]_i_1__0_n_1 ,\ticks_reg[8]_i_1__0_n_2 ,\ticks_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[8]_i_1__0_n_4 ,\ticks_reg[8]_i_1__0_n_5 ,\ticks_reg[8]_i_1__0_n_6 ,\ticks_reg[8]_i_1__0_n_7 }),
        .S(ticks_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[9] 
       (.C(clk),
        .CE(\ticks[0]_i_1__0_n_0 ),
        .D(\ticks_reg[8]_i_1__0_n_6 ),
        .Q(ticks_reg[9]),
        .R(\start_us[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    trunc_i_1__0
       (.I0(trunc_i_2__0_n_0),
        .I1(out),
        .I2(\start_us[31]_i_1_n_0 ),
        .O(trunc_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A800000)) 
    trunc_i_2__0
       (.I0(s1_stb),
        .I1(s1_href),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(c1_afull),
        .I5(trunc_reg_n_0),
        .O(trunc_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trunc_reg
       (.C(clk),
        .CE(1'b1),
        .D(trunc_i_1__0_n_0),
        .Q(trunc_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    vsync_d_i_1__0
       (.I0(s1_vsync),
        .I1(out),
        .I2(s1_stb),
        .I3(vsync_d),
        .O(vsync_q_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \vsync_h_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(vsync_m[1]),
        .Q(\vsync_h_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vsync_h_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\vsync_h_reg_n_0_[0] ),
        .Q(\vsync_h_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vsync_m_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cam2_vsync),
        .Q(vsync_m[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vsync_m_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(vsync_m[0]),
        .Q(vsync_m[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_q_reg
       (.C(clk),
        .CE(stb0_n_0),
        .D(\vsync_h_reg_n_0_[1] ),
        .Q(s1_vsync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_qq_i_1__0
       (.I0(s1_vsync),
        .I1(s1_stb),
        .I2(vsync_qq_reg_n_0),
        .O(vsync_qq_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_qq_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_qq_i_1__0_n_0),
        .Q(vsync_qq_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wp[0]_i_1__0 
       (.I0(c1_wr),
        .I1(\wp_reg[12] ),
        .O(do_wr));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    wr_sof_i_1__0
       (.I0(s1_stb),
        .I1(out),
        .I2(vsync_d),
        .I3(s1_vsync),
        .O(stb_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \yr[-1111111104]__0_i_4__0 
       (.I0(vsync_d),
        .I1(s1_vsync),
        .I2(s1_stb),
        .I3(out),
        .O(vsync_d_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \yr[-1111111104]_i_2__0 
       (.I0(out),
        .I1(s1_stb),
        .O(href_d));
endmodule

(* ORIG_REF_NAME = "cam_input" *) 
module system_cam_input_0_0_cam_input
   (Q,
    \count_reg[13] ,
    \start_us_reg[31] ,
    raw0_dout,
    \en_sync_reg[2]_0 ,
    raw1_dout,
    rd_data0,
    frame_base0,
    rows_gray0,
    rd_data1,
    frame_base1,
    rows_gray1,
    prst,
    genlock,
    frame_led0,
    frame_led1,
    sof_toggle0,
    sof_toggle1,
    clk,
    raw0_rd,
    raw1_rd,
    cam_d,
    cam2_d,
    pclk,
    rd_addr0,
    rd_addr1,
    cam_pclk,
    cam_vsync,
    cam_href,
    cam2_pclk,
    cam2_vsync,
    cam2_href,
    gpio_o);
  output [13:0]Q;
  output [13:0]\count_reg[13] ;
  output [31:0]\start_us_reg[31] ;
  output [7:0]raw0_dout;
  output \en_sync_reg[2]_0 ;
  output [7:0]raw1_dout;
  output [7:0]rd_data0;
  output [15:0]frame_base0;
  output [9:0]rows_gray0;
  output [7:0]rd_data1;
  output [15:0]frame_base1;
  output [9:0]rows_gray1;
  output prst;
  output [31:0]genlock;
  output frame_led0;
  output frame_led1;
  output sof_toggle0;
  output sof_toggle1;
  input clk;
  input raw0_rd;
  input raw1_rd;
  input [7:0]cam_d;
  input [7:0]cam2_d;
  input pclk;
  input [11:0]rd_addr0;
  input [11:0]rd_addr1;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  input cam2_pclk;
  input cam2_vsync;
  input cam2_href;
  input [17:0]gpio_o;

  wire [13:0]Q;
  wire c0_afull;
  wire [7:0]c0_din;
  wire c0_wr;
  wire c1_afull;
  wire [7:0]c1_din;
  wire c1_wr;
  wire [7:0]cam2_d;
  wire cam2_href;
  wire cam2_pclk;
  wire cam2_vsync;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire clk;
  wire [13:0]\count_reg[13] ;
  wire [7:0]data12;
  wire [7:0]data13;
  wire do_wr;
  wire do_wr_4;
  (* async_reg = "true" *) wire [2:0]en_sync;
  wire \en_sync_reg[2]_0 ;
  wire [15:0]frame_base0;
  wire [15:0]frame_base1;
  wire frame_led0;
  wire frame_led1;
  wire \g_bin.u_bin0_n_4 ;
  wire \g_bin.u_bin1_n_4 ;
  wire [31:0]genlock;
  wire [23:0]gl_phase0;
  wire gl_phase0_carry__0_n_0;
  wire gl_phase0_carry__0_n_1;
  wire gl_phase0_carry__0_n_2;
  wire gl_phase0_carry__0_n_3;
  wire gl_phase0_carry__1_n_0;
  wire gl_phase0_carry__1_n_1;
  wire gl_phase0_carry__1_n_2;
  wire gl_phase0_carry__1_n_3;
  wire gl_phase0_carry__2_n_0;
  wire gl_phase0_carry__2_n_1;
  wire gl_phase0_carry__2_n_2;
  wire gl_phase0_carry__2_n_3;
  wire gl_phase0_carry__3_n_0;
  wire gl_phase0_carry__3_n_1;
  wire gl_phase0_carry__3_n_2;
  wire gl_phase0_carry__3_n_3;
  wire gl_phase0_carry__4_n_1;
  wire gl_phase0_carry__4_n_2;
  wire gl_phase0_carry__4_n_3;
  wire gl_phase0_carry_n_0;
  wire gl_phase0_carry_n_1;
  wire gl_phase0_carry_n_2;
  wire gl_phase0_carry_n_3;
  wire gl_seq0_carry__0_n_0;
  wire gl_seq0_carry__0_n_1;
  wire gl_seq0_carry__0_n_2;
  wire gl_seq0_carry__0_n_3;
  wire gl_seq0_carry__1_n_2;
  wire gl_seq0_carry__1_n_3;
  wire gl_seq0_carry_n_0;
  wire gl_seq0_carry_n_1;
  wire gl_seq0_carry_n_2;
  wire gl_seq0_carry_n_3;
  wire \gl_seq[7]_i_2_n_0 ;
  wire [17:0]gpio_o;
  wire [16:0]half_ms;
  wire half_ms1_carry__0_n_0;
  wire half_ms1_carry__0_n_1;
  wire half_ms1_carry__0_n_2;
  wire half_ms1_carry__0_n_3;
  wire half_ms1_carry__0_n_4;
  wire half_ms1_carry__0_n_5;
  wire half_ms1_carry__0_n_6;
  wire half_ms1_carry__0_n_7;
  wire half_ms1_carry__1_n_0;
  wire half_ms1_carry__1_n_1;
  wire half_ms1_carry__1_n_2;
  wire half_ms1_carry__1_n_3;
  wire half_ms1_carry__1_n_4;
  wire half_ms1_carry__1_n_5;
  wire half_ms1_carry__1_n_6;
  wire half_ms1_carry__1_n_7;
  wire half_ms1_carry__2_n_1;
  wire half_ms1_carry__2_n_2;
  wire half_ms1_carry__2_n_3;
  wire half_ms1_carry__2_n_4;
  wire half_ms1_carry__2_n_5;
  wire half_ms1_carry__2_n_6;
  wire half_ms1_carry__2_n_7;
  wire half_ms1_carry_n_0;
  wire half_ms1_carry_n_1;
  wire half_ms1_carry_n_2;
  wire half_ms1_carry_n_3;
  wire half_ms1_carry_n_4;
  wire half_ms1_carry_n_5;
  wire half_ms1_carry_n_6;
  wire half_ms1_carry_n_7;
  wire \half_ms[0]_i_1_n_0 ;
  wire \half_ms[16]_i_1_n_0 ;
  wire \half_ms[16]_i_2_n_0 ;
  wire \half_ms[16]_i_3_n_0 ;
  wire \half_ms[16]_i_4_n_0 ;
  wire href_d;
  wire href_d_3;
  wire [7:0]l0_d;
  wire l0_en;
  wire l0_sof;
  wire [7:0]l1_d;
  wire l1_en;
  wire l1_sof;
  wire p_0_in;
  wire p_0_in_1;
  wire [7:0]p_0_in__2;
  wire [7:0]p_0_in__4;
  wire [0:0]p_1_out;
  wire p_2_in;
  wire p_2_in_0;
  wire pclk;
  wire [0:0]prev;
  wire [0:0]prev_5;
  (* async_reg = "true" *) wire [2:0]prst_sync;
  wire [7:0]raw0_dout;
  wire raw0_rd;
  wire [7:0]raw1_dout;
  wire raw1_rd;
  wire [11:0]rd_addr0;
  wire [11:0]rd_addr1;
  wire [7:0]rd_data0;
  wire [7:0]rd_data1;
  wire [9:0]rows_gray0;
  wire [9:0]rows_gray1;
  wire [7:0]s0_d;
  wire s0_href;
  wire s0_stb;
  wire s0_vsync;
  wire [7:0]s1_d;
  wire s1_href;
  wire s1_stb;
  wire s1_vsync;
  wire second;
  wire second_2;
  wire sel;
  wire sof_toggle0;
  wire sof_toggle1;
  wire [31:0]\start_us_reg[31] ;
  wire [7:0]t0_d;
  wire t0_en;
  wire t0_sof;
  wire [7:0]t1_d;
  wire t1_en;
  wire t1_sof;
  wire \t_us[0]_i_2_n_0 ;
  wire [31:0]t_us_reg;
  wire \t_us_reg[0]_i_1_n_0 ;
  wire \t_us_reg[0]_i_1_n_1 ;
  wire \t_us_reg[0]_i_1_n_2 ;
  wire \t_us_reg[0]_i_1_n_3 ;
  wire \t_us_reg[0]_i_1_n_4 ;
  wire \t_us_reg[0]_i_1_n_5 ;
  wire \t_us_reg[0]_i_1_n_6 ;
  wire \t_us_reg[0]_i_1_n_7 ;
  wire \t_us_reg[12]_i_1_n_0 ;
  wire \t_us_reg[12]_i_1_n_1 ;
  wire \t_us_reg[12]_i_1_n_2 ;
  wire \t_us_reg[12]_i_1_n_3 ;
  wire \t_us_reg[12]_i_1_n_4 ;
  wire \t_us_reg[12]_i_1_n_5 ;
  wire \t_us_reg[12]_i_1_n_6 ;
  wire \t_us_reg[12]_i_1_n_7 ;
  wire \t_us_reg[16]_i_1_n_0 ;
  wire \t_us_reg[16]_i_1_n_1 ;
  wire \t_us_reg[16]_i_1_n_2 ;
  wire \t_us_reg[16]_i_1_n_3 ;
  wire \t_us_reg[16]_i_1_n_4 ;
  wire \t_us_reg[16]_i_1_n_5 ;
  wire \t_us_reg[16]_i_1_n_6 ;
  wire \t_us_reg[16]_i_1_n_7 ;
  wire \t_us_reg[20]_i_1_n_0 ;
  wire \t_us_reg[20]_i_1_n_1 ;
  wire \t_us_reg[20]_i_1_n_2 ;
  wire \t_us_reg[20]_i_1_n_3 ;
  wire \t_us_reg[20]_i_1_n_4 ;
  wire \t_us_reg[20]_i_1_n_5 ;
  wire \t_us_reg[20]_i_1_n_6 ;
  wire \t_us_reg[20]_i_1_n_7 ;
  wire \t_us_reg[24]_i_1_n_0 ;
  wire \t_us_reg[24]_i_1_n_1 ;
  wire \t_us_reg[24]_i_1_n_2 ;
  wire \t_us_reg[24]_i_1_n_3 ;
  wire \t_us_reg[24]_i_1_n_4 ;
  wire \t_us_reg[24]_i_1_n_5 ;
  wire \t_us_reg[24]_i_1_n_6 ;
  wire \t_us_reg[24]_i_1_n_7 ;
  wire \t_us_reg[28]_i_1_n_1 ;
  wire \t_us_reg[28]_i_1_n_2 ;
  wire \t_us_reg[28]_i_1_n_3 ;
  wire \t_us_reg[28]_i_1_n_4 ;
  wire \t_us_reg[28]_i_1_n_5 ;
  wire \t_us_reg[28]_i_1_n_6 ;
  wire \t_us_reg[28]_i_1_n_7 ;
  wire \t_us_reg[4]_i_1_n_0 ;
  wire \t_us_reg[4]_i_1_n_1 ;
  wire \t_us_reg[4]_i_1_n_2 ;
  wire \t_us_reg[4]_i_1_n_3 ;
  wire \t_us_reg[4]_i_1_n_4 ;
  wire \t_us_reg[4]_i_1_n_5 ;
  wire \t_us_reg[4]_i_1_n_6 ;
  wire \t_us_reg[4]_i_1_n_7 ;
  wire \t_us_reg[8]_i_1_n_0 ;
  wire \t_us_reg[8]_i_1_n_1 ;
  wire \t_us_reg[8]_i_1_n_2 ;
  wire \t_us_reg[8]_i_1_n_3 ;
  wire \t_us_reg[8]_i_1_n_4 ;
  wire \t_us_reg[8]_i_1_n_5 ;
  wire \t_us_reg[8]_i_1_n_6 ;
  wire \t_us_reg[8]_i_1_n_7 ;
  wire tick;
  (* async_reg = "true" *) wire [16:0]tof_m0;
  (* async_reg = "true" *) wire [16:0]tof_m1;
  wire \tof_m2_reg_n_0_[0] ;
  wire \tof_m2_reg_n_0_[10] ;
  wire \tof_m2_reg_n_0_[11] ;
  wire \tof_m2_reg_n_0_[12] ;
  wire \tof_m2_reg_n_0_[13] ;
  wire \tof_m2_reg_n_0_[14] ;
  wire \tof_m2_reg_n_0_[15] ;
  wire \tof_m2_reg_n_0_[16] ;
  wire \tof_m2_reg_n_0_[1] ;
  wire \tof_m2_reg_n_0_[2] ;
  wire \tof_m2_reg_n_0_[3] ;
  wire \tof_m2_reg_n_0_[4] ;
  wire \tof_m2_reg_n_0_[5] ;
  wire \tof_m2_reg_n_0_[6] ;
  wire \tof_m2_reg_n_0_[7] ;
  wire \tof_m2_reg_n_0_[8] ;
  wire \tof_m2_reg_n_0_[9] ;
  wire [15:0]tof_mm;
  wire tof_new;
  wire tof_new_i_1_n_0;
  wire \tof_seq[7]_i_2_n_0 ;
  wire [7:0]tof_seq_reg;
  wire [31:0]tof_us;
  wire u_cap2_n_41;
  wire u_cap2_n_42;
  wire u_cap2_n_43;
  wire u_cap2_n_44;
  wire u_cap2_n_45;
  wire u_cap2_n_46;
  wire u_cap2_n_47;
  wire u_cap2_n_48;
  wire u_cap2_n_49;
  wire u_cap2_n_5;
  wire u_cap2_n_50;
  wire u_cap2_n_51;
  wire u_cap2_n_52;
  wire u_cap2_n_53;
  wire u_cap2_n_54;
  wire u_cap2_n_55;
  wire u_cap2_n_56;
  wire u_cap2_n_57;
  wire u_cap2_n_58;
  wire u_cap2_n_59;
  wire u_cap2_n_6;
  wire u_cap2_n_60;
  wire u_cap2_n_62;
  wire u_cap2_n_63;
  wire u_cap2_n_66;
  wire u_cap2_n_67;
  wire u_cap2_n_68;
  wire u_cap2_n_69;
  wire u_cap2_n_7;
  wire u_cap2_n_78;
  wire u_cap2_n_79;
  wire u_cap2_n_8;
  wire u_cap2_n_80;
  wire u_cap2_n_81;
  wire u_cap2_n_82;
  wire u_cap2_n_83;
  wire u_cap2_n_84;
  wire u_cap2_n_85;
  wire u_cap2_n_86;
  wire u_cap2_n_87;
  wire u_cap2_n_88;
  wire u_cap2_n_89;
  wire u_cap2_n_90;
  wire u_cap_n_10;
  wire u_cap_n_11;
  wire u_cap_n_12;
  wire u_cap_n_13;
  wire u_cap_n_38;
  wire u_cap_n_39;
  wire u_cap_n_40;
  wire u_cap_n_41;
  wire u_cap_n_42;
  wire u_cap_n_43;
  wire u_cap_n_44;
  wire u_cap_n_45;
  wire u_cap_n_46;
  wire u_cap_n_47;
  wire u_cap_n_6;
  wire u_cap_n_7;
  wire u_luma0_n_3;
  wire u_luma0_n_4;
  wire u_luma0_n_5;
  wire u_luma1_n_3;
  wire u_luma1_n_4;
  wire u_luma1_n_5;
  wire [31:0]us1_seen;
  wire [7:0]us_cnt;
  wire \us_cnt[0]_i_1_n_0 ;
  wire \us_cnt[1]_i_1_n_0 ;
  wire \us_cnt[2]_i_1_n_0 ;
  wire \us_cnt[3]_i_1_n_0 ;
  wire \us_cnt[4]_i_1_n_0 ;
  wire \us_cnt[5]_i_1_n_0 ;
  wire \us_cnt[6]_i_1_n_0 ;
  wire \us_cnt[7]_i_1_n_0 ;
  wire \us_cnt[7]_i_2_n_0 ;
  wire \us_cnt[7]_i_3_n_0 ;
  wire us_tick;
  wire vsync_d;
  wire vsync_d_6;
  wire [3:3]NLW_gl_phase0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_gl_seq0_carry_O_UNCONNECTED;
  wire [3:0]NLW_gl_seq0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_gl_seq0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_gl_seq0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_half_ms1_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_t_us_reg[28]_i_1_CO_UNCONNECTED ;

  assign prst = prst_sync[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \en_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[0]),
        .Q(en_sync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \en_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(en_sync[0]),
        .Q(en_sync[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \en_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(en_sync[1]),
        .Q(en_sync[2]),
        .R(1'b0));
  system_cam_input_0_0_luma_bin2 \g_bin.u_bin0 
       (.E(u_luma0_n_4),
        .Q(p_0_in),
        .clk(clk),
        .l0_sof(l0_sof),
        .\out_data_reg[7]_0 (l0_d),
        .out_en_reg_0(l0_en),
        .out_en_reg_1(p_2_in),
        .out_sof_reg_0(\g_bin.u_bin0_n_4 ),
        .\prev_reg[7]_0 (prev),
        .\prev_reg[7]_1 (t0_d),
        .sof_toggle0(sof_toggle0),
        .t0_en(t0_en),
        .t0_sof(t0_sof));
  system_cam_input_0_0_luma_bin2_0 \g_bin.u_bin1 
       (.E(u_luma1_n_4),
        .Q(p_0_in_1),
        .clk(clk),
        .l1_sof(l1_sof),
        .\out_data_reg[7]_0 (l1_d),
        .out_en_reg_0(l1_en),
        .out_en_reg_1(p_2_in_0),
        .out_sof_reg_0(\g_bin.u_bin1_n_4 ),
        .\prev_reg[7]_0 (prev_5),
        .\prev_reg[7]_1 (t1_d),
        .sof_toggle1(sof_toggle1),
        .t1_en(t1_en),
        .t1_sof(t1_sof));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gl_phase0_carry
       (.CI(1'b0),
        .CO({gl_phase0_carry_n_0,gl_phase0_carry_n_1,gl_phase0_carry_n_2,gl_phase0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\start_us_reg[31] [3:0]),
        .O(gl_phase0[3:0]),
        .S({u_cap2_n_57,u_cap2_n_58,u_cap2_n_59,u_cap2_n_60}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gl_phase0_carry__0
       (.CI(gl_phase0_carry_n_0),
        .CO({gl_phase0_carry__0_n_0,gl_phase0_carry__0_n_1,gl_phase0_carry__0_n_2,gl_phase0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\start_us_reg[31] [7:4]),
        .O(gl_phase0[7:4]),
        .S({u_cap2_n_53,u_cap2_n_54,u_cap2_n_55,u_cap2_n_56}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gl_phase0_carry__1
       (.CI(gl_phase0_carry__0_n_0),
        .CO({gl_phase0_carry__1_n_0,gl_phase0_carry__1_n_1,gl_phase0_carry__1_n_2,gl_phase0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\start_us_reg[31] [11:8]),
        .O(gl_phase0[11:8]),
        .S({u_cap2_n_49,u_cap2_n_50,u_cap2_n_51,u_cap2_n_52}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gl_phase0_carry__2
       (.CI(gl_phase0_carry__1_n_0),
        .CO({gl_phase0_carry__2_n_0,gl_phase0_carry__2_n_1,gl_phase0_carry__2_n_2,gl_phase0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\start_us_reg[31] [15:12]),
        .O(gl_phase0[15:12]),
        .S({u_cap2_n_45,u_cap2_n_46,u_cap2_n_47,u_cap2_n_48}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gl_phase0_carry__3
       (.CI(gl_phase0_carry__2_n_0),
        .CO({gl_phase0_carry__3_n_0,gl_phase0_carry__3_n_1,gl_phase0_carry__3_n_2,gl_phase0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\start_us_reg[31] [19:16]),
        .O(gl_phase0[19:16]),
        .S({u_cap2_n_41,u_cap2_n_42,u_cap2_n_43,u_cap2_n_44}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gl_phase0_carry__4
       (.CI(gl_phase0_carry__3_n_0),
        .CO({NLW_gl_phase0_carry__4_CO_UNCONNECTED[3],gl_phase0_carry__4_n_1,gl_phase0_carry__4_n_2,gl_phase0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\start_us_reg[31] [22:20]}),
        .O(gl_phase0[23:20]),
        .S({u_cap2_n_5,u_cap2_n_6,u_cap2_n_7,u_cap2_n_8}));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[0]),
        .Q(genlock[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[10]),
        .Q(genlock[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[11]),
        .Q(genlock[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[12]),
        .Q(genlock[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[13]),
        .Q(genlock[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[14]),
        .Q(genlock[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[15]),
        .Q(genlock[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[16]),
        .Q(genlock[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[17]),
        .Q(genlock[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[18]),
        .Q(genlock[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[19]),
        .Q(genlock[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[1]),
        .Q(genlock[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[20]),
        .Q(genlock[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[21]),
        .Q(genlock[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[22]),
        .Q(genlock[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[23]),
        .Q(genlock[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[2]),
        .Q(genlock[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[3]),
        .Q(genlock[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[4]),
        .Q(genlock[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[5]),
        .Q(genlock[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[6]),
        .Q(genlock[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[7]),
        .Q(genlock[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[8]),
        .Q(genlock[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_phase_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(gl_phase0[9]),
        .Q(genlock[9]),
        .R(1'b0));
  CARRY4 gl_seq0_carry
       (.CI(1'b0),
        .CO({gl_seq0_carry_n_0,gl_seq0_carry_n_1,gl_seq0_carry_n_2,gl_seq0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_gl_seq0_carry_O_UNCONNECTED[3:0]),
        .S({u_cap2_n_78,u_cap2_n_79,u_cap2_n_80,u_cap2_n_81}));
  CARRY4 gl_seq0_carry__0
       (.CI(gl_seq0_carry_n_0),
        .CO({gl_seq0_carry__0_n_0,gl_seq0_carry__0_n_1,gl_seq0_carry__0_n_2,gl_seq0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_gl_seq0_carry__0_O_UNCONNECTED[3:0]),
        .S({u_cap2_n_82,u_cap2_n_83,u_cap2_n_84,u_cap2_n_85}));
  CARRY4 gl_seq0_carry__1
       (.CI(gl_seq0_carry__0_n_0),
        .CO({NLW_gl_seq0_carry__1_CO_UNCONNECTED[3],sel,gl_seq0_carry__1_n_2,gl_seq0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_gl_seq0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,u_cap2_n_86,u_cap2_n_87,u_cap2_n_88}));
  LUT1 #(
    .INIT(2'h1)) 
    \gl_seq[0]_i_1 
       (.I0(genlock[24]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gl_seq[1]_i_1 
       (.I0(genlock[24]),
        .I1(genlock[25]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gl_seq[2]_i_1 
       (.I0(genlock[26]),
        .I1(genlock[24]),
        .I2(genlock[25]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gl_seq[3]_i_1 
       (.I0(genlock[27]),
        .I1(genlock[25]),
        .I2(genlock[24]),
        .I3(genlock[26]),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gl_seq[4]_i_1 
       (.I0(genlock[28]),
        .I1(genlock[26]),
        .I2(genlock[24]),
        .I3(genlock[25]),
        .I4(genlock[27]),
        .O(p_0_in__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gl_seq[5]_i_1 
       (.I0(genlock[27]),
        .I1(genlock[25]),
        .I2(genlock[24]),
        .I3(genlock[26]),
        .I4(genlock[28]),
        .I5(genlock[29]),
        .O(p_0_in__4[5]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gl_seq[6]_i_1 
       (.I0(genlock[30]),
        .I1(\gl_seq[7]_i_2_n_0 ),
        .O(p_0_in__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gl_seq[7]_i_1 
       (.I0(genlock[31]),
        .I1(\gl_seq[7]_i_2_n_0 ),
        .I2(genlock[30]),
        .O(p_0_in__4[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gl_seq[7]_i_2 
       (.I0(genlock[29]),
        .I1(genlock[28]),
        .I2(genlock[26]),
        .I3(genlock[24]),
        .I4(genlock[25]),
        .I5(genlock[27]),
        .O(\gl_seq[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[0]),
        .Q(genlock[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[1]),
        .Q(genlock[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[2]),
        .Q(genlock[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[3]),
        .Q(genlock[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[4]),
        .Q(genlock[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[5]),
        .Q(genlock[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[6]),
        .Q(genlock[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gl_seq_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__4[7]),
        .Q(genlock[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 half_ms1_carry
       (.CI(1'b0),
        .CO({half_ms1_carry_n_0,half_ms1_carry_n_1,half_ms1_carry_n_2,half_ms1_carry_n_3}),
        .CYINIT(half_ms[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_ms1_carry_n_4,half_ms1_carry_n_5,half_ms1_carry_n_6,half_ms1_carry_n_7}),
        .S(half_ms[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 half_ms1_carry__0
       (.CI(half_ms1_carry_n_0),
        .CO({half_ms1_carry__0_n_0,half_ms1_carry__0_n_1,half_ms1_carry__0_n_2,half_ms1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_ms1_carry__0_n_4,half_ms1_carry__0_n_5,half_ms1_carry__0_n_6,half_ms1_carry__0_n_7}),
        .S(half_ms[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 half_ms1_carry__1
       (.CI(half_ms1_carry__0_n_0),
        .CO({half_ms1_carry__1_n_0,half_ms1_carry__1_n_1,half_ms1_carry__1_n_2,half_ms1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_ms1_carry__1_n_4,half_ms1_carry__1_n_5,half_ms1_carry__1_n_6,half_ms1_carry__1_n_7}),
        .S(half_ms[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 half_ms1_carry__2
       (.CI(half_ms1_carry__1_n_0),
        .CO({NLW_half_ms1_carry__2_CO_UNCONNECTED[3],half_ms1_carry__2_n_1,half_ms1_carry__2_n_2,half_ms1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_ms1_carry__2_n_4,half_ms1_carry__2_n_5,half_ms1_carry__2_n_6,half_ms1_carry__2_n_7}),
        .S(half_ms[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \half_ms[0]_i_1 
       (.I0(half_ms[0]),
        .O(\half_ms[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \half_ms[16]_i_1 
       (.I0(\half_ms[16]_i_2_n_0 ),
        .I1(\half_ms[16]_i_3_n_0 ),
        .I2(\half_ms[16]_i_4_n_0 ),
        .O(\half_ms[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \half_ms[16]_i_2 
       (.I0(half_ms[7]),
        .I1(half_ms[8]),
        .I2(half_ms[5]),
        .I3(half_ms[6]),
        .I4(half_ms[10]),
        .I5(half_ms[9]),
        .O(\half_ms[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \half_ms[16]_i_3 
       (.I0(half_ms[0]),
        .I1(half_ms[1]),
        .I2(half_ms[2]),
        .I3(half_ms[4]),
        .I4(half_ms[3]),
        .O(\half_ms[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \half_ms[16]_i_4 
       (.I0(half_ms[13]),
        .I1(half_ms[14]),
        .I2(half_ms[11]),
        .I3(half_ms[12]),
        .I4(half_ms[16]),
        .I5(half_ms[15]),
        .O(\half_ms[16]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\half_ms[0]_i_1_n_0 ),
        .Q(half_ms[0]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__1_n_6),
        .Q(half_ms[10]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__1_n_5),
        .Q(half_ms[11]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__1_n_4),
        .Q(half_ms[12]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__2_n_7),
        .Q(half_ms[13]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__2_n_6),
        .Q(half_ms[14]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__2_n_5),
        .Q(half_ms[15]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__2_n_4),
        .Q(half_ms[16]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry_n_7),
        .Q(half_ms[1]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry_n_6),
        .Q(half_ms[2]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry_n_5),
        .Q(half_ms[3]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry_n_4),
        .Q(half_ms[4]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__0_n_7),
        .Q(half_ms[5]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__0_n_6),
        .Q(half_ms[6]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__0_n_5),
        .Q(half_ms[7]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__0_n_4),
        .Q(half_ms[8]),
        .R(\half_ms[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_ms_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(half_ms1_carry__1_n_7),
        .Q(half_ms[9]),
        .R(\half_ms[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \prst_sync[0]_i_1 
       (.I0(gpio_o[0]),
        .O(p_1_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \prst_sync_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(prst_sync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \prst_sync_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(prst_sync[0]),
        .Q(prst_sync[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \prst_sync_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(prst_sync[1]),
        .Q(prst_sync[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \t_us[0]_i_2 
       (.I0(t_us_reg[0]),
        .O(\t_us[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[0] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[0]_i_1_n_7 ),
        .Q(t_us_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\t_us_reg[0]_i_1_n_0 ,\t_us_reg[0]_i_1_n_1 ,\t_us_reg[0]_i_1_n_2 ,\t_us_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_us_reg[0]_i_1_n_4 ,\t_us_reg[0]_i_1_n_5 ,\t_us_reg[0]_i_1_n_6 ,\t_us_reg[0]_i_1_n_7 }),
        .S({t_us_reg[3:1],\t_us[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[10] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[8]_i_1_n_5 ),
        .Q(t_us_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[11] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[8]_i_1_n_4 ),
        .Q(t_us_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[12] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[12]_i_1_n_7 ),
        .Q(t_us_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[12]_i_1 
       (.CI(\t_us_reg[8]_i_1_n_0 ),
        .CO({\t_us_reg[12]_i_1_n_0 ,\t_us_reg[12]_i_1_n_1 ,\t_us_reg[12]_i_1_n_2 ,\t_us_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[12]_i_1_n_4 ,\t_us_reg[12]_i_1_n_5 ,\t_us_reg[12]_i_1_n_6 ,\t_us_reg[12]_i_1_n_7 }),
        .S(t_us_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[13] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[12]_i_1_n_6 ),
        .Q(t_us_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[14] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[12]_i_1_n_5 ),
        .Q(t_us_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[15] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[12]_i_1_n_4 ),
        .Q(t_us_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[16] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[16]_i_1_n_7 ),
        .Q(t_us_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[16]_i_1 
       (.CI(\t_us_reg[12]_i_1_n_0 ),
        .CO({\t_us_reg[16]_i_1_n_0 ,\t_us_reg[16]_i_1_n_1 ,\t_us_reg[16]_i_1_n_2 ,\t_us_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[16]_i_1_n_4 ,\t_us_reg[16]_i_1_n_5 ,\t_us_reg[16]_i_1_n_6 ,\t_us_reg[16]_i_1_n_7 }),
        .S(t_us_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[17] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[16]_i_1_n_6 ),
        .Q(t_us_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[18] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[16]_i_1_n_5 ),
        .Q(t_us_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[19] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[16]_i_1_n_4 ),
        .Q(t_us_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[1] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[0]_i_1_n_6 ),
        .Q(t_us_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[20] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[20]_i_1_n_7 ),
        .Q(t_us_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[20]_i_1 
       (.CI(\t_us_reg[16]_i_1_n_0 ),
        .CO({\t_us_reg[20]_i_1_n_0 ,\t_us_reg[20]_i_1_n_1 ,\t_us_reg[20]_i_1_n_2 ,\t_us_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[20]_i_1_n_4 ,\t_us_reg[20]_i_1_n_5 ,\t_us_reg[20]_i_1_n_6 ,\t_us_reg[20]_i_1_n_7 }),
        .S(t_us_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[21] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[20]_i_1_n_6 ),
        .Q(t_us_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[22] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[20]_i_1_n_5 ),
        .Q(t_us_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[23] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[20]_i_1_n_4 ),
        .Q(t_us_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[24] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[24]_i_1_n_7 ),
        .Q(t_us_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[24]_i_1 
       (.CI(\t_us_reg[20]_i_1_n_0 ),
        .CO({\t_us_reg[24]_i_1_n_0 ,\t_us_reg[24]_i_1_n_1 ,\t_us_reg[24]_i_1_n_2 ,\t_us_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[24]_i_1_n_4 ,\t_us_reg[24]_i_1_n_5 ,\t_us_reg[24]_i_1_n_6 ,\t_us_reg[24]_i_1_n_7 }),
        .S(t_us_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[25] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[24]_i_1_n_6 ),
        .Q(t_us_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[26] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[24]_i_1_n_5 ),
        .Q(t_us_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[27] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[24]_i_1_n_4 ),
        .Q(t_us_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[28] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[28]_i_1_n_7 ),
        .Q(t_us_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[28]_i_1 
       (.CI(\t_us_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_us_reg[28]_i_1_CO_UNCONNECTED [3],\t_us_reg[28]_i_1_n_1 ,\t_us_reg[28]_i_1_n_2 ,\t_us_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[28]_i_1_n_4 ,\t_us_reg[28]_i_1_n_5 ,\t_us_reg[28]_i_1_n_6 ,\t_us_reg[28]_i_1_n_7 }),
        .S(t_us_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[29] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[28]_i_1_n_6 ),
        .Q(t_us_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[2] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[0]_i_1_n_5 ),
        .Q(t_us_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[30] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[28]_i_1_n_5 ),
        .Q(t_us_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[31] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[28]_i_1_n_4 ),
        .Q(t_us_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[3] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[0]_i_1_n_4 ),
        .Q(t_us_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[4] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[4]_i_1_n_7 ),
        .Q(t_us_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[4]_i_1 
       (.CI(\t_us_reg[0]_i_1_n_0 ),
        .CO({\t_us_reg[4]_i_1_n_0 ,\t_us_reg[4]_i_1_n_1 ,\t_us_reg[4]_i_1_n_2 ,\t_us_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[4]_i_1_n_4 ,\t_us_reg[4]_i_1_n_5 ,\t_us_reg[4]_i_1_n_6 ,\t_us_reg[4]_i_1_n_7 }),
        .S(t_us_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[5] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[4]_i_1_n_6 ),
        .Q(t_us_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[6] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[4]_i_1_n_5 ),
        .Q(t_us_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[7] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[4]_i_1_n_4 ),
        .Q(t_us_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[8] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[8]_i_1_n_7 ),
        .Q(t_us_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t_us_reg[8]_i_1 
       (.CI(\t_us_reg[4]_i_1_n_0 ),
        .CO({\t_us_reg[8]_i_1_n_0 ,\t_us_reg[8]_i_1_n_1 ,\t_us_reg[8]_i_1_n_2 ,\t_us_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_us_reg[8]_i_1_n_4 ,\t_us_reg[8]_i_1_n_5 ,\t_us_reg[8]_i_1_n_6 ,\t_us_reg[8]_i_1_n_7 }),
        .S(t_us_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \t_us_reg[9] 
       (.C(clk),
        .CE(us_tick),
        .D(\t_us_reg[8]_i_1_n_6 ),
        .Q(t_us_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(\half_ms[16]_i_1_n_0 ),
        .Q(tick),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[1]),
        .Q(tof_m0[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[11]),
        .Q(tof_m0[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[12]),
        .Q(tof_m0[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[13]),
        .Q(tof_m0[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[14]),
        .Q(tof_m0[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[15]),
        .Q(tof_m0[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[16]),
        .Q(tof_m0[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[17]),
        .Q(tof_m0[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[2]),
        .Q(tof_m0[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[3]),
        .Q(tof_m0[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[4]),
        .Q(tof_m0[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[5]),
        .Q(tof_m0[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[6]),
        .Q(tof_m0[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[7]),
        .Q(tof_m0[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[8]),
        .Q(tof_m0[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[9]),
        .Q(tof_m0[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_o[10]),
        .Q(tof_m0[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[0]),
        .Q(tof_m1[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[10]),
        .Q(tof_m1[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[11]),
        .Q(tof_m1[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[12]),
        .Q(tof_m1[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[13]),
        .Q(tof_m1[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[14]),
        .Q(tof_m1[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[15]),
        .Q(tof_m1[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[16]),
        .Q(tof_m1[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[1]),
        .Q(tof_m1[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[2]),
        .Q(tof_m1[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[3]),
        .Q(tof_m1[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[4]),
        .Q(tof_m1[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[5]),
        .Q(tof_m1[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[6]),
        .Q(tof_m1[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[7]),
        .Q(tof_m1[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[8]),
        .Q(tof_m1[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tof_m1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m0[9]),
        .Q(tof_m1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[0]),
        .Q(\tof_m2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[10]),
        .Q(\tof_m2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[11]),
        .Q(\tof_m2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[12]),
        .Q(\tof_m2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[13]),
        .Q(\tof_m2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[14]),
        .Q(\tof_m2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[15]),
        .Q(\tof_m2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[16]),
        .Q(\tof_m2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[1]),
        .Q(\tof_m2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[2]),
        .Q(\tof_m2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[3]),
        .Q(\tof_m2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[4]),
        .Q(\tof_m2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[5]),
        .Q(\tof_m2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[6]),
        .Q(\tof_m2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[7]),
        .Q(\tof_m2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[8]),
        .Q(\tof_m2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_m2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(tof_m1[9]),
        .Q(\tof_m2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[0] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[0] ),
        .Q(tof_mm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[10] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[10] ),
        .Q(tof_mm[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[11] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[11] ),
        .Q(tof_mm[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[12] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[12] ),
        .Q(tof_mm[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[13] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[13] ),
        .Q(tof_mm[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[14] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[14] ),
        .Q(tof_mm[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[15] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[15] ),
        .Q(tof_mm[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[1] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[1] ),
        .Q(tof_mm[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[2] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[2] ),
        .Q(tof_mm[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[3] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[3] ),
        .Q(tof_mm[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[4] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[4] ),
        .Q(tof_mm[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[5] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[5] ),
        .Q(tof_mm[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[6] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[6] ),
        .Q(tof_mm[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[7] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[7] ),
        .Q(tof_mm[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[8] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[8] ),
        .Q(tof_mm[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_mm_reg[9] 
       (.C(clk),
        .CE(tof_new),
        .D(\tof_m2_reg_n_0_[9] ),
        .Q(tof_mm[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    tof_new_i_1
       (.I0(\tof_m2_reg_n_0_[16] ),
        .I1(tof_m1[16]),
        .O(tof_new_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tof_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(tof_new_i_1_n_0),
        .Q(tof_new),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tof_seq[0]_i_1 
       (.I0(tof_seq_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tof_seq[1]_i_1 
       (.I0(tof_seq_reg[0]),
        .I1(tof_seq_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tof_seq[2]_i_1 
       (.I0(tof_seq_reg[2]),
        .I1(tof_seq_reg[0]),
        .I2(tof_seq_reg[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tof_seq[3]_i_1 
       (.I0(tof_seq_reg[3]),
        .I1(tof_seq_reg[1]),
        .I2(tof_seq_reg[0]),
        .I3(tof_seq_reg[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tof_seq[4]_i_1 
       (.I0(tof_seq_reg[4]),
        .I1(tof_seq_reg[2]),
        .I2(tof_seq_reg[0]),
        .I3(tof_seq_reg[1]),
        .I4(tof_seq_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tof_seq[5]_i_1 
       (.I0(tof_seq_reg[3]),
        .I1(tof_seq_reg[1]),
        .I2(tof_seq_reg[0]),
        .I3(tof_seq_reg[2]),
        .I4(tof_seq_reg[4]),
        .I5(tof_seq_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tof_seq[6]_i_1 
       (.I0(tof_seq_reg[6]),
        .I1(\tof_seq[7]_i_2_n_0 ),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tof_seq[7]_i_1 
       (.I0(tof_seq_reg[7]),
        .I1(\tof_seq[7]_i_2_n_0 ),
        .I2(tof_seq_reg[6]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tof_seq[7]_i_2 
       (.I0(tof_seq_reg[5]),
        .I1(tof_seq_reg[4]),
        .I2(tof_seq_reg[2]),
        .I3(tof_seq_reg[0]),
        .I4(tof_seq_reg[1]),
        .I5(tof_seq_reg[3]),
        .O(\tof_seq[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[0] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[0]),
        .Q(tof_seq_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[1] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[1]),
        .Q(tof_seq_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[2] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[2]),
        .Q(tof_seq_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[3] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[3]),
        .Q(tof_seq_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[4] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[4]),
        .Q(tof_seq_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[5] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[5]),
        .Q(tof_seq_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[6] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[6]),
        .Q(tof_seq_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_seq_reg[7] 
       (.C(clk),
        .CE(tof_new),
        .D(p_0_in__2[7]),
        .Q(tof_seq_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[0] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[0]),
        .Q(tof_us[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[10] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[10]),
        .Q(tof_us[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[11] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[11]),
        .Q(tof_us[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[12] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[12]),
        .Q(tof_us[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[13] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[13]),
        .Q(tof_us[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[14] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[14]),
        .Q(tof_us[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[15] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[15]),
        .Q(tof_us[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[16] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[16]),
        .Q(tof_us[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[17] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[17]),
        .Q(tof_us[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[18] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[18]),
        .Q(tof_us[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[19] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[19]),
        .Q(tof_us[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[1] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[1]),
        .Q(tof_us[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[20] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[20]),
        .Q(tof_us[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[21] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[21]),
        .Q(tof_us[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[22] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[22]),
        .Q(tof_us[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[23] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[23]),
        .Q(tof_us[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[24] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[24]),
        .Q(tof_us[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[25] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[25]),
        .Q(tof_us[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[26] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[26]),
        .Q(tof_us[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[27] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[27]),
        .Q(tof_us[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[28] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[28]),
        .Q(tof_us[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[29] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[29]),
        .Q(tof_us[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[2] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[2]),
        .Q(tof_us[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[30] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[30]),
        .Q(tof_us[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[31] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[31]),
        .Q(tof_us[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[3] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[3]),
        .Q(tof_us[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[4] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[4]),
        .Q(tof_us[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[5] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[5]),
        .Q(tof_us[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[6] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[6]),
        .Q(tof_us[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[7] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[7]),
        .Q(tof_us[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[8] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[8]),
        .Q(tof_us[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tof_us_reg[9] 
       (.C(clk),
        .CE(tof_new),
        .D(t_us_reg[9]),
        .Q(tof_us[9]),
        .R(1'b0));
  system_cam_input_0_0_rect_linebuf u_buf0
       (.E(p_2_in),
        .SR(l0_sof),
        .clk(clk),
        .frame_base0(frame_base0),
        .\g_slice[0].m_reg_0 (l0_d),
        .pclk(pclk),
        .rd_addr0(rd_addr0),
        .rd_data0(rd_data0),
        .rows_gray0(rows_gray0),
        .sof_toggle0(sof_toggle0),
        .sof_toggle_reg_0(\g_bin.u_bin0_n_4 ),
        .\wx_reg[9]_0 (l0_en));
  system_cam_input_0_0_rect_linebuf_1 u_buf1
       (.E(p_2_in_0),
        .SR(l1_sof),
        .clk(clk),
        .frame_base1(frame_base1),
        .\g_slice[0].m_reg_0 (l1_d),
        .pclk(pclk),
        .rd_addr1(rd_addr1),
        .rd_data1(rd_data1),
        .rows_gray1(rows_gray1),
        .sof_toggle1(sof_toggle1),
        .sof_toggle_reg_0(\g_bin.u_bin1_n_4 ),
        .\wx_reg[9]_0 (l1_en));
  system_cam_input_0_0_cam_capture u_cap
       (.D(t_us_reg),
        .Q(Q[13]),
        .SR(u_cap_n_10),
        .c0_afull(c0_afull),
        .c0_wr(c0_wr),
        .cam_d(cam_d),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .clk(clk),
        .\d_q_reg[7]_0 (s0_d),
        .do_wr(do_wr),
        .\en_sync_reg[2] (u_cap_n_7),
        .\en_sync_reg[2]_0 (u_cap_n_11),
        .\fifo_din_reg[7]_0 (c0_din),
        .frame_led0(frame_led0),
        .\h_tof_mm_reg[15]_0 (tof_mm),
        .\h_tof_seq_reg[7]_0 (tof_seq_reg),
        .\h_tof_us_reg[31]_0 (tof_us),
        .href_d(href_d),
        .href_d_reg(u_luma0_n_3),
        .href_q_reg_0(u_cap_n_46),
        .out(en_sync[2]),
        .\px_reg[1] (u_luma0_n_5),
        .s0_href(s0_href),
        .s0_stb(s0_stb),
        .s0_vsync(s0_vsync),
        .second(second),
        .\start_us_reg[23]_0 ({data13,data12,u_cap_n_38,u_cap_n_39,u_cap_n_40,u_cap_n_41,u_cap_n_42,u_cap_n_43,u_cap_n_44,u_cap_n_45}),
        .\state_reg[0]_0 (\en_sync_reg[2]_0 ),
        .stb_reg_0(u_cap_n_12),
        .stb_reg_1(u_cap_n_13),
        .tick(tick),
        .vsync_d(vsync_d),
        .vsync_d_reg(u_cap_n_6),
        .vsync_q_reg_0(u_cap_n_47));
  system_cam_input_0_0_cam_capture_2 u_cap2
       (.D(t_us_reg),
        .Q(\start_us_reg[31] ),
        .S({u_cap2_n_5,u_cap2_n_6,u_cap2_n_7,u_cap2_n_8}),
        .SR(u_cap2_n_66),
        .c1_afull(c1_afull),
        .c1_wr(c1_wr),
        .cam2_d(cam2_d),
        .cam2_href(cam2_href),
        .cam2_pclk(cam2_pclk),
        .cam2_vsync(cam2_vsync),
        .clk(clk),
        .\d_q_reg[7]_0 (s1_d),
        .do_wr(do_wr_4),
        .\en_sync_reg[2] (u_cap2_n_67),
        .\fifo_din_reg[7]_0 (c1_din),
        .frame_led1(frame_led1),
        .\gl_phase_reg[23] ({data13,data12,u_cap_n_38,u_cap_n_39,u_cap_n_40,u_cap_n_41,u_cap_n_42,u_cap_n_43,u_cap_n_44,u_cap_n_45}),
        .\gl_seq_reg[0] (us1_seen),
        .\h_tof_mm_reg[15]_0 (tof_mm),
        .\h_tof_seq_reg[7]_0 (tof_seq_reg),
        .\h_tof_us_reg[31]_0 (tof_us),
        .href_d(href_d_3),
        .href_d_reg(u_luma1_n_3),
        .href_q_reg_0(u_cap2_n_89),
        .out(en_sync[2]),
        .\px_reg[1] (u_luma1_n_5),
        .s1_href(s1_href),
        .s1_stb(s1_stb),
        .s1_vsync(s1_vsync),
        .second(second_2),
        .\start_us_reg[11]_0 ({u_cap2_n_49,u_cap2_n_50,u_cap2_n_51,u_cap2_n_52}),
        .\start_us_reg[15]_0 ({u_cap2_n_45,u_cap2_n_46,u_cap2_n_47,u_cap2_n_48}),
        .\start_us_reg[19]_0 ({u_cap2_n_41,u_cap2_n_42,u_cap2_n_43,u_cap2_n_44}),
        .\start_us_reg[23]_0 ({u_cap2_n_82,u_cap2_n_83,u_cap2_n_84,u_cap2_n_85}),
        .\start_us_reg[31]_0 ({u_cap2_n_86,u_cap2_n_87,u_cap2_n_88}),
        .\start_us_reg[3]_0 ({u_cap2_n_57,u_cap2_n_58,u_cap2_n_59,u_cap2_n_60}),
        .\start_us_reg[7]_0 ({u_cap2_n_53,u_cap2_n_54,u_cap2_n_55,u_cap2_n_56}),
        .\state_reg[0]_0 (\en_sync_reg[2]_0 ),
        .stb_reg_0(u_cap2_n_63),
        .stb_reg_1(u_cap2_n_68),
        .stb_reg_2(u_cap2_n_69),
        .tick(tick),
        .\us1_seen_reg[11] ({u_cap2_n_78,u_cap2_n_79,u_cap2_n_80,u_cap2_n_81}),
        .vsync_d(vsync_d_6),
        .vsync_d_reg(u_cap2_n_62),
        .vsync_q_reg_0(u_cap2_n_90),
        .\wp_reg[12] (\count_reg[13] [13]));
  system_cam_input_0_0_byte_fifo u_cfifo0
       (.Q(Q),
        .c0_afull(c0_afull),
        .c0_wr(c0_wr),
        .clk(clk),
        .din(c0_din),
        .do_wr(do_wr),
        .raw0_dout(raw0_dout),
        .raw0_rd(raw0_rd),
        .\rp_reg[0]_0 (\en_sync_reg[2]_0 ));
  system_cam_input_0_0_byte_fifo_3 u_cfifo1
       (.Q(\count_reg[13] ),
        .c1_afull(c1_afull),
        .c1_wr(c1_wr),
        .clk(clk),
        .din(c1_din),
        .do_wr(do_wr_4),
        .\en_sync_reg[2] (\en_sync_reg[2]_0 ),
        .out(en_sync[2]),
        .raw1_dout(raw1_dout),
        .raw1_rd(raw1_rd));
  system_cam_input_0_0_luma_tap u_luma0
       (.E(u_luma0_n_4),
        .Q(p_0_in),
        .SR(u_cap_n_10),
        .clk(clk),
        .fill_reg_0(u_cap_n_11),
        .href_d(href_d),
        .href_d_reg_0(u_luma0_n_3),
        .href_d_reg_1(u_cap_n_46),
        .out(en_sync[2]),
        .\px_reg[10]_0 (u_cap_n_13),
        .\row_reg[8]_0 (u_luma0_n_5),
        .\row_reg[8]_1 (\en_sync_reg[2]_0 ),
        .\row_reg[8]_2 (u_cap_n_12),
        .s0_href(s0_href),
        .s0_stb(s0_stb),
        .s0_vsync(s0_vsync),
        .second(second),
        .t0_en(t0_en),
        .t0_sof(t0_sof),
        .vsync_d(vsync_d),
        .vsync_d_reg_0(u_cap_n_47),
        .\wr_data_reg[7]_0 (t0_d),
        .wr_en_reg__0_0(prev),
        .wr_sof_reg_0(u_cap_n_7),
        .\yr_reg[-1111111104]_0 (s0_d),
        .\ysum[-1111111111]__0_0 (u_cap_n_6));
  system_cam_input_0_0_luma_tap_4 u_luma1
       (.E(u_luma1_n_4),
        .Q(p_0_in_1),
        .SR(u_cap2_n_66),
        .clk(clk),
        .fill_reg_0(u_cap2_n_67),
        .href_d(href_d_3),
        .href_d_reg_0(u_luma1_n_3),
        .href_d_reg_1(u_cap2_n_89),
        .out(en_sync[2]),
        .p_zero_reg_0(\en_sync_reg[2]_0 ),
        .\px_reg[10]_0 (u_cap2_n_69),
        .\row_reg[8]_0 (u_luma1_n_5),
        .\row_reg[8]_1 (u_cap2_n_68),
        .s1_href(s1_href),
        .s1_stb(s1_stb),
        .s1_vsync(s1_vsync),
        .second(second_2),
        .t1_en(t1_en),
        .t1_sof(t1_sof),
        .vsync_d(vsync_d_6),
        .vsync_d_reg_0(u_cap2_n_90),
        .\wr_data_reg[7]_0 (t1_d),
        .wr_en_reg__0_0(prev_5),
        .wr_sof_reg_0(u_cap2_n_63),
        .\yr_reg[-1111111104]_0 (s1_d),
        .\ysum[-1111111111]__0_0 (u_cap2_n_62));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [0]),
        .Q(us1_seen[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [10]),
        .Q(us1_seen[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [11]),
        .Q(us1_seen[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [12]),
        .Q(us1_seen[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [13]),
        .Q(us1_seen[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [14]),
        .Q(us1_seen[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [15]),
        .Q(us1_seen[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [16]),
        .Q(us1_seen[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [17]),
        .Q(us1_seen[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [18]),
        .Q(us1_seen[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [19]),
        .Q(us1_seen[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [1]),
        .Q(us1_seen[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [20]),
        .Q(us1_seen[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [21]),
        .Q(us1_seen[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [22]),
        .Q(us1_seen[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [23]),
        .Q(us1_seen[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [24]),
        .Q(us1_seen[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [25]),
        .Q(us1_seen[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [26]),
        .Q(us1_seen[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [27]),
        .Q(us1_seen[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [28]),
        .Q(us1_seen[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [29]),
        .Q(us1_seen[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [2]),
        .Q(us1_seen[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [30]),
        .Q(us1_seen[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [31]),
        .Q(us1_seen[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [3]),
        .Q(us1_seen[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [4]),
        .Q(us1_seen[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [5]),
        .Q(us1_seen[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [6]),
        .Q(us1_seen[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [7]),
        .Q(us1_seen[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [8]),
        .Q(us1_seen[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us1_seen_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_us_reg[31] [9]),
        .Q(us1_seen[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \us_cnt[0]_i_1 
       (.I0(us_cnt[0]),
        .O(\us_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[1]_i_1 
       (.I0(us_cnt[0]),
        .I1(us_cnt[1]),
        .O(\us_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[2]_i_1 
       (.I0(us_cnt[1]),
        .I1(us_cnt[0]),
        .I2(us_cnt[2]),
        .O(\us_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_cnt[3]_i_1 
       (.I0(us_cnt[2]),
        .I1(us_cnt[0]),
        .I2(us_cnt[1]),
        .I3(us_cnt[3]),
        .O(\us_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_cnt[4]_i_1 
       (.I0(us_cnt[3]),
        .I1(us_cnt[1]),
        .I2(us_cnt[0]),
        .I3(us_cnt[2]),
        .I4(us_cnt[4]),
        .O(\us_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_cnt[5]_i_1 
       (.I0(us_cnt[4]),
        .I1(us_cnt[2]),
        .I2(us_cnt[0]),
        .I3(us_cnt[1]),
        .I4(us_cnt[3]),
        .I5(us_cnt[5]),
        .O(\us_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \us_cnt[6]_i_1 
       (.I0(us_cnt[5]),
        .I1(us_cnt[3]),
        .I2(\us_cnt[7]_i_3_n_0 ),
        .I3(us_cnt[4]),
        .I4(us_cnt[6]),
        .O(\us_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \us_cnt[7]_i_1 
       (.I0(us_cnt[6]),
        .I1(us_cnt[7]),
        .I2(us_cnt[5]),
        .I3(us_cnt[4]),
        .I4(us_cnt[3]),
        .I5(\us_cnt[7]_i_3_n_0 ),
        .O(\us_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \us_cnt[7]_i_2 
       (.I0(us_cnt[6]),
        .I1(us_cnt[4]),
        .I2(\us_cnt[7]_i_3_n_0 ),
        .I3(us_cnt[3]),
        .I4(us_cnt[5]),
        .I5(us_cnt[7]),
        .O(\us_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \us_cnt[7]_i_3 
       (.I0(us_cnt[1]),
        .I1(us_cnt[0]),
        .I2(us_cnt[2]),
        .O(\us_cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[0]_i_1_n_0 ),
        .Q(us_cnt[0]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[1]_i_1_n_0 ),
        .Q(us_cnt[1]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[2]_i_1_n_0 ),
        .Q(us_cnt[2]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[3]_i_1_n_0 ),
        .Q(us_cnt[3]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[4]_i_1_n_0 ),
        .Q(us_cnt[4]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[5]_i_1_n_0 ),
        .Q(us_cnt[5]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[6]_i_1_n_0 ),
        .Q(us_cnt[6]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[7]_i_2_n_0 ),
        .Q(us_cnt[7]),
        .R(\us_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    us_tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(\us_cnt[7]_i_1_n_0 ),
        .Q(us_tick),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "luma_bin2" *) 
module system_cam_input_0_0_luma_bin2
   (l0_sof,
    out_en_reg_0,
    Q,
    out_en_reg_1,
    out_sof_reg_0,
    \out_data_reg[7]_0 ,
    t0_sof,
    clk,
    E,
    t0_en,
    sof_toggle0,
    \prev_reg[7]_0 ,
    \prev_reg[7]_1 );
  output l0_sof;
  output [0:0]out_en_reg_0;
  output [0:0]Q;
  output [0:0]out_en_reg_1;
  output out_sof_reg_0;
  output [7:0]\out_data_reg[7]_0 ;
  input t0_sof;
  input clk;
  input [0:0]E;
  input t0_en;
  input sof_toggle0;
  input [0:0]\prev_reg[7]_0 ;
  input [7:0]\prev_reg[7]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [8:0]h;
  wire \h[3]_i_2_n_0 ;
  wire \h[3]_i_3_n_0 ;
  wire \h[3]_i_4_n_0 ;
  wire \h[3]_i_5_n_0 ;
  wire \h[7]_i_2_n_0 ;
  wire \h[7]_i_3_n_0 ;
  wire \h[7]_i_4_n_0 ;
  wire \h[7]_i_5_n_0 ;
  wire \h_reg[3]_i_1_n_0 ;
  wire \h_reg[3]_i_1_n_1 ;
  wire \h_reg[3]_i_1_n_2 ;
  wire \h_reg[3]_i_1_n_3 ;
  wire \h_reg[3]_i_1_n_4 ;
  wire \h_reg[3]_i_1_n_5 ;
  wire \h_reg[3]_i_1_n_6 ;
  wire \h_reg[3]_i_1_n_7 ;
  wire \h_reg[7]_i_1_n_0 ;
  wire \h_reg[7]_i_1_n_1 ;
  wire \h_reg[7]_i_1_n_2 ;
  wire \h_reg[7]_i_1_n_3 ;
  wire \h_reg[7]_i_1_n_4 ;
  wire \h_reg[7]_i_1_n_5 ;
  wire \h_reg[7]_i_1_n_6 ;
  wire \h_reg[7]_i_1_n_7 ;
  wire \h_reg[8]_i_1_n_3 ;
  wire [7:0]idx;
  wire l0_sof;
  wire odd_row_i_1_n_0;
  wire odd_row_reg_n_0;
  wire \out_data[1]_i_2_n_0 ;
  wire \out_data[1]_i_3_n_0 ;
  wire \out_data[1]_i_4_n_0 ;
  wire \out_data[1]_i_5_n_0 ;
  wire \out_data[1]_i_6_n_0 ;
  wire \out_data[5]_i_2_n_0 ;
  wire \out_data[5]_i_3_n_0 ;
  wire \out_data[5]_i_4_n_0 ;
  wire \out_data[5]_i_5_n_0 ;
  wire \out_data[5]_i_6_n_0 ;
  wire \out_data[5]_i_7_n_0 ;
  wire \out_data[5]_i_8_n_0 ;
  wire \out_data[5]_i_9_n_0 ;
  wire \out_data[7]_i_1_n_0 ;
  wire \out_data[7]_i_3_n_0 ;
  wire \out_data[7]_i_4_n_0 ;
  wire \out_data[7]_i_5_n_0 ;
  wire \out_data_reg[1]_i_1_n_0 ;
  wire \out_data_reg[1]_i_1_n_1 ;
  wire \out_data_reg[1]_i_1_n_2 ;
  wire \out_data_reg[1]_i_1_n_3 ;
  wire \out_data_reg[5]_i_1_n_0 ;
  wire \out_data_reg[5]_i_1_n_1 ;
  wire \out_data_reg[5]_i_1_n_2 ;
  wire \out_data_reg[5]_i_1_n_3 ;
  wire [7:0]\out_data_reg[7]_0 ;
  wire \out_data_reg[7]_i_2_n_3 ;
  wire [0:0]out_en_reg_0;
  wire [0:0]out_en_reg_1;
  wire out_sof_reg_0;
  wire [7:0]p_0_in__0;
  wire [7:0]p_1_in;
  wire pair_sum_reg_i_1_n_0;
  wire [0:0]\prev_reg[7]_0 ;
  wire [7:0]\prev_reg[7]_1 ;
  wire \prev_reg_n_0_[0] ;
  wire \prev_reg_n_0_[1] ;
  wire \prev_reg_n_0_[2] ;
  wire \prev_reg_n_0_[3] ;
  wire \prev_reg_n_0_[4] ;
  wire \prev_reg_n_0_[5] ;
  wire \prev_reg_n_0_[6] ;
  wire \prev_reg_n_0_[7] ;
  wire sof1;
  wire sof_toggle0;
  wire t0_en;
  wire t0_sof;
  wire [8:0]up;
  wire up0__0_n_0;
  wire up0__1_i_2_n_0;
  wire up0__1_n_0;
  wire up0__2_i_1_n_0;
  wire up0__2_n_0;
  wire up0__3_i_2_n_0;
  wire up0__3_n_0;
  wire up0__4_n_0;
  wire up0__5_n_0;
  wire up0__6_n_0;
  wire up0_i_2_n_0;
  wire up0_i_3_n_0;
  wire up0_n_0;
  wire v1;
  wire v1_odd_reg_n_0;
  wire [8:1]x;
  wire [9:0]x__0;
  wire \x_reg_n_0_[9] ;
  wire [3:1]\NLW_h_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_h_reg[8]_i_1_O_UNCONNECTED ;
  wire [1:0]\NLW_out_data_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_out_data_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_out_data_reg[7]_i_2_O_UNCONNECTED ;
  wire [15:0]NLW_pair_sum_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_pair_sum_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_pair_sum_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_pair_sum_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \g_slice[0].m_reg_i_1 
       (.I0(out_en_reg_0),
        .I1(l0_sof),
        .O(out_en_reg_1));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_2 
       (.I0(\prev_reg_n_0_[3] ),
        .I1(\prev_reg[7]_1 [3]),
        .O(\h[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_3 
       (.I0(\prev_reg_n_0_[2] ),
        .I1(\prev_reg[7]_1 [2]),
        .O(\h[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_4 
       (.I0(\prev_reg_n_0_[1] ),
        .I1(\prev_reg[7]_1 [1]),
        .O(\h[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_5 
       (.I0(\prev_reg_n_0_[0] ),
        .I1(\prev_reg[7]_1 [0]),
        .O(\h[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_2 
       (.I0(\prev_reg_n_0_[7] ),
        .I1(\prev_reg[7]_1 [7]),
        .O(\h[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_3 
       (.I0(\prev_reg_n_0_[6] ),
        .I1(\prev_reg[7]_1 [6]),
        .O(\h[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_4 
       (.I0(\prev_reg_n_0_[5] ),
        .I1(\prev_reg[7]_1 [5]),
        .O(\h[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_5 
       (.I0(\prev_reg_n_0_[4] ),
        .I1(\prev_reg[7]_1 [4]),
        .O(\h[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_7 ),
        .Q(h[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_6 ),
        .Q(h[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_5 ),
        .Q(h[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_4 ),
        .Q(h[3]),
        .R(1'b0));
  CARRY4 \h_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\h_reg[3]_i_1_n_0 ,\h_reg[3]_i_1_n_1 ,\h_reg[3]_i_1_n_2 ,\h_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\prev_reg_n_0_[3] ,\prev_reg_n_0_[2] ,\prev_reg_n_0_[1] ,\prev_reg_n_0_[0] }),
        .O({\h_reg[3]_i_1_n_4 ,\h_reg[3]_i_1_n_5 ,\h_reg[3]_i_1_n_6 ,\h_reg[3]_i_1_n_7 }),
        .S({\h[3]_i_2_n_0 ,\h[3]_i_3_n_0 ,\h[3]_i_4_n_0 ,\h[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_7 ),
        .Q(h[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_6 ),
        .Q(h[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_5 ),
        .Q(h[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_4 ),
        .Q(h[7]),
        .R(1'b0));
  CARRY4 \h_reg[7]_i_1 
       (.CI(\h_reg[3]_i_1_n_0 ),
        .CO({\h_reg[7]_i_1_n_0 ,\h_reg[7]_i_1_n_1 ,\h_reg[7]_i_1_n_2 ,\h_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\prev_reg_n_0_[7] ,\prev_reg_n_0_[6] ,\prev_reg_n_0_[5] ,\prev_reg_n_0_[4] }),
        .O({\h_reg[7]_i_1_n_4 ,\h_reg[7]_i_1_n_5 ,\h_reg[7]_i_1_n_6 ,\h_reg[7]_i_1_n_7 }),
        .S({\h[7]_i_2_n_0 ,\h[7]_i_3_n_0 ,\h[7]_i_4_n_0 ,\h[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[8]_i_1_n_3 ),
        .Q(h[8]),
        .R(1'b0));
  CARRY4 \h_reg[8]_i_1 
       (.CI(\h_reg[7]_i_1_n_0 ),
        .CO({\NLW_h_reg[8]_i_1_CO_UNCONNECTED [3:1],\h_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_h_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(idx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(idx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(idx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(idx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(idx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(idx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(idx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(idx[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h006A)) 
    odd_row_i_1
       (.I0(odd_row_reg_n_0),
        .I1(t0_en),
        .I2(up0_i_2_n_0),
        .I3(t0_sof),
        .O(odd_row_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    odd_row_reg
       (.C(clk),
        .CE(1'b1),
        .D(odd_row_i_1_n_0),
        .Q(odd_row_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[1]_i_2 
       (.I0(h[2]),
        .I1(up[2]),
        .O(\out_data[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[1]_i_3 
       (.I0(up[2]),
        .I1(h[2]),
        .I2(h[3]),
        .I3(up[3]),
        .O(\out_data[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_data[1]_i_4 
       (.I0(h[1]),
        .I1(h[2]),
        .I2(up[2]),
        .O(\out_data[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_data[1]_i_5 
       (.I0(h[1]),
        .I1(up[1]),
        .O(\out_data[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_data[1]_i_6 
       (.I0(up[0]),
        .I1(h[0]),
        .O(\out_data[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_2 
       (.I0(h[6]),
        .I1(up[6]),
        .O(\out_data[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_3 
       (.I0(h[5]),
        .I1(up[5]),
        .O(\out_data[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_4 
       (.I0(h[4]),
        .I1(up[4]),
        .O(\out_data[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_5 
       (.I0(h[3]),
        .I1(up[3]),
        .O(\out_data[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_6 
       (.I0(up[6]),
        .I1(h[6]),
        .I2(h[7]),
        .I3(up[7]),
        .O(\out_data[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_7 
       (.I0(up[5]),
        .I1(h[5]),
        .I2(h[6]),
        .I3(up[6]),
        .O(\out_data[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_8 
       (.I0(up[4]),
        .I1(h[4]),
        .I2(h[5]),
        .I3(up[5]),
        .O(\out_data[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_9 
       (.I0(up[3]),
        .I1(h[3]),
        .I2(h[4]),
        .I3(up[4]),
        .O(\out_data[5]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[7]_i_1 
       (.I0(v1),
        .I1(v1_odd_reg_n_0),
        .O(\out_data[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[7]_i_3 
       (.I0(h[7]),
        .I1(up[7]),
        .O(\out_data[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[7]_i_4 
       (.I0(h[8]),
        .I1(up[8]),
        .O(\out_data[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[7]_i_5 
       (.I0(up[7]),
        .I1(h[7]),
        .I2(h[8]),
        .I3(up[8]),
        .O(\out_data[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\out_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\out_data_reg[7]_0 [1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_data_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\out_data_reg[1]_i_1_n_0 ,\out_data_reg[1]_i_1_n_1 ,\out_data_reg[1]_i_1_n_2 ,\out_data_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_data[1]_i_2_n_0 ,h[1],up[1:0]}),
        .O({p_0_in__0[1:0],\NLW_out_data_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({\out_data[1]_i_3_n_0 ,\out_data[1]_i_4_n_0 ,\out_data[1]_i_5_n_0 ,\out_data[1]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\out_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\out_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\out_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\out_data_reg[7]_0 [5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_data_reg[5]_i_1 
       (.CI(\out_data_reg[1]_i_1_n_0 ),
        .CO({\out_data_reg[5]_i_1_n_0 ,\out_data_reg[5]_i_1_n_1 ,\out_data_reg[5]_i_1_n_2 ,\out_data_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_data[5]_i_2_n_0 ,\out_data[5]_i_3_n_0 ,\out_data[5]_i_4_n_0 ,\out_data[5]_i_5_n_0 }),
        .O(p_0_in__0[5:2]),
        .S({\out_data[5]_i_6_n_0 ,\out_data[5]_i_7_n_0 ,\out_data[5]_i_8_n_0 ,\out_data[5]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\out_data_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\out_data_reg[7]_0 [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_data_reg[7]_i_2 
       (.CI(\out_data_reg[5]_i_1_n_0 ),
        .CO({\NLW_out_data_reg[7]_i_2_CO_UNCONNECTED [3:1],\out_data_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\out_data[7]_i_3_n_0 }),
        .O({\NLW_out_data_reg[7]_i_2_O_UNCONNECTED [3:2],p_0_in__0[7:6]}),
        .S({1'b0,1'b0,\out_data[7]_i_4_n_0 ,\out_data[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    out_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[7]_i_1_n_0 ),
        .Q(out_en_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    out_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(sof1),
        .Q(l0_sof),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/g_bin.u_bin0/pair_sum_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    pair_sum_reg
       (.ADDRARDADDR({1'b1,1'b1,idx,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,up0_n_0,up0__0_n_0,up0__1_n_0,up0__2_n_0,up0__3_n_0,up0__4_n_0,up0__5_n_0,up0__6_n_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,h}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_pair_sum_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_pair_sum_reg_DOBDO_UNCONNECTED[15:9],up}),
        .DOPADOP(NLW_pair_sum_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_pair_sum_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(pair_sum_reg_i_1_n_0),
        .ENBWREN(E),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({v1,v1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    pair_sum_reg_i_1
       (.I0(v1_odd_reg_n_0),
        .O(pair_sum_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[0] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [0]),
        .Q(\prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[1] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [1]),
        .Q(\prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[2] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [2]),
        .Q(\prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[3] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [3]),
        .Q(\prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[4] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [4]),
        .Q(\prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[5] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [5]),
        .Q(\prev_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[6] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [6]),
        .Q(\prev_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[7] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [7]),
        .Q(\prev_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sof1_reg
       (.C(clk),
        .CE(1'b1),
        .D(t0_sof),
        .Q(sof1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    sof_toggle_i_1
       (.I0(l0_sof),
        .I1(sof_toggle0),
        .O(out_sof_reg_0));
  FDRE up0
       (.C(clk),
        .CE(t0_en),
        .D(x[8]),
        .Q(up0_n_0),
        .R(t0_sof));
  FDRE up0__0
       (.C(clk),
        .CE(t0_en),
        .D(x[7]),
        .Q(up0__0_n_0),
        .R(t0_sof));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00C6)) 
    up0__0_i_1
       (.I0(p_1_in[5]),
        .I1(p_1_in[6]),
        .I2(up0_i_3_n_0),
        .I3(up0_i_2_n_0),
        .O(x[7]));
  FDRE up0__1
       (.C(clk),
        .CE(t0_en),
        .D(x[6]),
        .Q(up0__1_n_0),
        .R(t0_sof));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    up0__1_i_1
       (.I0(p_1_in[5]),
        .I1(p_1_in[3]),
        .I2(up0__1_i_2_n_0),
        .I3(p_1_in[2]),
        .I4(p_1_in[4]),
        .O(x[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    up0__1_i_2
       (.I0(p_1_in[0]),
        .I1(Q),
        .I2(p_1_in[1]),
        .O(up0__1_i_2_n_0));
  FDRE up0__2
       (.C(clk),
        .CE(t0_en),
        .D(up0__2_i_1_n_0),
        .Q(up0__2_n_0),
        .R(t0_sof));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    up0__2_i_1
       (.I0(p_1_in[4]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(Q),
        .I4(p_1_in[0]),
        .I5(p_1_in[2]),
        .O(up0__2_i_1_n_0));
  FDRE up0__3
       (.C(clk),
        .CE(t0_en),
        .D(x[4]),
        .Q(up0__3_n_0),
        .R(t0_sof));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    up0__3_i_1
       (.I0(up0__3_i_2_n_0),
        .I1(p_1_in[1]),
        .I2(Q),
        .I3(p_1_in[0]),
        .I4(p_1_in[2]),
        .I5(p_1_in[3]),
        .O(x[4]));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    up0__3_i_2
       (.I0(\x_reg_n_0_[9] ),
        .I1(p_1_in[3]),
        .I2(p_1_in[4]),
        .I3(p_1_in[7]),
        .I4(p_1_in[5]),
        .I5(p_1_in[6]),
        .O(up0__3_i_2_n_0));
  FDRE up0__4
       (.C(clk),
        .CE(t0_en),
        .D(x[3]),
        .Q(up0__4_n_0),
        .R(t0_sof));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    up0__4_i_1
       (.I0(p_1_in[2]),
        .I1(p_1_in[0]),
        .I2(Q),
        .I3(p_1_in[1]),
        .O(x[3]));
  FDRE up0__5
       (.C(clk),
        .CE(t0_en),
        .D(x[2]),
        .Q(up0__5_n_0),
        .R(t0_sof));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    up0__5_i_1
       (.I0(p_1_in[1]),
        .I1(Q),
        .I2(p_1_in[0]),
        .O(x[2]));
  FDRE up0__6
       (.C(clk),
        .CE(t0_en),
        .D(x[1]),
        .Q(up0__6_n_0),
        .R(t0_sof));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    up0__6_i_1
       (.I0(Q),
        .I1(p_1_in[0]),
        .O(x[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44441444)) 
    up0_i_1
       (.I0(up0_i_2_n_0),
        .I1(p_1_in[7]),
        .I2(p_1_in[6]),
        .I3(p_1_in[5]),
        .I4(up0_i_3_n_0),
        .O(x[8]));
  LUT5 #(
    .INIT(32'h000000BA)) 
    up0_i_2
       (.I0(p_1_in[4]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(up0__1_i_2_n_0),
        .I4(up0__3_i_2_n_0),
        .O(up0_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    up0_i_3
       (.I0(p_1_in[3]),
        .I1(p_1_in[1]),
        .I2(Q),
        .I3(p_1_in[0]),
        .I4(p_1_in[2]),
        .I5(p_1_in[4]),
        .O(up0_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v1_odd_reg
       (.C(clk),
        .CE(E),
        .D(odd_row_reg_n_0),
        .Q(v1_odd_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    v1_reg
       (.C(clk),
        .CE(1'b1),
        .D(E),
        .Q(v1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(Q),
        .O(x__0[0]));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \x[9]_i_1 
       (.I0(\x_reg_n_0_[9] ),
        .I1(p_1_in[7]),
        .I2(p_1_in[6]),
        .I3(p_1_in[5]),
        .I4(up0_i_3_n_0),
        .O(x__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk),
        .CE(t0_en),
        .D(x__0[0]),
        .Q(Q),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk),
        .CE(t0_en),
        .D(x[1]),
        .Q(p_1_in[0]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk),
        .CE(t0_en),
        .D(x[2]),
        .Q(p_1_in[1]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk),
        .CE(t0_en),
        .D(x[3]),
        .Q(p_1_in[2]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk),
        .CE(t0_en),
        .D(x[4]),
        .Q(p_1_in[3]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk),
        .CE(t0_en),
        .D(up0__2_i_1_n_0),
        .Q(p_1_in[4]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk),
        .CE(t0_en),
        .D(x[6]),
        .Q(p_1_in[5]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk),
        .CE(t0_en),
        .D(x[7]),
        .Q(p_1_in[6]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk),
        .CE(t0_en),
        .D(x[8]),
        .Q(p_1_in[7]),
        .R(t0_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk),
        .CE(t0_en),
        .D(x__0[9]),
        .Q(\x_reg_n_0_[9] ),
        .R(t0_sof));
endmodule

(* ORIG_REF_NAME = "luma_bin2" *) 
module system_cam_input_0_0_luma_bin2_0
   (l1_sof,
    out_en_reg_0,
    Q,
    out_en_reg_1,
    out_sof_reg_0,
    \out_data_reg[7]_0 ,
    t1_sof,
    clk,
    E,
    t1_en,
    sof_toggle1,
    \prev_reg[7]_0 ,
    \prev_reg[7]_1 );
  output l1_sof;
  output [0:0]out_en_reg_0;
  output [0:0]Q;
  output [0:0]out_en_reg_1;
  output out_sof_reg_0;
  output [7:0]\out_data_reg[7]_0 ;
  input t1_sof;
  input clk;
  input [0:0]E;
  input t1_en;
  input sof_toggle1;
  input [0:0]\prev_reg[7]_0 ;
  input [7:0]\prev_reg[7]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [8:0]h;
  wire \h[3]_i_2_n_0 ;
  wire \h[3]_i_3_n_0 ;
  wire \h[3]_i_4_n_0 ;
  wire \h[3]_i_5_n_0 ;
  wire \h[7]_i_2_n_0 ;
  wire \h[7]_i_3_n_0 ;
  wire \h[7]_i_4_n_0 ;
  wire \h[7]_i_5_n_0 ;
  wire \h_reg[3]_i_1_n_0 ;
  wire \h_reg[3]_i_1_n_1 ;
  wire \h_reg[3]_i_1_n_2 ;
  wire \h_reg[3]_i_1_n_3 ;
  wire \h_reg[3]_i_1_n_4 ;
  wire \h_reg[3]_i_1_n_5 ;
  wire \h_reg[3]_i_1_n_6 ;
  wire \h_reg[3]_i_1_n_7 ;
  wire \h_reg[7]_i_1_n_0 ;
  wire \h_reg[7]_i_1_n_1 ;
  wire \h_reg[7]_i_1_n_2 ;
  wire \h_reg[7]_i_1_n_3 ;
  wire \h_reg[7]_i_1_n_4 ;
  wire \h_reg[7]_i_1_n_5 ;
  wire \h_reg[7]_i_1_n_6 ;
  wire \h_reg[7]_i_1_n_7 ;
  wire \h_reg[8]_i_1_n_3 ;
  wire [7:0]idx;
  wire l1_sof;
  wire odd_row_i_1__0_n_0;
  wire odd_row_reg_n_0;
  wire \out_data[1]_i_2_n_0 ;
  wire \out_data[1]_i_3_n_0 ;
  wire \out_data[1]_i_4_n_0 ;
  wire \out_data[1]_i_5__0_n_0 ;
  wire \out_data[1]_i_6_n_0 ;
  wire \out_data[5]_i_2_n_0 ;
  wire \out_data[5]_i_3_n_0 ;
  wire \out_data[5]_i_4_n_0 ;
  wire \out_data[5]_i_5_n_0 ;
  wire \out_data[5]_i_6_n_0 ;
  wire \out_data[5]_i_7_n_0 ;
  wire \out_data[5]_i_8_n_0 ;
  wire \out_data[5]_i_9_n_0 ;
  wire \out_data[7]_i_1__0_n_0 ;
  wire \out_data[7]_i_3_n_0 ;
  wire \out_data[7]_i_4_n_0 ;
  wire \out_data[7]_i_5_n_0 ;
  wire \out_data_reg[1]_i_1_n_0 ;
  wire \out_data_reg[1]_i_1_n_1 ;
  wire \out_data_reg[1]_i_1_n_2 ;
  wire \out_data_reg[1]_i_1_n_3 ;
  wire \out_data_reg[5]_i_1_n_0 ;
  wire \out_data_reg[5]_i_1_n_1 ;
  wire \out_data_reg[5]_i_1_n_2 ;
  wire \out_data_reg[5]_i_1_n_3 ;
  wire [7:0]\out_data_reg[7]_0 ;
  wire \out_data_reg[7]_i_2_n_3 ;
  wire [0:0]out_en_reg_0;
  wire [0:0]out_en_reg_1;
  wire out_sof_reg_0;
  wire [7:0]p_0_in__0;
  wire [7:0]p_1_in;
  wire pair_sum_reg_i_1__0_n_0;
  wire [0:0]\prev_reg[7]_0 ;
  wire [7:0]\prev_reg[7]_1 ;
  wire \prev_reg_n_0_[0] ;
  wire \prev_reg_n_0_[1] ;
  wire \prev_reg_n_0_[2] ;
  wire \prev_reg_n_0_[3] ;
  wire \prev_reg_n_0_[4] ;
  wire \prev_reg_n_0_[5] ;
  wire \prev_reg_n_0_[6] ;
  wire \prev_reg_n_0_[7] ;
  wire sof1;
  wire sof_toggle1;
  wire t1_en;
  wire t1_sof;
  wire [8:0]up;
  wire up0__0_n_0;
  wire up0__1_i_2__0_n_0;
  wire up0__1_n_0;
  wire up0__2_i_1__0_n_0;
  wire up0__2_n_0;
  wire up0__3_i_2__0_n_0;
  wire up0__3_n_0;
  wire up0__4_n_0;
  wire up0__5_n_0;
  wire up0__6_n_0;
  wire up0_i_2__0_n_0;
  wire up0_i_3__0_n_0;
  wire up0_n_0;
  wire v1;
  wire v1_odd_reg_n_0;
  wire [8:1]x;
  wire [9:0]x__0;
  wire \x_reg_n_0_[9] ;
  wire [3:1]\NLW_h_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_h_reg[8]_i_1_O_UNCONNECTED ;
  wire [1:0]\NLW_out_data_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_out_data_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_out_data_reg[7]_i_2_O_UNCONNECTED ;
  wire [15:0]NLW_pair_sum_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_pair_sum_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_pair_sum_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_pair_sum_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \g_slice[0].m_reg_i_1__0 
       (.I0(out_en_reg_0),
        .I1(l1_sof),
        .O(out_en_reg_1));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_2 
       (.I0(\prev_reg_n_0_[3] ),
        .I1(\prev_reg[7]_1 [3]),
        .O(\h[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_3 
       (.I0(\prev_reg_n_0_[2] ),
        .I1(\prev_reg[7]_1 [2]),
        .O(\h[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_4 
       (.I0(\prev_reg_n_0_[1] ),
        .I1(\prev_reg[7]_1 [1]),
        .O(\h[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[3]_i_5 
       (.I0(\prev_reg_n_0_[0] ),
        .I1(\prev_reg[7]_1 [0]),
        .O(\h[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_2 
       (.I0(\prev_reg_n_0_[7] ),
        .I1(\prev_reg[7]_1 [7]),
        .O(\h[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_3 
       (.I0(\prev_reg_n_0_[6] ),
        .I1(\prev_reg[7]_1 [6]),
        .O(\h[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_4 
       (.I0(\prev_reg_n_0_[5] ),
        .I1(\prev_reg[7]_1 [5]),
        .O(\h[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \h[7]_i_5 
       (.I0(\prev_reg_n_0_[4] ),
        .I1(\prev_reg[7]_1 [4]),
        .O(\h[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_7 ),
        .Q(h[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_6 ),
        .Q(h[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_5 ),
        .Q(h[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[3]_i_1_n_4 ),
        .Q(h[3]),
        .R(1'b0));
  CARRY4 \h_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\h_reg[3]_i_1_n_0 ,\h_reg[3]_i_1_n_1 ,\h_reg[3]_i_1_n_2 ,\h_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\prev_reg_n_0_[3] ,\prev_reg_n_0_[2] ,\prev_reg_n_0_[1] ,\prev_reg_n_0_[0] }),
        .O({\h_reg[3]_i_1_n_4 ,\h_reg[3]_i_1_n_5 ,\h_reg[3]_i_1_n_6 ,\h_reg[3]_i_1_n_7 }),
        .S({\h[3]_i_2_n_0 ,\h[3]_i_3_n_0 ,\h[3]_i_4_n_0 ,\h[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_7 ),
        .Q(h[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_6 ),
        .Q(h[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_5 ),
        .Q(h[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[7]_i_1_n_4 ),
        .Q(h[7]),
        .R(1'b0));
  CARRY4 \h_reg[7]_i_1 
       (.CI(\h_reg[3]_i_1_n_0 ),
        .CO({\h_reg[7]_i_1_n_0 ,\h_reg[7]_i_1_n_1 ,\h_reg[7]_i_1_n_2 ,\h_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\prev_reg_n_0_[7] ,\prev_reg_n_0_[6] ,\prev_reg_n_0_[5] ,\prev_reg_n_0_[4] }),
        .O({\h_reg[7]_i_1_n_4 ,\h_reg[7]_i_1_n_5 ,\h_reg[7]_i_1_n_6 ,\h_reg[7]_i_1_n_7 }),
        .S({\h[7]_i_2_n_0 ,\h[7]_i_3_n_0 ,\h[7]_i_4_n_0 ,\h[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\h_reg[8]_i_1_n_3 ),
        .Q(h[8]),
        .R(1'b0));
  CARRY4 \h_reg[8]_i_1 
       (.CI(\h_reg[7]_i_1_n_0 ),
        .CO({\NLW_h_reg[8]_i_1_CO_UNCONNECTED [3:1],\h_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_h_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(idx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(idx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(idx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(idx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(idx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(idx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(idx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(idx[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h006A)) 
    odd_row_i_1__0
       (.I0(odd_row_reg_n_0),
        .I1(t1_en),
        .I2(up0_i_2__0_n_0),
        .I3(t1_sof),
        .O(odd_row_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    odd_row_reg
       (.C(clk),
        .CE(1'b1),
        .D(odd_row_i_1__0_n_0),
        .Q(odd_row_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[1]_i_2 
       (.I0(h[2]),
        .I1(up[2]),
        .O(\out_data[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[1]_i_3 
       (.I0(up[2]),
        .I1(h[2]),
        .I2(h[3]),
        .I3(up[3]),
        .O(\out_data[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_data[1]_i_4 
       (.I0(h[1]),
        .I1(h[2]),
        .I2(up[2]),
        .O(\out_data[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_data[1]_i_5__0 
       (.I0(h[1]),
        .I1(up[1]),
        .O(\out_data[1]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_data[1]_i_6 
       (.I0(up[0]),
        .I1(h[0]),
        .O(\out_data[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_2 
       (.I0(h[6]),
        .I1(up[6]),
        .O(\out_data[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_3 
       (.I0(h[5]),
        .I1(up[5]),
        .O(\out_data[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_4 
       (.I0(h[4]),
        .I1(up[4]),
        .O(\out_data[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[5]_i_5 
       (.I0(h[3]),
        .I1(up[3]),
        .O(\out_data[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_6 
       (.I0(up[6]),
        .I1(h[6]),
        .I2(h[7]),
        .I3(up[7]),
        .O(\out_data[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_7 
       (.I0(up[5]),
        .I1(h[5]),
        .I2(h[6]),
        .I3(up[6]),
        .O(\out_data[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_8 
       (.I0(up[4]),
        .I1(h[4]),
        .I2(h[5]),
        .I3(up[5]),
        .O(\out_data[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[5]_i_9 
       (.I0(up[3]),
        .I1(h[3]),
        .I2(h[4]),
        .I3(up[4]),
        .O(\out_data[5]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[7]_i_1__0 
       (.I0(v1),
        .I1(v1_odd_reg_n_0),
        .O(\out_data[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[7]_i_3 
       (.I0(h[7]),
        .I1(up[7]),
        .O(\out_data[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_data[7]_i_4 
       (.I0(h[8]),
        .I1(up[8]),
        .O(\out_data[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data[7]_i_5 
       (.I0(up[7]),
        .I1(h[7]),
        .I2(h[8]),
        .I3(up[8]),
        .O(\out_data[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\out_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\out_data_reg[7]_0 [1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_data_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\out_data_reg[1]_i_1_n_0 ,\out_data_reg[1]_i_1_n_1 ,\out_data_reg[1]_i_1_n_2 ,\out_data_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_data[1]_i_2_n_0 ,h[1],up[1:0]}),
        .O({p_0_in__0[1:0],\NLW_out_data_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({\out_data[1]_i_3_n_0 ,\out_data[1]_i_4_n_0 ,\out_data[1]_i_5__0_n_0 ,\out_data[1]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\out_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\out_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\out_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\out_data_reg[7]_0 [5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_data_reg[5]_i_1 
       (.CI(\out_data_reg[1]_i_1_n_0 ),
        .CO({\out_data_reg[5]_i_1_n_0 ,\out_data_reg[5]_i_1_n_1 ,\out_data_reg[5]_i_1_n_2 ,\out_data_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_data[5]_i_2_n_0 ,\out_data[5]_i_3_n_0 ,\out_data[5]_i_4_n_0 ,\out_data[5]_i_5_n_0 }),
        .O(p_0_in__0[5:2]),
        .S({\out_data[5]_i_6_n_0 ,\out_data[5]_i_7_n_0 ,\out_data[5]_i_8_n_0 ,\out_data[5]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\out_data_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(\out_data[7]_i_1__0_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\out_data_reg[7]_0 [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_data_reg[7]_i_2 
       (.CI(\out_data_reg[5]_i_1_n_0 ),
        .CO({\NLW_out_data_reg[7]_i_2_CO_UNCONNECTED [3:1],\out_data_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\out_data[7]_i_3_n_0 }),
        .O({\NLW_out_data_reg[7]_i_2_O_UNCONNECTED [3:2],p_0_in__0[7:6]}),
        .S({1'b0,1'b0,\out_data[7]_i_4_n_0 ,\out_data[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    out_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[7]_i_1__0_n_0 ),
        .Q(out_en_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    out_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(sof1),
        .Q(l1_sof),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/g_bin.u_bin1/pair_sum_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    pair_sum_reg
       (.ADDRARDADDR({1'b1,1'b1,idx,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,up0_n_0,up0__0_n_0,up0__1_n_0,up0__2_n_0,up0__3_n_0,up0__4_n_0,up0__5_n_0,up0__6_n_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,h}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_pair_sum_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_pair_sum_reg_DOBDO_UNCONNECTED[15:9],up}),
        .DOPADOP(NLW_pair_sum_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_pair_sum_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(pair_sum_reg_i_1__0_n_0),
        .ENBWREN(E),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({v1,v1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    pair_sum_reg_i_1__0
       (.I0(v1_odd_reg_n_0),
        .O(pair_sum_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[0] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [0]),
        .Q(\prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[1] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [1]),
        .Q(\prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[2] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [2]),
        .Q(\prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[3] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [3]),
        .Q(\prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[4] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [4]),
        .Q(\prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[5] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [5]),
        .Q(\prev_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[6] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [6]),
        .Q(\prev_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_reg[7] 
       (.C(clk),
        .CE(\prev_reg[7]_0 ),
        .D(\prev_reg[7]_1 [7]),
        .Q(\prev_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sof1_reg
       (.C(clk),
        .CE(1'b1),
        .D(t1_sof),
        .Q(sof1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    sof_toggle_i_1__0
       (.I0(l1_sof),
        .I1(sof_toggle1),
        .O(out_sof_reg_0));
  FDRE up0
       (.C(clk),
        .CE(t1_en),
        .D(x[8]),
        .Q(up0_n_0),
        .R(t1_sof));
  FDRE up0__0
       (.C(clk),
        .CE(t1_en),
        .D(x[7]),
        .Q(up0__0_n_0),
        .R(t1_sof));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00C6)) 
    up0__0_i_1__0
       (.I0(p_1_in[5]),
        .I1(p_1_in[6]),
        .I2(up0_i_3__0_n_0),
        .I3(up0_i_2__0_n_0),
        .O(x[7]));
  FDRE up0__1
       (.C(clk),
        .CE(t1_en),
        .D(x[6]),
        .Q(up0__1_n_0),
        .R(t1_sof));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    up0__1_i_1__0
       (.I0(p_1_in[5]),
        .I1(p_1_in[3]),
        .I2(up0__1_i_2__0_n_0),
        .I3(p_1_in[2]),
        .I4(p_1_in[4]),
        .O(x[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    up0__1_i_2__0
       (.I0(p_1_in[0]),
        .I1(Q),
        .I2(p_1_in[1]),
        .O(up0__1_i_2__0_n_0));
  FDRE up0__2
       (.C(clk),
        .CE(t1_en),
        .D(up0__2_i_1__0_n_0),
        .Q(up0__2_n_0),
        .R(t1_sof));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    up0__2_i_1__0
       (.I0(p_1_in[4]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(Q),
        .I4(p_1_in[0]),
        .I5(p_1_in[2]),
        .O(up0__2_i_1__0_n_0));
  FDRE up0__3
       (.C(clk),
        .CE(t1_en),
        .D(x[4]),
        .Q(up0__3_n_0),
        .R(t1_sof));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    up0__3_i_1__0
       (.I0(up0__3_i_2__0_n_0),
        .I1(p_1_in[1]),
        .I2(Q),
        .I3(p_1_in[0]),
        .I4(p_1_in[2]),
        .I5(p_1_in[3]),
        .O(x[4]));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    up0__3_i_2__0
       (.I0(\x_reg_n_0_[9] ),
        .I1(p_1_in[3]),
        .I2(p_1_in[4]),
        .I3(p_1_in[7]),
        .I4(p_1_in[5]),
        .I5(p_1_in[6]),
        .O(up0__3_i_2__0_n_0));
  FDRE up0__4
       (.C(clk),
        .CE(t1_en),
        .D(x[3]),
        .Q(up0__4_n_0),
        .R(t1_sof));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    up0__4_i_1__0
       (.I0(p_1_in[2]),
        .I1(p_1_in[0]),
        .I2(Q),
        .I3(p_1_in[1]),
        .O(x[3]));
  FDRE up0__5
       (.C(clk),
        .CE(t1_en),
        .D(x[2]),
        .Q(up0__5_n_0),
        .R(t1_sof));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    up0__5_i_1__0
       (.I0(p_1_in[1]),
        .I1(Q),
        .I2(p_1_in[0]),
        .O(x[2]));
  FDRE up0__6
       (.C(clk),
        .CE(t1_en),
        .D(x[1]),
        .Q(up0__6_n_0),
        .R(t1_sof));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    up0__6_i_1__0
       (.I0(Q),
        .I1(p_1_in[0]),
        .O(x[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h44441444)) 
    up0_i_1__0
       (.I0(up0_i_2__0_n_0),
        .I1(p_1_in[7]),
        .I2(p_1_in[6]),
        .I3(p_1_in[5]),
        .I4(up0_i_3__0_n_0),
        .O(x[8]));
  LUT5 #(
    .INIT(32'h000000BA)) 
    up0_i_2__0
       (.I0(p_1_in[4]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(up0__1_i_2__0_n_0),
        .I4(up0__3_i_2__0_n_0),
        .O(up0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    up0_i_3__0
       (.I0(p_1_in[3]),
        .I1(p_1_in[1]),
        .I2(Q),
        .I3(p_1_in[0]),
        .I4(p_1_in[2]),
        .I5(p_1_in[4]),
        .O(up0_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v1_odd_reg
       (.C(clk),
        .CE(E),
        .D(odd_row_reg_n_0),
        .Q(v1_odd_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    v1_reg
       (.C(clk),
        .CE(1'b1),
        .D(E),
        .Q(v1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1__0 
       (.I0(Q),
        .O(x__0[0]));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \x[9]_i_1__0 
       (.I0(\x_reg_n_0_[9] ),
        .I1(p_1_in[7]),
        .I2(p_1_in[6]),
        .I3(p_1_in[5]),
        .I4(up0_i_3__0_n_0),
        .O(x__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk),
        .CE(t1_en),
        .D(x__0[0]),
        .Q(Q),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk),
        .CE(t1_en),
        .D(x[1]),
        .Q(p_1_in[0]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk),
        .CE(t1_en),
        .D(x[2]),
        .Q(p_1_in[1]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk),
        .CE(t1_en),
        .D(x[3]),
        .Q(p_1_in[2]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk),
        .CE(t1_en),
        .D(x[4]),
        .Q(p_1_in[3]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk),
        .CE(t1_en),
        .D(up0__2_i_1__0_n_0),
        .Q(p_1_in[4]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk),
        .CE(t1_en),
        .D(x[6]),
        .Q(p_1_in[5]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk),
        .CE(t1_en),
        .D(x[7]),
        .Q(p_1_in[6]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk),
        .CE(t1_en),
        .D(x[8]),
        .Q(p_1_in[7]),
        .R(t1_sof));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk),
        .CE(t1_en),
        .D(x__0[9]),
        .Q(\x_reg_n_0_[9] ),
        .R(t1_sof));
endmodule

(* ORIG_REF_NAME = "luma_tap" *) 
module system_cam_input_0_0_luma_tap
   (t0_en,
    vsync_d,
    t0_sof,
    href_d_reg_0,
    E,
    \row_reg[8]_0 ,
    wr_en_reg__0_0,
    \wr_data_reg[7]_0 ,
    clk,
    \row_reg[8]_1 ,
    vsync_d_reg_0,
    wr_sof_reg_0,
    href_d_reg_1,
    Q,
    s0_stb,
    s0_href,
    fill_reg_0,
    s0_vsync,
    href_d,
    out,
    \ysum[-1111111111]__0_0 ,
    \px_reg[10]_0 ,
    second,
    SR,
    \row_reg[8]_2 ,
    \yr_reg[-1111111104]_0 );
  output t0_en;
  output vsync_d;
  output t0_sof;
  output href_d_reg_0;
  output [0:0]E;
  output \row_reg[8]_0 ;
  output [0:0]wr_en_reg__0_0;
  output [7:0]\wr_data_reg[7]_0 ;
  input clk;
  input \row_reg[8]_1 ;
  input vsync_d_reg_0;
  input wr_sof_reg_0;
  input href_d_reg_1;
  input [0:0]Q;
  input s0_stb;
  input s0_href;
  input fill_reg_0;
  input s0_vsync;
  input href_d;
  input [0:0]out;
  input \ysum[-1111111111]__0_0 ;
  input \px_reg[10]_0 ;
  input second;
  input [0:0]SR;
  input \row_reg[8]_2 ;
  input [7:0]\yr_reg[-1111111104]_0 ;

  wire [14:1]C;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire fill_i_1_n_0;
  wire fill_reg_0;
  wire fill_reg_n_0;
  wire [0:0]hi;
  wire \hi_reg_n_0_[0] ;
  wire \hi_reg_n_0_[1] ;
  wire \hi_reg_n_0_[2] ;
  wire href_d;
  wire href_d_reg_0;
  wire href_d_reg_1;
  wire [0:0]out;
  wire [1:1]p_1_in;
  wire [7:0]p_2_in;
  wire [0:0]p_rgb;
  wire p_v1_out;
  wire p_v2_out;
  wire p_zero;
  wire p_zero_i_2_n_0;
  wire p_zero_i_3_n_0;
  wire \px[0]_i_1_n_0 ;
  wire \px[10]_i_11_n_0 ;
  wire \px[10]_i_12_n_0 ;
  wire \px[10]_i_1_n_0 ;
  wire \px[10]_i_2_n_0 ;
  wire \px[10]_i_3_n_0 ;
  wire \px[10]_i_4_n_0 ;
  wire \px[10]_i_6_n_0 ;
  wire \px[10]_i_7_n_0 ;
  wire \px[10]_i_8_n_0 ;
  wire \px[10]_i_9_n_0 ;
  wire \px[1]_i_1_n_0 ;
  wire \px[2]_i_1_n_0 ;
  wire \px[3]_i_1_n_0 ;
  wire \px[4]_i_1_n_0 ;
  wire \px[5]_i_1_n_0 ;
  wire \px[6]_i_1_n_0 ;
  wire \px[6]_i_2_n_0 ;
  wire \px[7]_i_1_n_0 ;
  wire \px[8]_i_1_n_0 ;
  wire \px[9]_i_1_n_0 ;
  wire \px_reg[10]_0 ;
  wire \px_reg_n_0_[0] ;
  wire \px_reg_n_0_[10] ;
  wire \px_reg_n_0_[1] ;
  wire \px_reg_n_0_[2] ;
  wire \px_reg_n_0_[3] ;
  wire \px_reg_n_0_[4] ;
  wire \px_reg_n_0_[5] ;
  wire \px_reg_n_0_[6] ;
  wire \px_reg_n_0_[7] ;
  wire \px_reg_n_0_[8] ;
  wire \px_reg_n_0_[9] ;
  wire q_v_reg_srl2_n_0;
  wire q_zero;
  wire [0:0]row;
  wire \row[3]_i_1_n_0 ;
  wire \row[5]_i_1_n_0 ;
  wire \row[7]_i_4_n_0 ;
  wire \row[7]_i_5_n_0 ;
  wire \row[8]_i_1_n_0 ;
  wire \row[8]_i_2_n_0 ;
  wire \row_reg[8]_0 ;
  wire \row_reg[8]_1 ;
  wire \row_reg[8]_2 ;
  wire \row_reg_n_0_[0] ;
  wire \row_reg_n_0_[1] ;
  wire \row_reg_n_0_[2] ;
  wire \row_reg_n_0_[3] ;
  wire \row_reg_n_0_[4] ;
  wire \row_reg_n_0_[5] ;
  wire \row_reg_n_0_[6] ;
  wire \row_reg_n_0_[7] ;
  wire \row_reg_n_0_[8] ;
  wire s0_href;
  wire s0_stb;
  wire s0_vsync;
  wire second;
  wire second_i_1_n_0;
  wire second_reg_n_0;
  wire t0_en;
  wire t0_sof;
  wire vsync_d;
  wire vsync_d_reg_0;
  wire \wr_data[0]_i_10_n_0 ;
  wire \wr_data[0]_i_13_n_0 ;
  wire \wr_data[0]_i_14_n_0 ;
  wire \wr_data[0]_i_15_n_0 ;
  wire \wr_data[0]_i_16_n_0 ;
  wire \wr_data[0]_i_17_n_0 ;
  wire \wr_data[0]_i_18_n_0 ;
  wire \wr_data[0]_i_19_n_0 ;
  wire \wr_data[0]_i_20_n_0 ;
  wire \wr_data[0]_i_3_n_0 ;
  wire \wr_data[0]_i_4_n_0 ;
  wire \wr_data[0]_i_5_n_0 ;
  wire \wr_data[0]_i_6_n_0 ;
  wire \wr_data[0]_i_7_n_0 ;
  wire \wr_data[0]_i_8_n_0 ;
  wire \wr_data[0]_i_9_n_0 ;
  wire \wr_data[4]_i_10_n_0 ;
  wire \wr_data[4]_i_2_n_0 ;
  wire \wr_data[4]_i_3_n_0 ;
  wire \wr_data[4]_i_4_n_0 ;
  wire \wr_data[4]_i_5_n_0 ;
  wire \wr_data[4]_i_7_n_0 ;
  wire \wr_data[4]_i_8_n_0 ;
  wire \wr_data[4]_i_9_n_0 ;
  wire \wr_data[7]_i_2_n_0 ;
  wire \wr_data[7]_i_3_n_0 ;
  wire \wr_data[7]_i_4_n_0 ;
  wire \wr_data[7]_i_6_n_0 ;
  wire \wr_data_reg[0]_i_11_n_0 ;
  wire \wr_data_reg[0]_i_11_n_1 ;
  wire \wr_data_reg[0]_i_11_n_2 ;
  wire \wr_data_reg[0]_i_11_n_3 ;
  wire \wr_data_reg[0]_i_12_n_0 ;
  wire \wr_data_reg[0]_i_12_n_1 ;
  wire \wr_data_reg[0]_i_12_n_2 ;
  wire \wr_data_reg[0]_i_12_n_3 ;
  wire \wr_data_reg[0]_i_1_n_0 ;
  wire \wr_data_reg[0]_i_1_n_1 ;
  wire \wr_data_reg[0]_i_1_n_2 ;
  wire \wr_data_reg[0]_i_1_n_3 ;
  wire \wr_data_reg[0]_i_2_n_0 ;
  wire \wr_data_reg[0]_i_2_n_1 ;
  wire \wr_data_reg[0]_i_2_n_2 ;
  wire \wr_data_reg[0]_i_2_n_3 ;
  wire \wr_data_reg[4]_i_1_n_0 ;
  wire \wr_data_reg[4]_i_1_n_1 ;
  wire \wr_data_reg[4]_i_1_n_2 ;
  wire \wr_data_reg[4]_i_1_n_3 ;
  wire \wr_data_reg[4]_i_6_n_0 ;
  wire \wr_data_reg[4]_i_6_n_1 ;
  wire \wr_data_reg[4]_i_6_n_2 ;
  wire \wr_data_reg[4]_i_6_n_3 ;
  wire [7:0]\wr_data_reg[7]_0 ;
  wire \wr_data_reg[7]_i_1_n_2 ;
  wire \wr_data_reg[7]_i_1_n_3 ;
  wire \wr_data_reg[7]_i_5_n_0 ;
  wire \wr_data_reg[7]_i_5_n_2 ;
  wire \wr_data_reg[7]_i_5_n_3 ;
  wire [0:0]wr_en_reg__0_0;
  wire wr_sof_reg_0;
  wire [12:0]yb;
  wire [12:1]yb0;
  wire \yb[10]_i_11_n_0 ;
  wire \yb[10]_i_12_n_0 ;
  wire \yb[10]_i_13_n_0 ;
  wire \yb[10]_i_2_n_0 ;
  wire \yb[10]_i_3_n_0 ;
  wire \yb[10]_i_4_n_0 ;
  wire \yb[10]_i_5_n_0 ;
  wire \yb[10]_i_6_n_0 ;
  wire \yb[10]_i_7_n_0 ;
  wire \yb[10]_i_8_n_0 ;
  wire \yb[10]_i_9_n_0 ;
  wire \yb[12]_i_2_n_0 ;
  wire \yb[12]_i_3_n_0 ;
  wire \yb[12]_i_4_n_0 ;
  wire \yb[2]_i_2_n_0 ;
  wire \yb[2]_i_3_n_0 ;
  wire \yb[2]_i_4_n_0 ;
  wire \yb[6]_i_2_n_0 ;
  wire \yb[6]_i_3_n_0 ;
  wire \yb[6]_i_4_n_0 ;
  wire \yb[6]_i_5_n_0 ;
  wire \yb[6]_i_6_n_0 ;
  wire \yb[6]_i_7_n_0 ;
  wire \yb[6]_i_8_n_0 ;
  wire \yb_reg[10]_i_10_n_0 ;
  wire \yb_reg[10]_i_10_n_1 ;
  wire \yb_reg[10]_i_10_n_2 ;
  wire \yb_reg[10]_i_10_n_3 ;
  wire \yb_reg[10]_i_10_n_4 ;
  wire \yb_reg[10]_i_10_n_5 ;
  wire \yb_reg[10]_i_10_n_6 ;
  wire \yb_reg[10]_i_10_n_7 ;
  wire \yb_reg[10]_i_1_n_0 ;
  wire \yb_reg[10]_i_1_n_1 ;
  wire \yb_reg[10]_i_1_n_2 ;
  wire \yb_reg[10]_i_1_n_3 ;
  wire \yb_reg[12]_i_1_n_3 ;
  wire \yb_reg[12]_i_5_n_2 ;
  wire \yb_reg[12]_i_5_n_7 ;
  wire \yb_reg[2]_i_1_n_0 ;
  wire \yb_reg[2]_i_1_n_1 ;
  wire \yb_reg[2]_i_1_n_2 ;
  wire \yb_reg[2]_i_1_n_3 ;
  wire \yb_reg[2]_i_1_n_4 ;
  wire \yb_reg[2]_i_1_n_5 ;
  wire \yb_reg[6]_i_1_n_0 ;
  wire \yb_reg[6]_i_1_n_1 ;
  wire \yb_reg[6]_i_1_n_2 ;
  wire \yb_reg[6]_i_1_n_3 ;
  wire [15:1]yg;
  wire [15:1]yg0;
  wire \yg[10]_i_2_n_0 ;
  wire \yg[10]_i_3_n_0 ;
  wire \yg[10]_i_4_n_0 ;
  wire \yg[10]_i_5_n_0 ;
  wire \yg[10]_i_6_n_0 ;
  wire \yg[10]_i_7_n_0 ;
  wire \yg[10]_i_8_n_0 ;
  wire \yg[14]_i_2_n_0 ;
  wire \yg[14]_i_3_n_0 ;
  wire \yg[14]_i_4_n_0 ;
  wire \yg[14]_i_5_n_0 ;
  wire \yg[14]_i_6_n_0 ;
  wire \yg[14]_i_7_n_0 ;
  wire \yg[14]_i_8_n_0 ;
  wire \yg[14]_i_9_n_0 ;
  wire \yg[15]_i_2_n_0 ;
  wire \yg[15]_i_4_n_0 ;
  wire \yg[15]_i_5_n_0 ;
  wire \yg[2]_i_2_n_0 ;
  wire \yg[2]_i_3_n_0 ;
  wire \yg[2]_i_4_n_0 ;
  wire \yg[6]_i_3_n_0 ;
  wire \yg[6]_i_4_n_0 ;
  wire \yg[6]_i_5_n_0 ;
  wire \yg[6]_i_6_n_0 ;
  wire \yg[6]_i_7_n_0 ;
  wire \yg[6]_i_8_n_0 ;
  wire \yg[6]_i_9_n_0 ;
  wire \yg_reg[10]_i_1_n_0 ;
  wire \yg_reg[10]_i_1_n_1 ;
  wire \yg_reg[10]_i_1_n_2 ;
  wire \yg_reg[10]_i_1_n_3 ;
  wire \yg_reg[14]_i_1_n_0 ;
  wire \yg_reg[14]_i_1_n_1 ;
  wire \yg_reg[14]_i_1_n_2 ;
  wire \yg_reg[14]_i_1_n_3 ;
  wire \yg_reg[15]_i_3_n_1 ;
  wire \yg_reg[15]_i_3_n_3 ;
  wire \yg_reg[15]_i_3_n_6 ;
  wire \yg_reg[15]_i_3_n_7 ;
  wire \yg_reg[2]_i_1_n_0 ;
  wire \yg_reg[2]_i_1_n_1 ;
  wire \yg_reg[2]_i_1_n_2 ;
  wire \yg_reg[2]_i_1_n_3 ;
  wire \yg_reg[2]_i_1_n_4 ;
  wire \yg_reg[2]_i_1_n_5 ;
  wire \yg_reg[6]_i_1_n_0 ;
  wire \yg_reg[6]_i_1_n_1 ;
  wire \yg_reg[6]_i_1_n_2 ;
  wire \yg_reg[6]_i_1_n_3 ;
  wire \yg_reg[6]_i_2_n_0 ;
  wire \yg_reg[6]_i_2_n_1 ;
  wire \yg_reg[6]_i_2_n_2 ;
  wire \yg_reg[6]_i_2_n_3 ;
  wire \yg_reg[6]_i_2_n_4 ;
  wire \yg_reg[6]_i_2_n_5 ;
  wire \yg_reg[6]_i_2_n_6 ;
  wire \yg_reg[6]_i_2_n_7 ;
  wire [14:0]yr;
  wire [14:1]yr0;
  wire \yr[-1111111104]__0_i_2_n_0 ;
  wire \yr[-1111111104]__0_i_3_n_0 ;
  wire \yr[13]_i_2_n_0 ;
  wire \yr[13]_i_3_n_0 ;
  wire \yr[13]_i_4_n_0 ;
  wire \yr[1]_i_2_n_0 ;
  wire \yr[1]_i_3_n_0 ;
  wire \yr[1]_i_4_n_0 ;
  wire \yr[5]_i_3_n_0 ;
  wire \yr[5]_i_4_n_0 ;
  wire \yr[5]_i_5_n_0 ;
  wire \yr[5]_i_6_n_0 ;
  wire \yr[5]_i_7_n_0 ;
  wire \yr[5]_i_8_n_0 ;
  wire \yr[9]_i_2_n_0 ;
  wire \yr[9]_i_3_n_0 ;
  wire \yr[9]_i_4_n_0 ;
  wire \yr[9]_i_5_n_0 ;
  wire \yr[9]_i_6_n_0 ;
  wire \yr[9]_i_7_n_0 ;
  wire \yr[9]_i_8_n_0 ;
  wire [7:3]yr_reg;
  wire [7:0]\yr_reg[-1111111104]_0 ;
  wire \yr_reg[-1111111104]__0_n_0 ;
  wire \yr_reg[-1111111105]__0_n_0 ;
  wire \yr_reg[-1111111106]__0_n_0 ;
  wire \yr_reg[-1111111107]__0_n_0 ;
  wire \yr_reg[-1111111108]__0_n_0 ;
  wire \yr_reg[13]_i_1_n_0 ;
  wire \yr_reg[13]_i_1_n_1 ;
  wire \yr_reg[13]_i_1_n_2 ;
  wire \yr_reg[13]_i_1_n_3 ;
  wire \yr_reg[13]_i_5_n_2 ;
  wire \yr_reg[13]_i_5_n_7 ;
  wire \yr_reg[1]_i_1_n_0 ;
  wire \yr_reg[1]_i_1_n_1 ;
  wire \yr_reg[1]_i_1_n_2 ;
  wire \yr_reg[1]_i_1_n_3 ;
  wire \yr_reg[1]_i_1_n_4 ;
  wire \yr_reg[1]_i_1_n_5 ;
  wire \yr_reg[1]_i_1_n_6 ;
  wire \yr_reg[5]_i_1_n_0 ;
  wire \yr_reg[5]_i_1_n_1 ;
  wire \yr_reg[5]_i_1_n_2 ;
  wire \yr_reg[5]_i_1_n_3 ;
  wire \yr_reg[5]_i_2_n_0 ;
  wire \yr_reg[5]_i_2_n_1 ;
  wire \yr_reg[5]_i_2_n_2 ;
  wire \yr_reg[5]_i_2_n_3 ;
  wire \yr_reg[5]_i_2_n_4 ;
  wire \yr_reg[5]_i_2_n_5 ;
  wire \yr_reg[5]_i_2_n_6 ;
  wire \yr_reg[5]_i_2_n_7 ;
  wire \yr_reg[9]_i_1_n_0 ;
  wire \yr_reg[9]_i_1_n_1 ;
  wire \yr_reg[9]_i_1_n_2 ;
  wire \yr_reg[9]_i_1_n_3 ;
  wire [15:8]ysum;
  wire \ysum[-1111111106]__0_n_0 ;
  wire \ysum[-1111111107]__0_n_0 ;
  wire \ysum[-1111111108]__0_n_0 ;
  wire \ysum[-1111111109]__0_n_0 ;
  wire \ysum[-1111111110]__0_n_0 ;
  wire \ysum[-1111111111]__0_0 ;
  wire \ysum[-1111111111]__0_n_0 ;
  wire \ysum[-_n_0_1111111104] ;
  wire \ysum[-_n_0_1111111105] ;
  wire \ysum[-_n_0_1111111106] ;
  wire \ysum[-_n_0_1111111107] ;
  wire \ysum[-_n_0_1111111108] ;
  wire [2:0]\NLW_wr_data_reg[0]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_wr_data_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_data_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_data_reg[7]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_data_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_yb_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_yb_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_yb_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_yb_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_yg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_yg_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_yg_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_yg_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_yr_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_yr_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_yr_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_yr_reg[14]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h33010000)) 
    fill_i_1
       (.I0(\row[7]_i_4_n_0 ),
        .I1(\px[10]_i_7_n_0 ),
        .I2(s0_href),
        .I3(fill_reg_n_0),
        .I4(fill_reg_0),
        .O(fill_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fill_reg
       (.C(clk),
        .CE(1'b1),
        .D(fill_i_1_n_0),
        .Q(fill_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_reg[0] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [0]),
        .Q(\hi_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_reg[1] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [1]),
        .Q(\hi_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_reg[2] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [2]),
        .Q(\hi_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    href_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(href_d_reg_1),
        .Q(href_d_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    p_zero_i_1
       (.I0(fill_reg_n_0),
        .I1(p_zero_i_2_n_0),
        .I2(\px_reg_n_0_[5] ),
        .I3(\px_reg_n_0_[6] ),
        .I4(\px_reg_n_0_[3] ),
        .I5(p_zero_i_3_n_0),
        .O(p_v2_out));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    p_zero_i_2
       (.I0(\px_reg_n_0_[7] ),
        .I1(\px_reg_n_0_[8] ),
        .O(p_zero_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    p_zero_i_3
       (.I0(\px_reg_n_0_[10] ),
        .I1(\px_reg_n_0_[9] ),
        .I2(\px_reg_n_0_[2] ),
        .I3(\px_reg_n_0_[4] ),
        .I4(\px_reg_n_0_[1] ),
        .I5(\px_reg_n_0_[0] ),
        .O(p_zero_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    p_zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_v2_out),
        .Q(p_zero),
        .R(\row_reg[8]_1 ));
  LUT3 #(
    .INIT(8'h40)) 
    pair_sum_reg_i_2
       (.I0(t0_sof),
        .I1(t0_en),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \prev[7]_i_1 
       (.I0(t0_en),
        .I1(t0_sof),
        .O(wr_en_reg__0_0));
  LUT1 #(
    .INIT(2'h1)) 
    \px[0]_i_1 
       (.I0(\px_reg_n_0_[0] ),
        .O(\px[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \px[10]_i_1 
       (.I0(\px[10]_i_4_n_0 ),
        .O(\px[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \px[10]_i_11 
       (.I0(\px_reg_n_0_[8] ),
        .I1(\px_reg_n_0_[7] ),
        .I2(\px_reg_n_0_[5] ),
        .I3(\px_reg_n_0_[6] ),
        .I4(\px_reg_n_0_[3] ),
        .O(\px[10]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \px[10]_i_12 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[6] ),
        .O(\px[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00080008FFFF0008)) 
    \px[10]_i_2 
       (.I0(s0_stb),
        .I1(s0_href),
        .I2(\row_reg[8]_0 ),
        .I3(\px[10]_i_6_n_0 ),
        .I4(fill_reg_n_0),
        .I5(\px[10]_i_7_n_0 ),
        .O(\px[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \px[10]_i_3 
       (.I0(\px_reg_n_0_[10] ),
        .I1(\px_reg_n_0_[9] ),
        .I2(\px[10]_i_8_n_0 ),
        .I3(\px_reg_n_0_[8] ),
        .I4(\px_reg_n_0_[7] ),
        .O(\px[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888880AAAAAAAA)) 
    \px[10]_i_4 
       (.I0(fill_reg_0),
        .I1(\px[10]_i_9_n_0 ),
        .I2(\row_reg[8]_0 ),
        .I3(\px_reg[10]_0 ),
        .I4(\px[10]_i_11_n_0 ),
        .I5(p_zero_i_3_n_0),
        .O(\px[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8A8A8)) 
    \px[10]_i_5 
       (.I0(\row_reg_n_0_[8] ),
        .I1(\row_reg_n_0_[6] ),
        .I2(\row_reg_n_0_[7] ),
        .I3(\row_reg_n_0_[4] ),
        .I4(\row_reg_n_0_[3] ),
        .I5(\row_reg_n_0_[5] ),
        .O(\row_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF54FF)) 
    \px[10]_i_6 
       (.I0(p_zero_i_2_n_0),
        .I1(\px_reg_n_0_[4] ),
        .I2(\px[10]_i_12_n_0 ),
        .I3(second_reg_n_0),
        .I4(\px_reg_n_0_[9] ),
        .I5(\px_reg_n_0_[10] ),
        .O(\px[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \px[10]_i_7 
       (.I0(p_zero_i_3_n_0),
        .I1(\px_reg_n_0_[3] ),
        .I2(\px_reg_n_0_[6] ),
        .I3(\px_reg_n_0_[5] ),
        .I4(\px_reg_n_0_[7] ),
        .I5(\px_reg_n_0_[8] ),
        .O(\px[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \px[10]_i_8 
       (.I0(\px_reg_n_0_[6] ),
        .I1(\px_reg_n_0_[5] ),
        .I2(\px_reg_n_0_[3] ),
        .I3(\px[6]_i_2_n_0 ),
        .I4(\px_reg_n_0_[2] ),
        .I5(\px_reg_n_0_[4] ),
        .O(\px[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \px[10]_i_9 
       (.I0(\px_reg_n_0_[6] ),
        .I1(\px_reg_n_0_[5] ),
        .I2(\px_reg_n_0_[3] ),
        .I3(fill_reg_n_0),
        .I4(\px_reg_n_0_[7] ),
        .I5(\px_reg_n_0_[8] ),
        .O(\px[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAAAAA08AAAA)) 
    \px[1]_i_1 
       (.I0(p_1_in),
        .I1(second),
        .I2(\px[10]_i_6_n_0 ),
        .I3(p_v2_out),
        .I4(\px[10]_i_4_n_0 ),
        .I5(\px_reg_n_0_[1] ),
        .O(\px[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000DF00DF000000)) 
    \px[1]_i_2 
       (.I0(s0_stb),
        .I1(vsync_d),
        .I2(s0_vsync),
        .I3(out),
        .I4(\px_reg_n_0_[1] ),
        .I5(\px_reg_n_0_[0] ),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \px[2]_i_1 
       (.I0(\px_reg_n_0_[2] ),
        .I1(\px_reg_n_0_[0] ),
        .I2(\px_reg_n_0_[1] ),
        .O(\px[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \px[3]_i_1 
       (.I0(\px_reg_n_0_[3] ),
        .I1(\px_reg_n_0_[2] ),
        .I2(\px_reg_n_0_[1] ),
        .I3(\px_reg_n_0_[0] ),
        .O(\px[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \px[4]_i_1 
       (.I0(\px_reg_n_0_[4] ),
        .I1(\px_reg_n_0_[3] ),
        .I2(\px_reg_n_0_[0] ),
        .I3(\px_reg_n_0_[1] ),
        .I4(\px_reg_n_0_[2] ),
        .O(\px[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \px[5]_i_1 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[4] ),
        .I2(\px_reg_n_0_[2] ),
        .I3(\px_reg_n_0_[1] ),
        .I4(\px_reg_n_0_[0] ),
        .I5(\px_reg_n_0_[3] ),
        .O(\px[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \px[6]_i_1 
       (.I0(\px_reg_n_0_[6] ),
        .I1(\px_reg_n_0_[5] ),
        .I2(\px_reg_n_0_[3] ),
        .I3(\px[6]_i_2_n_0 ),
        .I4(\px_reg_n_0_[2] ),
        .I5(\px_reg_n_0_[4] ),
        .O(\px[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \px[6]_i_2 
       (.I0(\px_reg_n_0_[1] ),
        .I1(\px_reg_n_0_[0] ),
        .O(\px[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \px[7]_i_1 
       (.I0(\px_reg_n_0_[7] ),
        .I1(\px[10]_i_8_n_0 ),
        .O(\px[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \px[8]_i_1 
       (.I0(\px_reg_n_0_[8] ),
        .I1(\px[10]_i_8_n_0 ),
        .I2(\px_reg_n_0_[7] ),
        .O(\px[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \px[9]_i_1 
       (.I0(\px_reg_n_0_[9] ),
        .I1(\px_reg_n_0_[7] ),
        .I2(\px_reg_n_0_[8] ),
        .I3(\px[10]_i_8_n_0 ),
        .O(\px[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[0] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[0]_i_1_n_0 ),
        .Q(\px_reg_n_0_[0] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[10] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[10]_i_3_n_0 ),
        .Q(\px_reg_n_0_[10] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\px[1]_i_1_n_0 ),
        .Q(\px_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[2] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[2]_i_1_n_0 ),
        .Q(\px_reg_n_0_[2] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[3] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[3]_i_1_n_0 ),
        .Q(\px_reg_n_0_[3] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[4] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[4]_i_1_n_0 ),
        .Q(\px_reg_n_0_[4] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[5] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[5]_i_1_n_0 ),
        .Q(\px_reg_n_0_[5] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[6] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[6]_i_1_n_0 ),
        .Q(\px_reg_n_0_[6] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[7] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[7]_i_1_n_0 ),
        .Q(\px_reg_n_0_[7] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[8] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[8]_i_1_n_0 ),
        .Q(\px_reg_n_0_[8] ),
        .R(\px[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[9] 
       (.C(clk),
        .CE(\px[10]_i_2_n_0 ),
        .D(\px[9]_i_1_n_0 ),
        .Q(\px_reg_n_0_[9] ),
        .R(\px[10]_i_1_n_0 ));
  (* srl_name = "\\inst/u_luma0/q_v_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    q_v_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_v1_out),
        .Q(q_v_reg_srl2_n_0));
  LUT4 #(
    .INIT(16'hAAEA)) 
    q_v_reg_srl2_i_1
       (.I0(p_rgb),
        .I1(out),
        .I2(fill_reg_n_0),
        .I3(\px[10]_i_7_n_0 ),
        .O(p_v1_out));
  FDRE #(
    .INIT(1'b0)) 
    q_zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_zero),
        .Q(q_zero),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \row[0]_i_1 
       (.I0(\row_reg_n_0_[0] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row[1]_i_1 
       (.I0(\row_reg_n_0_[0] ),
        .I1(\row_reg_n_0_[1] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \row[2]_i_1 
       (.I0(\row_reg_n_0_[2] ),
        .I1(\row_reg_n_0_[0] ),
        .I2(\row_reg_n_0_[1] ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h00FF007F00000080)) 
    \row[3]_i_1 
       (.I0(\row_reg_n_0_[2] ),
        .I1(\row_reg_n_0_[0] ),
        .I2(\row_reg_n_0_[1] ),
        .I3(\row_reg[8]_2 ),
        .I4(\row[7]_i_4_n_0 ),
        .I5(\row_reg_n_0_[3] ),
        .O(\row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \row[4]_i_1 
       (.I0(\row_reg_n_0_[4] ),
        .I1(\row_reg_n_0_[2] ),
        .I2(\row_reg_n_0_[0] ),
        .I3(\row_reg_n_0_[1] ),
        .I4(\row_reg_n_0_[3] ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hF3FFA2AA00005155)) 
    \row[5]_i_1 
       (.I0(\row[7]_i_5_n_0 ),
        .I1(s0_vsync),
        .I2(vsync_d),
        .I3(s0_stb),
        .I4(\row[7]_i_4_n_0 ),
        .I5(\row_reg_n_0_[5] ),
        .O(\row[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \row[6]_i_1 
       (.I0(\row_reg_n_0_[6] ),
        .I1(\row[7]_i_5_n_0 ),
        .I2(\row_reg_n_0_[5] ),
        .O(p_2_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \row[7]_i_2 
       (.I0(\row[7]_i_4_n_0 ),
        .O(row));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \row[7]_i_3 
       (.I0(\row_reg_n_0_[7] ),
        .I1(\row_reg_n_0_[5] ),
        .I2(\row[7]_i_5_n_0 ),
        .I3(\row_reg_n_0_[6] ),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \row[7]_i_4 
       (.I0(\row_reg[8]_0 ),
        .I1(href_d_reg_0),
        .I2(s0_href),
        .I3(s0_stb),
        .O(\row[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row[7]_i_5 
       (.I0(\row_reg_n_0_[3] ),
        .I1(\row_reg_n_0_[1] ),
        .I2(\row_reg_n_0_[0] ),
        .I3(\row_reg_n_0_[2] ),
        .I4(\row_reg_n_0_[4] ),
        .O(\row[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF007F00000080)) 
    \row[8]_i_1 
       (.I0(\row_reg_n_0_[7] ),
        .I1(\row[8]_i_2_n_0 ),
        .I2(\row_reg_n_0_[6] ),
        .I3(\row_reg[8]_2 ),
        .I4(\row[7]_i_4_n_0 ),
        .I5(\row_reg_n_0_[8] ),
        .O(\row[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \row[8]_i_2 
       (.I0(\row_reg_n_0_[5] ),
        .I1(\row_reg_n_0_[4] ),
        .I2(\row_reg_n_0_[2] ),
        .I3(\row_reg_n_0_[0] ),
        .I4(\row_reg_n_0_[1] ),
        .I5(\row_reg_n_0_[3] ),
        .O(\row[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[0]),
        .Q(\row_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[1]),
        .Q(\row_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[2]),
        .Q(\row_reg_n_0_[2] ),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\row[3]_i_1_n_0 ),
        .Q(\row_reg_n_0_[3] ),
        .S(\row_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[4] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[4]),
        .Q(\row_reg_n_0_[4] ),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \row_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\row[5]_i_1_n_0 ),
        .Q(\row_reg_n_0_[5] ),
        .S(\row_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[6] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[6]),
        .Q(\row_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[7] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[7]),
        .Q(\row_reg_n_0_[7] ),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \row_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\row[8]_i_1_n_0 ),
        .Q(\row_reg_n_0_[8] ),
        .S(\row_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hC0CCC4CC0C000000)) 
    second_i_1
       (.I0(href_d_reg_0),
        .I1(fill_reg_0),
        .I2(\row_reg[8]_0 ),
        .I3(s0_stb),
        .I4(s0_href),
        .I5(second_reg_n_0),
        .O(second_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    second_reg
       (.C(clk),
        .CE(1'b1),
        .D(second_i_1_n_0),
        .Q(second_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_d_reg_0),
        .Q(vsync_d),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_10 
       (.I0(yg[1]),
        .I1(C[1]),
        .O(\wr_data[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_13 
       (.I0(yb[7]),
        .I1(yr[7]),
        .O(\wr_data[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_14 
       (.I0(yb[6]),
        .I1(yr[6]),
        .O(\wr_data[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_15 
       (.I0(yb[5]),
        .I1(yr[5]),
        .O(\wr_data[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_16 
       (.I0(yb[4]),
        .I1(yr[4]),
        .O(\wr_data[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_17 
       (.I0(yb[3]),
        .I1(yr[3]),
        .O(\wr_data[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_18 
       (.I0(yb[2]),
        .I1(yr[2]),
        .O(\wr_data[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_19 
       (.I0(yb[1]),
        .I1(yr[1]),
        .O(\wr_data[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_20 
       (.I0(yb[0]),
        .I1(yr[0]),
        .O(\wr_data[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_3 
       (.I0(yg[8]),
        .I1(C[8]),
        .O(\wr_data[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_4 
       (.I0(yg[7]),
        .I1(C[7]),
        .O(\wr_data[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_5 
       (.I0(yg[6]),
        .I1(C[6]),
        .O(\wr_data[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_6 
       (.I0(yg[5]),
        .I1(C[5]),
        .O(\wr_data[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_7 
       (.I0(yg[4]),
        .I1(C[4]),
        .O(\wr_data[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_8 
       (.I0(yg[3]),
        .I1(C[3]),
        .O(\wr_data[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_9 
       (.I0(yg[2]),
        .I1(C[2]),
        .O(\wr_data[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_10 
       (.I0(yb[8]),
        .I1(yr[8]),
        .O(\wr_data[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_2 
       (.I0(yg[12]),
        .I1(C[12]),
        .O(\wr_data[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_3 
       (.I0(yg[11]),
        .I1(C[11]),
        .O(\wr_data[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_4 
       (.I0(yg[10]),
        .I1(C[10]),
        .O(\wr_data[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_5 
       (.I0(yg[9]),
        .I1(C[9]),
        .O(\wr_data[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_7 
       (.I0(yb[11]),
        .I1(yr[11]),
        .O(\wr_data[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_8 
       (.I0(yb[10]),
        .I1(yr[10]),
        .O(\wr_data[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_9 
       (.I0(yb[9]),
        .I1(yr[9]),
        .O(\wr_data[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_2 
       (.I0(yg[15]),
        .I1(\wr_data_reg[7]_i_5_n_0 ),
        .O(\wr_data[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_3 
       (.I0(yg[14]),
        .I1(C[14]),
        .O(\wr_data[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_4 
       (.I0(yg[13]),
        .I1(C[13]),
        .O(\wr_data[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_6 
       (.I0(yb[12]),
        .I1(yr[12]),
        .O(\wr_data[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[8]),
        .Q(\wr_data_reg[7]_0 [0]),
        .R(q_zero));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[0]_i_1 
       (.CI(\wr_data_reg[0]_i_2_n_0 ),
        .CO({\wr_data_reg[0]_i_1_n_0 ,\wr_data_reg[0]_i_1_n_1 ,\wr_data_reg[0]_i_1_n_2 ,\wr_data_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(yg[8:5]),
        .O({ysum[8],\NLW_wr_data_reg[0]_i_1_O_UNCONNECTED [2:0]}),
        .S({\wr_data[0]_i_3_n_0 ,\wr_data[0]_i_4_n_0 ,\wr_data[0]_i_5_n_0 ,\wr_data[0]_i_6_n_0 }));
  CARRY4 \wr_data_reg[0]_i_11 
       (.CI(\wr_data_reg[0]_i_12_n_0 ),
        .CO({\wr_data_reg[0]_i_11_n_0 ,\wr_data_reg[0]_i_11_n_1 ,\wr_data_reg[0]_i_11_n_2 ,\wr_data_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(yb[7:4]),
        .O(C[7:4]),
        .S({\wr_data[0]_i_13_n_0 ,\wr_data[0]_i_14_n_0 ,\wr_data[0]_i_15_n_0 ,\wr_data[0]_i_16_n_0 }));
  CARRY4 \wr_data_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\wr_data_reg[0]_i_12_n_0 ,\wr_data_reg[0]_i_12_n_1 ,\wr_data_reg[0]_i_12_n_2 ,\wr_data_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(yb[3:0]),
        .O({C[3:1],\NLW_wr_data_reg[0]_i_12_O_UNCONNECTED [0]}),
        .S({\wr_data[0]_i_17_n_0 ,\wr_data[0]_i_18_n_0 ,\wr_data[0]_i_19_n_0 ,\wr_data[0]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\wr_data_reg[0]_i_2_n_0 ,\wr_data_reg[0]_i_2_n_1 ,\wr_data_reg[0]_i_2_n_2 ,\wr_data_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(yg[4:1]),
        .O(\NLW_wr_data_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\wr_data[0]_i_7_n_0 ,\wr_data[0]_i_8_n_0 ,\wr_data[0]_i_9_n_0 ,\wr_data[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[9]),
        .Q(\wr_data_reg[7]_0 [1]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[10]),
        .Q(\wr_data_reg[7]_0 [2]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[11]),
        .Q(\wr_data_reg[7]_0 [3]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[12]),
        .Q(\wr_data_reg[7]_0 [4]),
        .R(q_zero));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[4]_i_1 
       (.CI(\wr_data_reg[0]_i_1_n_0 ),
        .CO({\wr_data_reg[4]_i_1_n_0 ,\wr_data_reg[4]_i_1_n_1 ,\wr_data_reg[4]_i_1_n_2 ,\wr_data_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(yg[12:9]),
        .O(ysum[12:9]),
        .S({\wr_data[4]_i_2_n_0 ,\wr_data[4]_i_3_n_0 ,\wr_data[4]_i_4_n_0 ,\wr_data[4]_i_5_n_0 }));
  CARRY4 \wr_data_reg[4]_i_6 
       (.CI(\wr_data_reg[0]_i_11_n_0 ),
        .CO({\wr_data_reg[4]_i_6_n_0 ,\wr_data_reg[4]_i_6_n_1 ,\wr_data_reg[4]_i_6_n_2 ,\wr_data_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(yb[11:8]),
        .O(C[11:8]),
        .S({\wr_data[4]_i_7_n_0 ,\wr_data[4]_i_8_n_0 ,\wr_data[4]_i_9_n_0 ,\wr_data[4]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[13]),
        .Q(\wr_data_reg[7]_0 [5]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[14]),
        .Q(\wr_data_reg[7]_0 [6]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[15]),
        .Q(\wr_data_reg[7]_0 [7]),
        .R(q_zero));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[7]_i_1 
       (.CI(\wr_data_reg[4]_i_1_n_0 ),
        .CO({\NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED [3:2],\wr_data_reg[7]_i_1_n_2 ,\wr_data_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,yg[14:13]}),
        .O({\NLW_wr_data_reg[7]_i_1_O_UNCONNECTED [3],ysum[15:13]}),
        .S({1'b0,\wr_data[7]_i_2_n_0 ,\wr_data[7]_i_3_n_0 ,\wr_data[7]_i_4_n_0 }));
  CARRY4 \wr_data_reg[7]_i_5 
       (.CI(\wr_data_reg[4]_i_6_n_0 ),
        .CO({\wr_data_reg[7]_i_5_n_0 ,\NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED [2],\wr_data_reg[7]_i_5_n_2 ,\wr_data_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,yb[12]}),
        .O({\NLW_wr_data_reg[7]_i_5_O_UNCONNECTED [3],C[14:12]}),
        .S({1'b1,yr[14:13],\wr_data[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    wr_en_reg__0
       (.C(clk),
        .CE(1'b1),
        .D(q_v_reg_srl2_n_0),
        .Q(t0_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wr_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_sof_reg_0),
        .Q(t0_sof),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[10]_i_11 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\ysum[-_n_0_1111111106] ),
        .O(\yb[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[10]_i_12 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\ysum[-_n_0_1111111107] ),
        .O(\yb[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[10]_i_13 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\ysum[-_n_0_1111111108] ),
        .O(\yb[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_2 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\yb_reg[12]_i_5_n_7 ),
        .I2(\ysum[-_n_0_1111111107] ),
        .O(\yb[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_3 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[10]_i_10_n_4 ),
        .I2(\ysum[-_n_0_1111111108] ),
        .O(\yb[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_4 
       (.I0(\ysum[-_n_0_1111111107] ),
        .I1(\yb_reg[10]_i_10_n_5 ),
        .I2(\ysum[-_n_0_1111111104] ),
        .O(\yb[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_5 
       (.I0(\ysum[-_n_0_1111111108] ),
        .I1(\yb_reg[10]_i_10_n_6 ),
        .I2(\ysum[-_n_0_1111111105] ),
        .O(\yb[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_6 
       (.I0(\ysum[-_n_0_1111111107] ),
        .I1(\yb_reg[12]_i_5_n_7 ),
        .I2(\ysum[-_n_0_1111111105] ),
        .I3(\ysum[-_n_0_1111111104] ),
        .I4(\yb_reg[12]_i_5_n_2 ),
        .I5(\ysum[-_n_0_1111111106] ),
        .O(\yb[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_7 
       (.I0(\ysum[-_n_0_1111111108] ),
        .I1(\yb_reg[10]_i_10_n_4 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .I3(\ysum[-_n_0_1111111105] ),
        .I4(\yb_reg[12]_i_5_n_7 ),
        .I5(\ysum[-_n_0_1111111107] ),
        .O(\yb[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_8 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_5 ),
        .I2(\ysum[-_n_0_1111111107] ),
        .I3(\ysum[-_n_0_1111111106] ),
        .I4(\yb_reg[10]_i_10_n_4 ),
        .I5(\ysum[-_n_0_1111111108] ),
        .O(\yb[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_9 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\yb_reg[10]_i_10_n_6 ),
        .I2(\ysum[-_n_0_1111111108] ),
        .I3(\ysum[-_n_0_1111111107] ),
        .I4(\yb_reg[10]_i_10_n_5 ),
        .I5(\ysum[-_n_0_1111111104] ),
        .O(\yb[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[12]_i_2 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[12]_i_5_n_2 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .O(\yb[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yb[12]_i_3 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\ysum[-_n_0_1111111104] ),
        .O(\yb[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \yb[12]_i_4 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[12]_i_5_n_2 ),
        .I2(\ysum[-_n_0_1111111104] ),
        .I3(\ysum[-_n_0_1111111105] ),
        .O(\yb[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[2]_i_2 
       (.I0(\ysum[-_n_0_1111111107] ),
        .I1(\ysum[-_n_0_1111111104] ),
        .O(\yb[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[2]_i_3 
       (.I0(\ysum[-_n_0_1111111108] ),
        .I1(\ysum[-_n_0_1111111105] ),
        .O(\yb[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[2]_i_4 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\ysum[-_n_0_1111111106] ),
        .O(\yb[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[6]_i_2 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .O(\yb[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \yb[6]_i_3 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .O(\yb[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \yb[6]_i_4 
       (.I0(\yb_reg[2]_i_1_n_5 ),
        .I1(\ysum[-_n_0_1111111106] ),
        .O(\yb[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[6]_i_5 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111104] ),
        .I3(\ysum[-_n_0_1111111108] ),
        .I4(\yb_reg[10]_i_10_n_6 ),
        .I5(\ysum[-_n_0_1111111105] ),
        .O(\yb[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \yb[6]_i_6 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .I3(\ysum[-_n_0_1111111105] ),
        .I4(\yb_reg[2]_i_1_n_4 ),
        .O(\yb[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \yb[6]_i_7 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[2]_i_1_n_5 ),
        .I2(\yb_reg[2]_i_1_n_4 ),
        .I3(\ysum[-_n_0_1111111105] ),
        .O(\yb[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[6]_i_8 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[2]_i_1_n_5 ),
        .O(\yb[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ysum[-_n_0_1111111106] ),
        .Q(yb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[10]),
        .Q(yb[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[10]_i_1 
       (.CI(\yb_reg[6]_i_1_n_0 ),
        .CO({\yb_reg[10]_i_1_n_0 ,\yb_reg[10]_i_1_n_1 ,\yb_reg[10]_i_1_n_2 ,\yb_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yb[10]_i_2_n_0 ,\yb[10]_i_3_n_0 ,\yb[10]_i_4_n_0 ,\yb[10]_i_5_n_0 }),
        .O(yb0[10:7]),
        .S({\yb[10]_i_6_n_0 ,\yb[10]_i_7_n_0 ,\yb[10]_i_8_n_0 ,\yb[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[10]_i_10 
       (.CI(\yb_reg[2]_i_1_n_0 ),
        .CO({\yb_reg[10]_i_10_n_0 ,\yb_reg[10]_i_10_n_1 ,\yb_reg[10]_i_10_n_2 ,\yb_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\ysum[-_n_0_1111111104] ,\ysum[-_n_0_1111111105] ,\ysum[-_n_0_1111111106] }),
        .O({\yb_reg[10]_i_10_n_4 ,\yb_reg[10]_i_10_n_5 ,\yb_reg[10]_i_10_n_6 ,\yb_reg[10]_i_10_n_7 }),
        .S({\ysum[-_n_0_1111111105] ,\yb[10]_i_11_n_0 ,\yb[10]_i_12_n_0 ,\yb[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[11]),
        .Q(yb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[12]),
        .Q(yb[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[12]_i_1 
       (.CI(\yb_reg[10]_i_1_n_0 ),
        .CO({\NLW_yb_reg[12]_i_1_CO_UNCONNECTED [3:1],\yb_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\yb[12]_i_2_n_0 }),
        .O({\NLW_yb_reg[12]_i_1_O_UNCONNECTED [3:2],yb0[12:11]}),
        .S({1'b0,1'b0,\yb[12]_i_3_n_0 ,\yb[12]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[12]_i_5 
       (.CI(\yb_reg[10]_i_10_n_0 ),
        .CO({\NLW_yb_reg[12]_i_5_CO_UNCONNECTED [3:2],\yb_reg[12]_i_5_n_2 ,\NLW_yb_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yb_reg[12]_i_5_O_UNCONNECTED [3:1],\yb_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,\ysum[-_n_0_1111111104] }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[1]),
        .Q(yb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[2]),
        .Q(yb[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\yb_reg[2]_i_1_n_0 ,\yb_reg[2]_i_1_n_1 ,\yb_reg[2]_i_1_n_2 ,\yb_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ysum[-_n_0_1111111107] ,\ysum[-_n_0_1111111108] ,\ysum[-_n_0_1111111104] ,1'b0}),
        .O({\yb_reg[2]_i_1_n_4 ,\yb_reg[2]_i_1_n_5 ,yb0[2:1]}),
        .S({\yb[2]_i_2_n_0 ,\yb[2]_i_3_n_0 ,\yb[2]_i_4_n_0 ,\ysum[-_n_0_1111111105] }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[3]),
        .Q(yb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[4]),
        .Q(yb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[5]),
        .Q(yb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[6]),
        .Q(yb[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\yb_reg[6]_i_1_n_0 ,\yb_reg[6]_i_1_n_1 ,\yb_reg[6]_i_1_n_2 ,\yb_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yb[6]_i_2_n_0 ,\yb[6]_i_3_n_0 ,\yb[6]_i_4_n_0 ,1'b0}),
        .O(yb0[6:3]),
        .S({\yb[6]_i_5_n_0 ,\yb[6]_i_6_n_0 ,\yb[6]_i_7_n_0 ,\yb[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[7]),
        .Q(yb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[8]),
        .Q(yb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[9]),
        .Q(yb[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE8)) 
    \yg[10]_i_2 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_7 ),
        .I2(\ysum[-1111111109]__0_n_0 ),
        .O(\yg[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \yg[10]_i_3 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\yg_reg[6]_i_2_n_4 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yg[10]_i_4 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .I1(\ysum[-1111111107]__0_n_0 ),
        .I2(\yg_reg[6]_i_2_n_4 ),
        .O(\yg[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \yg[10]_i_5 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_6 ),
        .I2(\ysum[-1111111108]__0_n_0 ),
        .I3(\yg[10]_i_2_n_0 ),
        .O(\yg[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \yg[10]_i_6 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_7 ),
        .I2(\ysum[-1111111109]__0_n_0 ),
        .I3(\yg[10]_i_3_n_0 ),
        .O(\yg[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \yg[10]_i_7 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\yg_reg[6]_i_2_n_4 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .I3(\yg_reg[6]_i_2_n_5 ),
        .I4(\ysum[-1111111108]__0_n_0 ),
        .O(\yg[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yg[10]_i_8 
       (.I0(\ysum[-1111111108]__0_n_0 ),
        .I1(\yg_reg[6]_i_2_n_5 ),
        .I2(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \yg[14]_i_2 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .O(\yg[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \yg[14]_i_3 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .O(\yg[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yg[14]_i_4 
       (.I0(\yg_reg[15]_i_3_n_1 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .I2(\ysum[-1111111107]__0_n_0 ),
        .O(\yg[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \yg[14]_i_5 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_6 ),
        .I2(\ysum[-1111111108]__0_n_0 ),
        .O(\yg[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \yg[14]_i_6 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \yg[14]_i_7 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .I2(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \yg[14]_i_8 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .I2(\yg_reg[15]_i_3_n_1 ),
        .I3(\ysum[-1111111106]__0_n_0 ),
        .O(\yg[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \yg[14]_i_9 
       (.I0(\yg[14]_i_5_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .I3(\ysum[-1111111107]__0_n_0 ),
        .O(\yg[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \yg[15]_i_2 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .O(\yg[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \yg[15]_i_4 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \yg[15]_i_5 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[2]_i_2 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .I1(\ysum[-1111111108]__0_n_0 ),
        .O(\yg[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[2]_i_3 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\ysum[-1111111109]__0_n_0 ),
        .O(\yg[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \yg[2]_i_4 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yg[6]_i_3 
       (.I0(\yg_reg[6]_i_2_n_6 ),
        .I1(\ysum[-1111111109]__0_n_0 ),
        .O(\yg[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yg[6]_i_4 
       (.I0(\yg_reg[6]_i_2_n_7 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yg[6]_i_5 
       (.I0(\yg_reg[2]_i_1_n_4 ),
        .I1(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_6 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_7 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_8 
       (.I0(\ysum[-1111111108]__0_n_0 ),
        .I1(\ysum[-1111111106]__0_n_0 ),
        .O(\yg[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_9 
       (.I0(\ysum[-1111111109]__0_n_0 ),
        .I1(\ysum[-1111111107]__0_n_0 ),
        .O(\yg[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[10]),
        .Q(yg[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[10]_i_1 
       (.CI(\yg_reg[6]_i_1_n_0 ),
        .CO({\yg_reg[10]_i_1_n_0 ,\yg_reg[10]_i_1_n_1 ,\yg_reg[10]_i_1_n_2 ,\yg_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yg[10]_i_2_n_0 ,\yg[10]_i_3_n_0 ,\yg[10]_i_4_n_0 ,\ysum[-1111111111]__0_n_0 }),
        .O(yg0[10:7]),
        .S({\yg[10]_i_5_n_0 ,\yg[10]_i_6_n_0 ,\yg[10]_i_7_n_0 ,\yg[10]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[11]),
        .Q(yg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[12]),
        .Q(yg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[13]),
        .Q(yg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[14]),
        .Q(yg[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[14]_i_1 
       (.CI(\yg_reg[10]_i_1_n_0 ),
        .CO({\yg_reg[14]_i_1_n_0 ,\yg_reg[14]_i_1_n_1 ,\yg_reg[14]_i_1_n_2 ,\yg_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yg[14]_i_2_n_0 ,\yg[14]_i_3_n_0 ,\yg[14]_i_4_n_0 ,\yg[14]_i_5_n_0 }),
        .O(yg0[14:11]),
        .S({\yg[14]_i_6_n_0 ,\yg[14]_i_7_n_0 ,\yg[14]_i_8_n_0 ,\yg[14]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[15]),
        .Q(yg[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[15]_i_1 
       (.CI(\yg_reg[14]_i_1_n_0 ),
        .CO(\NLW_yg_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yg_reg[15]_i_1_O_UNCONNECTED [3:1],yg0[15]}),
        .S({1'b0,1'b0,1'b0,\yg[15]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[15]_i_3 
       (.CI(\yg_reg[6]_i_2_n_0 ),
        .CO({\NLW_yg_reg[15]_i_3_CO_UNCONNECTED [3],\yg_reg[15]_i_3_n_1 ,\NLW_yg_reg[15]_i_3_CO_UNCONNECTED [1],\yg_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ysum[-1111111110]__0_n_0 ,\ysum[-1111111111]__0_n_0 }),
        .O({\NLW_yg_reg[15]_i_3_O_UNCONNECTED [3:2],\yg_reg[15]_i_3_n_6 ,\yg_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\yg[15]_i_4_n_0 ,\yg[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[1]),
        .Q(yg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[2]),
        .Q(yg[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\yg_reg[2]_i_1_n_0 ,\yg_reg[2]_i_1_n_1 ,\yg_reg[2]_i_1_n_2 ,\yg_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ysum[-1111111110]__0_n_0 ,\ysum[-1111111111]__0_n_0 ,1'b0,1'b1}),
        .O({\yg_reg[2]_i_1_n_4 ,\yg_reg[2]_i_1_n_5 ,yg0[2:1]}),
        .S({\yg[2]_i_2_n_0 ,\yg[2]_i_3_n_0 ,\yg[2]_i_4_n_0 ,\ysum[-1111111111]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[3]),
        .Q(yg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[4]),
        .Q(yg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[5]),
        .Q(yg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[6]),
        .Q(yg[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\yg_reg[6]_i_1_n_0 ,\yg_reg[6]_i_1_n_1 ,\yg_reg[6]_i_1_n_2 ,\yg_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yg_reg[6]_i_2_n_6 ,\yg_reg[6]_i_2_n_7 ,\yg_reg[2]_i_1_n_4 ,1'b0}),
        .O(yg0[6:3]),
        .S({\yg[6]_i_3_n_0 ,\yg[6]_i_4_n_0 ,\yg[6]_i_5_n_0 ,\yg_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[6]_i_2 
       (.CI(\yg_reg[2]_i_1_n_0 ),
        .CO({\yg_reg[6]_i_2_n_0 ,\yg_reg[6]_i_2_n_1 ,\yg_reg[6]_i_2_n_2 ,\yg_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ysum[-1111111106]__0_n_0 ,\ysum[-1111111107]__0_n_0 ,\ysum[-1111111108]__0_n_0 ,\ysum[-1111111109]__0_n_0 }),
        .O({\yg_reg[6]_i_2_n_4 ,\yg_reg[6]_i_2_n_5 ,\yg_reg[6]_i_2_n_6 ,\yg_reg[6]_i_2_n_7 }),
        .S({\yg[6]_i_6_n_0 ,\yg[6]_i_7_n_0 ,\yg[6]_i_8_n_0 ,\yg[6]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[7]),
        .Q(yg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[8]),
        .Q(yg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[9]),
        .Q(yg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \yr[-1111111104]__0_i_1 
       (.I0(\row_reg[8]_0 ),
        .I1(s0_href),
        .I2(\yr[-1111111104]__0_i_2_n_0 ),
        .I3(second_reg_n_0),
        .I4(\yr[-1111111104]__0_i_3_n_0 ),
        .I5(\ysum[-1111111111]__0_0 ),
        .O(p_rgb));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \yr[-1111111104]__0_i_2 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[6] ),
        .I2(\px_reg_n_0_[4] ),
        .I3(\px_reg_n_0_[8] ),
        .I4(\px_reg_n_0_[7] ),
        .O(\yr[-1111111104]__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \yr[-1111111104]__0_i_3 
       (.I0(\px_reg_n_0_[9] ),
        .I1(\px_reg_n_0_[10] ),
        .O(\yr[-1111111104]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040440000)) 
    \yr[-1111111104]_i_1 
       (.I0(\row_reg[8]_0 ),
        .I1(s0_href),
        .I2(vsync_d),
        .I3(s0_vsync),
        .I4(href_d),
        .I5(second_reg_n_0),
        .O(hi));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \yr[13]_i_2 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[13]_i_5_n_7 ),
        .I2(\yr_reg[-1111111108]__0_n_0 ),
        .O(\yr[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \yr[13]_i_3 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[13]_i_5_n_2 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .I3(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \yr[13]_i_4 
       (.I0(\yr[13]_i_2_n_0 ),
        .I1(\yr_reg[13]_i_5_n_2 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .I3(\yr_reg[-1111111107]__0_n_0 ),
        .O(\yr[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[1]_i_2 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[-1111111104]__0_n_0 ),
        .O(\yr[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[1]_i_3 
       (.I0(\yr_reg[-1111111108]__0_n_0 ),
        .I1(\yr_reg[-1111111105]__0_n_0 ),
        .O(\yr[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[1]_i_4 
       (.I0(\yr_reg[-1111111104]__0_n_0 ),
        .I1(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_3 
       (.I0(\yr_reg[5]_i_2_n_7 ),
        .I1(\yr_reg[-1111111104]__0_n_0 ),
        .O(\yr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_4 
       (.I0(\yr_reg[1]_i_1_n_4 ),
        .I1(\yr_reg[-1111111105]__0_n_0 ),
        .O(\yr[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_5 
       (.I0(\yr_reg[1]_i_1_n_5 ),
        .I1(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_6 
       (.I0(\yr_reg[-1111111104]__0_n_0 ),
        .I1(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_7 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[-1111111107]__0_n_0 ),
        .O(\yr[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_8 
       (.I0(\yr_reg[-1111111106]__0_n_0 ),
        .I1(\yr_reg[-1111111108]__0_n_0 ),
        .O(\yr[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \yr[9]_i_2 
       (.I0(\yr_reg[-1111111106]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_4 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .O(\yr[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \yr[9]_i_3 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_5 ),
        .I2(\yr_reg[-1111111105]__0_n_0 ),
        .O(\yr[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yr[9]_i_4 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[-1111111107]__0_n_0 ),
        .I2(\yr_reg[5]_i_2_n_5 ),
        .O(\yr[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \yr[9]_i_5 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[13]_i_5_n_7 ),
        .I2(\yr_reg[-1111111108]__0_n_0 ),
        .I3(\yr[9]_i_2_n_0 ),
        .O(\yr[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \yr[9]_i_6 
       (.I0(\yr_reg[-1111111106]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_4 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .I3(\yr[9]_i_3_n_0 ),
        .O(\yr[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \yr[9]_i_7 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_5 ),
        .I2(\yr_reg[-1111111105]__0_n_0 ),
        .I3(\yr_reg[5]_i_2_n_6 ),
        .I4(\yr_reg[-1111111108]__0_n_0 ),
        .O(\yr[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yr[9]_i_8 
       (.I0(\yr_reg[-1111111108]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_6 ),
        .I2(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[9]_i_8_n_0 ));
  FDRE \yr_reg[-1111111104] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [7]),
        .Q(yr_reg[7]),
        .R(1'b0));
  FDRE \yr_reg[-1111111104]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[7]),
        .Q(\yr_reg[-1111111104]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111105] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [6]),
        .Q(yr_reg[6]),
        .R(1'b0));
  FDRE \yr_reg[-1111111105]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[6]),
        .Q(\yr_reg[-1111111105]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111106] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [5]),
        .Q(yr_reg[5]),
        .R(1'b0));
  FDRE \yr_reg[-1111111106]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[5]),
        .Q(\yr_reg[-1111111106]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111107] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [4]),
        .Q(yr_reg[4]),
        .R(1'b0));
  FDRE \yr_reg[-1111111107]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[4]),
        .Q(\yr_reg[-1111111107]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111108] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [3]),
        .Q(yr_reg[3]),
        .R(1'b0));
  FDRE \yr_reg[-1111111108]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[3]),
        .Q(\yr_reg[-1111111108]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\yr_reg[-1111111106]__0_n_0 ),
        .Q(yr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[10]),
        .Q(yr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[11]),
        .Q(yr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[12]),
        .Q(yr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[13]),
        .Q(yr[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[13]_i_1 
       (.CI(\yr_reg[9]_i_1_n_0 ),
        .CO({\yr_reg[13]_i_1_n_0 ,\yr_reg[13]_i_1_n_1 ,\yr_reg[13]_i_1_n_2 ,\yr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\yr_reg[-1111111106]__0_n_0 ,\yr[13]_i_2_n_0 }),
        .O(yr0[13:10]),
        .S({\yr_reg[-1111111104]__0_n_0 ,\yr_reg[-1111111105]__0_n_0 ,\yr[13]_i_3_n_0 ,\yr[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[13]_i_5 
       (.CI(\yr_reg[5]_i_2_n_0 ),
        .CO({\NLW_yr_reg[13]_i_5_CO_UNCONNECTED [3:2],\yr_reg[13]_i_5_n_2 ,\NLW_yr_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yr_reg[13]_i_5_O_UNCONNECTED [3:1],\yr_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,\yr_reg[-1111111104]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[14]),
        .Q(yr[14]),
        .R(1'b0));
  CARRY4 \yr_reg[14]_i_1 
       (.CI(\yr_reg[13]_i_1_n_0 ),
        .CO({\NLW_yr_reg[14]_i_1_CO_UNCONNECTED [3:1],yr0[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_yr_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[1]),
        .Q(yr[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\yr_reg[1]_i_1_n_0 ,\yr_reg[1]_i_1_n_1 ,\yr_reg[1]_i_1_n_2 ,\yr_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yr_reg[-1111111107]__0_n_0 ,\yr_reg[-1111111108]__0_n_0 ,\yr_reg[-1111111104]__0_n_0 ,1'b0}),
        .O({\yr_reg[1]_i_1_n_4 ,\yr_reg[1]_i_1_n_5 ,\yr_reg[1]_i_1_n_6 ,yr0[1]}),
        .S({\yr[1]_i_2_n_0 ,\yr[1]_i_3_n_0 ,\yr[1]_i_4_n_0 ,\yr_reg[-1111111105]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[2]),
        .Q(yr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[3]),
        .Q(yr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[4]),
        .Q(yr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[5]),
        .Q(yr[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\yr_reg[5]_i_1_n_0 ,\yr_reg[5]_i_1_n_1 ,\yr_reg[5]_i_1_n_2 ,\yr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yr_reg[5]_i_2_n_7 ,\yr_reg[1]_i_1_n_4 ,\yr_reg[1]_i_1_n_5 ,1'b0}),
        .O(yr0[5:2]),
        .S({\yr[5]_i_3_n_0 ,\yr[5]_i_4_n_0 ,\yr[5]_i_5_n_0 ,\yr_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[5]_i_2 
       (.CI(\yr_reg[1]_i_1_n_0 ),
        .CO({\yr_reg[5]_i_2_n_0 ,\yr_reg[5]_i_2_n_1 ,\yr_reg[5]_i_2_n_2 ,\yr_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\yr_reg[-1111111104]__0_n_0 ,\yr_reg[-1111111105]__0_n_0 ,\yr_reg[-1111111106]__0_n_0 }),
        .O({\yr_reg[5]_i_2_n_4 ,\yr_reg[5]_i_2_n_5 ,\yr_reg[5]_i_2_n_6 ,\yr_reg[5]_i_2_n_7 }),
        .S({\yr_reg[-1111111105]__0_n_0 ,\yr[5]_i_6_n_0 ,\yr[5]_i_7_n_0 ,\yr[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[6]),
        .Q(yr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[7]),
        .Q(yr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[8]),
        .Q(yr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[9]),
        .Q(yr[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[9]_i_1 
       (.CI(\yr_reg[5]_i_1_n_0 ),
        .CO({\yr_reg[9]_i_1_n_0 ,\yr_reg[9]_i_1_n_1 ,\yr_reg[9]_i_1_n_2 ,\yr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yr[9]_i_2_n_0 ,\yr[9]_i_3_n_0 ,\yr[9]_i_4_n_0 ,\yr_reg[-1111111106]__0_n_0 }),
        .O(yr0[9:6]),
        .S({\yr[9]_i_5_n_0 ,\yr[9]_i_6_n_0 ,\yr[9]_i_7_n_0 ,\yr[9]_i_8_n_0 }));
  FDRE \ysum[-1111111104] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [4]),
        .Q(\ysum[-_n_0_1111111104] ),
        .R(1'b0));
  FDRE \ysum[-1111111105] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [3]),
        .Q(\ysum[-_n_0_1111111105] ),
        .R(1'b0));
  FDRE \ysum[-1111111106] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [2]),
        .Q(\ysum[-_n_0_1111111106] ),
        .R(1'b0));
  FDRE \ysum[-1111111106]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\hi_reg_n_0_[0] ),
        .Q(\ysum[-1111111106]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111107] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [1]),
        .Q(\ysum[-_n_0_1111111107] ),
        .R(1'b0));
  FDRE \ysum[-1111111107]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [7]),
        .Q(\ysum[-1111111107]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111108] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [0]),
        .Q(\ysum[-_n_0_1111111108] ),
        .R(1'b0));
  FDRE \ysum[-1111111108]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [6]),
        .Q(\ysum[-1111111108]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111109]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [5]),
        .Q(\ysum[-1111111109]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111110]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\hi_reg_n_0_[2] ),
        .Q(\ysum[-1111111110]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111111]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\hi_reg_n_0_[1] ),
        .Q(\ysum[-1111111111]__0_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "luma_tap" *) 
module system_cam_input_0_0_luma_tap_4
   (t1_en,
    vsync_d,
    t1_sof,
    href_d_reg_0,
    E,
    \row_reg[8]_0 ,
    wr_en_reg__0_0,
    \wr_data_reg[7]_0 ,
    clk,
    p_zero_reg_0,
    vsync_d_reg_0,
    wr_sof_reg_0,
    href_d_reg_1,
    Q,
    s1_stb,
    s1_href,
    fill_reg_0,
    s1_vsync,
    href_d,
    out,
    \ysum[-1111111111]__0_0 ,
    \px_reg[10]_0 ,
    second,
    SR,
    \row_reg[8]_1 ,
    \yr_reg[-1111111104]_0 );
  output t1_en;
  output vsync_d;
  output t1_sof;
  output href_d_reg_0;
  output [0:0]E;
  output \row_reg[8]_0 ;
  output [0:0]wr_en_reg__0_0;
  output [7:0]\wr_data_reg[7]_0 ;
  input clk;
  input p_zero_reg_0;
  input vsync_d_reg_0;
  input wr_sof_reg_0;
  input href_d_reg_1;
  input [0:0]Q;
  input s1_stb;
  input s1_href;
  input fill_reg_0;
  input s1_vsync;
  input href_d;
  input [0:0]out;
  input \ysum[-1111111111]__0_0 ;
  input \px_reg[10]_0 ;
  input second;
  input [0:0]SR;
  input \row_reg[8]_1 ;
  input [7:0]\yr_reg[-1111111104]_0 ;

  wire [14:1]C__0;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire fill_i_1__0_n_0;
  wire fill_reg_0;
  wire fill_reg_n_0;
  wire [0:0]hi;
  wire \hi_reg_n_0_[0] ;
  wire \hi_reg_n_0_[1] ;
  wire \hi_reg_n_0_[2] ;
  wire href_d;
  wire href_d_reg_0;
  wire href_d_reg_1;
  wire [0:0]out;
  wire [1:1]p_1_in;
  wire [7:0]p_2_in;
  wire [0:0]p_rgb;
  wire p_v1_out;
  wire p_v2_out;
  wire p_zero;
  wire p_zero_i_2__0_n_0;
  wire p_zero_i_3__0_n_0;
  wire p_zero_reg_0;
  wire \px[0]_i_1__0_n_0 ;
  wire \px[10]_i_11__0_n_0 ;
  wire \px[10]_i_12__0_n_0 ;
  wire \px[10]_i_1__0_n_0 ;
  wire \px[10]_i_2__0_n_0 ;
  wire \px[10]_i_3__0_n_0 ;
  wire \px[10]_i_4__0_n_0 ;
  wire \px[10]_i_6__0_n_0 ;
  wire \px[10]_i_7__0_n_0 ;
  wire \px[10]_i_8__0_n_0 ;
  wire \px[10]_i_9__0_n_0 ;
  wire \px[1]_i_1__0_n_0 ;
  wire \px[2]_i_1__0_n_0 ;
  wire \px[3]_i_1__0_n_0 ;
  wire \px[4]_i_1__0_n_0 ;
  wire \px[5]_i_1__0_n_0 ;
  wire \px[6]_i_1__0_n_0 ;
  wire \px[6]_i_2__0_n_0 ;
  wire \px[7]_i_1__0_n_0 ;
  wire \px[8]_i_1__0_n_0 ;
  wire \px[9]_i_1__0_n_0 ;
  wire \px_reg[10]_0 ;
  wire \px_reg_n_0_[0] ;
  wire \px_reg_n_0_[10] ;
  wire \px_reg_n_0_[1] ;
  wire \px_reg_n_0_[2] ;
  wire \px_reg_n_0_[3] ;
  wire \px_reg_n_0_[4] ;
  wire \px_reg_n_0_[5] ;
  wire \px_reg_n_0_[6] ;
  wire \px_reg_n_0_[7] ;
  wire \px_reg_n_0_[8] ;
  wire \px_reg_n_0_[9] ;
  wire q_v_reg_srl2_n_0;
  wire q_zero;
  wire [0:0]row;
  wire \row[3]_i_1__0_n_0 ;
  wire \row[5]_i_1__0_n_0 ;
  wire \row[7]_i_4__0_n_0 ;
  wire \row[7]_i_5__0_n_0 ;
  wire \row[8]_i_1__0_n_0 ;
  wire \row[8]_i_2__0_n_0 ;
  wire \row_reg[8]_0 ;
  wire \row_reg[8]_1 ;
  wire \row_reg_n_0_[0] ;
  wire \row_reg_n_0_[1] ;
  wire \row_reg_n_0_[2] ;
  wire \row_reg_n_0_[3] ;
  wire \row_reg_n_0_[4] ;
  wire \row_reg_n_0_[5] ;
  wire \row_reg_n_0_[6] ;
  wire \row_reg_n_0_[7] ;
  wire \row_reg_n_0_[8] ;
  wire s1_href;
  wire s1_stb;
  wire s1_vsync;
  wire second;
  wire second_i_1__0_n_0;
  wire second_reg_n_0;
  wire t1_en;
  wire t1_sof;
  wire vsync_d;
  wire vsync_d_reg_0;
  wire \wr_data[0]_i_10_n_0 ;
  wire \wr_data[0]_i_13_n_0 ;
  wire \wr_data[0]_i_14_n_0 ;
  wire \wr_data[0]_i_15_n_0 ;
  wire \wr_data[0]_i_16_n_0 ;
  wire \wr_data[0]_i_17_n_0 ;
  wire \wr_data[0]_i_18_n_0 ;
  wire \wr_data[0]_i_19_n_0 ;
  wire \wr_data[0]_i_20_n_0 ;
  wire \wr_data[0]_i_3_n_0 ;
  wire \wr_data[0]_i_4_n_0 ;
  wire \wr_data[0]_i_5_n_0 ;
  wire \wr_data[0]_i_6_n_0 ;
  wire \wr_data[0]_i_7_n_0 ;
  wire \wr_data[0]_i_8_n_0 ;
  wire \wr_data[0]_i_9_n_0 ;
  wire \wr_data[4]_i_10_n_0 ;
  wire \wr_data[4]_i_2_n_0 ;
  wire \wr_data[4]_i_3_n_0 ;
  wire \wr_data[4]_i_4_n_0 ;
  wire \wr_data[4]_i_5_n_0 ;
  wire \wr_data[4]_i_7_n_0 ;
  wire \wr_data[4]_i_8_n_0 ;
  wire \wr_data[4]_i_9_n_0 ;
  wire \wr_data[7]_i_2_n_0 ;
  wire \wr_data[7]_i_3_n_0 ;
  wire \wr_data[7]_i_4_n_0 ;
  wire \wr_data[7]_i_6_n_0 ;
  wire \wr_data_reg[0]_i_11_n_0 ;
  wire \wr_data_reg[0]_i_11_n_1 ;
  wire \wr_data_reg[0]_i_11_n_2 ;
  wire \wr_data_reg[0]_i_11_n_3 ;
  wire \wr_data_reg[0]_i_12_n_0 ;
  wire \wr_data_reg[0]_i_12_n_1 ;
  wire \wr_data_reg[0]_i_12_n_2 ;
  wire \wr_data_reg[0]_i_12_n_3 ;
  wire \wr_data_reg[0]_i_1_n_0 ;
  wire \wr_data_reg[0]_i_1_n_1 ;
  wire \wr_data_reg[0]_i_1_n_2 ;
  wire \wr_data_reg[0]_i_1_n_3 ;
  wire \wr_data_reg[0]_i_2_n_0 ;
  wire \wr_data_reg[0]_i_2_n_1 ;
  wire \wr_data_reg[0]_i_2_n_2 ;
  wire \wr_data_reg[0]_i_2_n_3 ;
  wire \wr_data_reg[4]_i_1_n_0 ;
  wire \wr_data_reg[4]_i_1_n_1 ;
  wire \wr_data_reg[4]_i_1_n_2 ;
  wire \wr_data_reg[4]_i_1_n_3 ;
  wire \wr_data_reg[4]_i_6_n_0 ;
  wire \wr_data_reg[4]_i_6_n_1 ;
  wire \wr_data_reg[4]_i_6_n_2 ;
  wire \wr_data_reg[4]_i_6_n_3 ;
  wire [7:0]\wr_data_reg[7]_0 ;
  wire \wr_data_reg[7]_i_1_n_2 ;
  wire \wr_data_reg[7]_i_1_n_3 ;
  wire \wr_data_reg[7]_i_5_n_0 ;
  wire \wr_data_reg[7]_i_5_n_2 ;
  wire \wr_data_reg[7]_i_5_n_3 ;
  wire [0:0]wr_en_reg__0_0;
  wire wr_sof_reg_0;
  wire [12:0]yb;
  wire [12:1]yb0;
  wire \yb[10]_i_11_n_0 ;
  wire \yb[10]_i_12_n_0 ;
  wire \yb[10]_i_13_n_0 ;
  wire \yb[10]_i_2_n_0 ;
  wire \yb[10]_i_3_n_0 ;
  wire \yb[10]_i_4_n_0 ;
  wire \yb[10]_i_5_n_0 ;
  wire \yb[10]_i_6__0_n_0 ;
  wire \yb[10]_i_7__0_n_0 ;
  wire \yb[10]_i_8__0_n_0 ;
  wire \yb[10]_i_9__0_n_0 ;
  wire \yb[12]_i_2_n_0 ;
  wire \yb[12]_i_3__0_n_0 ;
  wire \yb[12]_i_4__0_n_0 ;
  wire \yb[2]_i_2_n_0 ;
  wire \yb[2]_i_3_n_0 ;
  wire \yb[2]_i_4_n_0 ;
  wire \yb[6]_i_2_n_0 ;
  wire \yb[6]_i_3_n_0 ;
  wire \yb[6]_i_4__0_n_0 ;
  wire \yb[6]_i_5__0_n_0 ;
  wire \yb[6]_i_6__0_n_0 ;
  wire \yb[6]_i_7__0_n_0 ;
  wire \yb[6]_i_8_n_0 ;
  wire \yb_reg[10]_i_10_n_0 ;
  wire \yb_reg[10]_i_10_n_1 ;
  wire \yb_reg[10]_i_10_n_2 ;
  wire \yb_reg[10]_i_10_n_3 ;
  wire \yb_reg[10]_i_10_n_4 ;
  wire \yb_reg[10]_i_10_n_5 ;
  wire \yb_reg[10]_i_10_n_6 ;
  wire \yb_reg[10]_i_10_n_7 ;
  wire \yb_reg[10]_i_1_n_0 ;
  wire \yb_reg[10]_i_1_n_1 ;
  wire \yb_reg[10]_i_1_n_2 ;
  wire \yb_reg[10]_i_1_n_3 ;
  wire \yb_reg[12]_i_1_n_3 ;
  wire \yb_reg[12]_i_5_n_2 ;
  wire \yb_reg[12]_i_5_n_7 ;
  wire \yb_reg[2]_i_1_n_0 ;
  wire \yb_reg[2]_i_1_n_1 ;
  wire \yb_reg[2]_i_1_n_2 ;
  wire \yb_reg[2]_i_1_n_3 ;
  wire \yb_reg[2]_i_1_n_4 ;
  wire \yb_reg[2]_i_1_n_5 ;
  wire \yb_reg[6]_i_1_n_0 ;
  wire \yb_reg[6]_i_1_n_1 ;
  wire \yb_reg[6]_i_1_n_2 ;
  wire \yb_reg[6]_i_1_n_3 ;
  wire [15:1]yg;
  wire [15:1]yg0;
  wire \yg[10]_i_2_n_0 ;
  wire \yg[10]_i_3_n_0 ;
  wire \yg[10]_i_4_n_0 ;
  wire \yg[10]_i_5_n_0 ;
  wire \yg[10]_i_6_n_0 ;
  wire \yg[10]_i_7_n_0 ;
  wire \yg[10]_i_8_n_0 ;
  wire \yg[14]_i_2__0_n_0 ;
  wire \yg[14]_i_3__0_n_0 ;
  wire \yg[14]_i_4_n_0 ;
  wire \yg[14]_i_5_n_0 ;
  wire \yg[14]_i_6_n_0 ;
  wire \yg[14]_i_7_n_0 ;
  wire \yg[14]_i_8_n_0 ;
  wire \yg[14]_i_9_n_0 ;
  wire \yg[15]_i_2__0_n_0 ;
  wire \yg[15]_i_4_n_0 ;
  wire \yg[15]_i_5_n_0 ;
  wire \yg[2]_i_2__0_n_0 ;
  wire \yg[2]_i_3__0_n_0 ;
  wire \yg[2]_i_4_n_0 ;
  wire \yg[6]_i_3_n_0 ;
  wire \yg[6]_i_4_n_0 ;
  wire \yg[6]_i_5_n_0 ;
  wire \yg[6]_i_6__0_n_0 ;
  wire \yg[6]_i_7__0_n_0 ;
  wire \yg[6]_i_8__0_n_0 ;
  wire \yg[6]_i_9__0_n_0 ;
  wire \yg_reg[10]_i_1_n_0 ;
  wire \yg_reg[10]_i_1_n_1 ;
  wire \yg_reg[10]_i_1_n_2 ;
  wire \yg_reg[10]_i_1_n_3 ;
  wire \yg_reg[14]_i_1_n_0 ;
  wire \yg_reg[14]_i_1_n_1 ;
  wire \yg_reg[14]_i_1_n_2 ;
  wire \yg_reg[14]_i_1_n_3 ;
  wire \yg_reg[15]_i_3_n_1 ;
  wire \yg_reg[15]_i_3_n_3 ;
  wire \yg_reg[15]_i_3_n_6 ;
  wire \yg_reg[15]_i_3_n_7 ;
  wire \yg_reg[2]_i_1_n_0 ;
  wire \yg_reg[2]_i_1_n_1 ;
  wire \yg_reg[2]_i_1_n_2 ;
  wire \yg_reg[2]_i_1_n_3 ;
  wire \yg_reg[2]_i_1_n_4 ;
  wire \yg_reg[2]_i_1_n_5 ;
  wire \yg_reg[6]_i_1_n_0 ;
  wire \yg_reg[6]_i_1_n_1 ;
  wire \yg_reg[6]_i_1_n_2 ;
  wire \yg_reg[6]_i_1_n_3 ;
  wire \yg_reg[6]_i_2_n_0 ;
  wire \yg_reg[6]_i_2_n_1 ;
  wire \yg_reg[6]_i_2_n_2 ;
  wire \yg_reg[6]_i_2_n_3 ;
  wire \yg_reg[6]_i_2_n_4 ;
  wire \yg_reg[6]_i_2_n_5 ;
  wire \yg_reg[6]_i_2_n_6 ;
  wire \yg_reg[6]_i_2_n_7 ;
  wire [14:0]yr;
  wire [14:1]yr0;
  wire \yr[-1111111104]__0_i_2__0_n_0 ;
  wire \yr[-1111111104]__0_i_3__0_n_0 ;
  wire \yr[13]_i_2_n_0 ;
  wire \yr[13]_i_3_n_0 ;
  wire \yr[13]_i_4_n_0 ;
  wire \yr[1]_i_2_n_0 ;
  wire \yr[1]_i_3_n_0 ;
  wire \yr[1]_i_4_n_0 ;
  wire \yr[5]_i_3_n_0 ;
  wire \yr[5]_i_4_n_0 ;
  wire \yr[5]_i_5_n_0 ;
  wire \yr[5]_i_6_n_0 ;
  wire \yr[5]_i_7_n_0 ;
  wire \yr[5]_i_8_n_0 ;
  wire \yr[9]_i_2_n_0 ;
  wire \yr[9]_i_3_n_0 ;
  wire \yr[9]_i_4_n_0 ;
  wire \yr[9]_i_5_n_0 ;
  wire \yr[9]_i_6_n_0 ;
  wire \yr[9]_i_7_n_0 ;
  wire \yr[9]_i_8_n_0 ;
  wire [7:3]yr_reg;
  wire [7:0]\yr_reg[-1111111104]_0 ;
  wire \yr_reg[-1111111104]__0_n_0 ;
  wire \yr_reg[-1111111105]__0_n_0 ;
  wire \yr_reg[-1111111106]__0_n_0 ;
  wire \yr_reg[-1111111107]__0_n_0 ;
  wire \yr_reg[-1111111108]__0_n_0 ;
  wire \yr_reg[13]_i_1_n_0 ;
  wire \yr_reg[13]_i_1_n_1 ;
  wire \yr_reg[13]_i_1_n_2 ;
  wire \yr_reg[13]_i_1_n_3 ;
  wire \yr_reg[13]_i_5_n_2 ;
  wire \yr_reg[13]_i_5_n_7 ;
  wire \yr_reg[1]_i_1_n_0 ;
  wire \yr_reg[1]_i_1_n_1 ;
  wire \yr_reg[1]_i_1_n_2 ;
  wire \yr_reg[1]_i_1_n_3 ;
  wire \yr_reg[1]_i_1_n_4 ;
  wire \yr_reg[1]_i_1_n_5 ;
  wire \yr_reg[1]_i_1_n_6 ;
  wire \yr_reg[5]_i_1_n_0 ;
  wire \yr_reg[5]_i_1_n_1 ;
  wire \yr_reg[5]_i_1_n_2 ;
  wire \yr_reg[5]_i_1_n_3 ;
  wire \yr_reg[5]_i_2_n_0 ;
  wire \yr_reg[5]_i_2_n_1 ;
  wire \yr_reg[5]_i_2_n_2 ;
  wire \yr_reg[5]_i_2_n_3 ;
  wire \yr_reg[5]_i_2_n_4 ;
  wire \yr_reg[5]_i_2_n_5 ;
  wire \yr_reg[5]_i_2_n_6 ;
  wire \yr_reg[5]_i_2_n_7 ;
  wire \yr_reg[9]_i_1_n_0 ;
  wire \yr_reg[9]_i_1_n_1 ;
  wire \yr_reg[9]_i_1_n_2 ;
  wire \yr_reg[9]_i_1_n_3 ;
  wire [15:8]ysum;
  wire \ysum[-1111111106]__0_n_0 ;
  wire \ysum[-1111111107]__0_n_0 ;
  wire \ysum[-1111111108]__0_n_0 ;
  wire \ysum[-1111111109]__0_n_0 ;
  wire \ysum[-1111111110]__0_n_0 ;
  wire \ysum[-1111111111]__0_0 ;
  wire \ysum[-1111111111]__0_n_0 ;
  wire \ysum[-_n_0_1111111104] ;
  wire \ysum[-_n_0_1111111105] ;
  wire \ysum[-_n_0_1111111106] ;
  wire \ysum[-_n_0_1111111107] ;
  wire \ysum[-_n_0_1111111108] ;
  wire [2:0]\NLW_wr_data_reg[0]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_wr_data_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_data_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_data_reg[7]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_data_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_yb_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_yb_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_yb_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_yb_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_yg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_yg_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_yg_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_yg_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_yr_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_yr_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_yr_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_yr_reg[14]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h33010000)) 
    fill_i_1__0
       (.I0(\row[7]_i_4__0_n_0 ),
        .I1(\px[10]_i_7__0_n_0 ),
        .I2(s1_href),
        .I3(fill_reg_n_0),
        .I4(fill_reg_0),
        .O(fill_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fill_reg
       (.C(clk),
        .CE(1'b1),
        .D(fill_i_1__0_n_0),
        .Q(fill_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_reg[0] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [0]),
        .Q(\hi_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_reg[1] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [1]),
        .Q(\hi_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_reg[2] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [2]),
        .Q(\hi_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    href_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(href_d_reg_1),
        .Q(href_d_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    p_zero_i_1__0
       (.I0(fill_reg_n_0),
        .I1(\px_reg_n_0_[5] ),
        .I2(\px_reg_n_0_[6] ),
        .I3(\px_reg_n_0_[3] ),
        .I4(p_zero_i_2__0_n_0),
        .I5(p_zero_i_3__0_n_0),
        .O(p_v2_out));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_zero_i_2__0
       (.I0(\px_reg_n_0_[7] ),
        .I1(\px_reg_n_0_[8] ),
        .O(p_zero_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    p_zero_i_3__0
       (.I0(\px_reg_n_0_[10] ),
        .I1(\px_reg_n_0_[9] ),
        .I2(\px_reg_n_0_[2] ),
        .I3(\px_reg_n_0_[4] ),
        .I4(\px_reg_n_0_[1] ),
        .I5(\px_reg_n_0_[0] ),
        .O(p_zero_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    p_zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_v2_out),
        .Q(p_zero),
        .R(p_zero_reg_0));
  LUT3 #(
    .INIT(8'h40)) 
    pair_sum_reg_i_2__0
       (.I0(t1_sof),
        .I1(t1_en),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \prev[7]_i_1__0 
       (.I0(t1_en),
        .I1(t1_sof),
        .O(wr_en_reg__0_0));
  LUT1 #(
    .INIT(2'h1)) 
    \px[0]_i_1__0 
       (.I0(\px_reg_n_0_[0] ),
        .O(\px[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \px[10]_i_11__0 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[6] ),
        .I2(\px_reg_n_0_[3] ),
        .I3(\px_reg_n_0_[8] ),
        .I4(\px_reg_n_0_[7] ),
        .O(\px[10]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \px[10]_i_12__0 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[6] ),
        .O(\px[10]_i_12__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \px[10]_i_1__0 
       (.I0(\px[10]_i_4__0_n_0 ),
        .O(\px[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00080008FFFF0008)) 
    \px[10]_i_2__0 
       (.I0(s1_stb),
        .I1(s1_href),
        .I2(\row_reg[8]_0 ),
        .I3(\px[10]_i_6__0_n_0 ),
        .I4(fill_reg_n_0),
        .I5(\px[10]_i_7__0_n_0 ),
        .O(\px[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \px[10]_i_3__0 
       (.I0(\px_reg_n_0_[10] ),
        .I1(\px_reg_n_0_[9] ),
        .I2(\px_reg_n_0_[8] ),
        .I3(\px_reg_n_0_[7] ),
        .I4(\px[10]_i_8__0_n_0 ),
        .O(\px[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h88888880AAAAAAAA)) 
    \px[10]_i_4__0 
       (.I0(fill_reg_0),
        .I1(\px[10]_i_9__0_n_0 ),
        .I2(\row_reg[8]_0 ),
        .I3(\px_reg[10]_0 ),
        .I4(\px[10]_i_11__0_n_0 ),
        .I5(p_zero_i_3__0_n_0),
        .O(\px[10]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8A8A8)) 
    \px[10]_i_5__0 
       (.I0(\row_reg_n_0_[8] ),
        .I1(\row_reg_n_0_[6] ),
        .I2(\row_reg_n_0_[7] ),
        .I3(\row_reg_n_0_[4] ),
        .I4(\row_reg_n_0_[3] ),
        .I5(\row_reg_n_0_[5] ),
        .O(\row_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE0FF)) 
    \px[10]_i_6__0 
       (.I0(\px_reg_n_0_[4] ),
        .I1(\px[10]_i_12__0_n_0 ),
        .I2(p_zero_i_2__0_n_0),
        .I3(second_reg_n_0),
        .I4(\px_reg_n_0_[9] ),
        .I5(\px_reg_n_0_[10] ),
        .O(\px[10]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \px[10]_i_7__0 
       (.I0(p_zero_i_3__0_n_0),
        .I1(\px_reg_n_0_[7] ),
        .I2(\px_reg_n_0_[8] ),
        .I3(\px_reg_n_0_[3] ),
        .I4(\px_reg_n_0_[6] ),
        .I5(\px_reg_n_0_[5] ),
        .O(\px[10]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \px[10]_i_8__0 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[3] ),
        .I2(\px[6]_i_2__0_n_0 ),
        .I3(\px_reg_n_0_[2] ),
        .I4(\px_reg_n_0_[4] ),
        .I5(\px_reg_n_0_[6] ),
        .O(\px[10]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \px[10]_i_9__0 
       (.I0(\px_reg_n_0_[6] ),
        .I1(\px_reg_n_0_[5] ),
        .I2(fill_reg_n_0),
        .I3(\px_reg_n_0_[3] ),
        .I4(\px_reg_n_0_[7] ),
        .I5(\px_reg_n_0_[8] ),
        .O(\px[10]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAAAAA08AAAA)) 
    \px[1]_i_1__0 
       (.I0(p_1_in),
        .I1(second),
        .I2(\px[10]_i_6__0_n_0 ),
        .I3(p_v2_out),
        .I4(\px[10]_i_4__0_n_0 ),
        .I5(\px_reg_n_0_[1] ),
        .O(\px[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000DF00DF000000)) 
    \px[1]_i_2__0 
       (.I0(s1_stb),
        .I1(vsync_d),
        .I2(s1_vsync),
        .I3(out),
        .I4(\px_reg_n_0_[1] ),
        .I5(\px_reg_n_0_[0] ),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \px[2]_i_1__0 
       (.I0(\px_reg_n_0_[2] ),
        .I1(\px_reg_n_0_[0] ),
        .I2(\px_reg_n_0_[1] ),
        .O(\px[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \px[3]_i_1__0 
       (.I0(\px_reg_n_0_[3] ),
        .I1(\px_reg_n_0_[2] ),
        .I2(\px_reg_n_0_[1] ),
        .I3(\px_reg_n_0_[0] ),
        .O(\px[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \px[4]_i_1__0 
       (.I0(\px_reg_n_0_[4] ),
        .I1(\px_reg_n_0_[3] ),
        .I2(\px_reg_n_0_[0] ),
        .I3(\px_reg_n_0_[1] ),
        .I4(\px_reg_n_0_[2] ),
        .O(\px[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \px[5]_i_1__0 
       (.I0(\px_reg_n_0_[5] ),
        .I1(\px_reg_n_0_[4] ),
        .I2(\px_reg_n_0_[2] ),
        .I3(\px_reg_n_0_[1] ),
        .I4(\px_reg_n_0_[0] ),
        .I5(\px_reg_n_0_[3] ),
        .O(\px[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \px[6]_i_1__0 
       (.I0(\px_reg_n_0_[6] ),
        .I1(\px_reg_n_0_[5] ),
        .I2(\px_reg_n_0_[3] ),
        .I3(\px[6]_i_2__0_n_0 ),
        .I4(\px_reg_n_0_[2] ),
        .I5(\px_reg_n_0_[4] ),
        .O(\px[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \px[6]_i_2__0 
       (.I0(\px_reg_n_0_[1] ),
        .I1(\px_reg_n_0_[0] ),
        .O(\px[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \px[7]_i_1__0 
       (.I0(\px_reg_n_0_[7] ),
        .I1(\px[10]_i_8__0_n_0 ),
        .O(\px[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \px[8]_i_1__0 
       (.I0(\px_reg_n_0_[8] ),
        .I1(\px_reg_n_0_[7] ),
        .I2(\px[10]_i_8__0_n_0 ),
        .O(\px[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \px[9]_i_1__0 
       (.I0(\px_reg_n_0_[9] ),
        .I1(\px[10]_i_8__0_n_0 ),
        .I2(\px_reg_n_0_[7] ),
        .I3(\px_reg_n_0_[8] ),
        .O(\px[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[0] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[0]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[0] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[10] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[10]_i_3__0_n_0 ),
        .Q(\px_reg_n_0_[10] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\px[1]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[2] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[2]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[2] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[3] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[3]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[3] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[4] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[4]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[4] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[5] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[5]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[5] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[6] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[6]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[6] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[7] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[7]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[7] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[8] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[8]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[8] ),
        .R(\px[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_reg[9] 
       (.C(clk),
        .CE(\px[10]_i_2__0_n_0 ),
        .D(\px[9]_i_1__0_n_0 ),
        .Q(\px_reg_n_0_[9] ),
        .R(\px[10]_i_1__0_n_0 ));
  (* srl_name = "\\inst/u_luma1/q_v_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    q_v_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_v1_out),
        .Q(q_v_reg_srl2_n_0));
  LUT4 #(
    .INIT(16'hAAEA)) 
    q_v_reg_srl2_i_1__0
       (.I0(p_rgb),
        .I1(out),
        .I2(fill_reg_n_0),
        .I3(\px[10]_i_7__0_n_0 ),
        .O(p_v1_out));
  FDRE #(
    .INIT(1'b0)) 
    q_zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_zero),
        .Q(q_zero),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \row[0]_i_1__0 
       (.I0(\row_reg_n_0_[0] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row[1]_i_1__0 
       (.I0(\row_reg_n_0_[0] ),
        .I1(\row_reg_n_0_[1] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \row[2]_i_1__0 
       (.I0(\row_reg_n_0_[2] ),
        .I1(\row_reg_n_0_[0] ),
        .I2(\row_reg_n_0_[1] ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h00FF007F00000080)) 
    \row[3]_i_1__0 
       (.I0(\row_reg_n_0_[2] ),
        .I1(\row_reg_n_0_[0] ),
        .I2(\row_reg_n_0_[1] ),
        .I3(\row_reg[8]_1 ),
        .I4(\row[7]_i_4__0_n_0 ),
        .I5(\row_reg_n_0_[3] ),
        .O(\row[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \row[4]_i_1__0 
       (.I0(\row_reg_n_0_[4] ),
        .I1(\row_reg_n_0_[2] ),
        .I2(\row_reg_n_0_[0] ),
        .I3(\row_reg_n_0_[1] ),
        .I4(\row_reg_n_0_[3] ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hF3FFA2AA00005155)) 
    \row[5]_i_1__0 
       (.I0(\row[7]_i_5__0_n_0 ),
        .I1(s1_vsync),
        .I2(vsync_d),
        .I3(s1_stb),
        .I4(\row[7]_i_4__0_n_0 ),
        .I5(\row_reg_n_0_[5] ),
        .O(\row[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \row[6]_i_1__0 
       (.I0(\row_reg_n_0_[6] ),
        .I1(\row[7]_i_5__0_n_0 ),
        .I2(\row_reg_n_0_[5] ),
        .O(p_2_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \row[7]_i_2__0 
       (.I0(\row[7]_i_4__0_n_0 ),
        .O(row));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \row[7]_i_3__0 
       (.I0(\row_reg_n_0_[7] ),
        .I1(\row_reg_n_0_[5] ),
        .I2(\row[7]_i_5__0_n_0 ),
        .I3(\row_reg_n_0_[6] ),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \row[7]_i_4__0 
       (.I0(\row_reg[8]_0 ),
        .I1(href_d_reg_0),
        .I2(s1_href),
        .I3(s1_stb),
        .O(\row[7]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row[7]_i_5__0 
       (.I0(\row_reg_n_0_[3] ),
        .I1(\row_reg_n_0_[1] ),
        .I2(\row_reg_n_0_[0] ),
        .I3(\row_reg_n_0_[2] ),
        .I4(\row_reg_n_0_[4] ),
        .O(\row[7]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF007F00000080)) 
    \row[8]_i_1__0 
       (.I0(\row_reg_n_0_[7] ),
        .I1(\row[8]_i_2__0_n_0 ),
        .I2(\row_reg_n_0_[6] ),
        .I3(\row_reg[8]_1 ),
        .I4(\row[7]_i_4__0_n_0 ),
        .I5(\row_reg_n_0_[8] ),
        .O(\row[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \row[8]_i_2__0 
       (.I0(\row_reg_n_0_[5] ),
        .I1(\row_reg_n_0_[4] ),
        .I2(\row_reg_n_0_[2] ),
        .I3(\row_reg_n_0_[0] ),
        .I4(\row_reg_n_0_[1] ),
        .I5(\row_reg_n_0_[3] ),
        .O(\row[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[0]),
        .Q(\row_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[1]),
        .Q(\row_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[2]),
        .Q(\row_reg_n_0_[2] ),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\row[3]_i_1__0_n_0 ),
        .Q(\row_reg_n_0_[3] ),
        .S(p_zero_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[4] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[4]),
        .Q(\row_reg_n_0_[4] ),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \row_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\row[5]_i_1__0_n_0 ),
        .Q(\row_reg_n_0_[5] ),
        .S(p_zero_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[6] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[6]),
        .Q(\row_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[7] 
       (.C(clk),
        .CE(row),
        .D(p_2_in[7]),
        .Q(\row_reg_n_0_[7] ),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \row_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\row[8]_i_1__0_n_0 ),
        .Q(\row_reg_n_0_[8] ),
        .S(p_zero_reg_0));
  LUT6 #(
    .INIT(64'hC0CCC4CC0C000000)) 
    second_i_1__0
       (.I0(href_d_reg_0),
        .I1(fill_reg_0),
        .I2(\row_reg[8]_0 ),
        .I3(s1_stb),
        .I4(s1_href),
        .I5(second_reg_n_0),
        .O(second_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    second_reg
       (.C(clk),
        .CE(1'b1),
        .D(second_i_1__0_n_0),
        .Q(second_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_d_reg_0),
        .Q(vsync_d),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_10 
       (.I0(yg[1]),
        .I1(C__0[1]),
        .O(\wr_data[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_13 
       (.I0(yb[7]),
        .I1(yr[7]),
        .O(\wr_data[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_14 
       (.I0(yb[6]),
        .I1(yr[6]),
        .O(\wr_data[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_15 
       (.I0(yb[5]),
        .I1(yr[5]),
        .O(\wr_data[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_16 
       (.I0(yb[4]),
        .I1(yr[4]),
        .O(\wr_data[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_17 
       (.I0(yb[3]),
        .I1(yr[3]),
        .O(\wr_data[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_18 
       (.I0(yb[2]),
        .I1(yr[2]),
        .O(\wr_data[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_19 
       (.I0(yb[1]),
        .I1(yr[1]),
        .O(\wr_data[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_20 
       (.I0(yb[0]),
        .I1(yr[0]),
        .O(\wr_data[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_3 
       (.I0(yg[8]),
        .I1(C__0[8]),
        .O(\wr_data[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_4 
       (.I0(yg[7]),
        .I1(C__0[7]),
        .O(\wr_data[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_5 
       (.I0(yg[6]),
        .I1(C__0[6]),
        .O(\wr_data[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_6 
       (.I0(yg[5]),
        .I1(C__0[5]),
        .O(\wr_data[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_7 
       (.I0(yg[4]),
        .I1(C__0[4]),
        .O(\wr_data[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_8 
       (.I0(yg[3]),
        .I1(C__0[3]),
        .O(\wr_data[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[0]_i_9 
       (.I0(yg[2]),
        .I1(C__0[2]),
        .O(\wr_data[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_10 
       (.I0(yb[8]),
        .I1(yr[8]),
        .O(\wr_data[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_2 
       (.I0(yg[12]),
        .I1(C__0[12]),
        .O(\wr_data[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_3 
       (.I0(yg[11]),
        .I1(C__0[11]),
        .O(\wr_data[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_4 
       (.I0(yg[10]),
        .I1(C__0[10]),
        .O(\wr_data[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_5 
       (.I0(yg[9]),
        .I1(C__0[9]),
        .O(\wr_data[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_7 
       (.I0(yb[11]),
        .I1(yr[11]),
        .O(\wr_data[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_8 
       (.I0(yb[10]),
        .I1(yr[10]),
        .O(\wr_data[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[4]_i_9 
       (.I0(yb[9]),
        .I1(yr[9]),
        .O(\wr_data[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_2 
       (.I0(yg[15]),
        .I1(\wr_data_reg[7]_i_5_n_0 ),
        .O(\wr_data[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_3 
       (.I0(yg[14]),
        .I1(C__0[14]),
        .O(\wr_data[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_4 
       (.I0(yg[13]),
        .I1(C__0[13]),
        .O(\wr_data[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[7]_i_6 
       (.I0(yb[12]),
        .I1(yr[12]),
        .O(\wr_data[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[8]),
        .Q(\wr_data_reg[7]_0 [0]),
        .R(q_zero));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[0]_i_1 
       (.CI(\wr_data_reg[0]_i_2_n_0 ),
        .CO({\wr_data_reg[0]_i_1_n_0 ,\wr_data_reg[0]_i_1_n_1 ,\wr_data_reg[0]_i_1_n_2 ,\wr_data_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(yg[8:5]),
        .O({ysum[8],\NLW_wr_data_reg[0]_i_1_O_UNCONNECTED [2:0]}),
        .S({\wr_data[0]_i_3_n_0 ,\wr_data[0]_i_4_n_0 ,\wr_data[0]_i_5_n_0 ,\wr_data[0]_i_6_n_0 }));
  CARRY4 \wr_data_reg[0]_i_11 
       (.CI(\wr_data_reg[0]_i_12_n_0 ),
        .CO({\wr_data_reg[0]_i_11_n_0 ,\wr_data_reg[0]_i_11_n_1 ,\wr_data_reg[0]_i_11_n_2 ,\wr_data_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(yb[7:4]),
        .O(C__0[7:4]),
        .S({\wr_data[0]_i_13_n_0 ,\wr_data[0]_i_14_n_0 ,\wr_data[0]_i_15_n_0 ,\wr_data[0]_i_16_n_0 }));
  CARRY4 \wr_data_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\wr_data_reg[0]_i_12_n_0 ,\wr_data_reg[0]_i_12_n_1 ,\wr_data_reg[0]_i_12_n_2 ,\wr_data_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(yb[3:0]),
        .O({C__0[3:1],\NLW_wr_data_reg[0]_i_12_O_UNCONNECTED [0]}),
        .S({\wr_data[0]_i_17_n_0 ,\wr_data[0]_i_18_n_0 ,\wr_data[0]_i_19_n_0 ,\wr_data[0]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\wr_data_reg[0]_i_2_n_0 ,\wr_data_reg[0]_i_2_n_1 ,\wr_data_reg[0]_i_2_n_2 ,\wr_data_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(yg[4:1]),
        .O(\NLW_wr_data_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\wr_data[0]_i_7_n_0 ,\wr_data[0]_i_8_n_0 ,\wr_data[0]_i_9_n_0 ,\wr_data[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[9]),
        .Q(\wr_data_reg[7]_0 [1]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[10]),
        .Q(\wr_data_reg[7]_0 [2]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[11]),
        .Q(\wr_data_reg[7]_0 [3]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[12]),
        .Q(\wr_data_reg[7]_0 [4]),
        .R(q_zero));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[4]_i_1 
       (.CI(\wr_data_reg[0]_i_1_n_0 ),
        .CO({\wr_data_reg[4]_i_1_n_0 ,\wr_data_reg[4]_i_1_n_1 ,\wr_data_reg[4]_i_1_n_2 ,\wr_data_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(yg[12:9]),
        .O(ysum[12:9]),
        .S({\wr_data[4]_i_2_n_0 ,\wr_data[4]_i_3_n_0 ,\wr_data[4]_i_4_n_0 ,\wr_data[4]_i_5_n_0 }));
  CARRY4 \wr_data_reg[4]_i_6 
       (.CI(\wr_data_reg[0]_i_11_n_0 ),
        .CO({\wr_data_reg[4]_i_6_n_0 ,\wr_data_reg[4]_i_6_n_1 ,\wr_data_reg[4]_i_6_n_2 ,\wr_data_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(yb[11:8]),
        .O(C__0[11:8]),
        .S({\wr_data[4]_i_7_n_0 ,\wr_data[4]_i_8_n_0 ,\wr_data[4]_i_9_n_0 ,\wr_data[4]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[13]),
        .Q(\wr_data_reg[7]_0 [5]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[14]),
        .Q(\wr_data_reg[7]_0 [6]),
        .R(q_zero));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(ysum[15]),
        .Q(\wr_data_reg[7]_0 [7]),
        .R(q_zero));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_data_reg[7]_i_1 
       (.CI(\wr_data_reg[4]_i_1_n_0 ),
        .CO({\NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED [3:2],\wr_data_reg[7]_i_1_n_2 ,\wr_data_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,yg[14:13]}),
        .O({\NLW_wr_data_reg[7]_i_1_O_UNCONNECTED [3],ysum[15:13]}),
        .S({1'b0,\wr_data[7]_i_2_n_0 ,\wr_data[7]_i_3_n_0 ,\wr_data[7]_i_4_n_0 }));
  CARRY4 \wr_data_reg[7]_i_5 
       (.CI(\wr_data_reg[4]_i_6_n_0 ),
        .CO({\wr_data_reg[7]_i_5_n_0 ,\NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED [2],\wr_data_reg[7]_i_5_n_2 ,\wr_data_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,yb[12]}),
        .O({\NLW_wr_data_reg[7]_i_5_O_UNCONNECTED [3],C__0[14:12]}),
        .S({1'b1,yr[14:13],\wr_data[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    wr_en_reg__0
       (.C(clk),
        .CE(1'b1),
        .D(q_v_reg_srl2_n_0),
        .Q(t1_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wr_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_sof_reg_0),
        .Q(t1_sof),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[10]_i_11 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\ysum[-_n_0_1111111106] ),
        .O(\yb[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[10]_i_12 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\ysum[-_n_0_1111111107] ),
        .O(\yb[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[10]_i_13 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\ysum[-_n_0_1111111108] ),
        .O(\yb[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_2 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\yb_reg[12]_i_5_n_7 ),
        .I2(\ysum[-_n_0_1111111107] ),
        .O(\yb[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_3 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[10]_i_10_n_4 ),
        .I2(\ysum[-_n_0_1111111108] ),
        .O(\yb[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_4 
       (.I0(\ysum[-_n_0_1111111107] ),
        .I1(\yb_reg[10]_i_10_n_5 ),
        .I2(\ysum[-_n_0_1111111104] ),
        .O(\yb[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[10]_i_5 
       (.I0(\ysum[-_n_0_1111111108] ),
        .I1(\yb_reg[10]_i_10_n_6 ),
        .I2(\ysum[-_n_0_1111111105] ),
        .O(\yb[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_6__0 
       (.I0(\ysum[-_n_0_1111111107] ),
        .I1(\yb_reg[12]_i_5_n_7 ),
        .I2(\ysum[-_n_0_1111111105] ),
        .I3(\ysum[-_n_0_1111111104] ),
        .I4(\yb_reg[12]_i_5_n_2 ),
        .I5(\ysum[-_n_0_1111111106] ),
        .O(\yb[10]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_7__0 
       (.I0(\ysum[-_n_0_1111111108] ),
        .I1(\yb_reg[10]_i_10_n_4 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .I3(\ysum[-_n_0_1111111105] ),
        .I4(\yb_reg[12]_i_5_n_7 ),
        .I5(\ysum[-_n_0_1111111107] ),
        .O(\yb[10]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_8__0 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_5 ),
        .I2(\ysum[-_n_0_1111111107] ),
        .I3(\ysum[-_n_0_1111111106] ),
        .I4(\yb_reg[10]_i_10_n_4 ),
        .I5(\ysum[-_n_0_1111111108] ),
        .O(\yb[10]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[10]_i_9__0 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\yb_reg[10]_i_10_n_6 ),
        .I2(\ysum[-_n_0_1111111108] ),
        .I3(\ysum[-_n_0_1111111107] ),
        .I4(\yb_reg[10]_i_10_n_5 ),
        .I5(\ysum[-_n_0_1111111104] ),
        .O(\yb[10]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[12]_i_2 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[12]_i_5_n_2 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .O(\yb[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yb[12]_i_3__0 
       (.I0(\ysum[-_n_0_1111111105] ),
        .I1(\ysum[-_n_0_1111111104] ),
        .O(\yb[12]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \yb[12]_i_4__0 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[12]_i_5_n_2 ),
        .I2(\ysum[-_n_0_1111111104] ),
        .I3(\ysum[-_n_0_1111111105] ),
        .O(\yb[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[2]_i_2 
       (.I0(\ysum[-_n_0_1111111107] ),
        .I1(\ysum[-_n_0_1111111104] ),
        .O(\yb[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[2]_i_3 
       (.I0(\ysum[-_n_0_1111111108] ),
        .I1(\ysum[-_n_0_1111111105] ),
        .O(\yb[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[2]_i_4 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\ysum[-_n_0_1111111106] ),
        .O(\yb[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yb[6]_i_2 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .O(\yb[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \yb[6]_i_3 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .O(\yb[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \yb[6]_i_4__0 
       (.I0(\yb_reg[2]_i_1_n_5 ),
        .I1(\ysum[-_n_0_1111111106] ),
        .O(\yb[6]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \yb[6]_i_5__0 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111104] ),
        .I3(\ysum[-_n_0_1111111108] ),
        .I4(\yb_reg[10]_i_10_n_6 ),
        .I5(\ysum[-_n_0_1111111105] ),
        .O(\yb[6]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \yb[6]_i_6__0 
       (.I0(\ysum[-_n_0_1111111104] ),
        .I1(\yb_reg[10]_i_10_n_7 ),
        .I2(\ysum[-_n_0_1111111106] ),
        .I3(\ysum[-_n_0_1111111105] ),
        .I4(\yb_reg[2]_i_1_n_4 ),
        .O(\yb[6]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \yb[6]_i_7__0 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[2]_i_1_n_5 ),
        .I2(\yb_reg[2]_i_1_n_4 ),
        .I3(\ysum[-_n_0_1111111105] ),
        .O(\yb[6]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yb[6]_i_8 
       (.I0(\ysum[-_n_0_1111111106] ),
        .I1(\yb_reg[2]_i_1_n_5 ),
        .O(\yb[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ysum[-_n_0_1111111106] ),
        .Q(yb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[10]),
        .Q(yb[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[10]_i_1 
       (.CI(\yb_reg[6]_i_1_n_0 ),
        .CO({\yb_reg[10]_i_1_n_0 ,\yb_reg[10]_i_1_n_1 ,\yb_reg[10]_i_1_n_2 ,\yb_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yb[10]_i_2_n_0 ,\yb[10]_i_3_n_0 ,\yb[10]_i_4_n_0 ,\yb[10]_i_5_n_0 }),
        .O(yb0[10:7]),
        .S({\yb[10]_i_6__0_n_0 ,\yb[10]_i_7__0_n_0 ,\yb[10]_i_8__0_n_0 ,\yb[10]_i_9__0_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[10]_i_10 
       (.CI(\yb_reg[2]_i_1_n_0 ),
        .CO({\yb_reg[10]_i_10_n_0 ,\yb_reg[10]_i_10_n_1 ,\yb_reg[10]_i_10_n_2 ,\yb_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\ysum[-_n_0_1111111104] ,\ysum[-_n_0_1111111105] ,\ysum[-_n_0_1111111106] }),
        .O({\yb_reg[10]_i_10_n_4 ,\yb_reg[10]_i_10_n_5 ,\yb_reg[10]_i_10_n_6 ,\yb_reg[10]_i_10_n_7 }),
        .S({\ysum[-_n_0_1111111105] ,\yb[10]_i_11_n_0 ,\yb[10]_i_12_n_0 ,\yb[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[11]),
        .Q(yb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[12]),
        .Q(yb[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[12]_i_1 
       (.CI(\yb_reg[10]_i_1_n_0 ),
        .CO({\NLW_yb_reg[12]_i_1_CO_UNCONNECTED [3:1],\yb_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\yb[12]_i_2_n_0 }),
        .O({\NLW_yb_reg[12]_i_1_O_UNCONNECTED [3:2],yb0[12:11]}),
        .S({1'b0,1'b0,\yb[12]_i_3__0_n_0 ,\yb[12]_i_4__0_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[12]_i_5 
       (.CI(\yb_reg[10]_i_10_n_0 ),
        .CO({\NLW_yb_reg[12]_i_5_CO_UNCONNECTED [3:2],\yb_reg[12]_i_5_n_2 ,\NLW_yb_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yb_reg[12]_i_5_O_UNCONNECTED [3:1],\yb_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,\ysum[-_n_0_1111111104] }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[1]),
        .Q(yb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[2]),
        .Q(yb[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\yb_reg[2]_i_1_n_0 ,\yb_reg[2]_i_1_n_1 ,\yb_reg[2]_i_1_n_2 ,\yb_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ysum[-_n_0_1111111107] ,\ysum[-_n_0_1111111108] ,\ysum[-_n_0_1111111104] ,1'b0}),
        .O({\yb_reg[2]_i_1_n_4 ,\yb_reg[2]_i_1_n_5 ,yb0[2:1]}),
        .S({\yb[2]_i_2_n_0 ,\yb[2]_i_3_n_0 ,\yb[2]_i_4_n_0 ,\ysum[-_n_0_1111111105] }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[3]),
        .Q(yb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[4]),
        .Q(yb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[5]),
        .Q(yb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[6]),
        .Q(yb[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \yb_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\yb_reg[6]_i_1_n_0 ,\yb_reg[6]_i_1_n_1 ,\yb_reg[6]_i_1_n_2 ,\yb_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yb[6]_i_2_n_0 ,\yb[6]_i_3_n_0 ,\yb[6]_i_4__0_n_0 ,1'b0}),
        .O(yb0[6:3]),
        .S({\yb[6]_i_5__0_n_0 ,\yb[6]_i_6__0_n_0 ,\yb[6]_i_7__0_n_0 ,\yb[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[7]),
        .Q(yb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[8]),
        .Q(yb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yb_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(yb0[9]),
        .Q(yb[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE8)) 
    \yg[10]_i_2 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_7 ),
        .I2(\ysum[-1111111109]__0_n_0 ),
        .O(\yg[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \yg[10]_i_3 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\yg_reg[6]_i_2_n_4 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yg[10]_i_4 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .I1(\ysum[-1111111107]__0_n_0 ),
        .I2(\yg_reg[6]_i_2_n_4 ),
        .O(\yg[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \yg[10]_i_5 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_6 ),
        .I2(\ysum[-1111111108]__0_n_0 ),
        .I3(\yg[10]_i_2_n_0 ),
        .O(\yg[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \yg[10]_i_6 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_7 ),
        .I2(\ysum[-1111111109]__0_n_0 ),
        .I3(\yg[10]_i_3_n_0 ),
        .O(\yg[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \yg[10]_i_7 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\yg_reg[6]_i_2_n_4 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .I3(\yg_reg[6]_i_2_n_5 ),
        .I4(\ysum[-1111111108]__0_n_0 ),
        .O(\yg[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yg[10]_i_8 
       (.I0(\ysum[-1111111108]__0_n_0 ),
        .I1(\yg_reg[6]_i_2_n_5 ),
        .I2(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \yg[14]_i_2__0 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .O(\yg[14]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \yg[14]_i_3__0 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .O(\yg[14]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \yg[14]_i_4 
       (.I0(\yg_reg[15]_i_3_n_1 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .I2(\ysum[-1111111107]__0_n_0 ),
        .O(\yg[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \yg[14]_i_5 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_6 ),
        .I2(\ysum[-1111111108]__0_n_0 ),
        .O(\yg[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \yg[14]_i_6 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \yg[14]_i_7 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .I2(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \yg[14]_i_8 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .I2(\yg_reg[15]_i_3_n_1 ),
        .I3(\ysum[-1111111106]__0_n_0 ),
        .O(\yg[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \yg[14]_i_9 
       (.I0(\yg[14]_i_5_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .I2(\ysum[-1111111110]__0_n_0 ),
        .I3(\ysum[-1111111107]__0_n_0 ),
        .O(\yg[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \yg[15]_i_2__0 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .I1(\yg_reg[15]_i_3_n_1 ),
        .O(\yg[15]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \yg[15]_i_4 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \yg[15]_i_5 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[2]_i_2__0 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .I1(\ysum[-1111111108]__0_n_0 ),
        .O(\yg[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[2]_i_3__0 
       (.I0(\ysum[-1111111111]__0_n_0 ),
        .I1(\ysum[-1111111109]__0_n_0 ),
        .O(\yg[2]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \yg[2]_i_4 
       (.I0(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yg[6]_i_3 
       (.I0(\yg_reg[6]_i_2_n_6 ),
        .I1(\ysum[-1111111109]__0_n_0 ),
        .O(\yg[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yg[6]_i_4 
       (.I0(\yg_reg[6]_i_2_n_7 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yg[6]_i_5 
       (.I0(\yg_reg[2]_i_1_n_4 ),
        .I1(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_6__0 
       (.I0(\ysum[-1111111106]__0_n_0 ),
        .I1(\ysum[-1111111110]__0_n_0 ),
        .O(\yg[6]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_7__0 
       (.I0(\ysum[-1111111107]__0_n_0 ),
        .I1(\ysum[-1111111111]__0_n_0 ),
        .O(\yg[6]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_8__0 
       (.I0(\ysum[-1111111108]__0_n_0 ),
        .I1(\ysum[-1111111106]__0_n_0 ),
        .O(\yg[6]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \yg[6]_i_9__0 
       (.I0(\ysum[-1111111109]__0_n_0 ),
        .I1(\ysum[-1111111107]__0_n_0 ),
        .O(\yg[6]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[10]),
        .Q(yg[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[10]_i_1 
       (.CI(\yg_reg[6]_i_1_n_0 ),
        .CO({\yg_reg[10]_i_1_n_0 ,\yg_reg[10]_i_1_n_1 ,\yg_reg[10]_i_1_n_2 ,\yg_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yg[10]_i_2_n_0 ,\yg[10]_i_3_n_0 ,\yg[10]_i_4_n_0 ,\ysum[-1111111111]__0_n_0 }),
        .O(yg0[10:7]),
        .S({\yg[10]_i_5_n_0 ,\yg[10]_i_6_n_0 ,\yg[10]_i_7_n_0 ,\yg[10]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[11]),
        .Q(yg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[12]),
        .Q(yg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[13]),
        .Q(yg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[14]),
        .Q(yg[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[14]_i_1 
       (.CI(\yg_reg[10]_i_1_n_0 ),
        .CO({\yg_reg[14]_i_1_n_0 ,\yg_reg[14]_i_1_n_1 ,\yg_reg[14]_i_1_n_2 ,\yg_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yg[14]_i_2__0_n_0 ,\yg[14]_i_3__0_n_0 ,\yg[14]_i_4_n_0 ,\yg[14]_i_5_n_0 }),
        .O(yg0[14:11]),
        .S({\yg[14]_i_6_n_0 ,\yg[14]_i_7_n_0 ,\yg[14]_i_8_n_0 ,\yg[14]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[15]),
        .Q(yg[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[15]_i_1 
       (.CI(\yg_reg[14]_i_1_n_0 ),
        .CO(\NLW_yg_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yg_reg[15]_i_1_O_UNCONNECTED [3:1],yg0[15]}),
        .S({1'b0,1'b0,1'b0,\yg[15]_i_2__0_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[15]_i_3 
       (.CI(\yg_reg[6]_i_2_n_0 ),
        .CO({\NLW_yg_reg[15]_i_3_CO_UNCONNECTED [3],\yg_reg[15]_i_3_n_1 ,\NLW_yg_reg[15]_i_3_CO_UNCONNECTED [1],\yg_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ysum[-1111111110]__0_n_0 ,\ysum[-1111111111]__0_n_0 }),
        .O({\NLW_yg_reg[15]_i_3_O_UNCONNECTED [3:2],\yg_reg[15]_i_3_n_6 ,\yg_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\yg[15]_i_4_n_0 ,\yg[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[1]),
        .Q(yg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[2]),
        .Q(yg[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\yg_reg[2]_i_1_n_0 ,\yg_reg[2]_i_1_n_1 ,\yg_reg[2]_i_1_n_2 ,\yg_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ysum[-1111111110]__0_n_0 ,\ysum[-1111111111]__0_n_0 ,1'b0,1'b1}),
        .O({\yg_reg[2]_i_1_n_4 ,\yg_reg[2]_i_1_n_5 ,yg0[2:1]}),
        .S({\yg[2]_i_2__0_n_0 ,\yg[2]_i_3__0_n_0 ,\yg[2]_i_4_n_0 ,\ysum[-1111111111]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[3]),
        .Q(yg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[4]),
        .Q(yg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[5]),
        .Q(yg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[6]),
        .Q(yg[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\yg_reg[6]_i_1_n_0 ,\yg_reg[6]_i_1_n_1 ,\yg_reg[6]_i_1_n_2 ,\yg_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yg_reg[6]_i_2_n_6 ,\yg_reg[6]_i_2_n_7 ,\yg_reg[2]_i_1_n_4 ,1'b0}),
        .O(yg0[6:3]),
        .S({\yg[6]_i_3_n_0 ,\yg[6]_i_4_n_0 ,\yg[6]_i_5_n_0 ,\yg_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \yg_reg[6]_i_2 
       (.CI(\yg_reg[2]_i_1_n_0 ),
        .CO({\yg_reg[6]_i_2_n_0 ,\yg_reg[6]_i_2_n_1 ,\yg_reg[6]_i_2_n_2 ,\yg_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ysum[-1111111106]__0_n_0 ,\ysum[-1111111107]__0_n_0 ,\ysum[-1111111108]__0_n_0 ,\ysum[-1111111109]__0_n_0 }),
        .O({\yg_reg[6]_i_2_n_4 ,\yg_reg[6]_i_2_n_5 ,\yg_reg[6]_i_2_n_6 ,\yg_reg[6]_i_2_n_7 }),
        .S({\yg[6]_i_6__0_n_0 ,\yg[6]_i_7__0_n_0 ,\yg[6]_i_8__0_n_0 ,\yg[6]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[7]),
        .Q(yg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[8]),
        .Q(yg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(yg0[9]),
        .Q(yg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \yr[-1111111104]__0_i_1__0 
       (.I0(\row_reg[8]_0 ),
        .I1(s1_href),
        .I2(\yr[-1111111104]__0_i_2__0_n_0 ),
        .I3(second_reg_n_0),
        .I4(\yr[-1111111104]__0_i_3__0_n_0 ),
        .I5(\ysum[-1111111111]__0_0 ),
        .O(p_rgb));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \yr[-1111111104]__0_i_2__0 
       (.I0(\px_reg_n_0_[8] ),
        .I1(\px_reg_n_0_[7] ),
        .I2(\px_reg_n_0_[5] ),
        .I3(\px_reg_n_0_[6] ),
        .I4(\px_reg_n_0_[4] ),
        .O(\yr[-1111111104]__0_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \yr[-1111111104]__0_i_3__0 
       (.I0(\px_reg_n_0_[9] ),
        .I1(\px_reg_n_0_[10] ),
        .O(\yr[-1111111104]__0_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040440000)) 
    \yr[-1111111104]_i_1__0 
       (.I0(\row_reg[8]_0 ),
        .I1(s1_href),
        .I2(vsync_d),
        .I3(s1_vsync),
        .I4(href_d),
        .I5(second_reg_n_0),
        .O(hi));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \yr[13]_i_2 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[13]_i_5_n_7 ),
        .I2(\yr_reg[-1111111108]__0_n_0 ),
        .O(\yr[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \yr[13]_i_3 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[13]_i_5_n_2 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .I3(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \yr[13]_i_4 
       (.I0(\yr[13]_i_2_n_0 ),
        .I1(\yr_reg[13]_i_5_n_2 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .I3(\yr_reg[-1111111107]__0_n_0 ),
        .O(\yr[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[1]_i_2 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[-1111111104]__0_n_0 ),
        .O(\yr[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[1]_i_3 
       (.I0(\yr_reg[-1111111108]__0_n_0 ),
        .I1(\yr_reg[-1111111105]__0_n_0 ),
        .O(\yr[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[1]_i_4 
       (.I0(\yr_reg[-1111111104]__0_n_0 ),
        .I1(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_3 
       (.I0(\yr_reg[5]_i_2_n_7 ),
        .I1(\yr_reg[-1111111104]__0_n_0 ),
        .O(\yr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_4 
       (.I0(\yr_reg[1]_i_1_n_4 ),
        .I1(\yr_reg[-1111111105]__0_n_0 ),
        .O(\yr[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_5 
       (.I0(\yr_reg[1]_i_1_n_5 ),
        .I1(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_6 
       (.I0(\yr_reg[-1111111104]__0_n_0 ),
        .I1(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_7 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[-1111111107]__0_n_0 ),
        .O(\yr[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \yr[5]_i_8 
       (.I0(\yr_reg[-1111111106]__0_n_0 ),
        .I1(\yr_reg[-1111111108]__0_n_0 ),
        .O(\yr[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \yr[9]_i_2 
       (.I0(\yr_reg[-1111111106]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_4 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .O(\yr[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \yr[9]_i_3 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_5 ),
        .I2(\yr_reg[-1111111105]__0_n_0 ),
        .O(\yr[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yr[9]_i_4 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[-1111111107]__0_n_0 ),
        .I2(\yr_reg[5]_i_2_n_5 ),
        .O(\yr[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \yr[9]_i_5 
       (.I0(\yr_reg[-1111111105]__0_n_0 ),
        .I1(\yr_reg[13]_i_5_n_7 ),
        .I2(\yr_reg[-1111111108]__0_n_0 ),
        .I3(\yr[9]_i_2_n_0 ),
        .O(\yr[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \yr[9]_i_6 
       (.I0(\yr_reg[-1111111106]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_4 ),
        .I2(\yr_reg[-1111111104]__0_n_0 ),
        .I3(\yr[9]_i_3_n_0 ),
        .O(\yr[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \yr[9]_i_7 
       (.I0(\yr_reg[-1111111107]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_5 ),
        .I2(\yr_reg[-1111111105]__0_n_0 ),
        .I3(\yr_reg[5]_i_2_n_6 ),
        .I4(\yr_reg[-1111111108]__0_n_0 ),
        .O(\yr[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \yr[9]_i_8 
       (.I0(\yr_reg[-1111111108]__0_n_0 ),
        .I1(\yr_reg[5]_i_2_n_6 ),
        .I2(\yr_reg[-1111111106]__0_n_0 ),
        .O(\yr[9]_i_8_n_0 ));
  FDRE \yr_reg[-1111111104] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [7]),
        .Q(yr_reg[7]),
        .R(1'b0));
  FDRE \yr_reg[-1111111104]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[7]),
        .Q(\yr_reg[-1111111104]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111105] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [6]),
        .Q(yr_reg[6]),
        .R(1'b0));
  FDRE \yr_reg[-1111111105]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[6]),
        .Q(\yr_reg[-1111111105]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111106] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [5]),
        .Q(yr_reg[5]),
        .R(1'b0));
  FDRE \yr_reg[-1111111106]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[5]),
        .Q(\yr_reg[-1111111106]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111107] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [4]),
        .Q(yr_reg[4]),
        .R(1'b0));
  FDRE \yr_reg[-1111111107]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[4]),
        .Q(\yr_reg[-1111111107]__0_n_0 ),
        .R(1'b0));
  FDRE \yr_reg[-1111111108] 
       (.C(clk),
        .CE(hi),
        .D(\yr_reg[-1111111104]_0 [3]),
        .Q(yr_reg[3]),
        .R(1'b0));
  FDRE \yr_reg[-1111111108]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(yr_reg[3]),
        .Q(\yr_reg[-1111111108]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\yr_reg[-1111111106]__0_n_0 ),
        .Q(yr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[10]),
        .Q(yr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[11]),
        .Q(yr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[12]),
        .Q(yr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[13]),
        .Q(yr[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[13]_i_1 
       (.CI(\yr_reg[9]_i_1_n_0 ),
        .CO({\yr_reg[13]_i_1_n_0 ,\yr_reg[13]_i_1_n_1 ,\yr_reg[13]_i_1_n_2 ,\yr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\yr_reg[-1111111106]__0_n_0 ,\yr[13]_i_2_n_0 }),
        .O(yr0[13:10]),
        .S({\yr_reg[-1111111104]__0_n_0 ,\yr_reg[-1111111105]__0_n_0 ,\yr[13]_i_3_n_0 ,\yr[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[13]_i_5 
       (.CI(\yr_reg[5]_i_2_n_0 ),
        .CO({\NLW_yr_reg[13]_i_5_CO_UNCONNECTED [3:2],\yr_reg[13]_i_5_n_2 ,\NLW_yr_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yr_reg[13]_i_5_O_UNCONNECTED [3:1],\yr_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,\yr_reg[-1111111104]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[14]),
        .Q(yr[14]),
        .R(1'b0));
  CARRY4 \yr_reg[14]_i_1 
       (.CI(\yr_reg[13]_i_1_n_0 ),
        .CO({\NLW_yr_reg[14]_i_1_CO_UNCONNECTED [3:1],yr0[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_yr_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[1]),
        .Q(yr[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\yr_reg[1]_i_1_n_0 ,\yr_reg[1]_i_1_n_1 ,\yr_reg[1]_i_1_n_2 ,\yr_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yr_reg[-1111111107]__0_n_0 ,\yr_reg[-1111111108]__0_n_0 ,\yr_reg[-1111111104]__0_n_0 ,1'b0}),
        .O({\yr_reg[1]_i_1_n_4 ,\yr_reg[1]_i_1_n_5 ,\yr_reg[1]_i_1_n_6 ,yr0[1]}),
        .S({\yr[1]_i_2_n_0 ,\yr[1]_i_3_n_0 ,\yr[1]_i_4_n_0 ,\yr_reg[-1111111105]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[2]),
        .Q(yr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[3]),
        .Q(yr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[4]),
        .Q(yr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[5]),
        .Q(yr[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\yr_reg[5]_i_1_n_0 ,\yr_reg[5]_i_1_n_1 ,\yr_reg[5]_i_1_n_2 ,\yr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yr_reg[5]_i_2_n_7 ,\yr_reg[1]_i_1_n_4 ,\yr_reg[1]_i_1_n_5 ,1'b0}),
        .O(yr0[5:2]),
        .S({\yr[5]_i_3_n_0 ,\yr[5]_i_4_n_0 ,\yr[5]_i_5_n_0 ,\yr_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[5]_i_2 
       (.CI(\yr_reg[1]_i_1_n_0 ),
        .CO({\yr_reg[5]_i_2_n_0 ,\yr_reg[5]_i_2_n_1 ,\yr_reg[5]_i_2_n_2 ,\yr_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\yr_reg[-1111111104]__0_n_0 ,\yr_reg[-1111111105]__0_n_0 ,\yr_reg[-1111111106]__0_n_0 }),
        .O({\yr_reg[5]_i_2_n_4 ,\yr_reg[5]_i_2_n_5 ,\yr_reg[5]_i_2_n_6 ,\yr_reg[5]_i_2_n_7 }),
        .S({\yr_reg[-1111111105]__0_n_0 ,\yr[5]_i_6_n_0 ,\yr[5]_i_7_n_0 ,\yr[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[6]),
        .Q(yr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[7]),
        .Q(yr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[8]),
        .Q(yr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(yr0[9]),
        .Q(yr[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \yr_reg[9]_i_1 
       (.CI(\yr_reg[5]_i_1_n_0 ),
        .CO({\yr_reg[9]_i_1_n_0 ,\yr_reg[9]_i_1_n_1 ,\yr_reg[9]_i_1_n_2 ,\yr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\yr[9]_i_2_n_0 ,\yr[9]_i_3_n_0 ,\yr[9]_i_4_n_0 ,\yr_reg[-1111111106]__0_n_0 }),
        .O(yr0[9:6]),
        .S({\yr[9]_i_5_n_0 ,\yr[9]_i_6_n_0 ,\yr[9]_i_7_n_0 ,\yr[9]_i_8_n_0 }));
  FDRE \ysum[-1111111104] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [4]),
        .Q(\ysum[-_n_0_1111111104] ),
        .R(1'b0));
  FDRE \ysum[-1111111105] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [3]),
        .Q(\ysum[-_n_0_1111111105] ),
        .R(1'b0));
  FDRE \ysum[-1111111106] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [2]),
        .Q(\ysum[-_n_0_1111111106] ),
        .R(1'b0));
  FDRE \ysum[-1111111106]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\hi_reg_n_0_[0] ),
        .Q(\ysum[-1111111106]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111107] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [1]),
        .Q(\ysum[-_n_0_1111111107] ),
        .R(1'b0));
  FDRE \ysum[-1111111107]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [7]),
        .Q(\ysum[-1111111107]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111108] 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [0]),
        .Q(\ysum[-_n_0_1111111108] ),
        .R(1'b0));
  FDRE \ysum[-1111111108]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [6]),
        .Q(\ysum[-1111111108]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111109]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\yr_reg[-1111111104]_0 [5]),
        .Q(\ysum[-1111111109]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111110]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\hi_reg_n_0_[2] ),
        .Q(\ysum[-1111111110]__0_n_0 ),
        .R(1'b0));
  FDRE \ysum[-1111111111]__0 
       (.C(clk),
        .CE(p_rgb),
        .D(\hi_reg_n_0_[1] ),
        .Q(\ysum[-1111111111]__0_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rect_linebuf" *) 
module system_cam_input_0_0_rect_linebuf
   (rd_data0,
    sof_toggle0,
    frame_base0,
    rows_gray0,
    clk,
    pclk,
    E,
    rd_addr0,
    \g_slice[0].m_reg_0 ,
    sof_toggle_reg_0,
    SR,
    \wx_reg[9]_0 );
  output [7:0]rd_data0;
  output sof_toggle0;
  output [15:0]frame_base0;
  output [9:0]rows_gray0;
  input clk;
  input pclk;
  input [0:0]E;
  input [11:0]rd_addr0;
  input [7:0]\g_slice[0].m_reg_0 ;
  input sof_toggle_reg_0;
  input [0:0]SR;
  input [0:0]\wx_reg[9]_0 ;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire [15:1]data0;
  wire [15:0]frame_base0;
  wire \frame_base[15]_i_1_n_0 ;
  wire \frame_base[15]_i_2_n_0 ;
  wire [7:0]\g_slice[0].m_reg_0 ;
  wire [9:0]p_0_in;
  wire [3:0]p_0_in_0;
  wire p_1_in;
  wire pclk;
  wire [11:0]rd_addr0;
  wire [7:0]rd_data0;
  wire \rows_done[9]_i_1_n_0 ;
  wire \rows_done[9]_i_3_n_0 ;
  wire \rows_done[9]_i_4_n_0 ;
  wire \rows_done_reg_n_0_[0] ;
  wire \rows_done_reg_n_0_[1] ;
  wire \rows_done_reg_n_0_[2] ;
  wire \rows_done_reg_n_0_[3] ;
  wire \rows_done_reg_n_0_[4] ;
  wire \rows_done_reg_n_0_[5] ;
  wire \rows_done_reg_n_0_[6] ;
  wire \rows_done_reg_n_0_[7] ;
  wire \rows_done_reg_n_0_[8] ;
  wire \rows_done_reg_n_0_[9] ;
  wire [9:0]rows_gray0;
  wire \rows_gray[0]_i_1_n_0 ;
  wire \rows_gray[1]_i_1_n_0 ;
  wire \rows_gray[2]_i_1_n_0 ;
  wire \rows_gray[3]_i_1_n_0 ;
  wire \rows_gray[4]_i_1_n_0 ;
  wire \rows_gray[5]_i_1_n_0 ;
  wire \rows_gray[6]_i_1_n_0 ;
  wire \rows_gray[7]_i_1_n_0 ;
  wire \rows_gray[8]_i_1_n_0 ;
  wire sof_toggle0;
  wire sof_toggle_reg_0;
  wire waddr1_carry__0_n_0;
  wire waddr1_carry__0_n_1;
  wire waddr1_carry__0_n_2;
  wire waddr1_carry__0_n_3;
  wire waddr1_carry__1_n_0;
  wire waddr1_carry__1_n_1;
  wire waddr1_carry__1_n_2;
  wire waddr1_carry__1_n_3;
  wire waddr1_carry__2_n_2;
  wire waddr1_carry__2_n_3;
  wire waddr1_carry_n_0;
  wire waddr1_carry_n_1;
  wire waddr1_carry_n_2;
  wire waddr1_carry_n_3;
  wire \waddr[0]_i_1_n_0 ;
  wire \waddr[10]_i_1_n_0 ;
  wire \waddr[11]_i_1_n_0 ;
  wire \waddr[12]_i_1_n_0 ;
  wire \waddr[13]_i_1_n_0 ;
  wire \waddr[14]_i_1_n_0 ;
  wire \waddr[15]_i_1_n_0 ;
  wire \waddr[15]_i_2_n_0 ;
  wire \waddr[15]_i_3_n_0 ;
  wire \waddr[15]_i_4_n_0 ;
  wire \waddr[15]_i_5_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire \waddr[4]_i_1_n_0 ;
  wire \waddr[5]_i_1_n_0 ;
  wire \waddr[6]_i_1_n_0 ;
  wire \waddr[7]_i_1_n_0 ;
  wire \waddr[8]_i_1_n_0 ;
  wire \waddr[9]_i_1_n_0 ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;
  wire [9:0]wx;
  wire \wx[3]_i_2_n_0 ;
  wire \wx[5]_i_1_n_0 ;
  wire \wx[6]_i_2_n_0 ;
  wire \wx[7]_i_2_n_0 ;
  wire \wx[7]_i_3_n_0 ;
  wire \wx[9]_i_2_n_0 ;
  wire [0:0]\wx_reg[9]_0 ;
  wire \wx_reg_n_0_[0] ;
  wire \wx_reg_n_0_[1] ;
  wire \wx_reg_n_0_[2] ;
  wire \wx_reg_n_0_[3] ;
  wire \wx_reg_n_0_[4] ;
  wire \wx_reg_n_0_[5] ;
  wire \wx_reg_n_0_[6] ;
  wire \wx_reg_n_0_[7] ;
  wire \wx_reg_n_0_[8] ;
  wire \wx_reg_n_0_[9] ;
  wire \NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_g_slice[0].m_reg_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED ;
  wire [3:2]NLW_waddr1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_waddr1_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \frame_base[15]_i_1 
       (.I0(SR),
        .I1(\frame_base[15]_i_2_n_0 ),
        .I2(\wx_reg_n_0_[2] ),
        .I3(\wx_reg_n_0_[3] ),
        .I4(\wx_reg_n_0_[6] ),
        .I5(\wx_reg_n_0_[7] ),
        .O(\frame_base[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \frame_base[15]_i_2 
       (.I0(\wx_reg_n_0_[9] ),
        .I1(\wx_reg_n_0_[8] ),
        .I2(\wx_reg_n_0_[1] ),
        .I3(\wx_reg_n_0_[0] ),
        .I4(\wx_reg_n_0_[4] ),
        .I5(\wx_reg_n_0_[5] ),
        .O(\frame_base[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[0] ),
        .Q(frame_base0[0]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[10] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[10] ),
        .Q(frame_base0[10]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[11] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[11] ),
        .Q(frame_base0[11]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[12] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in_0[0]),
        .Q(frame_base0[12]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[13] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in_0[1]),
        .Q(frame_base0[13]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[14] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in_0[2]),
        .Q(frame_base0[14]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[15] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in_0[3]),
        .Q(frame_base0[15]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[1] ),
        .Q(frame_base0[1]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[2] ),
        .Q(frame_base0[2]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_base_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[3] ),
        .Q(frame_base0[3]),
        .S(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[4] ),
        .Q(frame_base0[4]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[5] ),
        .Q(frame_base0[5]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_base_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[6] ),
        .Q(frame_base0[6]),
        .S(\frame_base[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_base_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[7] ),
        .Q(frame_base0[7]),
        .S(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[8] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[8] ),
        .Q(frame_base0[8]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[9] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[9] ),
        .Q(frame_base0[9]),
        .R(\frame_base[15]_i_1_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/u_buf0/g_slice[0].m_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \g_slice[0].m_reg 
       (.ADDRARDADDR({1'b1,\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] ,\waddr_reg_n_0_[1] ,\waddr_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_addr0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(pclk),
        .DBITERR(\NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slice[0].m_reg_0 }),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_g_slice[0].m_reg_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED [31:8],rd_data0}),
        .DOPADOP(\NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(E),
        .ENBWREN(1'b1),
        .INJECTDBITERR(\NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED ),
        .WEA({p_1_in,p_1_in,p_1_in,p_1_in}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0001)) 
    \g_slice[0].m_reg_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \rows_done[0]_i_1 
       (.I0(\rows_done_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rows_done[2]_i_1 
       (.I0(\rows_done_reg_n_0_[0] ),
        .I1(\rows_done_reg_n_0_[1] ),
        .I2(\rows_done_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rows_done[3]_i_1 
       (.I0(\rows_done_reg_n_0_[3] ),
        .I1(\rows_done_reg_n_0_[0] ),
        .I2(\rows_done_reg_n_0_[1] ),
        .I3(\rows_done_reg_n_0_[2] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rows_done[4]_i_1 
       (.I0(\rows_done_reg_n_0_[4] ),
        .I1(\rows_done_reg_n_0_[3] ),
        .I2(\rows_done_reg_n_0_[0] ),
        .I3(\rows_done_reg_n_0_[1] ),
        .I4(\rows_done_reg_n_0_[2] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rows_done[5]_i_1 
       (.I0(\rows_done_reg_n_0_[5] ),
        .I1(\rows_done_reg_n_0_[2] ),
        .I2(\rows_done_reg_n_0_[1] ),
        .I3(\rows_done_reg_n_0_[0] ),
        .I4(\rows_done_reg_n_0_[3] ),
        .I5(\rows_done_reg_n_0_[4] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rows_done[6]_i_1 
       (.I0(\rows_done_reg_n_0_[6] ),
        .I1(\rows_done[9]_i_4_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \rows_done[7]_i_1 
       (.I0(\rows_done_reg_n_0_[7] ),
        .I1(\rows_done[9]_i_4_n_0 ),
        .I2(\rows_done_reg_n_0_[6] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \rows_done[8]_i_1 
       (.I0(\rows_done_reg_n_0_[8] ),
        .I1(\rows_done_reg_n_0_[6] ),
        .I2(\rows_done[9]_i_4_n_0 ),
        .I3(\rows_done_reg_n_0_[7] ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \rows_done[9]_i_1 
       (.I0(\rows_done[9]_i_3_n_0 ),
        .I1(\wx_reg_n_0_[3] ),
        .I2(\wx_reg_n_0_[9] ),
        .I3(\wx_reg[9]_0 ),
        .I4(\wx[3]_i_2_n_0 ),
        .O(\rows_done[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \rows_done[9]_i_2 
       (.I0(\rows_done_reg_n_0_[9] ),
        .I1(\rows_done_reg_n_0_[7] ),
        .I2(\rows_done[9]_i_4_n_0 ),
        .I3(\rows_done_reg_n_0_[6] ),
        .I4(\rows_done_reg_n_0_[8] ),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \rows_done[9]_i_3 
       (.I0(\wx_reg_n_0_[5] ),
        .I1(\wx_reg_n_0_[4] ),
        .I2(\wx_reg_n_0_[2] ),
        .I3(\wx_reg_n_0_[1] ),
        .I4(\wx_reg_n_0_[0] ),
        .O(\rows_done[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rows_done[9]_i_4 
       (.I0(\rows_done_reg_n_0_[4] ),
        .I1(\rows_done_reg_n_0_[3] ),
        .I2(\rows_done_reg_n_0_[0] ),
        .I3(\rows_done_reg_n_0_[1] ),
        .I4(\rows_done_reg_n_0_[2] ),
        .I5(\rows_done_reg_n_0_[5] ),
        .O(\rows_done[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[0] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\rows_done_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[1] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(\rows_gray[0]_i_1_n_0 ),
        .Q(\rows_done_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[2] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\rows_done_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[3] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\rows_done_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[4] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\rows_done_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[5] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\rows_done_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[6] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\rows_done_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[7] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\rows_done_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[8] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(\rows_done_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[9] 
       (.C(clk),
        .CE(\rows_done[9]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(\rows_done_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[0]_i_1 
       (.I0(\rows_done_reg_n_0_[0] ),
        .I1(\rows_done_reg_n_0_[1] ),
        .O(\rows_gray[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[1]_i_1 
       (.I0(\rows_done_reg_n_0_[1] ),
        .I1(\rows_done_reg_n_0_[2] ),
        .O(\rows_gray[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[2]_i_1 
       (.I0(\rows_done_reg_n_0_[2] ),
        .I1(\rows_done_reg_n_0_[3] ),
        .O(\rows_gray[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[3]_i_1 
       (.I0(\rows_done_reg_n_0_[3] ),
        .I1(\rows_done_reg_n_0_[4] ),
        .O(\rows_gray[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[4]_i_1 
       (.I0(\rows_done_reg_n_0_[4] ),
        .I1(\rows_done_reg_n_0_[5] ),
        .O(\rows_gray[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[5]_i_1 
       (.I0(\rows_done_reg_n_0_[5] ),
        .I1(\rows_done_reg_n_0_[6] ),
        .O(\rows_gray[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[6]_i_1 
       (.I0(\rows_done_reg_n_0_[6] ),
        .I1(\rows_done_reg_n_0_[7] ),
        .O(\rows_gray[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[7]_i_1 
       (.I0(\rows_done_reg_n_0_[7] ),
        .I1(\rows_done_reg_n_0_[8] ),
        .O(\rows_gray[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[8]_i_1 
       (.I0(\rows_done_reg_n_0_[8] ),
        .I1(\rows_done_reg_n_0_[9] ),
        .O(\rows_gray[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[0]_i_1_n_0 ),
        .Q(rows_gray0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[1]_i_1_n_0 ),
        .Q(rows_gray0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[2]_i_1_n_0 ),
        .Q(rows_gray0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[3]_i_1_n_0 ),
        .Q(rows_gray0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[4]_i_1_n_0 ),
        .Q(rows_gray0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[5]_i_1_n_0 ),
        .Q(rows_gray0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[6]_i_1_n_0 ),
        .Q(rows_gray0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[7]_i_1_n_0 ),
        .Q(rows_gray0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[8]_i_1_n_0 ),
        .Q(rows_gray0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_done_reg_n_0_[9] ),
        .Q(rows_gray0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sof_toggle_reg
       (.C(clk),
        .CE(1'b1),
        .D(sof_toggle_reg_0),
        .Q(sof_toggle0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry
       (.CI(1'b0),
        .CO({waddr1_carry_n_0,waddr1_carry_n_1,waddr1_carry_n_2,waddr1_carry_n_3}),
        .CYINIT(\waddr_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] ,\waddr_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry__0
       (.CI(waddr1_carry_n_0),
        .CO({waddr1_carry__0_n_0,waddr1_carry__0_n_1,waddr1_carry__0_n_2,waddr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry__1
       (.CI(waddr1_carry__0_n_0),
        .CO({waddr1_carry__1_n_0,waddr1_carry__1_n_1,waddr1_carry__1_n_2,waddr1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({p_0_in_0[0],\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry__2
       (.CI(waddr1_carry__1_n_0),
        .CO({NLW_waddr1_carry__2_CO_UNCONNECTED[3:2],waddr1_carry__2_n_2,waddr1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_waddr1_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,p_0_in_0[3:1]}));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \waddr[0]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(\waddr_reg_n_0_[0] ),
        .O(\waddr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[10]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[10]),
        .O(\waddr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[11]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[11]),
        .O(\waddr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[12]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[12]),
        .O(\waddr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[13]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[13]),
        .O(\waddr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[14]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[14]),
        .O(\waddr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[15]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[15]),
        .O(\waddr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \waddr[15]_i_2 
       (.I0(\waddr_reg_n_0_[10] ),
        .I1(\waddr_reg_n_0_[11] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\waddr[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \waddr[15]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[1] ),
        .O(\waddr[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \waddr[15]_i_4 
       (.I0(p_0_in_0[0]),
        .I1(\waddr_reg_n_0_[9] ),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .O(\waddr[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \waddr[15]_i_5 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(p_0_in_0[2]),
        .I2(\waddr_reg_n_0_[8] ),
        .I3(\waddr_reg_n_0_[7] ),
        .O(\waddr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[1]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[1]),
        .O(\waddr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[2]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[2]),
        .O(\waddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[3]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[3]),
        .O(\waddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[4]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[4]),
        .O(\waddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[5]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[5]),
        .O(\waddr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[6]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[6]),
        .O(\waddr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[7]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[7]),
        .O(\waddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[8]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[8]),
        .O(\waddr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[9]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .I2(\waddr[15]_i_4_n_0 ),
        .I3(\waddr[15]_i_5_n_0 ),
        .I4(data0[9]),
        .O(\waddr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\waddr[0]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[0] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\waddr[10]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[10] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\waddr[11]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[11] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\waddr[12]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\waddr[13]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\waddr[14]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\waddr[15]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[1] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[2] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[3] ),
        .S(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[4] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\waddr[5]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[5] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\waddr[6]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[6] ),
        .S(\frame_base[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\waddr[7]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[7] ),
        .S(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\waddr[8]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[8] ),
        .R(\frame_base[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\waddr[9]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[9] ),
        .R(\frame_base[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wx[0]_i_1 
       (.I0(\wx_reg_n_0_[0] ),
        .O(wx[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wx[1]_i_1 
       (.I0(\wx_reg_n_0_[1] ),
        .I1(\wx_reg_n_0_[0] ),
        .O(wx[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wx[2]_i_1 
       (.I0(\wx_reg_n_0_[2] ),
        .I1(\wx_reg_n_0_[1] ),
        .I2(\wx_reg_n_0_[0] ),
        .O(wx[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \wx[3]_i_1 
       (.I0(\wx_reg_n_0_[9] ),
        .I1(\wx[3]_i_2_n_0 ),
        .I2(\wx_reg_n_0_[5] ),
        .I3(\wx_reg_n_0_[4] ),
        .I4(\wx[6]_i_2_n_0 ),
        .I5(\wx_reg_n_0_[3] ),
        .O(wx[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \wx[3]_i_2 
       (.I0(\wx_reg_n_0_[7] ),
        .I1(\wx_reg_n_0_[8] ),
        .I2(\wx_reg_n_0_[6] ),
        .O(\wx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wx[4]_i_1 
       (.I0(\wx_reg_n_0_[4] ),
        .I1(\wx_reg_n_0_[2] ),
        .I2(\wx_reg_n_0_[1] ),
        .I3(\wx_reg_n_0_[0] ),
        .I4(\wx_reg_n_0_[3] ),
        .O(wx[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wx[5]_i_1 
       (.I0(\wx_reg_n_0_[5] ),
        .I1(\wx_reg_n_0_[4] ),
        .I2(\wx_reg_n_0_[2] ),
        .I3(\wx_reg_n_0_[1] ),
        .I4(\wx_reg_n_0_[0] ),
        .I5(\wx_reg_n_0_[3] ),
        .O(\wx[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0800A2EE0800)) 
    \wx[6]_i_1 
       (.I0(\wx_reg_n_0_[5] ),
        .I1(\wx_reg_n_0_[3] ),
        .I2(\wx[6]_i_2_n_0 ),
        .I3(\wx_reg_n_0_[4] ),
        .I4(\wx_reg_n_0_[6] ),
        .I5(\wx[7]_i_2_n_0 ),
        .O(wx[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \wx[6]_i_2 
       (.I0(\wx_reg_n_0_[0] ),
        .I1(\wx_reg_n_0_[1] ),
        .I2(\wx_reg_n_0_[2] ),
        .O(\wx[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF200000000FFF2)) 
    \wx[7]_i_1 
       (.I0(\wx_reg_n_0_[3] ),
        .I1(\wx_reg_n_0_[4] ),
        .I2(\wx_reg_n_0_[5] ),
        .I3(\wx[7]_i_2_n_0 ),
        .I4(\wx[7]_i_3_n_0 ),
        .I5(\wx_reg_n_0_[7] ),
        .O(wx[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \wx[7]_i_2 
       (.I0(\rows_done[9]_i_3_n_0 ),
        .I1(\wx_reg_n_0_[7] ),
        .I2(\wx_reg_n_0_[8] ),
        .I3(\wx_reg_n_0_[6] ),
        .I4(\wx_reg_n_0_[9] ),
        .O(\wx[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \wx[7]_i_3 
       (.I0(\wx_reg_n_0_[5] ),
        .I1(\wx_reg_n_0_[3] ),
        .I2(\wx[6]_i_2_n_0 ),
        .I3(\wx_reg_n_0_[4] ),
        .I4(\wx_reg_n_0_[6] ),
        .O(\wx[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \wx[8]_i_1 
       (.I0(\wx_reg_n_0_[8] ),
        .I1(\wx_reg_n_0_[6] ),
        .I2(\wx[9]_i_2_n_0 ),
        .I3(\wx_reg_n_0_[5] ),
        .I4(\wx_reg_n_0_[7] ),
        .O(wx[8]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \wx[9]_i_1 
       (.I0(\wx_reg_n_0_[9] ),
        .I1(\wx_reg_n_0_[6] ),
        .I2(\wx[9]_i_2_n_0 ),
        .I3(\wx_reg_n_0_[5] ),
        .I4(\wx_reg_n_0_[7] ),
        .I5(\wx_reg_n_0_[8] ),
        .O(wx[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wx[9]_i_2 
       (.I0(\wx_reg_n_0_[3] ),
        .I1(\wx_reg_n_0_[0] ),
        .I2(\wx_reg_n_0_[1] ),
        .I3(\wx_reg_n_0_[2] ),
        .I4(\wx_reg_n_0_[4] ),
        .O(\wx[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[0] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[0]),
        .Q(\wx_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[1] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[1]),
        .Q(\wx_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[2] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[2]),
        .Q(\wx_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[3] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[3]),
        .Q(\wx_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[4] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[4]),
        .Q(\wx_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[5] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(\wx[5]_i_1_n_0 ),
        .Q(\wx_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[6] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[6]),
        .Q(\wx_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[7] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[7]),
        .Q(\wx_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[8] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[8]),
        .Q(\wx_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[9] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[9]),
        .Q(\wx_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "rect_linebuf" *) 
module system_cam_input_0_0_rect_linebuf_1
   (rd_data1,
    sof_toggle1,
    frame_base1,
    rows_gray1,
    clk,
    pclk,
    E,
    rd_addr1,
    \g_slice[0].m_reg_0 ,
    sof_toggle_reg_0,
    SR,
    \wx_reg[9]_0 );
  output [7:0]rd_data1;
  output sof_toggle1;
  output [15:0]frame_base1;
  output [9:0]rows_gray1;
  input clk;
  input pclk;
  input [0:0]E;
  input [11:0]rd_addr1;
  input [7:0]\g_slice[0].m_reg_0 ;
  input sof_toggle_reg_0;
  input [0:0]SR;
  input [0:0]\wx_reg[9]_0 ;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire [15:1]data0;
  wire [15:0]frame_base1;
  wire \frame_base[15]_i_1__0_n_0 ;
  wire \frame_base[15]_i_2__0_n_0 ;
  wire \frame_base[15]_i_3_n_0 ;
  wire [7:0]\g_slice[0].m_reg_0 ;
  wire [3:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire p_1_in;
  wire pclk;
  wire [11:0]rd_addr1;
  wire [7:0]rd_data1;
  wire \rows_done[9]_i_1__0_n_0 ;
  wire \rows_done[9]_i_3__0_n_0 ;
  wire \rows_done[9]_i_4__0_n_0 ;
  wire \rows_done_reg_n_0_[0] ;
  wire \rows_done_reg_n_0_[1] ;
  wire \rows_done_reg_n_0_[2] ;
  wire \rows_done_reg_n_0_[3] ;
  wire \rows_done_reg_n_0_[4] ;
  wire \rows_done_reg_n_0_[5] ;
  wire \rows_done_reg_n_0_[6] ;
  wire \rows_done_reg_n_0_[7] ;
  wire \rows_done_reg_n_0_[8] ;
  wire \rows_done_reg_n_0_[9] ;
  wire [9:0]rows_gray1;
  wire \rows_gray[0]_i_1__0_n_0 ;
  wire \rows_gray[1]_i_1__0_n_0 ;
  wire \rows_gray[2]_i_1__0_n_0 ;
  wire \rows_gray[3]_i_1__0_n_0 ;
  wire \rows_gray[4]_i_1__0_n_0 ;
  wire \rows_gray[5]_i_1__0_n_0 ;
  wire \rows_gray[6]_i_1__0_n_0 ;
  wire \rows_gray[7]_i_1__0_n_0 ;
  wire \rows_gray[8]_i_1__0_n_0 ;
  wire sof_toggle1;
  wire sof_toggle_reg_0;
  wire waddr1_carry__0_n_0;
  wire waddr1_carry__0_n_1;
  wire waddr1_carry__0_n_2;
  wire waddr1_carry__0_n_3;
  wire waddr1_carry__1_n_0;
  wire waddr1_carry__1_n_1;
  wire waddr1_carry__1_n_2;
  wire waddr1_carry__1_n_3;
  wire waddr1_carry__2_n_2;
  wire waddr1_carry__2_n_3;
  wire waddr1_carry_n_0;
  wire waddr1_carry_n_1;
  wire waddr1_carry_n_2;
  wire waddr1_carry_n_3;
  wire \waddr[0]_i_1__0_n_0 ;
  wire \waddr[10]_i_1__0_n_0 ;
  wire \waddr[11]_i_1__0_n_0 ;
  wire \waddr[12]_i_1__0_n_0 ;
  wire \waddr[13]_i_1__0_n_0 ;
  wire \waddr[14]_i_1__0_n_0 ;
  wire \waddr[15]_i_1__0_n_0 ;
  wire \waddr[15]_i_2__0_n_0 ;
  wire \waddr[15]_i_3__0_n_0 ;
  wire \waddr[15]_i_4__0_n_0 ;
  wire \waddr[15]_i_5__0_n_0 ;
  wire \waddr[1]_i_1__0_n_0 ;
  wire \waddr[2]_i_1__0_n_0 ;
  wire \waddr[3]_i_1__0_n_0 ;
  wire \waddr[4]_i_1__0_n_0 ;
  wire \waddr[5]_i_1__0_n_0 ;
  wire \waddr[6]_i_1__0_n_0 ;
  wire \waddr[7]_i_1__0_n_0 ;
  wire \waddr[8]_i_1__0_n_0 ;
  wire \waddr[9]_i_1__0_n_0 ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;
  wire [9:0]wx;
  wire \wx[3]_i_2__0_n_0 ;
  wire \wx[5]_i_1__0_n_0 ;
  wire \wx[6]_i_2__0_n_0 ;
  wire \wx[7]_i_2__0_n_0 ;
  wire \wx[9]_i_2__0_n_0 ;
  wire [0:0]\wx_reg[9]_0 ;
  wire \wx_reg_n_0_[0] ;
  wire \wx_reg_n_0_[1] ;
  wire \wx_reg_n_0_[2] ;
  wire \wx_reg_n_0_[3] ;
  wire \wx_reg_n_0_[4] ;
  wire \wx_reg_n_0_[5] ;
  wire \wx_reg_n_0_[6] ;
  wire \wx_reg_n_0_[7] ;
  wire \wx_reg_n_0_[8] ;
  wire \wx_reg_n_0_[9] ;
  wire \NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_g_slice[0].m_reg_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED ;
  wire [3:2]NLW_waddr1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_waddr1_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \frame_base[15]_i_1__0 
       (.I0(SR),
        .I1(\wx_reg_n_0_[1] ),
        .I2(\wx_reg_n_0_[0] ),
        .I3(\wx_reg_n_0_[2] ),
        .I4(\frame_base[15]_i_2__0_n_0 ),
        .I5(\frame_base[15]_i_3_n_0 ),
        .O(\frame_base[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_base[15]_i_2__0 
       (.I0(\wx_reg_n_0_[9] ),
        .I1(\wx_reg_n_0_[8] ),
        .I2(\wx_reg_n_0_[6] ),
        .I3(\wx_reg_n_0_[7] ),
        .O(\frame_base[15]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \frame_base[15]_i_3 
       (.I0(\wx_reg_n_0_[3] ),
        .I1(\wx_reg_n_0_[5] ),
        .I2(\wx_reg_n_0_[4] ),
        .O(\frame_base[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[0] ),
        .Q(frame_base1[0]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[10] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[10] ),
        .Q(frame_base1[10]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[11] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[11] ),
        .Q(frame_base1[11]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[12] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in[0]),
        .Q(frame_base1[12]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[13] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in[1]),
        .Q(frame_base1[13]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[14] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in[2]),
        .Q(frame_base1[14]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[15] 
       (.C(clk),
        .CE(SR),
        .D(p_0_in[3]),
        .Q(frame_base1[15]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[1] ),
        .Q(frame_base1[1]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[2] ),
        .Q(frame_base1[2]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_base_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[3] ),
        .Q(frame_base1[3]),
        .S(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[4] ),
        .Q(frame_base1[4]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[5] ),
        .Q(frame_base1[5]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_base_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[6] ),
        .Q(frame_base1[6]),
        .S(\frame_base[15]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_base_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[7] ),
        .Q(frame_base1[7]),
        .S(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[8] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[8] ),
        .Q(frame_base1[8]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_base_reg[9] 
       (.C(clk),
        .CE(SR),
        .D(\waddr_reg_n_0_[9] ),
        .Q(frame_base1[9]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "system_cam_input_0_0/inst/u_buf1/g_slice[0].m_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \g_slice[0].m_reg 
       (.ADDRARDADDR({1'b1,\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] ,\waddr_reg_n_0_[1] ,\waddr_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_addr1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(pclk),
        .DBITERR(\NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slice[0].m_reg_0 }),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_g_slice[0].m_reg_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED [31:8],rd_data1}),
        .DOPADOP(\NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(E),
        .ENBWREN(1'b1),
        .INJECTDBITERR(\NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED ),
        .WEA({p_1_in,p_1_in,p_1_in,p_1_in}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0001)) 
    \g_slice[0].m_reg_i_2__0 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \rows_done[0]_i_1__0 
       (.I0(\rows_done_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rows_done[2]_i_1__0 
       (.I0(\rows_done_reg_n_0_[0] ),
        .I1(\rows_done_reg_n_0_[1] ),
        .I2(\rows_done_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rows_done[3]_i_1__0 
       (.I0(\rows_done_reg_n_0_[3] ),
        .I1(\rows_done_reg_n_0_[0] ),
        .I2(\rows_done_reg_n_0_[1] ),
        .I3(\rows_done_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rows_done[4]_i_1__0 
       (.I0(\rows_done_reg_n_0_[4] ),
        .I1(\rows_done_reg_n_0_[3] ),
        .I2(\rows_done_reg_n_0_[0] ),
        .I3(\rows_done_reg_n_0_[1] ),
        .I4(\rows_done_reg_n_0_[2] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rows_done[5]_i_1__0 
       (.I0(\rows_done_reg_n_0_[5] ),
        .I1(\rows_done_reg_n_0_[2] ),
        .I2(\rows_done_reg_n_0_[1] ),
        .I3(\rows_done_reg_n_0_[0] ),
        .I4(\rows_done_reg_n_0_[3] ),
        .I5(\rows_done_reg_n_0_[4] ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rows_done[6]_i_1__0 
       (.I0(\rows_done_reg_n_0_[6] ),
        .I1(\rows_done[9]_i_4__0_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \rows_done[7]_i_1__0 
       (.I0(\rows_done_reg_n_0_[7] ),
        .I1(\rows_done[9]_i_4__0_n_0 ),
        .I2(\rows_done_reg_n_0_[6] ),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \rows_done[8]_i_1__0 
       (.I0(\rows_done_reg_n_0_[8] ),
        .I1(\rows_done_reg_n_0_[6] ),
        .I2(\rows_done[9]_i_4__0_n_0 ),
        .I3(\rows_done_reg_n_0_[7] ),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \rows_done[9]_i_1__0 
       (.I0(\rows_done[9]_i_3__0_n_0 ),
        .I1(\wx_reg_n_0_[9] ),
        .I2(\wx_reg[9]_0 ),
        .I3(\wx_reg_n_0_[7] ),
        .I4(\wx_reg_n_0_[8] ),
        .I5(\wx_reg_n_0_[6] ),
        .O(\rows_done[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \rows_done[9]_i_2__0 
       (.I0(\rows_done_reg_n_0_[9] ),
        .I1(\rows_done_reg_n_0_[7] ),
        .I2(\rows_done[9]_i_4__0_n_0 ),
        .I3(\rows_done_reg_n_0_[6] ),
        .I4(\rows_done_reg_n_0_[8] ),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \rows_done[9]_i_3__0 
       (.I0(\wx_reg_n_0_[4] ),
        .I1(\wx_reg_n_0_[5] ),
        .I2(\wx_reg_n_0_[3] ),
        .I3(\wx_reg_n_0_[2] ),
        .I4(\wx_reg_n_0_[1] ),
        .I5(\wx_reg_n_0_[0] ),
        .O(\rows_done[9]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rows_done[9]_i_4__0 
       (.I0(\rows_done_reg_n_0_[4] ),
        .I1(\rows_done_reg_n_0_[3] ),
        .I2(\rows_done_reg_n_0_[0] ),
        .I3(\rows_done_reg_n_0_[1] ),
        .I4(\rows_done_reg_n_0_[2] ),
        .I5(\rows_done_reg_n_0_[5] ),
        .O(\rows_done[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[0] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\rows_done_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[1] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(\rows_gray[0]_i_1__0_n_0 ),
        .Q(\rows_done_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[2] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\rows_done_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[3] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\rows_done_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[4] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\rows_done_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[5] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\rows_done_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[6] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\rows_done_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[7] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\rows_done_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[8] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[8]),
        .Q(\rows_done_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rows_done_reg[9] 
       (.C(clk),
        .CE(\rows_done[9]_i_1__0_n_0 ),
        .D(p_0_in__0[9]),
        .Q(\rows_done_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[0]_i_1__0 
       (.I0(\rows_done_reg_n_0_[0] ),
        .I1(\rows_done_reg_n_0_[1] ),
        .O(\rows_gray[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[1]_i_1__0 
       (.I0(\rows_done_reg_n_0_[1] ),
        .I1(\rows_done_reg_n_0_[2] ),
        .O(\rows_gray[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[2]_i_1__0 
       (.I0(\rows_done_reg_n_0_[2] ),
        .I1(\rows_done_reg_n_0_[3] ),
        .O(\rows_gray[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[3]_i_1__0 
       (.I0(\rows_done_reg_n_0_[3] ),
        .I1(\rows_done_reg_n_0_[4] ),
        .O(\rows_gray[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[4]_i_1__0 
       (.I0(\rows_done_reg_n_0_[4] ),
        .I1(\rows_done_reg_n_0_[5] ),
        .O(\rows_gray[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[5]_i_1__0 
       (.I0(\rows_done_reg_n_0_[5] ),
        .I1(\rows_done_reg_n_0_[6] ),
        .O(\rows_gray[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[6]_i_1__0 
       (.I0(\rows_done_reg_n_0_[6] ),
        .I1(\rows_done_reg_n_0_[7] ),
        .O(\rows_gray[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[7]_i_1__0 
       (.I0(\rows_done_reg_n_0_[7] ),
        .I1(\rows_done_reg_n_0_[8] ),
        .O(\rows_gray[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rows_gray[8]_i_1__0 
       (.I0(\rows_done_reg_n_0_[8] ),
        .I1(\rows_done_reg_n_0_[9] ),
        .O(\rows_gray[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[0]_i_1__0_n_0 ),
        .Q(rows_gray1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[1]_i_1__0_n_0 ),
        .Q(rows_gray1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[2]_i_1__0_n_0 ),
        .Q(rows_gray1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[3]_i_1__0_n_0 ),
        .Q(rows_gray1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[4]_i_1__0_n_0 ),
        .Q(rows_gray1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[5]_i_1__0_n_0 ),
        .Q(rows_gray1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[6]_i_1__0_n_0 ),
        .Q(rows_gray1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[7]_i_1__0_n_0 ),
        .Q(rows_gray1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_gray[8]_i_1__0_n_0 ),
        .Q(rows_gray1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rows_gray_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\rows_done_reg_n_0_[9] ),
        .Q(rows_gray1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sof_toggle_reg
       (.C(clk),
        .CE(1'b1),
        .D(sof_toggle_reg_0),
        .Q(sof_toggle1),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry
       (.CI(1'b0),
        .CO({waddr1_carry_n_0,waddr1_carry_n_1,waddr1_carry_n_2,waddr1_carry_n_3}),
        .CYINIT(\waddr_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] ,\waddr_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry__0
       (.CI(waddr1_carry_n_0),
        .CO({waddr1_carry__0_n_0,waddr1_carry__0_n_1,waddr1_carry__0_n_2,waddr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry__1
       (.CI(waddr1_carry__0_n_0),
        .CO({waddr1_carry__1_n_0,waddr1_carry__1_n_1,waddr1_carry__1_n_2,waddr1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({p_0_in[0],\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr1_carry__2
       (.CI(waddr1_carry__1_n_0),
        .CO({NLW_waddr1_carry__2_CO_UNCONNECTED[3:2],waddr1_carry__2_n_2,waddr1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_waddr1_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,p_0_in[3:1]}));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \waddr[0]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(\waddr_reg_n_0_[0] ),
        .O(\waddr[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[10]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[10]),
        .O(\waddr[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[11]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[11]),
        .O(\waddr[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[12]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[12]),
        .O(\waddr[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[13]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[13]),
        .O(\waddr[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[14]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[14]),
        .O(\waddr[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[15]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[15]),
        .O(\waddr[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \waddr[15]_i_2__0 
       (.I0(\waddr_reg_n_0_[10] ),
        .I1(\waddr_reg_n_0_[11] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\waddr[15]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \waddr[15]_i_3__0 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[1] ),
        .O(\waddr[15]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \waddr[15]_i_4__0 
       (.I0(p_0_in[0]),
        .I1(\waddr_reg_n_0_[9] ),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(\waddr[15]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \waddr[15]_i_5__0 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(p_0_in[2]),
        .I2(\waddr_reg_n_0_[8] ),
        .I3(\waddr_reg_n_0_[7] ),
        .O(\waddr[15]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[1]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[1]),
        .O(\waddr[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[2]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[2]),
        .O(\waddr[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[3]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[3]),
        .O(\waddr[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[4]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[4]),
        .O(\waddr[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[5]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[5]),
        .O(\waddr[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[6]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[6]),
        .O(\waddr[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[7]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[7]),
        .O(\waddr[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[8]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[8]),
        .O(\waddr[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \waddr[9]_i_1__0 
       (.I0(\waddr[15]_i_2__0_n_0 ),
        .I1(\waddr[15]_i_3__0_n_0 ),
        .I2(\waddr[15]_i_4__0_n_0 ),
        .I3(\waddr[15]_i_5__0_n_0 ),
        .I4(data0[9]),
        .O(\waddr[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\waddr[0]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[0] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\waddr[10]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[10] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\waddr[11]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[11] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\waddr[12]_i_1__0_n_0 ),
        .Q(p_0_in[0]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\waddr[13]_i_1__0_n_0 ),
        .Q(p_0_in[1]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\waddr[14]_i_1__0_n_0 ),
        .Q(p_0_in[2]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\waddr[15]_i_1__0_n_0 ),
        .Q(p_0_in[3]),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\waddr[1]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[1] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\waddr[2]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[2] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\waddr[3]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[3] ),
        .S(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\waddr[4]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[4] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\waddr[5]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[5] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\waddr[6]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[6] ),
        .S(\frame_base[15]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\waddr[7]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[7] ),
        .S(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\waddr[8]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[8] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\waddr[9]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[9] ),
        .R(\frame_base[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wx[0]_i_1__0 
       (.I0(\wx_reg_n_0_[0] ),
        .O(wx[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wx[1]_i_1__0 
       (.I0(\wx_reg_n_0_[1] ),
        .I1(\wx_reg_n_0_[0] ),
        .O(wx[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wx[2]_i_1__0 
       (.I0(\wx_reg_n_0_[2] ),
        .I1(\wx_reg_n_0_[1] ),
        .I2(\wx_reg_n_0_[0] ),
        .O(wx[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \wx[3]_i_1__0 
       (.I0(\wx[3]_i_2__0_n_0 ),
        .I1(\wx_reg_n_0_[4] ),
        .I2(\wx_reg_n_0_[5] ),
        .I3(\wx_reg_n_0_[9] ),
        .I4(\wx[6]_i_2__0_n_0 ),
        .I5(\wx_reg_n_0_[3] ),
        .O(wx[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \wx[3]_i_2__0 
       (.I0(\wx_reg_n_0_[7] ),
        .I1(\wx_reg_n_0_[8] ),
        .I2(\wx_reg_n_0_[6] ),
        .O(\wx[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wx[4]_i_1__0 
       (.I0(\wx_reg_n_0_[4] ),
        .I1(\wx_reg_n_0_[2] ),
        .I2(\wx_reg_n_0_[1] ),
        .I3(\wx_reg_n_0_[0] ),
        .I4(\wx_reg_n_0_[3] ),
        .O(wx[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wx[5]_i_1__0 
       (.I0(\wx_reg_n_0_[5] ),
        .I1(\wx_reg_n_0_[4] ),
        .I2(\wx_reg_n_0_[2] ),
        .I3(\wx_reg_n_0_[1] ),
        .I4(\wx_reg_n_0_[0] ),
        .I5(\wx_reg_n_0_[3] ),
        .O(\wx[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \wx[6]_i_1__0 
       (.I0(\wx_reg_n_0_[5] ),
        .I1(\wx_reg_n_0_[3] ),
        .I2(\wx[6]_i_2__0_n_0 ),
        .I3(\wx_reg_n_0_[4] ),
        .I4(\wx_reg_n_0_[6] ),
        .I5(\wx[7]_i_2__0_n_0 ),
        .O(wx[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \wx[6]_i_2__0 
       (.I0(\wx_reg_n_0_[0] ),
        .I1(\wx_reg_n_0_[1] ),
        .I2(\wx_reg_n_0_[2] ),
        .O(\wx[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h44144444)) 
    \wx[7]_i_1__0 
       (.I0(\wx[7]_i_2__0_n_0 ),
        .I1(\wx_reg_n_0_[7] ),
        .I2(\wx_reg_n_0_[6] ),
        .I3(\wx[9]_i_2__0_n_0 ),
        .I4(\wx_reg_n_0_[5] ),
        .O(wx[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wx[7]_i_2__0 
       (.I0(\wx_reg_n_0_[3] ),
        .I1(\wx[3]_i_2__0_n_0 ),
        .I2(\wx_reg_n_0_[4] ),
        .I3(\wx_reg_n_0_[5] ),
        .I4(\wx_reg_n_0_[9] ),
        .I5(\wx[6]_i_2__0_n_0 ),
        .O(\wx[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \wx[8]_i_1__0 
       (.I0(\wx_reg_n_0_[8] ),
        .I1(\wx_reg_n_0_[5] ),
        .I2(\wx[9]_i_2__0_n_0 ),
        .I3(\wx_reg_n_0_[6] ),
        .I4(\wx_reg_n_0_[7] ),
        .O(wx[8]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \wx[9]_i_1__0 
       (.I0(\wx_reg_n_0_[9] ),
        .I1(\wx_reg_n_0_[7] ),
        .I2(\wx_reg_n_0_[6] ),
        .I3(\wx[9]_i_2__0_n_0 ),
        .I4(\wx_reg_n_0_[5] ),
        .I5(\wx_reg_n_0_[8] ),
        .O(wx[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wx[9]_i_2__0 
       (.I0(\wx_reg_n_0_[3] ),
        .I1(\wx_reg_n_0_[0] ),
        .I2(\wx_reg_n_0_[1] ),
        .I3(\wx_reg_n_0_[2] ),
        .I4(\wx_reg_n_0_[4] ),
        .O(\wx[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[0] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[0]),
        .Q(\wx_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[1] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[1]),
        .Q(\wx_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[2] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[2]),
        .Q(\wx_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[3] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[3]),
        .Q(\wx_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[4] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[4]),
        .Q(\wx_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[5] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(\wx[5]_i_1__0_n_0 ),
        .Q(\wx_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[6] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[6]),
        .Q(\wx_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[7] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[7]),
        .Q(\wx_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[8] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[8]),
        .Q(\wx_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wx_reg[9] 
       (.C(clk),
        .CE(\wx_reg[9]_0 ),
        .D(wx[9]),
        .Q(\wx_reg_n_0_[9] ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
