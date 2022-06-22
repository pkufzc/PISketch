-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 28 14:24:54 2021
-- Host        : LAPTOP-CK74LVEA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/PIS_1/PIS_1.gen/sources_1/ip/ram_10_19_62/ram_10_19_62_stub.vhdl
-- Design      : ram_10_19_62
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram_10_19_62 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 61 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 61 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 61 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 61 downto 0 )
  );

end ram_10_19_62;

architecture stub of ram_10_19_62 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[18:0],dina[61:0],douta[61:0],clkb,enb,web[0:0],addrb[18:0],dinb[61:0],doutb[61:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2020.2";
begin
end;
