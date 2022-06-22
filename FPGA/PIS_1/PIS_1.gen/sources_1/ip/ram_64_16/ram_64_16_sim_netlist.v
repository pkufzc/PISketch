// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 28 14:20:38 2021
// Host        : LAPTOP-CK74LVEA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/PIS_1/PIS_1.gen/sources_1/ip/ram_64_16/ram_64_16_sim_netlist.v
// Design      : ram_64_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_64_16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram_64_16
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.8086 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_64_16.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_64_16_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48704)
`pragma protect data_block
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
2TY7cjgagQiAeWLSy3ceWNwI2dZNO03p848=
`pragma protect end_protected
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
