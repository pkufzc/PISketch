`timescale 1ns/1ns
`define clk_cycle 4
module PIS_tb();

localparam   WINDOW_KEY_NUMBER = 32'd3;    //每个时间窗口的元素数
localparam   WINDOW_NUMBER = 32'd5;       //时间窗口数
localparam   KEY_RANGE=100;               //元素KEY的取值范围1~KEY_RANGE

reg 					nreset;
reg						clk;
wire					KEY_WR;
wire	[31:0]			KEY;
wire					KEY_ALLMOSTFULL;	
reg		[0:0]			pkt_begin;						//send pkt
`ifdef DUMP_FSDB
initial 
begin
  $fsdbDumpfile("wave.fsdb");
  $fsdbDumpvars(0,DBF_tb);
end
`endif

initial//clock 125M
begin
	clk 					<= 0;
	nreset 					<= 1'b0;
	pkt_begin				<= 1'b0;
//------reset release---------
	#28 nreset 				<= 1'b1;
	#80
	pkt_begin				<= 1'b1;
	#1000;
	$finish;
end
always #`clk_cycle clk = ~clk;

key_send#(
	.KEY_RANGE_1				(KEY_RANGE			)
) key_send_inst(	
	.Clk						(clk				),	//The input clock
	.nreset						(pkt_begin			),	//Reset, active low
	.NUM						(WINDOW_KEY_NUMBER				),	//The number of key
	.CYCLE                      (WINDOW_NUMBER              ),
	.KEY_WR						(KEY_WR				),	//Key write
	.KEY						(KEY				),	//Key
	.KEY_ALLMOSTFULL			(KEY_ALLMOSTFULL	)	//allmostfull
);

//--------------------
//DBF test
//--------------------
PIS_top#(
       .WINDOW_KEY_NUMBER_1      (WINDOW_KEY_NUMBER)   
)PIS_top_inst(
	//clock and reset signal
	.SYS_CLK					(clk				),	//clock, this is system clock
	.RESET_N					(nreset				),	//Reset the all signal, active low
	
	//Input port
	.KEY_WR						(KEY_WR				),	//write signal
	.KEY						(KEY				),	//KEY
	.KEY_ALLMOSTFULL			(KEY_ALLMOSTFULL	),	//key is allmostfull
	
	//Output port
	.KEY_VALUE_ALLMOSTFULL			(1'b0				)	//VALUE is allmostfull
);

endmodule