// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 28 14:21:27 2021
// Host        : LAPTOP-CK74LVEA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_65_16_sim_netlist.v
// Design      : ram_65_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_65_16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48624)
`pragma protect data_block
pgR/c+iMTs630VOVzdlpAbxjyujzYPdT0UF/5k+E2xGCNeYQFO47dIGhydGypIL1eGaLOqgwvcni
wxB7gBLkO5+/bpxg+/+SO5Iv0onYXTCOvfsf8Q2eb4tCjr5Wa7+FkijwXOAb0kizJGUStb7PL6eY
oQge3msjBrPIxsKOfwMLTqdToGcth/kBAWYb0t9NAWuKH3PQdxIUpAqJpp1WgSXq9Wky8/ZONJbJ
EcuvVsrSrgbZym727zzht74nBbGJm2+sXlQZHwA1OXC9t9qgJvrGkhk12P6gNtg9vqFquV14dDBf
y+1diZ+ob4F6tzX3sXVblWwOfZKGfRHjjSd3bzqes58XqaUtYds006YbdIRa7Fg8KBeeeyC6jTKi
mOrNWmbNNU34vicJZE6G7gS2cndr8Wd5MjhIfBzmNVQ+xYJtZhkm3VlRQwIv4b5bzsrkq1tQEafQ
JIVe8weyPeU5K4QiMpx2U6KXs+k/92c3+I1N5mE4UN+4NuMMGyLsvb2tik6HMhxGKbrjgNOVDkBB
2WYEUm9E1EzySS2ooADq02JQyw+bCrlrjzorpWrNbqIIs9iM2HIWFHqgP/1RSLfgWCprLQ5+Dhpa
wKBYSdmvyE358PnE9apPrsSDWklKF0KiHZmKPbAJuQ7bdFUKnf7xAiN0Oy5VaqIlkAUTArmWgQ/u
gmxl7yD68sr+MIrjUBOqLyX7fp7NpksirGJVKlUjcZP7FcmVmf0zhHAhRhzhxyrIMQ94K/xBsZme
ErUy9814v37GBvK4FTLVINsDlLq0Wuh9sTSuW+P8Und1/9TIUIhEcWUM/qDpSdTaAK/TI5PSm+vQ
nPrHtgAxHD4CuC1aXIATfb3PPCLWGxBqtzBy8ZPYqwnvyIvak9vvymwyG3p9f4218nSCU2QjtQf+
yoKtIm7nZ5JQTUV2CLy9xChYr/2yljSP6KrK6hBQL7kd6rPBQ6yI0II+jqlT80wpnARyuK3Qkoqu
JYaU4m+AUr1BnZnM0PTXz0akhcClVUSLstmQ/nXaC4NQut5LNhbmylJd9Zto3uTqrOT5RRtWOgJw
M9ZdhpGbOj5FNOTPbA/imxucP2FKZVUXoINQ/rKZlhrn3yr1z/IxsGjkTBCC4kdddm6jlZqAA7jh
FNsVXRSL5OC/i9U/1eiSASDxF2HTmW7J5jXc1IOjWwXbppozbYsaWxN95dP58xy1/vnFHAqyESiB
9rgISvECuvDpUr3bggfyQEVEM2WDYJeFb8rSRHJmmREIgvNnbAnLWCinqiO4NwOPv0biqVDscu4J
eLj8oia9xxkceAJqbxlIsWVcACIcM1Zlz7N6z2KACmASsiO4mUsCFMwzbcwUPkZWL38e4B3cgFpJ
jyrZrbeh8Hebx8XhtJd/VVnNCgVAHL3WjhfK0vp4UV2TsAbKdLEkGdE15WKIcnEqZHLbhdZYmF66
aDROyLN3NGiEieCBRMHlrLEIVN0UIXfU0ggkeFI5pPveZA6rukjlaPmTTw2unFFMeZ1ZAYr7Ch2N
BEQMp+M50sQ+8aLsPjmXSVpf/3ZBuHMapitaAW1EHVtzw8tSmtAJMAGJNHV76fPZ4eAoTxWewA85
EC2e4pqbh3A8TSUtDTFtPiU+prze8kwA5BNUdTPDA5A67HAQLa/jw7CEO3tvs5zWz9EVN8XvTvEm
gBMuosUK4Y//5k3SA+3n2LdpLkE0e1Mtm5J2Cy803obQniKbZpriNjy9fnFK5n5lZZcJfdtmeGBt
D3xs0ahcOuZK2ztVHEjq5VLRK11CQw5VON7PQIBbwBcTEe+ozJ7PqRDF9chjmn1YWnS0eTa5C9o1
sw5S1jrKrQQqc0FPTPpQiV1CKu2oTTRzn+Jq3OfdpxHzYYsxbACkFjKS8McXYAeVBXq0dFkNaDbH
/mWN15BiSnYYkicw1Xijxpj2uhZjz5mNanmXcnK5T0deuOMa8e5/XJh5ltjPpbpVe4kXAWYsrL1i
myv0DHLBM6B/izN277G8WBnTXdRM7Rf/H8NfRpQHO+DK/4fGFtWYQjuBP12c0ywa5295W+F7jtUM
SR+c7chgz5KUAtZD/mX0ztNgFDCToFtrmEYWf7tu1SPE0hlasFJBBkTfrZASkZ+iZaJWU1nxR/9p
fI8YWc55U8tMHUP06wBedQhGQF43trWT69ytlNYnzm7TKlK7l8EIyh1H7bJki5GT2lq7arFj4T7X
c7WRwckz5y2RN+15DM1uzgw88CaezV5BFkjXeToNBLUDNgAaOvvR6j4nRaJdXeVwnJmBH0HPPYWi
WfETGF9KqPEiE+Juq5Ka0pTNnUUaVvy+5HlG+cM7eOhdRZVnaDyYAFqemHoiZn/Bes/WLmkcWgst
bM50nSjUz/KgrncSBqnKHcqlHcZcLFlPnPGmx7jqI/FKwRkqYAqitH3MhZVAwYobdJrb8ZmVwz6P
cJ4aT3+Zlcpi/Hv9r226KBWLd2GeXgVpSnZxARRLNME83f1RJdhdQpscMcsB+wgWuWxx3BeWzCQ6
CQlpyicNbrUmMtyBquIUh2amWMwwOZuLomjhwx/MB4xkKEoTWPEnzkZnENy08dQPn1d5ly92UXrJ
zs5ODGs41tY1CO9Ap9zZ2eEA8Y2X4FhMLTgOVTlBTqx8y7lHsxi1o2MIifZl43WTtB36DoHkN5OY
86vROW4AZX8PamWgGmzFpQTR4kWBWSoHvv8x7OvGppTdRgxf2BV2JORnlJoW2acPl1MJ9ukHiYGV
152WTI00rGq2wsArC+bFPmn7oXVL9TYlY94uNAarFYe8ZK163ffV9GSE5En4xepQ+DLLYv1o2pqm
N65BHiABbQfp1i/T34IFktq5QaLcJT3Jpf6ioQUW2FhzNyfmYaOZCCLW1SFIanOw6P8X1ts6JvxF
fuWgMC/my8ndMzi++zWWsthGS50rExKn8n144MFpSe1UB7cENMF8j7tYTHQ56+gZ39RMoJnE9qCw
cNI9XyLVWj7fv4Hnv3dS5gR1HbNuY1JgrW6yFbm4vtd6vHQJc2IZ6T7TknkZsUk4YoiPIZpQvkWb
BquMrCQARiu24xzPBVhfxlqc8M4NdHvAkA/36BxgdSlOvHWQhACCcFBj0rdFBNZrivmyo23xfytl
ORs3VZhSm8U7FqnXtQjiK8M4XQx2Rz6zGdHHmsL5dsc17eMQm/zFGEAkGwGdu5zwuDFJJCSgt1fE
R9fuW9H+ph9ofdeYFddNf4w7V2+RmYEF/i25dCrarKB4K86w63/99dBhMT7SOqxBGf+km6A8samH
1ycRLtxSZD7Tws/cONhu5JhCyq/ND4abnUV3opZxQjW1jHUCVA1yzG3EWGh+0BRLbJoRx2hH5HWz
M4/iv6tlQiyA0VFgsBiMDnS9hViHH4n1MSjHZvmg6OKEupbwzLCXhEqTOBeV0AZIIwNjw3la6eyC
R7fUrvyH2Kx34ycisf3OrCYMoEKs1W7yTbwjGrPf7PnlAWM280PIwOVisV+B7C89rrJmWLEf5FZ+
zZceTCBoiu9VPmO0mP5SkjqpyZyfYoixAGfipL/CzzI1ofljIMiMvOJsD0R3AtM59cKmmk3hpP+5
btImboTJTEdh+ycmuyOa/V0JKs1n8XeOCG2Oyl7oQ/TD2xBcgcBI2G0eyd2IpjCOIIaFKi/tCZ5P
mjw5qaH08P34CVOuDqhp10A/7+4lBlU+EwdAq4O9c3/KYqQVBBl+XJvWoynWK7AYzF7+NVBQiozO
m+Ku6MX5kahNYBUTcD8gg7PIH/QorjaETOU4sRH0QY8+bA6sF21kT8XdcPZ0Y9CuBdzKyT10pmnQ
/iLCsbjKa7H34Sebn8DvgAbKMHTJjYSYChutPAP381lY2l8eGXo7236JtWEbcAtu7o1lckJpO+k/
GIAEmhvhU0B3J1/gFRwql1/oe8VFdRyXFg/5r31b3X6xQYfCgU+Ty24agi1BLqjn+eidpRfKw4Cw
JmaOGEBBEL2Qo8HwX8t5EKBIKlFr9Xs+JWWqzXlchhECHiIfipsUHrc/59bOzKQzJ8/NgLWMZ1+g
1Ffr96Fj4XU5bBewCzOR8PbsWk4Ah1geWe69TUW2YiFzcbPTuuxebJ3jeSuhcTjGDDRSgwsOuECy
eGmYLYVg+1t9QK1ROMEJ1efxd5XgXo3Tz5XcUXipn9Z5B0E8qEteSDiTFveCMsxBTxDaDPK9I2U+
KKtOREswBM7AfN8Os3yq8H1nJGjXHb0feM5uJJU2yvVI1vOw1FL/BkMjUGxyQwA9ndh3Ao7jDcWt
n348q4JMNC/OxmMnfFBYby4OXsymOl8XyVrHhWLToeH/ve8fiUsFB9Z8sPi1PXiSOBdGzhDMIdGK
0hhI4ZKnB8mQC0h9NaCsBfoUk0XQ0BcBFZ6iw8s4cOSrQOL2sXe3nzwIWv0V1eSi+lPMmG1FjPtN
UItotKjB2KwDCQDDBL2r5jA1LBpO+fSvUTM9wJKXVZ5uNTjAEJ9sYpMzIoYCE69ptFuSfPRuJeBZ
ZOdx/EZKwKLLQnwn2fN0Cn5j/GWAE78eesS17JmB0tFSnFc+xejsdprytNy8QZ92/wBgCJpWKhaQ
XC5YTtlT4RYPPuULjG+GHVQZ6av1Gl//rLujgjldfIjuXNqMc44cVonhMkdehVV2KxLMvUXiYD08
m8Jg+u7ea9jkBZEJaJHM8uyRpjHDF+8n0sPg4UzutzSUHPK97jYDUfJR4Wv0BAb5VQE8orXobNWW
eG3Bq4l5oMpHps8yiesl4xozgbKhLlGJF5NCQOcWX89eGeM5KMQINwlFb0WUIipuuusnZdvQNrmk
/oNliN8ZtTJKxKDDwwNgBVXTlL70m6JHeQFwZnw7MtjLAZbUFh4csg5JigI3gvuAzDEjoxCVaG7r
oZzv9/JSWV/wA5Wj09dxxJa+9OwqwEqwcCKnzLihuMHvCtloPRu85x8fr32jlDGVTKhq+BwacyOn
qlc9HwvVQwsThdW6eb1LaOYvs0B/gRx2YcKGy0jj5AljwTA6XUXPE+KFGRztfhEUFxDgrdxWZlD8
X0RmiJEI4FDb151OP/58PkEPnyDiyCJmuzQH6fLFaQgQ2/h+DUpcO+pPyYzgYFLg65i1e8PtNRz+
fNHM6iYqCdSHm7/Y1IWnLn9QhpkUms5YtLDZCwzyhaU+vsjcXUN5bkrokQFIeEs3uAH5CZKabd2z
W6fI2wScCelHcS2IAevZEAIFUxKjRL5LJjrTXFXbAIIDPh48ork/qWfubSW+9bxItiFiUN99errc
L5diN0OWfLUiiXhw85fZQzBMijJ5XkK54h/LBbHVgoDfLkx02Eu6Z0RicuGd08LRjp4o+6hgwCkc
0/KUqZdb80WvuRcgU7hSWA6ky4yRzrmLLjl7Z6WfeCouEjeJ7ffRJXLY9DsuOrtjimNA5Hx6Yuhk
DR/X3+XWGV7+nMckarxiHYfevDMCBUXFk7K1LrUG/n3Vmjfc8bCn2VLG/Jn7hwJBe5LZKgG+OUkN
6m0HQJiEtTgQCqGN7DA9/fYmlq1d6TK78KrQWDCJ90R9pdSTnmkYdiEetaJifDIrGuea/EjvnCkv
WBz78kGfsnfdZMEBeEelJX6tAUHmWYtuXXc9V0khnp+h57rhx45+NAgy7V8ODPRBVnjJCWS4LBq8
+a4ata9gdlnmPNhNhAmBLHQWgoAGCyf/YnOPWFkTH8dtlv7q5yZ3MjcOtT1qDuW5BG3/ddqbLHsx
WcVD15G3L0UgARqND3F0wMGO2SdaQ+uAUEnW+l1XpISkuqFOgnk3C67gpPka3TlAMZGAQwaJKEPB
9uAQ6rL6/fWxuXun6pZhLulXkVrrcSc9C613QCq3eO5SZyUKh6GPNRtzzwQtVfSB5+3JQtFT/5iT
UICVbsJNgVrF2gx8J60tTSfgy02aIA8e7k0+Z75b/CRg739KxSuk/jQWFw/Nl+HeU3NxBHFnIJiZ
52TnQDFfkRLwA4Ub8vlTQ3t+tL7VQQESwKkWN2G4/1XhPzcbYesx1FtWk4IAdtG4npRRJk4WH8lI
MctoNAntGKAe3o6LPLiXgjhpG2RtPlrJikk5Q7jZ6dIGs9LXfqyW10Q/+CkgPrFXqvyPS4w7kumy
HG/Y+lkSHq2XPDeWGKB5aTsi3dsd1P2bZMhJlZm8e3U2taoz8KLH6u2LUNWRUBqOq6N/+p/yAYHj
RGzOVJ9FgmWDILDVQgwJSUuoN9HMfqhJ46yugrFKj7UVSmqDmxOJ2sf+1hed0nJyU4vdjSmYMEkT
LNxhjOjc6KrtGgALLrTum2aT3Kn7RCtrnf9Q90uievpLkxFLCZtIi+03IWyMWF0+fuFUIS7SHfq8
wH7o+IG0PnuQfJCCkB1nnZ2rjBNALodFKI4ItE2DQKHm53wqOBr/tNdxfb3o7Wss1v5Faej1FSDl
HOrieGn7a75hjVtu0pZTElajLW26T9jrBanurLxq3qNsKpkqJqSW29xJQcK839Eq03rtTfL4zwXA
UiJWI7moqhL9BFOG1KI6yn/gyOVCJfBmu6Ls8dnE/1lFg4LvBMv0lbeeWgNkCx3RVcau5cQonfHd
0TGZhtxq1SUqdk+vjZgpPGq7v0Otjm7kBq3Z4PxFS23Y27UzQJ0DJ/a6xF90RTYSw1xWEJIQsxIt
o1fxqW1xGCB+R6DX/cfNN+2GG1dXLoaSIPFDRinSpVaEr7F3Bj0xLpjfUKqWwMPcqzRGYOujuuWZ
y+rFj6Ym5xDCsENOuRhZPVF2G+hSIeV220cZocP3KWMuYijcbajSxk+dNyE/t/FsCu7NASnijz3z
lK8hs6PZn18J4w6/xnNXoPxD2PzzdjfHcMdP0t2jgEP9jncnftjHiMkgfZP3UzdYR4sKyLdw357i
tsv2BtTHv8rqlY6r670WQyG6z0G7ELYIXERZzMDBcKdj482sz9nkfvOhfnTrTfjIC9PMKGj/6KnD
IP8W2utHvwBvW7lfbVT8BMUQ0ug07K3fMV6ke+xmRcfFMn/AXL8gwKD7d3qeuwG1nZZtVvFFEvSh
yBKo2UbyTzETrIe971xKVghUoNOzzsqYX0M8FOdAHJg0ZtK7GVJG9XfA7iKf276ghcn3DOKkAPIp
BK0zPrzd6I+XeNxG0568ZntJnOyVbMEfFuNuZ2HxHYyCxUVxOWdVtlyziLwM1nmpRzJf4eRy2ZYW
2AeSLTEXhkASEyWA/TpkOFhtCmItXOgz/PkEnlJuxsdWZN/BRWaVatLzOQgAqXZbs64rn70jkCLM
7vh+iAA/FMCiDBuubak6bR6lp3DD4Jesu+gaOaZvUEAbgd0gxJqXmPeZ46KThq5WaLgCm2/Gd/+g
pkTfK0VQdjAaKSblNVHagd0q6QD/1GMPnB9doT3aXs4arItUMQCxtfEXMG7Ugh/E4q+5K3vrs/Tn
oU0nGNhBFW1dtMBZD4C1lIE40BiuiKG8m5JpNO8c5uvE96PDhdcO9EChJf3p7/k3AJ//ovAdyFWp
9gps1Nd4HJqU7qqu4Gz23aJGrDfWAYNA0YjWhJeh8CAmC+LZEbK4/16AmmRSjQH4cc6bVqoUp/eo
LtCqKawUZYZ/Uqa1Qwd1hRQcWQ5pnD/phzowrz4opzv9Pf+dTSqvSL1yQEFltvGPE5BEp7sJPsfb
d2c55jpweNfN6WfWidiiqWHhPo7PNoTWI+5jKg8Afoi0xbC3Hq0gGKzWMii+trP+/fOD0n4qqzrj
bptINGmB52qj7psnWtBwgVj6n3KGSJ9GDiMKRXssxq1P21Gf5rOPXl7rhp9auPaxVYp/c6Rt1W5n
mLz4T12fJo1Kqpo184+JzWLe0495WiYYh1Qc0jaZW24SBhfeAqvlvy5cW8FD1FowslKydLmFbuT1
0SlzR2A1aBUT+Eue79dTVEehiTH0dtY4d98xFSuHHi29dlBazSWYf1BdDfoDtYBTnVujKI9JdwSU
ZPHEExadvnN2UWRr3RXe7qVx+dZJKT+oF54Y3fA+DiVetaXkfdgIR0IiWjRXKYiG+/SNab6jknOd
aY4cZPX0dYauCGgfJSaQWD50ARPXGysKF7YiijiUqiYlMCYyR2ivYxjKO8Czz+OVqWDcjufOhhZG
jhGG5rRDQfRUpvgzgYfSd9vNqS5fPrvvcwtQV63iVYvpXZVAhq19Y17PPlUj5UQTBeQVIRyBcTpM
aZwo1XCYQ22+CZfJzOdZpAGL1TUFCafOkzqILXqYBxiBkVM1hb+sI2qVkbqhTMN8So+DTSMIghSH
ZuzHN4tIVzWemmlaLKIka2VGz7/AX0mtfelHbCl8RIarjOq9o5Gjg1OG9RBAKX/6udAUUDhGjnPh
1EI1vpSpUw9YiS74mqJZn2hsVFQwQpzmb0wARbqfoYSnHAh8QNfpMcEBm991bHZ+SgoLj5DzU1Zf
AIUDZEf4o9Oom2BwtbP9pSx/oYL8/xlT3q0U3R9jDT2kV/upfmFDvVaI6fGd/dkGeCNG1ZRKbQY2
IRu4fwbk4CuPD2jSqNKknkdRTYH8LEeTyY4/CiwZZzo0NKMqkHa1j37BjTxLTTkzc7DmOuouGOo+
U34WIi587IYeORv6wgDhsMpuxyTB/os/Oj5jJ983UZJKVzEKHjNanZdwiCAWAl6DirusO+VK9wcy
GL+k0qx2E2hXa1c5GM22FuaOCx6gf5OQaYV+kCbaZzDWq7qcB9i0e2b9l/0yle7Gyy27Yep3tYlL
DL+qeUKb3F3SEPzsmoSlHDL1t8MPEJjvG93dPxyBrZL4r25QqHbjNO6GrTtJ+zGTeXZ5LTtxbAVu
Ei23gMQrQIVq9yGjopF8zfHUh/Lj7G64a/IxK2oQh6Pyp1EEiBSaGce4LwXpiouNquYMvuktOF/X
v0hkFTW4T/ikrdt9CUM7HzIj8Z8G5xyQBEk9g5oSxxWoGHuencYa8ztJmF9Stw+TLzEFU+Pjjv1K
jDc6pdeDr4Whn+2wK8Ya60/2syhc3U5LfdFdV1oG8QEwdvQz1EMXAf3OadG63VcmJ/u4/Q13srvK
0+rp8BoW/Nb1T/srjfuEH7VddXQ0IZdpT7/uuOYtIxLipN+MRrsCdKOT2UG/XNYZeaVoPS/cX3/Q
RYRdripbdOhdPZ4TEyApiK7jpCXUGy8+fq8y3rCgLokXRiUaN0ALBSkAbqcS2ycB4lZCulGDM9Jg
OafGnW5t3NXh9+s/yhwXt+k1rF6G3u1rHlGbj2YV4G8wGbVwLA6r385iv52buwKTou1Ok9F410Uq
TMEvwxrqhT5QMQEPpa3auoLqlt5kVI39u0o/FsOtoZYuHts/NFfsE1qXehrRQ5KW4bWVePihpwu8
oLEHniZ87KPIXIj4zJcBL59be3fneCGYgGge9cMGJKoLR/fyYHCJRiXUJkhFqN8CVwKr9gH+VNey
Hg/LMiQoKb+e95G1ryCvbBihtWg+Ya17ccFu4q54b95oYENI9skHvUqLdHDhEbqLiAp0nOz600cf
xg2euzulDdTq+Kzceh3z9H4W213Jf4osBuOHIEbPrBKuOfZQPPCUkq2AMX8KPWP+7jZILMctFVvx
w6xN984+1E4bmUMrt0qe6TOBB4kxCxpt2KEHvfftuAilLF7Qyj4SiZ35Zo9wau5uwmjmUe8KqSqJ
uKwMsqGjcW3LV013pwpqPz7aXGyJbfTQ3ZvQ8FuRdSTQNqxxxszH6iO0mtTkrC9XW0SlMLCp0emk
FPNz+ihPb/P/sdYnoZmKNios1Tq3hWUEx6tRowcSlOkL9yGX0FcPHr1jdK/ilzegwHnmOrrWWGz2
TePfEyn+iaD1AO5pa/Kq0VbeSsOAeE295OjbrxHm35UAKxbvrw8swyibwuQIVcsX9Zhp+3SsCZFm
8yuB1Y75Dfd2gJl7cUir1l6Gp4lE0E8FnVWsv1enOmEJQVtNYUCEU8D/A9bL8q+I+vIUS2jZmDAl
PovdNVuZPo0Y5mLaSsV1bIw3E7f1EgnU0hqbo5pg7f+48TIXJ2VShjXwxTYQeVzQoUhKZggRur+Z
aifLSZdmBv7+eVIA20a535zJ4wcbcg0R6ELvMkro9ie/o9cqIQQ+QgU5G0i+6VUuXIITxW/jIA9o
xbeoPnAi3WVTIm90KDjsEiymh1e2EvhxaVEKnUum4V6aMWXclm/9JtZV533N7bZgx/6oZSKRQwlf
ZAnde60XAfxT1QcFkweLC8xX6k43yRt8Qf6xLsa8lQj9agtbHDrs6YveHY4McR8pEKvF17Gdmxut
sI4iWPdrYw/wouQpLkGioGzgvE7DUEHBr4m+Y1d/scZQ6NdeaqD8XdaOuVvqfWCvlLbE3DHHaP5B
0Ie+HasiEiHjkz+sO84eqLCF+s470abktPiw5hVumrz+IGYDw2Df7zSusQSojmr+3E60iVostiPC
Z2fEMcn0LdqKQZxqjv0fQoVlPVro9wZlw/J5Vp3o+2wtFwnQOh7Nes5vFysC0jGqfxji7OI8WcXx
QNP1edbMcrT1F3kuVD5NZmg0M1fJFFTlFdzA3ssRxLrnIsNkoyvjPS2dirhAjznexsUwnhzJAm44
U8xS69BBDN2YPC7U1B8m2r83/CFd/RprPEaF0ygfaK++DIpy2CTgwz1gh2PfRrl9DnRKFv/kTvAe
wcVIL6vmZNLaNB9YT72LBamLNGGfJdYmRTSo9JlOl+gH7liGBG6ybsUSdFx2RWP0EiPYt5PyRfEs
SjMXfjpnioLF/TVjj4ic+mlPa2/LzmMORGg9vjSRlYfjLoCKxnpC17Tv//A78c0aoFlMvuF6q8k2
BOgcXSlJ30K5qCxfyCnJ5T626cb8XGHpevqmOzqoq9rfQ5vt2It600F+J2SLp0v4kbuNUUu30LNE
Q+aAsIR5RvclbIfj7KeISpZ0515K8zzH8nj7JGG5sN0QrfdnlL3OcIxelHvXXVRSVEPSEiCQCmvL
wEEIRhVSVnYGz1PiOrtaLg1ycn0Mj6ljtgRc+Juqh1dKggK5qIYuokv+rPCWY623P7j8hVxRdjEg
x4p0jNG29TY7a/DJ0uE9gWKBSMiYs3uy7FUxCeiMs/6hpVqM82Zvj+8ULyWyspPJ787oIKvjMVPN
JCc+FiJUpQwc7Nk2OwnOyh1aJ+5kvcTAuBHNRp5dAbauQCugQcjT6ONhHuY3dzGMF85LIi8yzJUH
vrJFzhBSBhPXS31nrcMhk3je2y4cCxyc0WS7izntiMs6MwnCUYA0LyxXLTooinT5I750TBrcfR1z
rgm+wvKW3mvFuhqXkQb1DQPeob/b/pLNQePQ+uYv13Jpk3EeAzM/AVmA/AEuSSZXuzbAAB4leSLY
eXLlMtYJJCwvraNrTYrkoUe5lXVFHC13R86AGCO5sQg/BdvG4dJzlLPT9isq0vI6PYN7MLwX9pjI
hKoWMENbahKVmlBmboO8BRe9+SEz+q4foksaTXrE015S0OasiLzujhJbtOm9VVAWBAHomKudjpSw
9coC+8HUIcXgG2lui208gDjej9rqrBKnxAoWpohCEK3KWH2sGK16NG/CjhB5MYfP/SA4k0iPcHye
PgZIGXYFRpIPPYchqHzhcLtJwo0G3PGXgFBtPn4xclL49sa5VsIc4KC0PR0V5O2XC9EQUvfRCUNa
9aOzMuGl1YxDwqCL0wP3Z+Zb6UOlRSCxvrySTUpLWYTAn8eADCrIIkxpkzc/TlJ65XohXz6oHVLw
ijb0oZHBkv0xJg5S0cgEdWZulcUNfNTv0Ez84sMtl+rM+L9979dGgGA6QtIawFbQwCJTo+DGkH7f
J7rHhUCjpKK+1L0eiayTxeQb3IbW49aMf3ydwpOvhd5lbC/M8/2IyZ+zqtk+pvIEphuq9Bt/k2p7
sCSEw3e7fhPbHh6D/kS4LjBlw2Cv6CfPnOnbIMrbSxjXs7KIGPprvfhMH5Pe/S6/UYZ9WFwtyNEN
3E5B9W4cvcum0g3/GsfQQTkab7ScLbgladx9Ig3YVPbWDT/WWPXJQ4uLHPdIHcP9yND5qeg9UD1L
GRTPASihCdiNGqDEqBtpIBbB03F3wTbweInmZ9dud5rWv7zhH2F9qSBHj7Eo3Ab6nmBC3dUhBc3E
NEJAankmebwIUVtXtkYNnHY75Z5O7XDUrJMIC/ohhX8VtfiU77j/MutVgnC5i+c4Vm4IMBhkc7c+
NBNZcCrTd7L/ZzOFMCuxxlwVXRbrZO5RoAMBgFdF7XCVfT1fQZY3UZTkFZdU5XHhod4uwd+xvyTk
b9FqZlDUw8Im25K2nQqHxPtw6ZbWdFHcvqTJJXc/fniJvZXBilpqSPAM1iF6KEdNQNiOu2W5lGvH
OmmrN275mcPwgCYD+A5sKYnJZZHMxy8nHonZu8xBw6xDKCz+uTrgBiFsSCLWaA4lk38OuNCQvMQO
8HbRGnSnpwAqbl9pJ+G3SzBev9I7JWMeptGvYJ1vKXE99LYwTZ5sBGuuXBMA2nibZh6JWYpcIwIi
+rlJ2i/J4gKBdbYlWxs4Gk7o2CRu1dvwzCYMmUlh0kGNxGiFtcSiCnblktOgQaEktgPnnW7/+4SR
IDB2bXee3lmbN/IJLgs9SyNufZHy5++bLuTj5OWNgK+jEsKQVaI6dD0qfO3ezY5shCXa6fJ8U02Q
y/kCGc4ERPCwoGHskFAKUKYiyagnzxnMvcyAz2yZlJIyQy6Z1SqEyU9BwXzu0U7Ms/2M7bYw0q/N
DfQdiuVULak1PV+/N+9nFzWroMFaaM0zQqkpZYDhO7jnWobhRrIHiCMQsGfaDXWe0tfdvubm3Ncr
FQsBtsCjIkXo7X5dWjAYOoSnR98lmU96NUIGttRd8s2iQx+fkwgn5YtMvutF+MqkqPB3iDzAaeQ/
zdPtotRr1+2ocWy9w+qFNAkWF+EMOXdt4Ob2OS5b6k7BoYUo2b6ZlovUInYs6ZJ/nzirx4FcCw1z
R8T/S5A6SeWUwuAKx6ydTaVJr3QFk/twg1uWOJsZ6ngMm8g5DHGnDLrK3axAgk022hhutRcaoWT2
p2viI6JdNdLef+yFcsvDSmDXtD80mJ+KCf7JYz1PhyoK8ZVT9RW8lu06wTbb52hp3uZ5Q1pyDvvK
J4SSnMS4jU/llN7kuZ7yWE6/NvNkCNQ72qrUJBI8inXQvBo5tS2/YXdFdTFVnrNIO6X/JyUYRglq
7FlGOwic4ZwZ5uGuJX9xC7hEAaPwK/ja/ls16pSVuPfHponT4F5tNBsQ4HYezr8L6ibp/hQ619Aq
SSDGfjvEOoeIOd3/1SFUVy+251U6R+z3bA5mLjiqIanRB6zjtkJjeWW1VcKVIGPVf+UiC20lznoK
KJEw9Fovtb8eGNB93T2BdJp1W4bD3Gb6YaVz8YV8Qg58EtLq1EpJ/W944oXG0UwlTogaM3XAysGN
6gR98O/J7HNVj7RnsvBcC3vo5vRukSOiReEiUp0FcAatUxSdDrTpr20OwSf9cwKHEZX/UynIKMjB
o1UTfluDZH0EWXFlJDDU52Na/ZxPE/nvvQlrxh9JfrQyEJV3SZAAPoZxvJaO6TKgwEVAwaB6S9d4
dvv2HEIav8MI2HdvNqhoWqaZYVdEIom1mdeqy3RU3roGG81tFEeV9jFAUcl/SxiNmz2mUT6QllLK
lh2iOYLXdH/fySpD0Dy0IPeUZblf9lLINrc0ElY8bde9GenlYHZ910LF5kFq2g1oY02g8T47Dwkm
eFQwoASJz8Zq37s16iuPuimtGbKjVWyFvbWl4zHtP1uMaDHTQbJ8Prv0T1SMctDxLEIRr8O/gYeA
L/4K/TeM3CWxuZFexAXywWyuS4nGws9W1ws3MEuxDhJUqGR7Dc4XUubFM8ovn3p+ZulqgJmw8J8g
FmCfcyRuEfrdwz5l5fy0deYKn9/dN09T9N/+oINlqgx+QLIhXMEyKtynFxR7iaf9nEn8ZYBgQ6tN
VYbJV1ws07WrR/yN+k/XuY7ICS5lwwTIrR3WyfQOEUzbulAB3DW8jkHtgUSVgzfJxAmVFiR8g4by
9mW7aVerp0t/IGyOdT56D1dybRbHXNbfQgYviyT1H4z4LQIhxkEBIaQALrp/PiwQ5RQuOrsOnEfu
S77schbUcm20trXb1wdejFS8infQYiFAPeH6kwpPOMFLXJOcyOsp52OgjIgReg97Y/CZmpOG2AIU
FMlE8MVBlT/mx8eJs0Puq3U6VyCIGtcNsvOPWxhq32zxwP3v+l++z6VlqTaUVQosA/pZuRWet9xQ
ZlOsCtj+iLjLkP3z5sMpvYwwvciDSZuVwI6kpMJjktMfaG1zQP/O4C+PluZnDCIr6js/EA+Ji+T1
5zZfh06+usVsSFgeL7YuwDwWbeYYkx+odAmPcbj8b/p1/2orIf3p9++kdRdO2WWd8tm/yDH2jeHf
BEIg05+VrTQZdq3g8dbN6CTDdb2vy7GaMzSZnHZlsGyJAUZj3Epsi0xio8OZGob6VZakTbzZrcZ7
cvRrogwPfhQ8/AY2fgk+omSDblI1ODymH1et463roeGJsqVsjx9Xo3ysTpKEGnA1PtSKsFl90xsp
FFdXkizunZCfynP7c8D1lJawv32AgINzQr0Dh+tTh8lJKj+snQbV+KAjUIJQpwLCwcIw+mxah6bU
Amr2gOqDRwuAj6pBK/sUUR+/y4Uqnf55wmygwrLtnbMNdS8ib8xlc3wAIUAg1mldELPK5zVXOkxv
yEqn72X1DM6CF5IcjU8H8gwKSl+BPcQAPCbj+BbzVcOFlJql/7+EiWHqtIdaTT17NKEN93Ayusm5
tF2OrDggKO71VrFRrOsNCHjAmipiS1JeC79eUAuoK0YlOTv4rOoiGSU/Qj5s9oqGB4WvOGdAbgqQ
YBG58LNoUsZ0ldkfa1VXEpwm/0CsyMS+UwNAl8zEScF2+vkVwTuvRAlKJMns/kksIn7HFHBu8YLc
lrIErGUiQ1GtzVp82pkZiWRL1hY2UtvuGMrgve7S+iDoJ9cm5JnnaWw6XfQtyaxIgM64Nly5mL+l
WXpkZ2fT3G49YnwNxmR6guYzFWJykK8d9GjBDAvEe/hmNxe4EIrxkAdH+jDEDqZSA+F5BjrV73sG
SyqiWKfY7fkwymZWTaX2qM59FNmqCqW/GRIOryUVw0Fnfxy3dZOebEOcfUzz6UFduBxtp2FxcPRi
n7pXNr6Y1N7fpLso6TxWntafxQ3Ttf111MblFzjLnRu9TipIUiYiWpnXeWQzhOIJbgKHho3vyAlV
SwuDPXHiuNXuC/Fw3Lq/bzHuTJbTJGrqyX8tpWIVL/NJ7MXyLpJGI4mam4gBMgLCceI69cfSeEjv
kbVp9ae6RmlkYPYBJpweUylruhKEx6E1cfmzqo8wRvV7Up2PAOuc177nkbSFk57fW9wzH9xrKAnh
DN5Y7aq5MYGRjEE1ZcCT+9mfKb5AEHo/bXuWv9jI8cCiC8l8pSOQeXHuTPoGQmsDJs+87uRlb69m
Xwd4E7R6KCzAnHIu4el0ugeNdxA9WeXQcvMxXmg8dvNSJ+aRlQ/eYvOu38m0+EVU3NsbKKUqGKrp
X4l6KmY7exTF3L1tpg3SCRbJICbszoSDedKAeiBoiENommM5Hx8yNt9YsoQNBSC47IsbDQ5Gb+fc
mkOl+BYcH84ycZ8f5gNckC2JLjtFqhlbiXVsusqSBA9Hw5V0w33oNkSmldJ3rFROOng63LegFD67
bz/NWqBvzy7lfF/GJWS5zX8oDKpAQDy2juNb6cEAY5wc6pQ9MJ6mywo38IBVXaNH5B9+PADZkeGF
IAPVvFktK4FJQ7+JhxYkbvHYYC76eANxMRSqekZvzkxrZqr/L4ckOYQIaBAVJtLgZE5PFvZzna7H
UIaPa2vAFIAwWs4Rbb5N0dHAkhIJy+0oKu1ohy5AzEbFT9NsxiSEb6QtqGtb7rEm1p7cxYd0M3hU
vq9TNjC0G4c3kn2w7cPoQBBkVwQbokAmMM/CcjQ2jSAWLEW5yttVUngMQNlDWMlhBHl5751stUzj
Rnb1xw7JF5JxrU+yKErFFbEmzP4a/RETptGLH4c8GF8ROrK0yfFgqPLix434zkrfLHy9a01sWIuP
/ZMWdJIiSqhUdydGHu1IoDgIHmu2zUIE/ND31fxjQWaS8Cv5Gvjg5lEnpkzNmu0deBEsKbKfwvO+
BezyXOMlQmOQxuWHE+a9QOENBYMJ9i+AtQLAera69f1pcmXRfDBp+JO/WyzhHLSZhKUdnr0T4JcW
OuGT4+s0OSIeBZ87FS7gphrNcDbA6Syu+TGbTDiX6DatgAapHwrqvkc5GWuQuvQI5PBuWnM7jS8A
SmpBNJStKPsThdmEXLjG/uabsQXhd8qEm3SULNivY/M4brBCAYj7Te7hNV8WToba94kOQ9NR9yZ4
wBLRH1DV3yuaFE7AfN76NSiLxI9Tr219hvMnWiih7gez64CqSgcH/bMeoSSF0hcKzO6by/VEZI3V
Ukf7NHhjmCPOYBbdlXpxobMvU6p6yaoQmqoRMdaMvqjqDUP4ojbq/WMfb6kxXwPjQs829nzLdrEe
D8RH1BvWRZClb+qWFA7Zpqb1W3C7ZQnD6XCntVRI0QOvKKzEyvJ5Qh1cldMc5Wroc/cTlZb4DTUH
AIt/V9EZgV+5ndHJ3HiQFlfdC0iJyx+W0CQv317Lg+g0VXfPRyHPfMqpKEb1+bdFTGE6c2ZT+ykV
jUHBh7OREEUh+WTYzenNc2AFhI/YyvNwYoNC/MqeixgUu1DOZTuJ8LP0Qvk4CfRbaaQEXOJOjyIn
N0vlMw36SM08Io2XQDlpFfg7/ougzfFdzZyobbxD66Mfo88qUXgs5HOmdudpUk6O4yuxo4/oyyvY
gd9GkNf/WQh8HCRZvonqRWeTZIpNLZolauw1yzn1GQEbjUL2vbna1uPDmUtZ/TOOqB06tgnGbwEG
Xki/CEyB6a2wU4cJBV0nbwyjBzitT1GR9rdu6PMeJwrJb/ibzdhSOdkoWkM/gljdjVIjRmEV6evD
bo2t8+du70ZJRsKlbjcz/ihFhTJ03SW/Ew2c0F37mrjKf/mckjx4Hqf02ZKceXhE8t13XQwXAX32
m3s3VNSvXJ+OlAUYLLVO39hl289vTnSzmJjCyL8bqoNOx08r5J9aSDDJaLLatWue3pXi/nEQQGGM
kChUJr+4uKWxjybGzQ7p2dVx0+f2bgcLJD3tas21vhD7dVASIus92CWeHaWX5k2p112x3EQgIURe
O2uNAarYBanBFj0TsIF/T02o7OeMSNMgfm68cmtK8ZtkjInSCWaNJ+Xme3TAzBwihUcFXXS9gSDK
ipd6NUd8I5wkwjKm7hgk4m4B8fETeX3NDyOjMrkn4o9vrV2LfUPaOUZgvBp+gYe0PhVkqsCcBznP
QCat1NCLa+7Nh3NFtjk4kPymfUsrC8+CevlHKjazrtn9Hj8JwQtOyWG1JSqIwMSzv0J5SzL07/rH
U/OFIW6MZ0RE2U+3QWLWuzmgt8NC5MspSatVooVv1b9pUtP+JRYu6H+vMu5taLf0ebxDqSo1PLR/
VOVw9thmRFKaY2VpcjHLLVCkoyJzS8jTOtX/f/Xel9wIWlaTmFcpOlz9ViZhqR2hgSPL1VUFUMwT
+w7Qg5p3C4LdcupJoLpUauD4gImYMX0RL5pOUc8UOLXBMWAhlF/jMj1fPuq3jnNzzjmYLn8vLTJX
JPAC6IYtoruEkfc2sYXGa8i/M8Af7Phlgvd2AyDi6beYwh4SE84/j2QTbiUAVE0RtzJaJYYUwakf
zaevyXL83IrMIj4xrCDicucftBtkWjEdye/w/bWufjdHN0+YneDob1LA5grvopq92vgrb82p1AVG
cuFDKRz0ZLdkx+rJvZD2QMnh2Kva9VNk7vWShmm3zsdrlstMmb939jcfzif1y2F2FJE3AspKRNEe
2E/gSo2HMkLKDPjNcmlQEeNRAKomfjApZgUVEgWYMDcueopsyvzELh5ddRYN4vy9GEgHspEtRdHR
Q7c1bvVwUxz0qpXKKa7y890FZdLNx4i1sdNNyrgG0doyTFRks+sEEHOfCFb/9H4pGQrUZMSZ24nk
PeQFQnbsqUJTYnEZOMxCjiwmHEDw86/oJibiKIQBk8AGzFOtUOlXCouL5VWaX3LJ13hK3cPtkIyZ
sOa4dkHXQmTYSxHCmzExQx2sUIIs3JWEPDEr12mUhq5KAT48P1wosPNOTl2i/g1suW3hPAH1tHqH
YnAfyPDL0VlZ1b2vBMXSegdL74oM48YFM1HwBzytRL3uTaanhSdjLwG+8WwHMPmPSvEwkdnCqTdi
im8C9JxN2UnlM0IoAihdOZIQjDjPBxZJ+Q5TALCYEb75XqMUXn99LVDtSlu/wMNHWVo+zT7o/mJ3
rmA+c7Nw2IIU8AL5jq4KkxXNUu1/Pesc4fFuKC/+pCkDtumYy94jOQpvt/406cOuB2bq50IWTPyr
sSsfapyaV9H5vh7+buUul/Knqn0d68RhkYs+FrgPfSn9pYKTqzrt1DctcLxEvbHq3CrlEUc0OoSF
6vZy4xyBNCKbghHn7zWHGV688FfzhqRiaKPNVHGyV8nExCfkjRAtpbr82DyK+hTNKFyAiMqMLYd/
CtJCJNi4nWb23m3vXK21tOl5ikKf1r/ImFUbqITI3e63LMwGhZNf6d/QlnoaOzn7EqyNs4+XClqp
aWc3ffJrx4mgOuXk1JWVhf2JugsXaEdMIdu1+WXk0Zv9ujVGn7Q+ZJSA/fDPLD4MnenA1bbGuTZ6
qQYsGvHB0QxDzMojMxwncTxEtQsl3fgenHYnFtuInG3JhfV+eNyS7ZanpqMjmI3+HbAPXPKkBmYi
DVJfbMuDScSQUxylFgvTcYLttCILrpxcukCwXOPIpttiFzt+Gb7CMXsdOmcgWhgIu82+JedePUwJ
ohBG2c5givY5eOC3xQI10iFyyNRyd9Z0V6k3gwOOWqXWhh704rKrZXM9zZHW1ty+2t8FLaEtaKgU
kiT0L3fHIrT04Q+MQyjweoOYjulXZ0mIWCfoBYBrlmgE/UE+HJxPgQNqgapmr2pFrC5G8hz4AZ+X
A+w7Rbw6ia/a/yvL2kGs59AJWBK0mMiJcsGPJNxJ+pkN7/Nj4E9RR6XyWq1Ezn+fNK/2fMFvPVEh
ohGbdTEl3zWo9akWsgiXlEo/tzdma7K8gtO6/KnGdeW+FW3rn1EiQG0s4EjEWT/cwXNyIVsaG5nz
G4U6KT53wxDfcXUfgrnUFp8pIPvp3FIKoFdILiiRk0cWYh/3uEEO/dMle6eQ418BCqPVPzRzoLSg
CZjAXIheqqHg2FXitGHPrCDGvFGfto5VNe7OnFtTmby07HaM7GejFwk80KfZERKsvP8WkWovUtQX
9YpAYzRqrBz8iXfDTOTXLKqWV5/9THa6g69qOTdD8pL0GwvtQht9c21WdenYSKDPKwrncIa//oPI
zuIVBHr+HWwJs1zlV9wZwRXvdFOPNIdOqxW9ZI/8d/1gWQ545QfRlt+bzVHs1ekuG9GvOzUJ3JLn
ZuuRTcUdKCeylK+6uonLGHNOqAV6IuPf55230pSjc6NxfXHkQqrsLZqelykBtcmW6FRqR5rujv3M
wArhYBe0709eNSFbed0X+I0+FOqbWsetHqiEGMlPrd7eqrdxrARBK4fXwx/bHcf4sIETOcA/T+w0
JFeGl7wYbaB/ju0mqlQnBSG4kr+absbPW5fUN17auiMTj8NxF/8TMllCm8V0J4KBgkATybuzxCrD
6bBeLLLKNbqH6qujzOYJ/MEAer+Gbg93hQ8aWd7hUvN/TzmSA9wKeD2X4r0YSL5TX94TLLuA1TFI
gQH9x1f34b7sIF7RcFqW0We/BNKbtyMdtlP0nahlSw17m72bhKT7xRq/5hH1HnFFwuDWq6GKYgY1
RWwThDploxN6cX1LNbId8CRd1ZJBk/H08kadHAaKNzYpE6q5SLVvj19aMkB742QDnKbyHNmQJu1+
BjmW0R0lDJ8bAimCXUCy2RW/8zQyN+3TUjnVlOiQ0+UA2fuxzlChPvrYST87WiuRhovG8eWsKbyy
wv15LMIMCLYNstSIHjLh1u7Q4GrD5r1oJIsqhSQTKkti9e1wRkQEa9UdqOc8v+Nq/kbdQFx/L4zD
0QP/MZWfLuPPhodXetkLZLJd/IyyPIPfcV2logEmN4Q7EHvOwhtIKVvCSmCe88H7829jrNhbQ9wo
ARIc+dO1HneeWEqiqh/ljgZ+Q/F6mbkxIbxVcFlZ5wkCfV7Ek4eoDAhn7SysE6vBd+RV2d9MQLTl
RvP+l9tOmB3TspnT/c2aszqjVX0gm9LkA/Cx9myHmjsS5k9xOM26y735y/C7TYUONG8FV5gM7Fz/
nXL7TFoM5dxxz6GP8OEFvddzZgTqjBXatvySSDBKFRhCKsxXXgSUOtgrpG1xC84gmt1K72e8wvgi
YgItSSxrNN5LmzsvFtS3NdmWLyf5pl55wEdegtInjgT4Zc/nWO3R3r10QWDCGI//6rNtNeRCShxk
8LOT00ga4mahYc/bYc4sSmH7+ZlfaSMgySinaT1nU0JDlaeBHCY/iG40+0w6xdi5mrUw+MAAP7fS
dedxrHw10BgS9t8lrwu5DuKWSqYV/QkaXELAjJhG1OCMR2M2s6KVWhY1VdKz4n51HaYEiMDt06IY
jjtstYIsjDfK357bkMK0LjcvOA9vmThGMKrUVIaN7cdRsC13pmThsvTTPxzqv1IxHrtQDh2eHLT7
R93hkl+OAEM0oMBPrz33POPGBQmLJt7G20I+BysKlHivgPhqB+6cjwla/qy+vl5hS9joRc737VWm
Irzq80YyPbMnA8TTNvGNoymYTQ0vVFnASuVADLLZtrPq7+1tCYagzO6Zn/tggN29vDK7wIyApSI2
VjXT5pc0v1D4ph9YT1x7rxydf0Dpc4FgXtqDnFSbzpW1Q3KNgNnNqzd7LLQctLrpjPb0bZKfLUWr
TywSbBSgqlAdtXfpfEV8WZ+r+KNSpJDN7MnUREUkHB1LMNSzkKppSf2ZV82UtZdBq89R9j5YJnec
Xh43XdN9Qa7sdGPnkk65sCF3qKQls2jxhj3PU0xj8p/W2BnE9UcxGBKD0jL+5o/7UjLIOGxRX0sO
SzWxf2f2HqziW1stQ134BJiOiuiYHG1KaAj5ahSazNWFdyQ1d+xJBov7CqDcn/pkFwlVXdrx10Zi
SC3g8Ddt9hmuJGhPyZ63E28cyxbQhUXFF/bAJABcTE/xZRvk/IdfgwQ29Lpiu+V4mWWV3SSx56VR
8zUI0Ar91n+Uv6TS3ga4ljKcJwFFwo5b8ZUjoZyxOZODSMbIttAjeqi5vmoEahBGzSuJK6RLIsTP
KuDKlBIQ08SLtG0zIf2iL2HQHwdKI42jQXpnZoxHsvrTiXhj5ffD8uIJZac+DfwG2PDZF/OU/XBK
DX68bsNEDSGIrDWWx1s/Oirg+/L/XHzAu9saY5PYxU7yFlJB9rRZKUTZVJMAaYqVGZlc9HoPMugB
eTja6KtSyhEkioxtufv9kaDXmm9WqIYyLbEdbgxhIfClKX3I86Yi2JmMQ0fXB7q3C6SWmtvpyLvy
ONg4XOb/lNSVOSLgrmXcXb/OKuQ0wwGWKTJpXxlJMPIXSgP+o59OK9KsL8lKs+5Lv2xP25kadQ3M
4gSpgHUcRqCVjR1wuJcLZtgtnbPFlH+6J1/tU0BIDUSRLkft22Hh3amVJmPj4t5UcXIV+MjK6CSx
WQhOcI+rADJx3uUhJKq1vY2A4CXHDPXGJzpDOYSCQ9H4MCmzfM2CdRCPMkLwP8/JRW/uhBSIYRnj
Zq/n0iZNuP9XmG2LklN0R+c67h8ivIQEYZDALgcLkIDwndxmAXlvSP9LAlLlvMSGGpKhBA42aDNU
F3SZhjYY9tnR73hX36ceBWrnOWaZAAmronVkVvVhCIsI/PvSwxKlREYIB9U1YzeBFiMojriq/5nH
ersF7LeWd+ehkWLXXtPSJDAxLiINUZKW9Suh2GEndU3xDffplyK8DseE9H5i0Mc283DRURVVk23J
I/U5+heSfEyd6M4lS4yOvbmzFsGCyNZqsQv+GPwzx5Vb1+8vvpuLsaq1zDsGOZOzae0bgOW8Jj+v
118rHTpMvZ1udKq7JDKQ3wV7eouQYmZwhHRG/q9DQBNY+RFhbxjV5n34Ph9qp5aQuxZFDysub3KV
8i+r2skwPm2zufz/i5peypMGn14LkwXB7TwH3NqEh0RsStwXTrk/xU4HSQQTzD15UR+zCgBySvSo
vQEWGx0IaFlofWIlB1rIc+aZpCfrr8+yTLhZytkJk50AxuOAat4OyP1ggFp++KnB1F1v+mJy1AZw
QgZAxPA2LFPr+tkb/zi/nwiryJz4pmn1iBTlkDZfGeA+TNxAuTiJpWD4Gf2sUMbyrFR9aekjfoIU
Y9Qsh1oVfuJp8KtF0BlkDvUz+EBsT4AjQMjWNSo4cnBxNbZZmehOlQKIum3Nr5brOFolS/vEv0pJ
5CwFohOqIb8Dn22LGOcl/OxYLc2+v69zNTXu8T3L4m74q05lOT9bo87og692bioqZMDT6GN2mDRH
Dd3OLND0uGLJz0bbPSwGiGzW5IJlOC/nFu588ChPuOL7xMcmw0ovTtlaUorxJDUcQkLGtOUerPzZ
hjhUqREJrGPaCUteimdv2WnpQRHqKGWwGz8makjL5NAkBUSaRknbpApufdF9LBLQTVachyhTzZWv
nAquo1Y1a4UHI0cu5FrmhPJ5vgV9SJ5Q0IpcC9R/5BGQzsnky94vtrk9Hi4Lh6UMSVyUZeEizf7f
EPoM0UGL7+QdGGHsSkz9lVyq9uQdde0if+UB14Fg6GiWtvfwejbAQ2Z8uMLrg6/nYqXyRdCtgI7G
oKP573bxZveWg6yM6mfFrXa6UkgfDD3aufbPbNYTL/bYD1DyPSeQmIN6vseSCOOcEeRLwU46gnW4
+7gj42B0+wG3Ry/oUvqPpkROdRjVqzstONf8ZvKi3v8CKarrSP/IPCDcarsPsa9eMB/F0T40EVYl
s5gB8zBIeil7ThEqWiCvHn8nWvV5Vs+B6oHJ19VZ7PilqSc41tTd+IP1uLYlOPevUd3uwBp4RDBQ
TAuLz7Arg0Sfm8Fx123sKUi4c0JtAdqqaxlRYKhGa4o640vIffu1E5rtjSFAIXID9zsEqnzRK4z/
a4uYUFdSxYeGz9aVMXVFjyZ8Z6J6FVfL8Cajhx3ioQndgUDpdp58Znbn/6yiXjcmI2B8SAlyVjQq
/YDu11gutPIWw4kBIGWCORk7e8b4uGaDs9KddPIhqidgdNguwU+n8Bk10YOdQ3xeHB2ahecgeBjo
XREwiYhCA/YySCp7lcI0Z2XDfqc+nkkB8NSFMpShaWwz+O8Nv+saky786xpGqP9BzW6edE6rzFh/
pEnMcx+REfXyCNwQgEtqWHFqB63p2mAGFSxUyvV6kY+L79C5GzhhY/3S4JAYeyxcx3vxZOtY/Tah
lRUnULmXd8a2Mngmgic6I7cuse0ndDnNs5PNw378tA+KYvn0GPAyYvqQiDluAg+19rRrYXBhIoiH
wui/XoJykAmLiuDPvs/n7paEZT0blpRJvn6uOrorOt7vPpl0mdfoe/QyyrEkREfmYs2sKFrvTaSC
jSNAY3L8SIHpb1X4N4Bq9Yo/yUPmVzlKns2j7PZ5FVLRxiEFg5AvU+1w8f4Q3sm7fq2tH61RZl16
rat++ujRjIhOhlCzLxchqbmaCg5J2mfrACGSoSxON0xEqGTymHfp/g/rdxIP+TXEZFOop3pivKGw
T63CV9jCknmcNHjS8MVpODXFIJuGDcaqa/GX9UrNJOduNtTrVSEQ64gh4XntcvmTjJZBm+wEiiyT
ZKCBQn9jYZAm+TYQcXeIQdb+fZaaRYngpzkgh8t3z0Z/z0+wwJdB5HQtf8J7Ueh9xt1FIaJkuffj
Ar+RtxPxzWL2S1W9RiORuL3rw7k840RLnvSJXTdgMMTmNt+J0AENzdwhBrEfvQa5V9zc7I1wtscA
rA86VKgKlT5ed1HH2e7BeP570nOQE307pEIXD6JupRiqLpzVxU535mQYbSboZg5Rlr25p1Fi5knu
CftBgDVUmKX0dyM4qk2pgFOpASSEZrZIfyinzbC1pkg07JYJ/aOoxj8JvVAhgTXp7N+ed8QFRk5s
V4jjLqZfWiLwDt7bOqyB+xmNUAICC/Lyt0Y/bbu9tZ/LVrDCJlrQrTtpWyO1+r1HK8Js6/2uDwzq
xVsfZ51cGC0YKwTCmkFVSGHjAh4l8dL4DXegdHwWacd93BPjRrn/y/F3r8R0ylvh46GCqccGx14P
2CGGFMGrCQYc++qVMagA+zSZpxojbk+9qTHdNj124qNrRGgctF0FqnV3cdqJX8vBYn1Dc7hoogQL
ilqR2XEr42PVBSHsAyFn73XeftuYQBG2kwzA3X1yq6+OeJ7cB+q0x2kihH1L37LGCeR48ZjEYMCy
q4utqfAndo01EQ727/SH3axxBdeU28ObcqO6ps2gC0XemPYeOEMWUjvkrfLBzYGKbVgwiwUrwz0i
drVigfDxboqnoffRVKjGb9FHyDVStYkaV65otgUsSRREbXd/E0ilhyFFHd6QYId5OewrQOTJKL2V
E4TX01VxewBKYDF/2bO9JY3sY9vROvLUS7EdtsMGojxRCmQy45vs2EguuHnt/QTsZHyIp8PI2WfF
l0O7PYvdrMy18ZTnN/skWUhOHdAKXX1nszl9R/Kxcikv9Ay825AKN/pJFnvcoUZi0Gv+HHMFvffE
YBPB6vZet3INk14Tfr8WJbM/vrOnyh+K3zrDgfUFLob77PXmoCUSunSQfZrUGcEw7DOFVGFRo9pr
YsI07dQ0oIrWMQggvE3TkiRD7Ll+YesyFBiX5Zi8g5//pKRiynIVaKL+q/9C4oThbgKTfwNOcqLr
O41cm3qw/iSi+huE/A5B5FDfYfNban0fBUyHaBozp/Vy5tujhHHqQwGHiF4liSpqznk3O1YYWg0R
Zp5Zi1yC6aDT3j4WnihqxW7iaAe4uTCmJNNYaEbnBkPxXhCgJNHYNJp15sG6EWutyqsXbe9PBJI+
JzU/muiPQgSWp3Lw32EcAH6R3o56r5rpAH4TZ+vctMmosxVK4xL4XfJsV5E/wtmkgFE/36YKUAZ7
5rIWderR6idE9wGH4GSIS5WOR5+gK5O8kh26NIGft/pGDU5rs+r3hWZF69lbeWcvk21RVmwCnrau
hxtX7PCcTgELYE4j37CBg9jSHTbNqUOpNoRYF768Ig/oLZ/Q4xbgn5YI3dAP3JQ1crTD71Pf7zjt
GPajewZCgQ8kIt2D0aspwqio8+kg6t2HRRZgmNh5E2NS+LZz6gLKGgp1TlL/vX5zYKGNEYV6bx5+
DE4M8z0d2qa989mHwkUw8Yoa7heeWkAxq0R/9v8dA8Kcfy4ggOdRpNwrjseeou2Yw2sG2hsmIdGz
FUTk5kX06hjBnd52qPGHUxwbepHohaD1vkaeCBzOS9kyv/KENSRgcEVVwcmuDUW98lR6KeZsnwcx
pyv2u65XvQFEwVV6jJ24JAQgL9NmTyuzzw6+xIYA3hJsh8vo2dBaOrNx+QqW6Cqm4R9Naa9k7bjz
VOOYILlrbtdDuT+fUycOylZYim3TSEBfiTPruLjS3MXiyE+TsuyoEQwQOHibscGtNRu408NnZVJt
TJQtb9xLsViJc07m6/pT8URtv2uj+jOvq97gtA8q4SVQOJO4jOAFsBrJCvnuXUW6q3jEmGh/3QFi
Th0cWR+yEjwLKwEIGK2nvvuA1xWYjHHcu6YZjuEG60+iKnz/S6VRwr1zGWbnA4neSZ3Rsy9wp+gm
oUJfKzS4T9bKWAaIGU2xpw31TlqDujgBpzw3+WKYiUSmILWx92czAoSVQ3Lf0bfYFkNgubEHRLID
ElKWKkrlGxzAAEngN97hHgrmx27ZKPYdEDpyNSjW/P+TD30r87Yw/QKBZ5BU5Ux5BL2ni7eQyHFK
u7PQAf1SnXhnre65uzeNo/d1ScIfggIfj4qM6IuhBt0CjUk0kH03R7eMcLyBA6QMC0fNVhBl5Jc8
5S+EX6AxVx63rPIXV6pFEBhnLA0D9ocSJkncbFMnQfcbcL+gMAlENHSJ6bh7h5zoHgLlw2hVkMva
Uu1f1VPP71iticQn6plSzXFhzHBHUsnZviAZY5cMF43JpA7pvV5koLx/aPWQjFwSOOsCycC6P3cY
cVOyGbmd2pXqQpl+SPItudw37trnjjV3u5YIalhWAHzL+1fq8GbEE1XYBKxEmEIpVzYvNw80Tg8b
QXX1tZcP3sCYABhaBwrz7GU7KW1RZ+agdR5ySEBLSW2BoV+2iMPayugacjPPBOymxWFzu5AY0K7/
EWmh1373J3o1T6ekDYuDJoCMywQNFrR6ITb/tF5PuqBzqQU5OGzAumoFEyVISrieRaG70RsG+/42
gGOVtDhetLvyqPQ5ye7YH7i/Uwe8c3QflvxIFb2T9JsMGAHx9IqCjv6SPWpF6whA8XgBqudyGktw
Sbxhy1wlUIg3abVTqa+6/wn+ANOn9B3LJL0OkZpo7RXy6BP9NA6O3XnssvkDuW4Mfqz9RqF0ECZi
szPqamC0p27Z8c++AtizLgStvaEvNVxy0kM81+9ffksWp2DgARU2cS2xpElOZPqqJRl/vQApwIqy
ANFwMR1YgKPvmjWDgntqv3imm4dby7yeKsh/qsn0eQylwpzdOMetgslOQKy1bnnNVokuDZHH+7Jg
i02zln7wIdkcDmn03sCWYHitotFtHOcDU8Mb6G7BbsSIBivy+yfWQmvahNSvg22ssBrdZ+B4Pj1P
DkXg/6+y/UJxngeDalTFvn3iElbQnEjE8pI7uqxDlXq4UXFxW3RrtoL67IQkmccQ3FgCdVsXveaf
KNKXaEZhfKBC6Sv+nMxroH04ZZ4AojxWYG1OtFtha2gDR8DeziXXzR2ouTyJV5/qpI+knQ8M8qc/
AeR5KXm3RVGQ3R7Y5J27QQWKnkDwJateItYwPSteQdtlZDk3VGSJCw3vY+Q3trQHFK2s1yl+YHrX
ZcAb7p1fWFfzcG9ntcIzq3G3Jny3KEKLBDd6x/YGiDnPaJPJtQ344fz9p6S87891ORnY98rtNH/I
ZJQwkR1eQzutxkeBcnu9uXVjcfKNSKx8ZzfAYNmKRkM+0p4TD+6/tys1GdFD66VjR5deaonsmJjV
U/wHOd87E+w8UoGYGXD+STNxLJk2uDFIAb5iaFtmOuDEsaZatc5BzC+b8u4ZqueoneStPVM1wpPi
3DTBlVY0TtKUtrPXmHjKnfdr+0/czOIuJZ+60nYywtFX3MS4QWvmmtn/+4YP0zWO258lSifY21Oe
VF/7khdKTYCsy+N8gZ3MQPwh2Qs6Yn/0aLJlzpVQuWC4U+3AUz2DBKfevS55Re+6ebFdDwuTgnXj
iXaale9ouBhsfayESVipHfY/CuBgC1Q84NXUc21EcKEOt5h7Z7SDcMcrQ+nwNildDRKJ3H3b9Tdi
S6qBvWVdKvlO3RZoT7tq98G4kBOTHAXL2zi5fA2KSX57noA8rVzqOZofow0wOaCsGOk+ND29VWYN
tyDBYdiPtAwdCn0w0DDUR0mY0Bu0InVnajqvhm3HHZRL7mBVjxfdzDrhYHm1VizCBAq1APgG+Pte
SBrle2cmYnv3c2AJlHnjSdBdQ57Zob153sBUalq3/lWn95ntC3C0jInh30Da//3dJvyc29TNotlh
1qxldp6Qkwj5P6Yl33tMPAnAzkw4MGdBFk9ZBOzMuajccDCeizmNEr6NHccvrcjz1mcrEzH4yL7L
8oCAnaIRRTqbpB9Lg6RuJC5Zyzx/W8b7vX4FwiDwQnb0DwCKDx/dy0NPnBoRotK/AD99C03Vax7N
UK/knBVfR7d6C4L0oSxMbxki+KXaQGBc5uYureMYMHha+vTTLIITSrJvCDYlzPfnhK+MU5F/QIuQ
J/aaBrLlzTnBI1vgoG6/FY2nbe7NFoQ/0/Hej0K1U1BG19LuGbp7+nXoNRJLu4d91itX3g49srFL
rYLJANfBk6LIXHIckRw37jdIntIAqWNCityYxvbiqbL1b1KF0dCf3gyOITReeumUHQ1kXS5WehjE
THvB3lDtHqShqv9tkPq1H4VxM9WC0FQmWPxsb/g85x/GsWVxGAAEe/xVWnBUFwRPcjVfIVf0QGhP
gYKXCWx+PJ9hz08XFthbLhUZmLsX0H9u9KshbLm2EQE3Lcih9zeeaJmmCzOjbqz4x6gKLyIVCm24
7xyDcimFR33vTMxXbhO/Xrvoco1P63WJCkj/f/lFGULc4zhcpZk+tcjwangR4QJzqfjj/Jol+/Rw
x1pYmd8QvomOa/PS+rA9YsQ6jwlAT6mBvIYjkQUUyS6TzEoQKs4XilmRDpC0t/DL0/hpnjmdtxlV
5+hFUbngpVJ5XoojgZyQwOBIaUTKfRaZpxYQCY87PzNKkpBT71mWd1N2NMP1uU0TfsVe0FnBEF7v
aWlS+W4zCAp7c5zXjfJw/5n+TeeJmFobnD6rEspVfPC0ICbM0ptllLLpTtPPNs6xA4BO4way5Y2F
zh4orHZpl9wJbpC2pTi6xHhLgh3J/vs0iwj4cwqBMy6g7Nq49KwEXUPzP4+4H6tigP84cgWyPCLN
BAsvgvwXgX64AV6mFqiAEIA3fcUeRqDp8cIyG6IWPIwnzTwOiqlrMGpngnEfFjE2Ro6WS1UQ4+bI
VqFXpnQo2B0Ba6DM4WHo5XhDwo3ZWPXpV9TZHjl9/z8glvUGQL7UzORDd6u7eV/vTH02u4CUEfft
ov7xu5gp0QOf9kf6zuAWGNZOFE7AT0EgPKuKqu58GMyiigdCzu6MWZLWtfsewcX71gDVrksdX9SP
CoP2E69CEaL1+fE7V2kUEFv3akIrc6O5KkvXimpIOS6VGUG9WwSXA98pTLnY6Q8dQCZtrAf+omHb
DP8K8DlmrOcDKcTVBWKFVz7LEb8aHcR37mDAwbM09oYh1jZEDVcL71sPWlW+tYXfa4JY1YASOS6z
6HsXPiXClpXSknNLXDeq4zRnTEUQQzwHkldWX7Y0Z51vrxTkYapOWX7XdILYps/WYHIJtANe17H6
gzhP7yy4HYhIK8nk0c40ZqZMOZrB6URv55kGzCIAHnRH5kV0S6kRyawrzISQVnx61rhGMPaTDvai
UeHOm2dUNifSZQ5Y2+7qVH6DXSxz3Ig1iC+WWUHClPYXxsTXC1IFNKMTlt3y7xw9a+NpqRevAHNs
AV/CZ46z3mOOUGGyBP2eAiDpIx1fYoUxnC3ep1dboNxEsDKSU7hu1uaU4EnDlhEuwm6Tt+RwMqXZ
sDJjP9ulFknofDmvtMkJu02SS3tkS1odAVl4wvR2CxlhY40PaUn1aHV4x/RebxYCiLaJthHvlmuV
kahIUUuCLPe0ELX+KeiSLyYuBJUTV165vb6h+Mne/TUrmXCN5izWV0ldACWtol97wNAuRe1S8Q7P
gk+xWSiOC5MNS+Uy+YC9mSCKHn8lxcyAKyYKMAHh5ByTNQlPIe8sNTAv/g5cy3zs9SCgJq3PTexs
q7LB1VEiZhhWN8wNwQWCH+ihERtv183qLo0FogTfJuKFbo2xsgCgEWF6qmhm8MKqpghsmpDWvBwn
9VX+kbX/ouG97Wo+Tb4oVYRhtFwwdV6KMg0PtR9jsvtuczFo9O4lCoHVp/ObJR1MsoxYJgvelt7W
8e0J8l/8d7GJityWTwRgxqMWiImxEPqGirxwk41HSdUgKoP/9fTdUW1EQ5KV0Rf707bHZRH+Un1V
nSjUbP2jiAwuDu63hhbyVS7J7HctZ5In7mHaE6kN0KXZa0iYxEFbmnYtmi36G18jDFMRpNVQKu9P
AbU5MSCrXSSOM3pJn7EHGseYNsqueyR5W+HEptHkRCbCV+gMX8rubvk7MI1ZFJiqH7nVKsUgORPb
IDq42WU7RoROc18Mxuf3kUE1Llo1+CxwklidxJrTgSu/b6fzcny4OT1+7oWzb51nJE2BPX2+JJVD
7iqZvXKiH7SWwCm97kIJx1+D8Vp0VJLPU117YWTofxk+ty1LlFSksdWjRvctaitEQ5jBgMOdIvmi
sM3XBn3kQ2J3MoNAr447BLPZB+7yneFRwrKmxqJMuXoya/+g0riU0NA1ABGDkNf1qyRRED3jCrIQ
eo5O/kCsFc3SNUbYIOf+JpsRn/q3qVi2PVQeAvgu2YJidAds6q2sKYXpm6Ne5hc2GO9kylQ2MnMd
Y5gPBj7a+gKjG5jhr4eZmQ+Gb62mr7+KLVYfQOgIOJZiEyMSOb9B9Cyx1xJIoV1mfMkyq14ejWSs
/mOGeRJYWjP5zTLOvQ2UsKdPa39wJCyTLW91rgTyL/+68qsZJNV5wNPFPcIvbn+wH57axULtOn0/
f4xwTeLkS6pxE8VAKrvkiU8RcPmTCRXMZCEzXTvAxfRD6vdXavKwgY1sQFiXWW7lOTFB4/etfZvn
G7H887/aIkfhvhSAIeJgUqjVMDKoXAfEAB/gEzaCJeT+cqj63nMI6fcBPTSa+jVJP//s78Yp/V4l
t+zhLv4e+4RwvKkFbllZbKZuJqrWPvwxZr2jvErDIAJA5WE0DNjJ2oZ0lAh95Z8A8V8npH1wN9HO
23EphXin7tAGmfZQ7cUtxvgT5G+xv3UnhTgToaZDfPd2iYkiRoN1LYSCywICaH+yYCMAizZjiDDX
e1Md6OhvFtkb/HxB0ORWo3OS1xFfY5LC48f8wYOy0WS8eVZibSxKwONhiCpie7e2rss+8mBKMoaw
h6bo1N095Ur4FcLccZOY6ujKT6oDZN+IEXvslD/rmRssIVPeDvpKQ0wU+sqatYOPU2hsu4izU0xK
lJJeka3YBuiMA2tENTBvRPU3EB04AvMKc5k0ydsLykMxIhvquFjXtrMh52Zy2XEYTtzab85Zr1lx
OYa+NtKa5WKemiqwqR1MXhgCpb2SmBkZVvFePFYQjyVCHan2TxN9XK0ZIH5+lWMItOSIyyyHJgp+
1UrivWl2wZQ7lQbEjujNmVzYFvf2vqdioji0pTFocauf6HMP6tp4hojlpcckifpFzKKUIdXKFOdR
cvCJuTxznvc+XxdvOLMeXRKNdFk5Bia6nJA5m5msM/7zgf6q4etoEy6cDBRJAI3ysxZuel1XkFpr
hhLymxeYHfNaoAtipYrOCk4mM/uHme3KdR4/ulRynXTMeiJ5ZZU7n9NwGFYI600Ibzt4qZf0OrSm
4LPvHCapITlZ5Sy0eDAy26Dm1UYYbdHy4PTCv3n1XK4TvnGZv6y2QoKWINfmb4GYJsnIZ5rMpNw5
0yrTFaqST/GK6ELnmq86Kpcu5d2R+rfTUQrUs2UAfRRTUn4Fv1kWAWgKOZhM4z2/ZxLiB00dZQfV
HnXbm/u1zUAX7xinwJjB5EMHki5rSRTo1emMSlp9O/Zn23q0uOEv9n8iXgqamEPAMqsjS87ge1ot
7HiGhGTGne9eZVt4PsgJ9t4dQxlvffYerlo1quqBxqYz9NLvv7oN7tx5KboOF5G0UAEjlmrisKNx
2vx9QhASb53M06me8smNCWcYiC2Xe0rRGJgYSwN/+SMsItGB5OBqMxxFsWLSSbkbdNzETRSGc5cU
xmJRS/peJj4VcBoyySfmqdQDgJxQDqY0ZVwln+33ZG5U2h9RjrwVglEIE3bFZZ0JlcFgRuZ+qv3D
dhuIBF2Ti9YruJMeaV4ijOAOVpn9Mimj3itBs88luRM8UHYz5chwQ7xU9gn3uc9K2zgPs+h9DumJ
kil/F7QNPTLpETAzPgNTFGEQWRa7B6clkAQ3RF8HreZIdyzEj+/isapDeYWaubxb7KEkkvgBX7FW
ixow/TyeARf3C8NywUjiVmyQfbGKZNCxRi0sMbP+ks+eP8SdtXufjSgVtB2Lit7iOvpqYyKKZnx1
o3iWBwN0OgRM3aQyxuCmc8zH+TWn1u0zN3AuDkjLQzmihCx9B6/sdI9TqK2cAwEmMnjfD+dZNz7c
OtYjee9QL+YSLsZzgu2lPoGitcY4Y4o3hEQVPojslyO50p49OTErV1df9+PbXxlz8OIbg7O8/FVe
7g75VCbWK4li14WLsQF2QtxQ9p/XdHGbFPXJ0NAQjBRjLCiFvHSWqIdSC+SFZVe7xi1Mf+ygmdu+
L1bASizwCOvZotPyYALtlQi19eECU39IgRSKEf5j6piH+13US4xZJC4qjRexM/SKiWqQkSKmoFVD
wWXgbszjeFbKHcHrRlhKllc6+dGjt+auWLpJc5IFE8DJdTTKfGLJi7vISMWlRVAfMLek86Eg1isf
VccQARf9ZcYkkviqRCTPlrD6y5EaxF/Pg4K49hl3nI0Z3p3dl30I6ExKzlxA3xfihLypETACcpSv
ftE0uSHHYn484u3doRa4x3LxmiIY9lcBvlGklByf5tTcJdap6+eTAeOFhjbNs7sEnCZoujVj41uU
K9DbJgACzlZy6+UjVvaEPbMJtgrAglPlh29LcB05Pw6gmNeo/9i/iB9orI1wSwsTuD294/j1ZHSi
PWrj+Td/hSsly9srVhgIoj0X13Po1mSAAFs3jNAQaoeeJvxXIJ5rD19QZ3h1lj6IIQ12pm3cS72u
GXWYgMbQwzM89IZh/q1EW+TBz6sg/rzVIBw96R2szpUcTKNC6l7pdWqyTFCtfTOWLJ34H8hyn9qR
fOhdEo2//3HQqqz0SdOO84pQ0MuzzCuGkItAQWs5MtGAzjSwMuZQ4ZCEp/FCMW+svEOs+cMos+1Y
8BaEvk6Cp0rf0fdyR7KAoATQ5CJ18wOWWKOOIKLMkH9ykgHO2l5zDWzX6FIHiVJGM/aCHbTLTVM1
NUyiFC3OH4ROiyoOCvjFfAeFDDWeJPk+plVaVquXMTXF88WHww6yakjdO1NDuNA78j83jBMi3q6D
IavcMHzF2Tnh5w9TpvMQnZGznIo4M2NPVNHX0q+dKw3US1o1doOvd3e26AdJQ3vP1PCi4YVOSzvj
D/QhRakwYolM0QqQiaBRwOSIjgWl42mhmyw7u08BQWRABgUD0xa6rwgQwahV1czCyy+xeXD/dnPx
b5l8OvsVTF4XEI7Jj024psatlZGV37F5PGTOuWdDnc5NheQF4MZDjM8y6ftA2i5otVE73JPDP8zX
XeFC+eC+ZmR01/PzVxLsNJXUi5Rz/VPEzD75ZAq3mBp5eAI2I7lfPzXy4we1cRZ/7puWfF6b5EZT
ZqMwc5lquxkphBu88vGv8dGfklLrJlyHObW0yAfeImSq+zz8ZrmsobBlyUczTxbjNDlxh998lhHM
G1cL/lLOKBlf33pTjIBOh4h9eXMNmMFVEokE5jgwQY3a7bq3CfKjvsZMZW2V4CFAf+OfDNTr4L/I
vfwd9Hn7gCt2/2pDiJJuBPMW5ebuGoFvfB7hIU36czcRrk0eTojLxd6uMqtjPVJIkOpKcBEm0lW2
fpBss6ZhdqZC+qKTbdnj9nBAk0B0vCFSHwV9qa3rpgHomQJNTxgO64fnCyAkof/9xeUE9/XvK4tF
oZUQa/H/KnZsSUBsG1+MyE78QOC75L1c6+U46OKFKlxO8Y/d7BFrdXYeBNXS3UnIWsrx5Jgw7AGP
xuvI4h9YSaEQdMYsA6lxkvt+a29nRYGhz9bP3CNylZtg/rBPPtzEfsUsQ8YF4xtbLGbZ+zEuARxy
ChEaPOQLzsdRA4/YTUFK+EpUOeETArb25gMc9bvWxMObk4migkrF5Ghs400UsdaZhmvrq0B15F+E
tmlcv12ImQRqh73+xaR+2b/1y8gkvCGolnuyKjWCTfKo2nXpShsMdALg7456qxHlaC6o/IYYLEEO
g2h1D+VP5He7BR2jU0L5HpOuAiqdDzvjHy/XvCgJMoFWhlh5MBMIPCd2DVO4P29izcr/6FWWlAaf
vxB2qRHz9rkuLpvdNBE5BlADt2aeOSUyUhrbgsxjyZOHGpBDjbSszKpwWWyq4H/PbE0vALReuC31
ZSR4QTx22iGk4W+7BWQlPav/4VdzcoUqaZA+sU2UqxqPOaEvTcKYUIVeIPGQm04StaiyOdZaZ+zC
7R5GsFxHiQwm4fqBmWzb7co72Ufz/sRKkS2qw9dwmiISt8l+mJVYFA11cndLn42TUvHtTZihYRYs
8wHVAfJKF6FdxzRdn8NahUaPz6y0tqjOXT9SoRauzY+FoA4iljn7HM3w/SiVYGBsBNWNPvxYxxsm
Y5lxsRuX2IYFtV0IvQ+1ow5xcVjKiTHsFVWeZ/GL1Ee7pwuB8Ae+2IeMVRXVygElzveQduS3Y8uh
uhOikK3AxAgwsGD9RD6ZdynlFGlQAuD2b8PSA1JIDD7AyATdtWp3neSDc2hU703RcCKnXWPm7SJg
Bbqjb9U14Q9r21HmtXN15LCbkB4THFNJH1qZfByOBjef4TpiAaGosFA9l+kShUCZhBRtX2mkV6dZ
gwSdIJJbMG5YdEKSrx9QzHQ2QEThPTsUGbLA9/GsEXgBPi9XSEJ/5JWIv2OmeXJ8/7FEXavS0AMv
NRvVY4BaT1qcpqaE2VU4tGB9B2wv7n46uBLxZ+PyJ6HagtIQ/YBpNshOuM33DYDcF6fmp5ScWq+j
ADV63VRIBXZU4bn1UySInC3Dk4T1TmQ4bDmkaZK3egWCA1190C2u29QmzyqiAnLA30ONDRROnPpR
sVPKUDZtIsRBAR1OEzNR7y3Ysu+t7sWzDmOvqyB0Z+Yf56Nh1PMIs6nksa1AkFG/sd5k93rsXlgv
4LRa2C2So2vz+NbMHBZ7+dZ/a6cqjhjpUT4jJythmBowzTjRwIgSh2BhodcWYRGvbnyCVHYH86+D
ymExnxMgVUi6Rm5NkzSFW607lcvFXLb29cCAR5EDX1rMUTd6Og2CL4gT3JdWrrqUTvOAklWqtfHl
0wCfXz3J/LYcLJS/7MQAAKsZqNFOi87fgONqkYdhQ/r7NiL9fB7L3totiwpQ9C9Nw++vsH0VxX+p
wbL2JG/w799KumBZa0szHdHWpJE3FPzulaOGzctKhrCfLdu7La336TxIHNRg+cgjvKJXnB0G3N41
YDi5P88CD24ITuoCTnM0Xonfmy0j41bCc/drwfUmXNr2o3JZMs29K7CjzKLIidiW8/+GRCegXdL5
FqfCb5JyyEhRxKfC+G/56O2lMAt7496jQKzcafEPjAwsafneJzQgX2Mjb1beZYCWYXxa7Z7QPjmy
GugKjBE1HAXrN/ZFlZeTSkDw8DYB7s+fn78Vu34Gxyu4j30z5OMYGiPdEU6Lr2c1hQ2VHwu+wy8Z
cyu32qXmRbNDh6sJUS/p+Np0wPBgYjnoTWzjtr6VdrE9o2kI/h99udiLCTMvJuGHF+ptwwfxqc9L
EvM+T8e56TjjgDtyaJS5m0vJu4WNMw3kQ2wIWLV4qc0oT9Q9pBxhjgRvTsSpew6ouAlhu80T+6+k
hZPrK5fxk9YYfHmcOul6BTTZgiW1uND2ThiGSXfiNC8LwvGuQq8uJsqeSDw/M7Hq15eY41DBr1Be
+Bzt+5QP4RAo7h472SvRN+1COBvDxvf5bpv5DJVM+H8bpnufGi/lH/ZEr6sM+geI2rRNnSryJji+
kEkuJnXToi7hQpvF2Np+9f3pIuWIFmpFvRANMAqcgBblzjQHSQe6L0d3/GnN50to+8kDa/UAdTnc
rLvS87qnJh9ERkW8t9gUe50Zc1EJ8rhm6Emtr3uvMbF8qHx6GC66Zy2zRg783j9BnjEeZnUUVrBj
Zbig+cKbH2qGshtyXW92UQ6xEzJQ/sPNOHVJ7rGOiYEXfjozCBgZnbXPpD7AVB8Z7qtL0unSqqIp
ZbJzJSBzCKNxoCmT9ga1Pga5QE69P0abOgLFgsLeAPhREV3nmHJHf9jLkCF4mhm47sqc22D5NsGK
qUlN8JvQkP9D7RE5P6F7daZOaqtl39DaYb6jMm6OvuT4STwWdN+xnLIATUqQvzGVULcOA1SsBtfx
UZxBjAhwnmd0OpI4ocUpYQ2mGrgRHgKb/XfrxwFQtQKBTTjxlAmogMBS75chTxnh0QNrFxelhxn5
QmSEhIHHWk1i7NGQ0bS5CE3drFD0HXMBi9fuOK/uxs5b7qQTrvKBPKvE/LNYFi/cFexLqAtj7KyN
QCZQbbQBjzKsgzd0IiN0wfn02/UXs4ig7UVawIKq+ZX3Qg5jlvFIMb1xpLOpAjnm7/HPrewIf8Ij
B5L3Bv3MbvaTQKQeoXQdyz7nP4C9ahIKUBecOfafWXcvT4rzj5CbgsMAbPy1dTVNaZVcjENVeMr/
BXlp9xBohhO87tEQL37uQXZNiuyFU7fD6kSvOinDwoNomReGCC1EaVqoa7gCOcN4Wke18jjdkS5N
jqEWhbIqpmjiZZ/iYC0jNnzfQaCN+oyeXlvqzOjeGUmxcdGkBzxz5NxxWuaO0IwpWdkvjELMTlrU
qdTutHQD7Y4cxerh6jhgLSxlkJleyidWAGlvwYNBsclgSIfmGp79UQbPlPVzUNSDS1q8Rwnovcfh
SVHNF4oty5ZG60EVWF/+BQgemiJJcBVze+LSjs3nt3+FlZtbGCnVdje0XSHiH9WDJg1khqnIm0KV
r692Je3PQRsemct5iJA6ZDdgQqtYvSc69pWyu7wmEu6u5CrxG4QtcyRJfEucIN6IZPzLWUVjnEki
wPb//ICjGXHHrvy7oro/Y/4e81MjRv+bTPpsre8Q4EAY9ggq+u/PXZVJiQ8ueWhz24DJzu/pOVJF
NRYd9B0ZBcxRvM8w8ju16w9or0XtiFJvfgakX1uqwIDk39Fo+keoD/VnR1qqCVJ9PPUi8YHvo3Aj
XE/R+4lWbxFHRc5Na3c+wdZn06vDXUdSY9/pfzqYNTAjy/+EWZgRYN2jYn6kZLscEQfarz+0izqe
TEwVJ9nJ9500yoICBxcXHwmKFn7yJi3zEPpbyOlmwcJAP3l9bVYhzOrY8tq+5xt0vf3fmn4QT9xO
X8O/NIt4v9UWJyhm8jxxFaPRbMKWsYM+ujIzL3X4D+mEslutvvXqff1BL8eUvFpejf01lBoYhjmS
aR5dXtWWUwDleYp+OlvgQuqstG8y7C8s5CaTMnC2Q4W/5GpoG+6m6uNFy4f85aKMXVaNk9o9pZRx
raTErNj80O98AdY0TTBBmbFX930UreQGA65ITSpCkeKY60eiCpWA8zOn6cL4r9o0/EVhnW57KJnY
jIkuIPjhTibWcF3gaFiT7/xfV1+pBmRyFJEIdt3RkGeetA63Lj9btOlLCkjkUNueqTlQY1pxV0dy
FeUp9D5tPnz3VWjdnNz0NH6UORqw4wr/ONDYgePBx7vTyWOUwnIwqgElRZTa79dAwV7dEEeai1Tr
EaqD+MK6zIHiZkYXz/ehhge9f5BVaJsGTlsxXsf9fexrKNK/TFvEmjK1bhSIFNiiAkvmVy4xQERA
p0ghEuA9zcS7P5GLwEqn3GLs3kBJKxRhN14v3UnCyXCbyMCCSjEO8yM17umu/OIAP/ucuJe8+NNy
/Gm7xrvmCSGbEb/tH1ED9SDqIups8WXVBhqiY0nvPN2B0BIp5rWuOdj8lp/auRQKuCmfAu6oURlb
WD1qXFXr5EwuxvL2NXPEVoF2w1F2YZHJambn3P0jzw61MyYsq+KXKupW9+5pNOyx4UlnacHA8oq9
fEKppzh4grVxZopPZBeFEo94Eyj3Tim0BAxLXoLKo2+TtWiXjHmAek1MFAgxcqd5PUW7dx4ItqsH
VW6SyOcjKrf3Egi7trPko/aBM0/qiMjCYayFrCP6DrwAHXkXEP3tTeNPVgM5HykjGF+bM76H23X6
8FtNrP6rp3q1fYOI6gw9qXtIcX11ncZHVlHSe5/QJqHYJw1JYatneqZSe96pbxdlsqS6XoYDxGtZ
L0OQb/JhMVNCdw+/myAka2lnU6KuewCHe7Ub7olDtE2+N6PxMkto5dHNdHhnPsOIuDfc4pBigtfv
olVmiSNQ9Rb7CsEXg7HqjJMGOMnT+8xIEZjTQV9lXU81yDwWvPhbCGkduV7w6TYoTW1aDQlJ+ES7
ceATKhaqL2VHlBbhQ/GdU/azkM3RpnqoFWxZOs2ujsKhpxN6Ifcg7ZddwEHpyDNIeCtPAePXnbru
87fXYk6JyTbNBiQEuBymMWw5m8FEBfnMkHfsR23tmBMVdL6Oce2Y0GDsUtH6lAgEnvZBMLV3ezHd
bujlGwVxNZdS5Gksoc1Naju+Q60ncslArgz38WsAMR8xKuJNns6uLovZoZVs1vWi6GaWWBpqPOvK
lwn8cYkK+Pg5sTSR5Qs8VkfgPGlZhGcFDxw6RWDIy+spFLAONC89dc6wy4NCFESIptFYcLS5Uyz6
5Rumqjheftl+IXrYQjYwgsr2HEKIQTA0THlCBV/RknQ/9V+p0nADNntTxKMxRx+vuhWqjn3ztlYc
uqv8viV7A0lHWL93fB8PLxL0fCE2CC/SDd1D8WuEYPEzfSPyCs8pzN68Wf4BDdUAmQA3/4/YClaP
t44J9RlllnziwuDqowyNReSUhi+CItqsoxV5C17ODel80yAgdYHF3Wdi6hgCCozwMgh+Zd9YELpt
aRGyCxP5Ahfz7jYwXkksLc3csneTaEVxAir04joTY2GAdSnZl5Td/RfSgYIfundo7xHeBWsskv9G
iPTR5rF+7eEQrZnZoY64nXAPm2WDDEY/U9kjmW+kTzXvbBVEcEU82om9Rf0ntIAYdiTrmQVfFc3u
LDWqFkoUe1RA37IaqXVqytfwjZZyg0VIM9QiEJJp5kHARwFTf2QFPwT9i1pIAIGIbVNT2z280jhu
MpeXK6D6eM+ypL9hI32NuwA5RNpfuoKIFKsv6Pb0pMDMtiHzNG4ISb3bppM68IneTUL5VWWkwcP1
6N5piG1fZu8jQgGrImGkHHUs2EzwqnN4vVccQ8FEc2eefPJwwqjgkQk1WAAeFKHKvdI2jcLifxq/
wgWvrxEC0F4/s9CCHZxzISGza4tYXqgw+5P7e3oPPOqT00GukJADwc5ylzeqJ+1QguxG8UfiUQX2
4nZsbm+g1prJ4nrC4wxbbznglo01Wkv5uh1Lq4hPTCA5A5Hu9SYwyyCiycOH5ZvUSKP16ZURBpFm
rISb3V2Ii0V8HhupMKU6gdhSQCOath+xOIhQuSgzIRPzsKqeOmIRad0DcKu948Tp7LLGcrUevLS4
1bNS8TLCsCdCv4gZn93n1wf5DCRo4tBxd7vKDx4dVslNKB2WqmcEM9MRV8WaJCaRtJ42HdxULMoM
OEPYrz4sxKDLIbANMWAVXFvum+8/Ah2E0vi5yx+RzL0MXS1A+JeQL4eUIDS15CdoHroVDmlep5Tt
ld7R89RRkWJ14ECR+ITtQaBoQRaoY6jUruJ+nU3+ppqxRazKNriUxHwGTM9K8JIrQPHjbUKHvIFn
Dsa18IEqDbEBge9af6a1fGf9wU7a802RA4kVx8zMTTEGdKAicH8yK5l4x6CEm+CIkvFfkRBRHGeR
Jv8C2kzmVxHiZn0/nI/B80/sr32YhFB3jWCO2Epe+sLa02NGje1NxujxEXbnul/1rh2OpJ3F33A7
l6biOmarzs+ZAJ4dsvNo6WvOn+8Mv5LEFr2bwo1exXps/R830BJq5EmS4WdaFpLsU3VyM8a1/WCd
kfxkpqCiI/7zpqznDRE8KWt7jji3VwtVQCZYmuA90CkcthP/DIle6xtsoCZC3zg4tjRNh7jREYnW
eHf1+p6jIKGhC5CDoZ8YT2wQ2/ubQtiL7Io4ueids83lbVmi6u/MNnPqVe+Wc5gdpSDbpxGXGuKr
D1QfCa+yOQuKOKSu9yTkIzCs0HaRl3h5SI6JsMMsLnQYLnH/HcSymb27YS24RVTZt933CJsYM5Ik
dLCUo3DqnAOPBJTkTwoFH2Jj5KJ7+dxJtLGFg5SYETbdXHcmdl2bOrZFpXnueVe5xhnDrxlTHV5P
GgYY4oOXkQJsh7r0TXmDIKSlU3kIXC3SIGJ5ZUWS7UqjFGEM2xRkLkRpfKjztw1LbOwEOxqjVXRt
nNvGiVCYypcWnQNpkb/Ne4bMpJZVIxuBkaeon+O8NZPkTkUOQOb41A49APOTjjKvwxFMxYaZzG3E
mUgHWCX5ZPZ4s/Kf6UYzys03MaLKbFcpnDSe/gn9AcaJ0aaJfCU0GjSkFPW6ITKH8s80V7Eig4KD
eO6MFdBdQZmePuCyKgeVXpB+M53eISmFgY45O6WOF96uwJ6BKpa6K3vq8CCR06Tet4pis5hN4W0R
Dj7oLv1MMSVCIz5Z4htHGLkbqrIo50aFQuJJ80VGCrf6T5YzZCl7hg5SGV8t2n7nsutbuj8MMc9L
spmocqLWX6N1XqBF/ZjdBwgosR2y+B0f6eFVnEr5Qg7AyQoi4zwevdUE5Y650A0qj3iqGojbkyZJ
Iop0kpjxNayqjicwiH6RyNcqJnYO97lpAPNKG277qRZsbs3OpAbAbhKr+KaWxcucmWrnqRkROxJv
UNZvOxp0GLUZYbgc16mP1O62s+3MHq3DJ5VV6A2ow+7AT0+W+hVwCsMEZNJuAyrNGhddN9S1TynR
uXsHF0IkzOM4dBYpMBuoRUd6c1U/sW9uQMZV+nWaAy82bRgBqoRS6SGFadQUExCo1ocaSp7rdsoo
AdfsY0oH0pBddqwKVFA6xxv4wp4NvtCDtsOzAOsnAsdJH0CrLqgkPeepfpuWciMC/PvTLheQ3eJL
iSIZPuJWfx8+jqLWNSW/90liTgRyE0K2AnCTEN7NAygLeFwENeHJWhsy+eAY9eVFQNH1QUEzYZah
v0pJfTcBnltlIUnPxOQB7Jiw7e7fRHZB5t08fkvjNOJrTmyb7GhmeJ//MQ5VrW+cUEX78wm5UqOW
7QMLcNgP4aEk1t2olylrXAVrUszNd2W1nJMvrx/9kUCnexcn2ykvARaSOdDtog8F5+j9seF+JV5w
qz1G7hTYuUMu7Hnf5j5LMqukrYMbNmfWfPBitECAw/Z780e2E+eeJJoSq5rLx4QRGgQKbm6XMaMZ
Wswj690MSfxWqzA6blCPFjjA9jZMcQxVKHY5pgBLAOL3XQSyfUt1JoDg3Xm2m5JcIr0h7hhbPMF1
HaizAQ5jd0O38H2br1FQGgEJH7x1pz4XGg71TxaGfiJtKkhXyGNtYsWdqK6Pw1m7+RHaLsBYvOIt
ajzXB0+X3y3GBmANgWZlx2soPpEbQxWPaMFygq9qmY3iDXVRd5Y0uKqK7OCT2qy3V9YmLwRg6UAL
teH2nB989W+S+hSiFZIodgKen5Gi7qxV9fs297ggKXMIdyc9jqhYFzv4GFOn/EGfErnDZz5rypN7
x5r1qBKzlGDjWyolOAjw1i2uC6W0dqkz3r2Nhdt63uo0tvh6a8cko3Xs1oEQ9ACOdtb4FmJT6c07
1R7cfyHMXVP/DeU3EIg+bbH3G5/SvzkAdTRgQNpfPI1FYBhxmhXoDqehKws0UZaI4kMuu1ajugMU
y6cAUx2EO6+7uezyBLb0m4vYfnQCBNqfOHTugun+MNwinP4AnKIJZL8xel2GyNh3HL7ARxc90vME
2P0wpzc2UVWypJxOgFozYintJMZLcdSmulaKuGRLzuX3Zf98zi/eOhuadflOAy12NJ3qumOb3fAx
BYXHo6SFpc8JNPXm160nDNEUbP8LcYySDT2waR1OFxGVQ3tTEyZdGcfJRGImXLGdUhRad+DdTuLN
2hYWOdKkPr79JPxPeX8LoTbMMYZFJsdORMhX2PsNkJ4MT8NJmkIHcmUV5meiVEfzlORKS7rKv67V
jcH+elQk23PqAK4n1mwo//bhLPGrVxV5tziKRbCNeR8x1FZqR6DE2xeYLOo7KCwIIkHGNp7uIO+3
/WBbC/k12cPkoSF9r33iDp5AEgke+aj8iR5KahMEpt1RjtShNIREihdUcv6m4p28iByhS4KYL8gK
ZrUZW64nSctnJafMTUhL3MQbggQOTtv9paoyO7ihIY/WF0MdMZcZZ0Z/3U1efupYzOdtFf+G9Hx7
3QS8gY1o6v5xGvzccFXiiXrq+oOgswfsg9VUP5PG60fjKPjD/3B8Tl3X10YeaEhRzrvzKAy0oF71
QVE6Trko9SRLCoh6zjbzdSEX5eb+tAZ79CowSZI8YUfPClkSd2VwO12gBFQSjwph+dJyaYmxT1HR
lbc9cLca5VmV/vtWJ6nTnts1gd+C6f7SS/R1yddtUTnefwhzTnDMXjdLLpdycdctGvLnzuUE2uX/
NeNtkJpnh0rSfhsdMoYgujeKkhOmdhyJCNlYRpSUY448V+T4YaRgN9fDfkb5M3XTIVk9z2Xutmrf
2WDuzua/aw/zoeGp6linZRIvZER5zlUq+SK6LUYhMPOi4z5w8enGtwAv42om2myD9RZzDnOPH2Oc
4e/IGMI4mws5pWZlV9r0l7cGY/Kd3lipDp17Qum8IlLwVnaTpS+eKXiricaHelAGnjdYX+19X6WY
qj/sEk9Xn/KYtnmVpO7ryzxmSHnfGEG5t2bz89gUJN3T/J/PCY/xPibhU6t4AnbtEVW+5DcSicdK
xJFqFrCBcK3MrnYp/yojFfuGTW82/7XN2o1Pg7ykJNfIxIhy14TLIDcSxVMHtiTpz+wUPHDgOnhi
eOUcjPAdTJv9YCWr3F8jPM+whmkRAo3TM3bX8kcR7FXV2Yn8pScHw6CPsL0SWZBlP0OhFhPtxB9H
7SN47hFB860hyiBFvsssRhqHKiUK+ODAyHPoxEU9jK/upBy1OI9DCHS/7JxnSwPb9Tq8h4CpSWxg
proMTtxqBd8Mm8MIISYhoJNjyXrvsHjYMl3h+mKnjYGset6rf5rWL27Kh2Ex+eFoW76vYGitbabN
cRpc07FUuMPVL+smohNmJGniSXeQAmIEbUDqExKjmsOiz3nh0LlTXYQ1yRyVCzilCtZLpzDVDoxQ
iFd8AYZJh/Ar4Ln1i6SHZWH5DEyH/Zq7hGSEcfSgJXusL71IawkuKa8/TmMBW/g1M/sRyIGvw2Mm
etxiTXXcuhC5e/RuOSf+gBRPm+VIAwpGSF2dTNzMwgk/Iw4w3U3d43mhg8NLxrZjYUDmOed2n2b1
XMM/6aNs1GGA9wSt+/pmJMFc/pVck1QzQvO1MFXI2o5XjlfnMp8nvQ3FcnsGV2L5Evka73+64igq
BB/e7Wiyy73+/b8P0BlzIYzOW3Ht38KobpptN80hKGdU1rS1AxLHl16tEfsDfPWHk3R0dqsqu2t4
dcGALBWuDPhnpTAWGsjTBeafVLeX8WW4N2GAKVwMeeyOWR0F7GHa3WRouSn8/ncs5HaqZDxZsX5M
E1I8REa9jlvZfkUe0zcBYZFsqkzVPsRF3Elid9Iob+iIJIfIXCl92FCRUXhwRYOeR+SkwunE+QBx
N8pD1CSC8AKDsKq3anDPZMuCy6DKhSaW/M5HOHTTz8thI6iyKlLHnPRL0drNnCyLNlGzVC3Md+DM
3ESOhFyEvWuAiWdUHKg5LwXGr0d67EiZbriCUoCIz4ztm9c1XU4923MJcf0q5mOQfyPl4yy8uJsk
CacWF003jGvSdEemS7TH/Sr3NtlK9GX4DEHaBBfZA0AUHCae560yKP6J8DD7+i8W5ETOiI6S6bR/
ufDBh3bQ0JtZKiKDHDvESo9cHgqUYLmU+YCeW0FnepyJztkyosDwbOtVGk/GK65Q3ZkHTlVIthFp
IvXnYbJxKvphGa+qCYz1d6YEDyDZ56SfyybH0jdu6Q5n/2dvn0PODnA/6XS+XfMwsbWA3I3HJPIq
7Ne3VANlT0JY1+Tv6akHEW2kaKC2T7Oua0pR5AUrWemgV2F/m/VFPNm2mBoQsPWaluTRKPLlvWE1
FuQERiMULHZOuAQ0GulzWgO2Bpgy3L90e5LpM0e2v3K0NmEbtS8ziTMWzjwXfU5wWmHRF6q6kTLa
Vdkspebbb7UiFWqyhaox5vQpGEJwVaDXN3Ku1u6wrqCrrKzKULsqtgpGRRKt4waEmN/XgR4h2rMX
Kirlvcx7reQQy/55Ybylq/++VA+iMRDmfgpk19hT6VbDydm4PYO4+dEdcGyJuZV2hj4zJnn4sPGQ
ENqG0kQ1B0rJx9FAUsDiyROuY29mhTBbp0ENqrrElALdUrSbZbQ8o/GWRf6NZvPl44wVZuZ4Yg32
sCpDPA8p5Pp+izBi3SEii1PbzAsUvHV489CsKXD/nBH/D4yVqXG+qMO/a4wJdQJpxWf0aHNfO4oI
1oEpi7PpfG0wvpaJTA+a9tWgrBKz86oLEVxEhtqO80ubzn1/RWr8EqcebeaSSa9o5ZCodWELnxq8
gNio1E38oNs4Tz2zg1vFgC9sYO0KVANewdScBWoW9z4Oipmbyf2dlDXcXKco4EXUTrJn5gDDGxlI
nuGOhZ7dw2pfmFg6pMR1yS2L7izkdm8HsbtY+mKNnHU3AcDaUYqgEL323HEuId3UOzqPRNwOlNxx
rUvgVTJMCIZUjhR+uKdelarkmEGG7PgLIlinA8mhv72v5HDLobOCU8aJnkgNqog07JJ6ZU9x7nDl
nZp0qLyZdSChZr3TcmwgNz7X6Jaa/uifid6vy7kHZP2hnCzUDS8yxR6kgjId3ySh0IT6zqMn6QFG
h971+JSW2peaPo4IhxTVXgEKYKSoih4vIRBJApb+bhyvTXuS0LyE4haZkJfrl9rjJBBEddc5pOoj
nEDC5eVoFeQqpW/5h909h5/Hxbd0JcnW0dEpPd0SGJ89Gya7RrJt15ioa2WeLKNPgoCFMDOcm7/H
ntvFkXjHpweZe6PfbHJCVndxSLuPGn/I3EtoatsC25BPQ94O38WGAe5Lvk4MO7JYnpzpYSpG+bJV
cslxz+WzFzyy8T/apN3jtl4EglsfFU1HOaDuJHltd4+T1waiimhFVu9N8ien7JGCAEyPCc6iTnDB
vDP0ETBlUHztgpukYOoYYbpDlVtqQOgm7L2g/8QH+WdloOMaaVZ4OyBI8Jgac8HUw8kuJ1/kDDZg
aubZsLUoZeWDgr1JJJcjupOaDBbonFt6GGiUkxyrPCt/QLbfavYGhJPdtd0GnNm3b8erAxlAiLDe
TFZMX53k1M0COXJ+syd85uI0Q/DHYTFoWA2DnGgpsEz3JGLZpmvUlHbEU2ClZ8bkmO7ggqUV9GCn
UPMJXbMcclwU8sqIujS6qO6LvEngyqj1U8ZpwD/ND2mGaPWsXaxlGkyQcDPE2MA9LiFnMzVxyd82
iyFRW/MqaAwdcnS3K6BKNBMbSAAEcG0bLjSpZ/M5+Ra1jMXxWG0jE1JhIRm1tiat2ggHq4FVvtm8
W2H8YaTowluq3bG/fjvx9MKSdHQdXCSz8uvzUza0xfQVwjaJytG6PMFxs4YggOpaOybUDEuW7lu/
XFh8U3/17N/8BdMJI7rBbfpcKBm3F6KFMCLva6lj1zEp4PBdw7orSLZOPPuxxagB5kzg7MphFqSw
CaAHtl3HQrZ3LFYCTMNX4Ijv77+qnq/FdljE/ur9v+eye3eO7+YfQ/rdxQbwYzhSgdlwuNv9OibW
F2AgTt1fd+Cb0lKQZyTafvnMD+b67gbByhKKyW3qS9ZgxjrmXy9D5YZFJly37UAXdzhzJel9BfFc
Q9loV4Y2ZKkjdrM3WuQl9fQdfkXs47cGdGytY6DeYo1gKaPDw32NI+lRPYK7QumdWBhFvTlbDv8J
sqaF/uEAf8PPgwacYVgRL+ThW+qDmfUEF45AUm1qb3xLJtwPvrzuhHChqsuYHTDyAn57BuM3lTo7
gQVD37Nl/KiogyqNN1651UVJrczIL011W2XG3rYceRbf9q2JBjNq+lAqNJAcfibWhl1oFxBRgQcz
qo4tz21bOCGQ2L2MXUPUQY9rTeYuunCq0flvuOYsnl+4EG60tyQ4rJedOiemyZzYMbCh1Dl9sd2v
33WRVuQhvszJqL7lj0/ZIOMhN9IQM9tMF17R+3f+qEqMMDX//nGEd7UV5Nd70yLQsqRvXxucOHgV
sy3NYlUv3+96hEnR+PsaI0LwQafFU8URLMJy4uc6YO1jzDM9TnZ3/iNmQ/ApRK0bxnSdW+2oezka
EfMXC/+jPv/qJZGlWdjwGooyZpa7X12DYyBvDQLDpsW8MIPKVc5kYWOqFpNgXFrY9IXT3R8q9LJt
zztbVDu6xDEvJdDOLkY/uDzGuLAi1ipJbS3a8T45ehxXTlWjoDn3PkcDCaX6EI0MVQF6tUrq5Hmo
eG3NjBieiF0y1fNJWYguIJr1ttlGrh8/aKWu5jt3RNTicK/AaKUwPWsIpbzZes9WbpZghoQ2ixsL
boOtF68IsCsyHHukwzddeIgRIQ17OEL/hK/QtkxE5yxYSz1tbAHa/BzdZjrro4xp3kkjtruQHBrA
r9NML4AbtvZZ718qPVwK88mJpseublF50hXbbtbJFX1qYpQsVo00AYvwWHmElF1mX+B+cuHqPYpD
Q32Q+Z4pHaC4v8yhHEK1rHD69YelODqXoWh2sa1AwBxWAdSWDwW+WypFX2oQusmvQxNGUHJRIgCL
tXhvOyj1PsqF/2RQ5ECmMfQYaVfTMmaQygbZT1e3EzsPbyttTIobs0mESBcszuPQYDoTCyUp8PPA
487pwSSoE0jFnb82mprUHw1FEsuQXd+LRLIw7UjYjh+q6tvZGrmCYHHjJBcCsF0i5gRN9omNA86t
OoJSP6f1Ab/nGnqx418YTHOodeje4Fzyi4pw1gmVajeiF/3KYBsnhvcJZK6y6fOUFenNFhCVLT1N
ubfY+ejI118c9R3Sv0+kLoFSuuKcCk6VgN9j2mkSNfb/xrUyFgzvU2Ns/QrfIDC8KpE/1sdx9t6p
MWzJLSpC9FKpGzJ+4evL7oJVExv/hxmXTdDISr2NSqvqhxo0wA0JDW2ZtX8sHpW4a1gZu+I2UhZ7
G5MUmqd0SFfQjusakxz7OG556J1ariYD+c41+gSDrOOlyOGvPyC7L+tqNogwtSaU1TgEl3u7BX0u
voXctSWHM30CB4QF40aJsgaLPrUEn6S334tX9xg5aHzPX6YsiKmZP5JWt8KxvsjoDyzCsMPmHuRq
AOqET5qnpP3Bl2uT0n1hzHAbp7/GRm5hBN4+lm2oUb8gw6T/wIU1TM/xcRBKRBxx9s3D6YsBUo9J
l9Qq9lrBesrAL4qXLQgISfnPmgAO1joPrA4dNoS6j1v/o1m9A0ny/RQkQpdEdX918H4njKurWuVe
UMme6Z6gR9ulrQEMiFTqlcJ18cefWrVy9RGEo2W6gAdQWGHgzUGhtKfbLJqIoKIRj4ar8KmSbTHV
QE6PPr0qp5+3gIcdQj5R1HrkU7z8cncx8Uux4tpB2//OCumjEqIwpzYCgL9RIMQxH3rzR7J84QQ1
LaPG9kAzdn9UpQkIh3H7Kwp73h1uP1cs+1OEVOBc8zKitXB4tFozbvOAIdbE/HZcnS9e06dV3pQc
jbebgbdiHkdvYebsWUpZmYROa0pd5Vkxk83rQH07x7+xDmUG+YcziGDZlFhC7Md+EvSj6YSmxQ6n
Uf9ra0gbc5akb8It2eAFBG6eUK6sUGRstlTgns9uHfsthAp5xvyXN5mjuKnd+sBLrt1N6zlI5hi+
r/5TNKJ++Rax5d8JvC7jgXpxvx83hoBTkejFy7Cg6GoYQXU/u79UYoxA0hHi3wJBqx+o2HctEnGQ
aIVH8cQjMjqj/GPIoSyy7jpfawOdCNr0eScIoSHTFkraXsiBfrOX7eLwPjPbegXwhvnrwUb8eKdd
NvWKszC43/hs7sovZxCEwJtWdpupfXdddhgBnbJO6SF28eePzPplpz3LRbJh86H5LGjL5OcBFI5c
G5d1nTnx5aVSa9pAoSmocoqU4BlCad8NcQMwNfZeNPTDOCHF1cTepvLDzVGmiuB1qndYmw3aKgn5
i0rxA46wSyomsma2ecFJgJC/UpsoiYrsMeFtmdl49eaxcnbv3YkK09e5weTn+dP4KMun2xTxnJyu
I2f4XTyOKGXFOUfF9XOEGfAMNayqW8QtDs0VMNa9augktGhP834Q132530uA1xpmNA/SwEFNnQr6
m9i+KpM5YAblAONV24DJ6XskPbMZClb1yJI8NFWa4KQovUSPaJBmG6jyjRFC46ufVyj6wIG25Uk9
Mu33F3BDso14y3GvkzhHFk86y8rEpC2HKApeQF7buGXGqOJrjFa83a+X5gJVeCZIfMS7XMchKEQQ
heKzeLxhkztNSx5eMDxVExNWycJFL0ZMe+n7PsHHsAqJERgEuu6tF4XQkYA83jnbawV3OdMFbmup
EfHP9IZMInlniHlw7CNM0XRiNhYyEd4Sq2Ddg9Y/Wa5s9iqcUzd7IWXA6vm3DIaSbdznl6N53Xul
uUFMEVZP4UdKX8cOU/uHzvS5THi7SX45oppudp/xQb4I7PqNckSy1W9HULsMkumJiwA+o6tf3jFH
8kG4dIXF4rhvTWzuSAtHIlEJNDXsQumQOoLolAaiuEXYKtqfjA2YM7OCOkIkbeFId7mj6/KurncM
kvxaRipotwrBLxvPzRHj1W34fTvC4XOJ4HlZWeUAh1LVXclT9DtbyrAfV+7Ydc0zuizzty90XYaN
ah/qpCFhQZNulu2VDXA5Teu69Bg++Skc/Tb0/BuxJIt9ZE1rq4v5Ihec7Q0fbzNdaDUU4kAppanQ
RYxxIhwHVxRB84AEKXCBI6jVF1qNm+JnZ7eJZMaDG/M9i/h8luJ9o3/z8JPiFm7BJ3/g+sW5T4cg
Qkcb/K+fkI7I9swc6PmEkkNKrxxCniv20ZSmxOsFfyh/Q3PB53gZNoZdidRDBAuqRbhUH924Lhpv
nFuQKvWrpAOhwoYJL/1vaDzognGJ4N9Qdlp4eiFRzu4tO/ngL4l0iR78GKeQD78ZsGPkfK58sMVI
BhrVVu1pOLtXM9tPuPexsLXEELAr7y/cXL/YooWUXARn2vsekeXXiLNssSmWp3u4s+P4SOscVZXG
z83ZojNqV8tVU8n+cq25a+R9RFCq8Z03qHvkLTjZqf5NBtv9gvm/EBzCJG+qMDHRSmivQpgf7LNQ
el+qHeVlB0l+O73CWpQvEa4PLOx6BmsUobcRCePoR/sSIGOvAsXfDBOfhhloLFvPPJhAMQnqvmmb
5LOVXYalFJZ7jmbBoqLYlD8+fMF4J6aj6J4PAmL91ylt1a5ARaucQ/AE+pOSeHEg+hL/m81/fSo1
9mA7JC2nstmjVb9GYwpPl5yM9nslVhsVVkjOz/Rmp5AZH3ciBtiO3m8tvKGfVBUaFyJxT+l3kdiM
XsoTn4fZtThE3W4t4JDy6+Wb8pHIqKCZNqMlB9VrLXQ7XSRhck1s5Sls/sw4DPCBvPe+rOhN8l0p
tQZABHEOxwOAtQduZDRbsK5gyKARr0NMQFf0womGvmz9v/VZMee2L9m+LpNFI7Up2vDC0rUpIIoW
GPjT4UJL6Gnxp3K5CSz0uB9X2hYmpUJ54cOvodwaDWZoPgtZcLkAH9mdqQVZtAgS8oopT1NAVYFB
OUiAJdwsRe5hBThBoCHuT6JRIbeyPcB0meu+sJLajkOWAeY0xaHu0PeUkquDoOsnOBV3uL0JNUUS
baqB8hGHjtHr8gT/Uip6/9azz7/vvLHmaPat4q6XYkxE5wfq+XstoSrPGVr5ktZbjtQWvLkwyTpk
lByvBwsZpF8LcijrtVolikOHsVl24owPNd3Mbvz0X0b2dcNOADybLI08RGANFbMbON15nlQIuab7
ru9rtiPVxUP3CgU3QDrNRPgQGSAQSwwotc40YrH84TIJPD6dNXID/3TZy8MO/Nrq7vTQ2cF/lUPs
S7OCxyZZMmt9am9HoafjDzPP0btwk+dDpTG6wIoxPGlf0oKusavBRFO5225KM14/rbFc+P8whD7C
Q5cCH+ZE0NgohW6gT67C9SmZ85Sq8dUfPz8oXFZUywgKU4bkPoQmMpSCaqiSDVH/o00OCnBl0hsS
150cX+LQMM0QbTwpT8+3FZRVJCgRZxLPUqdwQHvM4d9Y3WhfX2YUA4KWvFvqaFif9rK7U099Vsvk
CXhIiBDFuq9zWORNv0/bXkxGEoazqkls6lIo913WqSETK6uWcj/ChBHWxtaZ9Yas9pzHGY++l/Ur
2Yevx2VyllLtjhwUrvyHyDcYkV3zl25b0M1kijEd8qmVFWTH0g1adja7zwGF27ZoAhhqlPjlHJXT
+f+sgAOjYhU1u47gswstthlfHgugXD6G09a0w6nFNP9CWzHKjAUnbB5UzsN0IjRTytDEiVVccfby
K7zywOisFQiexHJGYybL54a9uS6mAsBIkaKAUmuAh3b2HFDBLUk4Rt/OU49FkT8a1HWygwbK6WuL
OaEV1s848DK/wBJAAIV5YTvss/plLtS4TrVg/6aaWyLFbpM0jjrQ2zzVarkUz+N7KXpXdrz17SLM
dDYWkxf2WxXJ4ccMwIxCyUX+NO9Njj5lLGSPQST4ulEqwf5Sy9xWwO14jdCoYiNbs7aGnhu077dq
HPAax1tH4U2QRq4It/iwEnQwHXVbWys5cJ/iIVIUpzIU9w/T2S9gZhJP89SLQdVQq9z2mmZVlel8
shQ0cRZhQTPNn2ncDhCkfuHp8smlVjGpB7CuPavDtquDeUp7pqXn8gZ1AuUJJZNnchjeBdbfwtiM
gS0VBYk8BEH6+A16qDofj6ueb/BylzyARLnryZxF94QRzYlmQQYLDPo9g+xWuzy0yBcVZVEtkXiG
jL0MtcEiR+DghNbr5F4NjA96qUyMXbpyFboPdkADWuIrjymh3gj7OPDZ6OYibY/TWvaXQBlPVCAb
YpduHOzBLCnvfXbY+pOtQ/gubs3/MVjxXkWoKe9bKL/UE+vy6J4JLTz1uVMeRvLhlnDNULimAP2P
za18VXnMLn8rnlHI2XMN5FIxVvp1rzFeutDl0o2cTfH62eOkwbnKjxb8GuDUdXwD32JrP1htHRYl
zqO4RL2A/v9FOMAytItBx8+AD4c82GKrVaFQRWxa/CUOnwCWclHoWdiSSQ+eaPs6De9G/4FbNqR7
wsd1qWTFhxMPFY2aHmZHO+eoxXt6T+1r8TT9muDaS6jECu0EihwnlqGvMgsMAvUMw0fMcb9zMLnD
P3/Ilw3qLrHDk+alC4R8zZmByym5PWyWyIkkA8JwRGa+eQ3BxxAtUmEsisI16x63iAtrA2Pscv6k
CgUBjIdJXC3tS4RPEsN3zlM8HmKuE4p5OAf8Nx5+70JXb13Sgt8O1sp5CYnysLQGFWK2luBk7vFV
jxJ7PlnZmZjN6bWnenBq41xdu/IZEENcZl04Ugv9uS7eYARhu26Lvoj6hUIVNmablHw2Sb988J2l
AkOfdWJ/atQs6loG0ONgQSz7/laF6dRsQZ6VqUo+LJGiUAgCWThPgveaskJypIEDGLpaxK/oKFGc
JwK7M62yt6HbSO1T+kb0051Y8s18e5yqoWdUONJLOs9M/3mP0TlM/YGoounuHhfUkXRhv9BDPrtn
Zv4ke50OyYtcBhfvEZ1PsXMX4oKzaW4Pl2fdMm4tW6Ii+BUc9AYRLl3pMy6wmh5mezsX8WjBPmsq
E02Y7Loq3wISTEsjyA4nY5+ILDpxOKYBYz2O+e9YdeZ+dlC9bfQr+fFXmHhWEs3O8J7LlQ4wTfhO
xEscM4AN6J/2DhN/eXInamRrnGEpHIR6GH5XsuvDEVyqrupgrDHyDckPuiS980/t4pHntujN8+b6
qKeJTSrpkBqvHXI0WXwB/HqHy8Ktk8VA7AarxmQIMK9DA6OUK4tF6q/eSp26VVQ9OG02JFfyASzs
M/gs0rG1E9GzKOqPHnF4ttALAnN6OlhNuQ5eO/h3g8255am2aspyCv7hSyI798H0KZH/UCLU+jwl
qB5np+yOexzluuixme3yaEF4vRsfQrn04Ixp2JoIbP38Qb1vbllgrlgLJ0DtSgsvLywtPoxcsUbl
crgek4lHiuQaAEautl4tjS6WVjoKnbEEjQxnt9p0Fn4l0gBNs/Efb9ZmgYSL+55tTQyfIFHWjrD6
J1dFC+oXC0UsCc2qZn1bt+Cy3jRgzw67eyxJAOWWKRPNlog4VHyuNHnUZroY07eoSu6ERLSZ/tBG
VhZavnrW4uoZrNtB3yYiEqXD0E3b/5iljOdcFqr5zy5ucYQrIEQ0ce8uqigX4tHnfcMBQDJb3wlg
Czd71vPo2MdMQIjXSMpAXaDp6aLg6uqjnV19odFAM9cs7kkiORIYvDsdeebvXjVILGrmykMaB0Zu
QIX6tzfgO2i7jgh9+3Mx9t0LLbVweO3Swqazpn60ewIKF/5/BgXzfdfwjLXWhI0ZDRKaaU5M52I+
RoYRkGA7Eh1jJv7Ql3VArpEa8dI2OqzJq3GwyWRiPmfntcwzMTke3cxL/4FBjXwSvHeYgAUE4lbJ
C29H35ZvQ4oYGM6ylaJ/IdE9ctwzl/MlAACMAYERGBofv4m+rZ+y8/6nMBTNactcJEgnNi1VhBd5
7aWyU19nHX7/IXBZzYghzugpDgv4dyg7qK9v8vjXLj1p7O+0prhkcPEvVQvOvka8ra1tQJI5POgq
pkjNe8920uCBIsY5vieTpt8dvBkGOkFl5RJODK9X7ny2uLG1RThNCRPtKdCsCdD7wLAxF5oKhl/K
w/jYccYDl5ZIL91DJc0nUgd1yGKHE5kg/Et5y0Z6ukc9RQ0v8UPJdWvN5+R2YDCX9gOyLouxO0p6
zrGCGr/yvY6eMUy4RKBmsdDW0pVZA+RNyeiEH7RA5BMmm8KeOS3f0ErblyR0o8QKN6k9ZjbFt9AP
Ia+5Q86cRw+w82Qh5HtZ0mTkE6hfPXv11BV+X3hbNysH89/5QyAw/sgSDNObxq/wfLONTgHv8dpW
ON53CnFjSKr+TijzfCW+J0KX32wbwox4um2aNufCdlipiQUp5xzPg80uMGzj8J7exYP5YEt+BXjH
MzmnR4/d1evnlcsCYavltHZ7FvRscS77sDFXc1m29mOI0cj9dDMGWmg7nhEPKqoTgKm4CPrFvWs/
bFPuES0KsvrtkmWK8vAw17Qily2RylX+DfgEsrW7N0V5hO5WiDQwOcIuiaaz6VUURs69Y8pldVkP
FmscdgmFO1fBl1fIIzd2g4D3GS4QGLdyunw1nXZ8wudEx75Q8+mdqhGqPbsQhwQVQjCmNDcAqHwu
3qcceBJWlYot94GKw9gkD1vcsXDMB6gafan1rSutwSdYXIbbqQokhPEVimSjOqYX+dIHVq0Idwhq
lR7yPQJ3pwBSEkT/fg+qgNeahodZGnpdGQ4+HQzw4I5YTnpS79LGwQ+3v8Zi0mDz4gsYCx/bnBaQ
khQa1mPrl4N5rFONfwhkK564AqdvjpxNGsSM+2ezV88VtSMghjUe2q6clfXdSPwYrV9Upj58YbWy
r6Cl2kF0+52qTxztMHp/CWJXHY16lMn7RBuSZhCH35g5U7mh5r1jX49ZvZFF+slMZjB3gxNHwZwE
QkkdPYvq33dsHQYqXDeAh7Wp1V9wvVN1cxo1FNTt3/PLjDJPJbogA/nqqFMlJRKqD0E2Ck5fqeso
NqMQ23BTca8NPKjfIXyjCeXITahg/uUz64NS5T1YIcUCuz24X3GTeK/qQoNQOVdNaMn+W7/ND66w
vTryPtIhjScPRmF3LUjhsn0t0iE0QyR2x+UaRUHkfu8INqjsILexzQpXxrMYAjr2VlK2zx3KBdeP
YwIerwxdtrbt0vw5rJ4F+IWazE9RIeK71YBU2YmVdxJmcD4GKXvRzZDs/bkIlGzZadYbt73Nrysu
cjvtGiGK8cqJ4vFyIu6Fa9BWdKgrwOIJO6s2xvB6mCC4Qv5TIXc2XWoMACiMTFmZLZhGiUbj33pn
0P68OfV6r/djQDRK/fGrDClkZr2PjdCwHQW7ueKxtGQiDsFObDeNd/TJ6ODfHgtIHrCj5h0WIkzg
dAT6hymd+93wNrhyJ2MjRrBdI/hmR7SfyUQtyjLkMyEn9d6IbsCfngg3hLWuCpIAwZA+CehmNjOm
NbsOPk3jXi+XydOAh/4/dm5qoP1MmMXKlVOoJIuZTlVvsjGhLDMUgQWL7iKf1KyTW5VdxK0/retO
Zzl2fRgjVDD6DB/pTmBc93LLMIhudXnnxJQtCjughwneaMAVD3kF1IrMf3OZ2lkMpLpR7L7O9b4b
gPEEiAhAs8WHzSqTmGHlANBT3NIc93kGfJ+UfBtl5F6tLzsFYrO+TxrwU2aP5gPYEqA8thVZnrRn
jlPnx54l796meS4JaZI/he51l4H8h852nnWpprV01YYSdFaV/FOBI25pNbYVFTlwpUr0250As93Q
oi9KpMwFN7sHf0rnnnQZBPlgl/tCC/9gITUNKlH9qbRzvPDzP1hQob3V2pW1Hqvj4swHpIpLL14Z
RH6xrx7Lha1MIplYWynkNXqsVy5OeEdA6XMbBWk0gPVesKBw9YPFXKLKbsjcWPwhdsKx8mnRiYxh
rjfUZHkaTvBaynfGzXl3J/lQvy9nKnsuEDvzj6N8MV19XXyIQc/stfTwJ+PozCqArC3rJqn0TyKJ
6o+IEfnnSaOpaNpG4gnW/DU6tQZ7oDGHLrVTtcvkx7ZPU+DZh7tu5s6VC4vIhwGye2xAeDpVLjJk
4vpGEvNC2emwvAprRdiX6tbFhTsFzdjkva0hfIU94tuH2jStmNBmVKOTOUvDts7Pl67uI/RDIiq8
vZf+6+bZggXz97fiDBj4Ubh7I4OkqiCevy7DJpyO96MzKkyiEYUr91eU5CeIdvSmcQT4mSoYxYcf
FzjqH/lOfZzoZtL8j0mqCp6sJIVJHZbSa7heGVh784rYXMHzIQOAMmjdg5WBSRDK9wqCoXKX8/TC
LsLXLWszlLFoKwsSVzHBN2Cn+S718ogZfJ9WNuia/q3UCJ7YxOnMO5lZyWxpojp60OBq/2JQrE4r
raDwdvCeCJ4iF0EejbfDTFr1v9EtN/U/XzmXsc9d2bGPtrOJAzKonmyhqeS79f+09RnsJYq+MWMy
/DOvILGq6fDi1s0aOxc9r4CCfwS6clVbao93wku2LYeiN9UQtJpM8mwEiLI2iubB1328UYkstaN1
Rjgmnf2Y1IBFlhk3t0m4lhIfZB/KQaXEGjcl6Yp/7SN2QcOgj4AngmdvzAJuGf5BWQQ/ItUwLIrI
skfkUp5BXih1rMRk9V+4FSpbT9XCDTtplvJlsUrilULk1R24MIxSmCBqT86DpFHNfzKwi+CV/BzX
Dg+2beFVy46j8aD+eBq+OFtCeo/dcbhwSYLzWrkv39zMZUVTLg0BzPdTLNVr1nTru1ZDheUYmRRG
fLNPP7nZm1Kp1/ZVxvMak3wHpiqqSwpeU7+JnqrjxsfBMUMqbqd53o2i2TqUPcmBVy7/k2whFYVS
Ze294QlszGphbCyEBT2lZVWestMoY7wQJzjZxcr+IBJZs0yyQbNC4b/zbYZXGZxQHpa79pyxyuR+
SaO1Dy/TbC5GzJn2fRCN+B0JuTHcPpuAH2eWginr9WVYffqMKEVDHkkonTHELvZEBbpBFfFmaTtb
pOwRDynpwrj7XzzA3QJCDGIYGx/HUvp4e9LlxzCmrDZtKrVdY4F9MSbp69dlU8sMj9jDwROHVVtM
/bn+iG9Q9sMAG8vK5Z7Fad+M9D4y56P64wAV54Jcp0RpsLJ/Pxkjl6dClRToZCQvmqqljUsx61Yd
8qsb2VHd6xLRNMCEpdpS9/FKEPDoLsAWzqXDxenU5zThwU8fpk0eBgVem6Fox67qVH8Rr/wwTrgW
bZZR9L9Teh6B4UayfD4/PEQjplGfaLTPfYNGCqHwPE//c8zpr4SkJTPrhR8gjQ+VKKtjIVSQFpxg
wyja+En2wQs0H653zPQpz3a463vjneocXpflR5otE7CYIBG8x+cQkbtayV+urqH+aTcZAmIaz1DJ
VAECUSYkciRp4PptpO4zZbXwjqYt4M6Mig/xZfMiMBfPuW4+L/Rzajd+/JjWAw46n4udNInqxtg3
rxvErHxI83IGoxr4Yk0zL1x9s5Nh8BhLdR/pVTL41JR9HQVk4SIxLXY93rloKTZOhtJMY/ZSQQQX
vDrcLstdUJzkBY+ldf9JjZf8uWrC6+gkwcrxPt3LoWAl7tQ3VisyfNGEl5Ld2nygB4L+saAw2z2/
wpL4L+0XnyGgggvY1xTleWLJrBSr/WTU4IS5ZijyRm4+lvrUwmbs8CGUIy7ajlo2WRU9gFR9Z3fU
u6Dv79Iz9KAdgKbQpRBI7wkwi4lBiaivUQb96CTzt+KwyDcYfmD4UU8+dWeZu/iaMUL+2+g4T055
Ba0RfC3xFEfG7wS/EIePJ/j+RRReE5/3tYVoDnm5YFA3pzrL8sL9Lbp6w0yI4SG96foJeBHL0GY9
IHBO7lvyt7Km/b64IkO7UnXcq3oNoAp4bqHuxnRtC8Q97KqfEgRp5tOl3TDNXND920+x4SomwKR0
gF7ibf/E2q/tO/OE2yDUAoXQVzVpvcl9SRYkxloGd+hhSYSpWjn5gA5eGK+xNIFF0RxMk4odYbT9
Hy2AcxyamLYkAUAhOSnQNL8azPP4GGtHACg+HjyGzmGEcjjvFyxpvNgpJGD8NijYGHfjQuT1MlDv
1PWqbl5rjxciwiV65Q4IMlxfwT7syQYmjMmXoXkEkb9sEp3HM6cZQD84myMjhJq5M498ERs3nujr
/ZYpJJOZ4PW+dJh3NwPo7r44RId+PK31DV6KaqkWFgBDybTfE1SFbh8Kk3nAvV2w8WOHZJgAP3cI
98i2xZjwb5a20LwUzE2VCnCHknJG8WQZaVwQo/Tl7xn4vWIWN7nVuGZ8WBERZ/cnfaU+You5Lw0Q
0GYdFKu6VocgmlGy8pI2k4g30uuwIGMm8FRURCCqJl74pk13nX+GbYwcUTb8cj0HhehLdOC8cd4K
HnW/TS41rSLdBU8imZ3977Zuhf0F076eNgMHYei5UWzWSlmOJ6R2lisvmXIrjKqfhE+5/wJPKgcQ
ASecdeJ0GkAHEtaDzfukGHw/DZvz9YB26aJNCcSyiuCmFCGsqhz/jBA6SWtwMlxcRHnyNCcLHXLo
AgauKDswoHY64Zj9Y9bLNExHH2IT/YzoLJrQUtOJCJi4SmNnCgeTH7jco7Wtt0NfwNlRMOkukfWl
NpfTU9uZIM9AOKpSLAzMB4stXMYHTjAuu+rF2JJPn4mEBo4I7agknr4elSAeJbSRRrHtbYTZkye/
XHT2HiZAOZorbY2FVR6PsIDZVUS0X0l6ATvqdQRfoYSlNB/X5fcpF92bIsAvNHjh5LDU6xF+AGpr
QSq59SZmujBnTbgYBmmC/78WW89ty1Yqqplbsdsm+fVCZnGbiyZTze42t6D7Ram+9e8cIW4r+QRY
Q/PFrwfBs/4glJPqme5QRVVMm+xmV8KVVOb3FSqMkusxpRv5uLSq6Lfjf3vk+Tn9jiQN/VMA8WQj
mQQG2rjn+ANRFOrS4thyT2fj7wnnjRWWU0ADBlX2ueexp7Mff/NGDK3fJMWkFfZnKj/L2GLzIIPh
J9/VvfmrBBH9H784G17Mnp14n7lYZNHhRqf5EQpUtvxNCax7FOowFfcKds3DFtIbNz7D/2NsfL03
h3UCg075mU6ceVMYuvnmigu+nnuP9J1H8+X3OU2KFdDeC1Fgcl3H/YtAPglYuZhki3FPQUh5Z95D
bKM5iy/ACmyJHn1ZKkHlMd0ipkfzgtGiueqjUhijoz1I9Q5XBVFYNfXlKbQoPhjXgVlj2uZJ7cOy
VYJ7CjUh60GlloR+IEyiwubplZYRH4ry+jx1FcHHjgObTiAj1ACIxrSScjv6Uoqs/2DUYSuZ3X0m
fgdgw7gPy66262cx9bk9t3XzIDHBa6i9HD2YugJ9HWv2CNCdqe64f53duaL47KliNuzQGD62M5G2
R/J5V2oXlP0bYpA8cwCGlt32g84DsMJ/DgyOR9bo1VvijAnj6RF5Yq/AvrQqg93m20LOQAM9IvLq
+Xpujvf5p5JtEo7l8geiPcQI+2octCqubrK+PyMRjewJsKeZtyd1eu7vzvwR2qoi0EP5M6ipGLtC
peSSrqPQZhizo9GzuYuqnX5r1AUid1bZRatEaYCuZi75ehxUZPl1PTJbAIaK/VTXqXDro7OeyaOc
/e+fb8qpk+RNfMdfi2lxHQcWpChVisnFf6oNWKIwdpxhuZfI1tPR15VI1D2qDtQJ9FOZFewHXVst
5L4cYRkFBQ4kfCerPughFnjVXXqBVlp9R+c2ugZ4Z+TKh1fiHDNACGqXwCmawozVqFlWvwPpmKTr
dhA3jBEo800UEz8Nug99dBSmJ+Zb+T0X6jNqGTlhzvAM/NVq9P7Olrw+L0YxLXpPEpxI+ZXNfnlK
2N2qICjQjuvhNf3OdPPgQ3pLtyYodWrGchRtfqOMN16S+wPsZe2KvNEACx9PYZtNUKlbj76cg0G3
5SYx1WJNWEiCZtUJNeCMYwg2QPF2AhbVf4kS4YsT5j0aY2CwHjc4ubt+35EVYnoayW6AODM5898K
lK4yKE6dsYa4uxgyNDmrIaCaeknyNC6oODoc0/j91SddcSawyQvVB+UGO1aLxxD7hoO3B53Oaz95
zFZFVfjwcVM8Glg+Wbgmv4x9N1s6O64vek0YzJ0fuZldczHR0LxltZZViepE3LC34rEB4VzQw/0C
vAXlCbuSNpZGlXQSmcQtCEdHTgf0eV/j/QSy/0MRbzi9D63KtEUSoMAWD1XHXmuPrTseUydhbd95
M9mBDghRgPd8kiSlfKEKnHpiM6t8rXiNz9A7hbY6Xk2iWECeZCHjWSY3C0RHj62ZiKxETTxGRLiJ
V+8DgsJhRpj7nerFZJSvEBc7aW4ypTR9J6rFFovu+JX9NmWTJal88nmzojkSRCZnwSJ97/Btql4O
yDQSRc4zzcxxJPv+tZ1MArhLRjzC5L7YW+a1UBwi8emPB7xCc5gC3vSR85omGa1eSDEOvpKlM9mr
6YHvTCN6nKw4E0OfW5JRqYlaqB20pk8XXG6ZDyg97jJzm15lCQ93JiMJG6XZdObn/eadg/ZI9vq8
ckabyrS78Y8iHEhLIqqFSZQ+xXqHSyHjCxUyVRf1wVRn9qe7AArJMv1nmMJDDx4gVDRSVlhYMy8U
VyobEMvfNpLW67CsmCcTHgU5OqAnk6zg1PDq0BY8rzGt+F4jGRYRrnK1Y4Os5DeERhjDkTdfvigc
sGyHqAbZEJPZXRQvkq8zx71mo49X2bURC6Sv/LL7RqaQW1+6eb0BUEaLBxVRHuKwxo3/Vffjyg0G
mevo02Ak4nZ6kn+Eg48le66hQt6lD0PCu3rdAbXWh00h3JqqaMWujKhXWZCwU2tucEcj1w/CZfyk
JLZp9Fg/QaIqY/iQCdIv1d2uygcMxdZLRiVhgDlpYRYHvoNWuHnKvlxg6uM02X6/BYOY88Kns6UH
8FJXxK4j9FA6+4OhCov+S3YKzaGKawe4HLMfHewgosWXXPEEI4wVLsyDsxL7nNb9s/hC5X/fd4J8
CJvnDVjPtOGYicIdAsH+MCOKnGcBoOPHAzyyFCwHRSt7RxO3Jhc8SVcJ7C/HOJ8XkKkT22YFQIah
O2gGRUEZspDPNyItWhndGHZlcEgFW2rubbbq+SqeSi+SIWNvbSg+YAadQEghpgMGegIOT4Clhd5y
hyv9HRk1YvM172sqPKAUjUTUW9FRE5NcLDb5p4BsSJMxTEjxiUaqi/hBKqrZZlXLa+m288o4jhSJ
vUvaas4QIRHsO0eU+60ZI3AqUgO8JcJhancgAOphOaK2ZxEJHwtz0a9+H4pqD7no/28+oXdENGgk
VeYSIhO/pCZh/sUKHCH9UTiq6jYYs/wpv9opmP+uISQwsXXV80rE3XVIRLyfbAkJFVpYa//Ov8/U
JtvvAKPThONu0UxwDd0ZbWaQHdSvrI3pVHjDYQRAc2PHb3UQVxyhdacuvVZW8esCssz/498Lv+m5
qqGy4DMpDa6bJMJ6oTChYd2fvmSXL1DiWFWDI73eMxxAH/vdRgegRxJQVLp7IuWQQvkzFG/ZjoQm
WvmGn7yfCGXovejn9x2LWbeSsgtMxn5FV3xZs3+80nbpiU3zIXjJbuHa5GJKAI4flBxReeu9OKD6
Q5YnMxAv2ZweIOGNp00C+RvY9xckqrFvvNgS6Wo7bKEsr6Ubm+WZCXGgMv/RTQe8kQNBwsf5u9lc
u7CLiGrRuvnLNjLwFceq2ErmoRn4HXEblULPnJmntdpoWpk13iv88NqwMwSOZLu0rgzIS7jVFzFJ
Y9R9FkKXR+RZVGxchOE88GDAYxCw6Us7t5R3KBjSwRjeLLg7YVJZXvgMLcvbuAd3xB8uLgHP/7el
z6tmOBlwpNtBfn7TO9bP5UXSxd+IIJ9suBDCpj7gh+VlPKvqjANRu76RGLTpa0Rx1qUM9p2kJs2w
Mcf9xM2qHlv5wI6+tMe8AI6hvBBls39UrGXOYjoFkEIiZSnADiruJPs9uxiSeT/n62z1z95fIZnN
s5kAesST7ureRqov9IXckzpkcPbQZ7YXOKZkkAdvSyhGtNK6sa6WP0rQParSav9rWyTjoxcwG548
amtBd4d0/nDIaimgxL99zA0hCV4LK2kDdhDFz425UGJsTX8TbmkKeGSPFZJBoXRwPbIKYMBHiI3T
f6Q7EnnPeeHO6tY94mkdHKsdWAbF9roMNsavi7Jo3l1fXs05VuiBbiKgChJCF+Vbv1tupucOrK8N
jfeGxUztLk65EkItGA6Fhd8BKnaTiZIPC2wB+crU2DETgk/2NAqiSHw1zj2U4oTSuY9fRJnup0lo
GgEgKV5i8gdxAYvB0jUYcFCLn6MJYZPg1zKszsh0sVsTXAr64aEFD9nzuZ45VYNsA9QOQYtOPKLn
TGcKwsMZ6dTJ2ntVkOhMqQePbyQZPsor1FnqLuKACT7yhT4wgodon9vq53JSSQ9DKbfbO+xGvq9n
VaFCfy9CQheUNoCKB+pkh2O/ZAdxui53LldggFWgIz3zwWf7xZPPHGu+KT1rn5sS+oJDHCbUpShJ
eiVNEfc5mzW9m2j3WE6RvxFw5LaL8qYzYcLZXNMXrmK5wh6cJS53wpNSkRO1tAGmh4J4XNRu4e/U
/Oz7LL3ZbEmbOjhdpVKzCyIn5P3NvFRC21zpEEosLZWS/8diqkLVRXn4YB3Qvv0QZwgqkRBYHxqz
RvQ4mi1kyf2r0aoHHLZanecGaNqJ1DjYrV/K/FvzOKo8ILgAll8jG9ZNYDtFiSdNV3TfoS5URAgb
40/kEo6fpbRxZKV2g0PjAXS8De1IL5x0WmmbOlrzqvObbApcN5yiip5yt2sPnYF5R6+9KKf5G090
qsAw6U0Ae5eY+0BLIxe2Fi+zH6s7TMfeG6ESKLievwqJF4Mv8tc3rFsz3c/4jXCUqTnO/zExlTal
eMXYrPEd2tfD1JcsA8DwndsFyUzg+829jldgzF4uog8ghMrUxJ9lpwEp4sTGr2LNBz1GmefWbf97
OzIEZJTcUreN1fBeGLEx0u66QCxZ9Ct8H+6weevJYvl4Z0kDlu+j6VpbT+onmqqr6BEriLZz63R4
wqpaZzS3BF+gWgn8tmWE3fmcLMVRWPTUwRs/n2cFya6Cu8Vaqe4cdP/d6MoIJG6+gnyuKwsRbWAC
Uu4gNQM9HGfjwaSJthz++WRly8a4JnvkpQEGPUCp14GifNr/RYwbooPJJJLjiucedQ68fEPAwQlx
pUuoCQjwTs6rN4DlNbN8KsD9VOn9Bo2nyKSCFkTYNb7/HPf5tXGlA4s/4jLMJS2NFPOd5C7aRItQ
GyKsk1KAASwSucgv6owHLedEZnTm54382WCiWiVADV+oUXOeDrEFIeLs0bJodpwKJJ0H3pHWPTGk
EtrsE6EPnorE7o4AkjfFG7uBB2H4h3NyLFh05NioPRhI4/x9nJHWUPMFis1urDZQudh1BGIB5BGa
mJLEhbTX6aKorruJoGaFIoXNUkwX9HE3ZseWQF/TeM6Oaj/aTPYysZ5HviGl15ULRIa49Hr65VvI
jVIBJWe41bMD9DTTNWOPvnITjHi1SZGyvh0Lp2esqpmo6hcVotSVjVA9NtMQoVXyZCHz5HZI8unP
AJYERi7OY9Fr+PJWL/2Cp1PvO2cfE6ZLBsmJxSl9NBD+CMZjeWEcDfqtberZqrD0poKv9j+25eQ8
Si5sxYdIEXr98h9X035LiqZX55JvrEBZRKw75XTpqiefs/sU5caqhXDTV2UYqpF2aL548UPWRDSy
sPYz9GN/ScTafUuY+aEQ9l/rQ01yWtLbgRwm1kFAl3S/8lpodfR404Th1z90RrumNMvG4ffGUgXn
5JBT5v/GHYDBHlMZZYcusCih4+M5iNDeaNhJkCai/DlPTzAony5pLcIIVaP0mrv/6HOHOggolk6e
BKJNxhoqBo4WOMreInfZ8seP7ZaDYe+L+rV4N7jOnpHPzN4KAdxbuAFKROotqjIDjmbjAhVvzNKm
LSMhB6pmmynMu6zGZEB50JaJ3tzTK5gEc+CtltGE4giCz+mG8CfB3yqDa9Aw2tFNAXqvX2rEQM5/
b10KazhiGfT5JZjuitvpXFuD4ANbGQai55ZLsMKQcyF1NxfUt2EYWjXHC1iO8kI95D1ctL+u9HfN
9GcZ5nWbYAmVAU5d48BtE1vBQ4dXfQBKx4y81rYWlXZE+6Au/yShhShkwo5Q7ra8bhCb19EV9ydf
hrBmfLtrKyQsroQPQ0/yThxtBL+OZcMILoT8BWiTAQZNuCR5etyFz9zfL2G42cwg+PUbo9MJE6+F
AoTonS5UmqwGy/uycKropbPZAN2qb2Ra4yODX4vwgatquk/niFZAjTc6v4Y9SAKpgqQkZeSuVGTm
Y/XMwepwIUlKa9uLrTEIx7sJ7iNQo+/sIBHb8assRHlv6cToFe2fmnNW1Ycyg3j8MTjChT/Sl0bP
4/a9r02R4ymAmXr4moWp7cZLETFKkxi7HtlA+HGWkseaBgkMSJiQv6zNDXoP0PSS6mC4cd2UC/AU
swP/cJXB+EHsAQbpshLtRT0gmxYIRTP8x7ajU0Ug+bCKzmnkKSw1MWeky3D+sEMsXck1Rj8HTN8c
dF+WJLwFOEe+EzaCuReco/rcCJIOwzhC/Vcd5CrfCpGh4Gpd2RCjFgjwgrVdHQbUUXwiL0uMjaDi
b+f1dQJCnOEB/zR2kgTnFftR/OtNUndaMN5BWrVYjW1GyKxiCbkFF0uLu4M0OD0Bbo/bYHR/IOfm
Mp339QBFTw3+6rz/ZtXPGjNq0THalM/3GvW6XYqtp+svRXT6eIIxIsKh2jpZbMrU659BVICLo8Rq
Tcfrk4O5M4Z0E9YN8JctIkd23rlYxqTxK6DndlzC+gd0t5uspRZf2gMzY7ZPbTUC5gVyPJRRLAHj
gfzcTH1kMpLig/RGGM6rMQdXTmNFhf6C74zu6xgsr0xpzoGEqtezpNg+xRuhdbff6lptz8VwvGQf
tOZ951wNZACbtX1CyHmoAP0JqcwqNbY5NYNHuf1j87+dxQ7Fd9dAX4M7kxtQfbaUdLKZl7xVOx7Z
eaU58TCsYSufTvEZGQNavn77SLqwMNoRLO5NdFyWGXoIg2ThkAIYlY5r46wBTZldGhdbmad/b3kf
EUEPVjV+IjMbMJeagCJmdJQl/TtcQyc0HJEBXm7rz/KVdkVqw5GdXw+D1J239BfrcBI3QZXMwLO5
CJenIomAdw+6ZRoivUkqwVG1LsplJcXeUNSYIPF4NeUEmPFpDpJLU7gsEfLFNXKav5pEP524+iiI
pDJte45wJvOw53vrLW1FDj+4cqvI4SNEB65oV6rfaiWHMp+U41zPI0A8tCTh9DU83zk1P3C2aHGz
4F8vtTWAbScQmbxSxYNs8I22yO4JsaBJjcZPR1CBMuySsNJIFfv6SV36zpD5mq1jyzkITkj07M5X
ONGFXa5dfoOs3ubFnK65Ze9f3t8SECtkA3A2Y/8Mv8UmE4g8T2hoO8hmk4eGJfA+jcHJEzQYIaKi
PfvZIzjbMuf3yg6eWVHEW9UB9Zi+KHuvze8RaVCwu4RoZSJVIzAQUrH4YKb5jIX/zK6MEGaqJSxB
4aSK017cYrG0vP1BkEgIluOY34smUCLZd/8YFKHsTkghVwuuKjKtlBQQL5Mrvt2QWDWnxmSBCR0T
iy4Yxq0JmVLr4tw5VlTvxDd4A3Yn0ud/hgZS0ZC9kLnfFOML3kGCgbXDnruMj09cSQhmxguZFP9F
3miiDccJZXh+tLXT6gDa9Q0lrEZv+h30AkBCX0+5PtZDP6PFi/r99iu3Epj+yv7CkQ0yT/nGvnY5
4DO+eBWaMe1+tP8lO7+c6NOhxKb/hULlv5BPSQDHggQwzU0U5tTBYjoR4tHvAluNbr+4gNmb9StG
AZzfyZCxJg2OuuAu8Gal9A6UA0K1s+auZjmWdNytIPuD2fa96a0sWN/NKNyplfAlwQ+YcYR81wk6
4TtVlzzGqHDTLdMwMGzH1w5tklTaoPu6RwRfNyfyVVHO4WCDZpQfBJdBtdzMG2Danlz2N+Bx+7Lb
ti6RX6GatoMY2Q/fV3NXfoK0UHi3n5VPQjeyGYYxP/y1ptqB+R+/ITMwZEQarqmnLEU4uA57sNDi
Gzmx9xLhynpZFYCIEWpxGj520Iz60qkUL8S9Hsb7evEcbk3gBY1DZveelUAixFmQUgWCUYyIRJlz
bH342b+MCBhvZkPiKCzWk2JFfWzsojKghzW4CgJDlHMDpQ0mz5xtkgeRWXRjKwh/aGw6w3c7FY21
/P9phnaENU361uqv9QOhh3XymzZTnII0BmY9Uzy6LMzlBDWjKUYtcY+os5ucIVKjizPZ9rK/kMsc
KxeZgi3qGeJt5slTRNiEfxkXNKm4NKv68O9IqsIoGO5Z6H43tyidMKdvxGaxpkJa/yXEgo7QpxjE
zFfnmAv+WY5EkOF8VEy8ZU3rUTE7zE4z25ElavME0KOsokNs57SbcK2sahHjEjZaS1sokzDldp9K
YvNaVVpJwzftjPl0wc1K8tZ0aeB/AxYvQM8kg2Ja+rIJxWrh2gbFCXcp29MPA6egTKbZ8ltgwABD
O8el6TnHZDQmF+CkjhpKBllDEWpI5+67wcy/wPY6tvkvsYIboRqjy8yoAXvwsFgGZvD8uX3BtUvT
rw1b
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
