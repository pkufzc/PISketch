//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/20 20:19:10
// Design Name: 
// Module Name: PIS_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module PIS_top
#(parameter 
    WINDOW_KEY_NUMBER_1   =  32'd6
)
(
    //clock and reset signal
	input 						SYS_CLK,					//clock, this is system clock
	input 						RESET_N,					//Reset the all signal, active low
	
	//Input port
	input						KEY_WR,						//write signal
	input	[31:0]				KEY,						//KEY
	output						KEY_ALLMOSTFULL,			//key is allmostfull
	
	//Output port
	input						KEY_VALUE_ALLMOSTFULL			//VALUE is allmostfull
);

    localparam  INIT_WEIGHT = 5'd10;    //某元素第一次到达某窗口赋予的权重

    wire	[63:0]				key_hash_value_input;			//HASH_VALUE
	wire						key_hash_value_input_wr;
	wire						bloom_pisketch_alf;
    wire    [64:0]              bloom_pisketch_input;
    wire                        bloom_pisketch_input_wr; 

CRC32h_32bit	CRC32h_32bit_inst(
//----------CLK & RST INPUT-----------
	.clk						(SYS_CLK								),			//The clock come from 
	.reset_n					(RESET_N								),			//hardware reset

//-----------CLK & RST GEN-----------
	.data						(KEY									),			//Origin KEY
	.datavalid					(KEY_WR									),			//key write
	.checksum					(key_hash_value_input					),		    //hash_value
	.crcvalid					(key_hash_value_input_wr				)			//hash_value_wr
);

BloomFilter#(
	.RAMAddWidth				(10										),
	.DataDepth					(1024									),
	
	.WINDOW_NUM					(WINDOW_KEY_NUMBER_1                    )
) bloomfilter(
	//clock and reset signal
	.Clk						(SYS_CLK								),			//clock, this is synchronous clock
	.Reset_N					(RESET_N								),			//Reset the all signal, active high
	//Input port
	.BF_in_key			     	(key_hash_value_input					),			//receive metadata
	.BF_in_key_wr		       	(key_hash_value_input_wr				),			//receive write
	.BF_out_key_alf			(KEY_ALLMOSTFULL						),			//output ACL allmostfull
	//Output port
	.BF_out_value				(bloom_pisketch_input				    ),			//send metadata to DMUX
	.BF_out_value_wr			(bloom_pisketch_input_wr				),			//receive write to DMUX
	.BF_in_value_alf			(bloom_pisketch_alf					    )			//output ACL allmostfull
);

PI_Sketch#(
    .RAMAddWidth				(19										),
	.DataDepth					(524288									),
	.SIZEOFWEIGHT               (INIT_WEIGHT                            ),
	.WINDOW_NUM					(WINDOW_KEY_NUMBER_1                                   )
)pi_sketch(
    //clock and reset signal
	.Clk						(SYS_CLK								),			//clock, this is synchronous clock
	.Reset_N					(RESET_N								),			//Reset the all signal, active high
	//Input port
	.PiSketch_in_key			 (bloom_pisketch_input					),			//receive metadata
	.PiSketch_in_key_wr		     (bloom_pisketch_input_wr				),			//receive write
	.PiSketch_out_key_alf		 (bloom_pisketch_alf					),			//output ACL allmostfull
	//Output port
	.PiSketch_in_key_alf	     (KEY_VALUE_ALLMOSTFULL					)
	
	//localbus
//	.local_cs_n                  (1'b1                                  ),
//	.local_rw                    (1'b0                                  ),
//	.local_addr                  (19'b0                                 ),
//	.local_rdata                 (                                      ),
//	.local_ack_n                 (                                      )	
);
endmodule
