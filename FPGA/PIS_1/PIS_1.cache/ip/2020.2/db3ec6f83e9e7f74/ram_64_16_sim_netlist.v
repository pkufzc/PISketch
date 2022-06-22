// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 28 14:20:37 2021
// Host        : LAPTOP-CK74LVEA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_64_16_sim_netlist.v
// Design      : ram_64_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_64_16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48896)
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
