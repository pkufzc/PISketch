// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 28 14:21:27 2021
// Host        : LAPTOP-CK74LVEA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/PIS_1/PIS_1.gen/sources_1/ip/ram_65_16/ram_65_16_sim_netlist.v
// Design      : ram_65_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_65_16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram_65_16
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [64:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [64:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [64:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [64:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [64:0]dina;
  wire [64:0]dinb;
  wire [64:0]douta;
  wire [64:0]doutb;
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
  wire [64:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.843801 mW" *) 
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
  (* C_INIT_FILE = "ram_65_16.mem" *) 
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
  (* C_READ_WIDTH_A = "65" *) 
  (* C_READ_WIDTH_B = "65" *) 
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
  (* C_WRITE_WIDTH_A = "65" *) 
  (* C_WRITE_WIDTH_B = "65" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_65_16_blk_mem_gen_v8_4_4 U0
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[64:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48432)
`pragma protect data_block
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
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
