//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/20 21:38:29
// Design Name: 
// Module Name: SYNCFIFO
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

`define ALTERA_RAM								//Define is ALTERA/XILINX BLK RAM, Undefine is XILINX DIST RAM
module SYNCFIFO

#(parameter
	ShowHead				= 1,				//1<->Showhead,0<->Normal
	DataWidth				= 32,				//This is data width
	DataDepth				= 2,				//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)
	RAMAddWidth				= 2					//The RAM address width
)(
	input             			CLK,			//ASYNC CLK, SYNC and ASYNC use CLK.
	input             			Rest_N,			//Reset the all write signal.
	input	[DataWidth-1:0]		WriteData,		//The Inport of data 
	input             			Write,			//active-high
	input             			Read,			//active-high
	output  [DataWidth-1:0]		ReadData,		//The Outport of data 
	output             			NotFull,		//active-high
	output             			NotEmpty,		//active-high
	output             			Full,			//active-high
	output             			Empty,			//active-high  
	output	[RAMAddWidth-1:0]	Usedw,			//RAM usedword	
   
	// ALTERA RAM
	output						aclr,			//reset signal, active high
	output						Clock,			//if SYNC mode, Clock == CLK
	output	[DataWidth-1:0]		data,			//RAM input data
	output	[RAMAddWidth:0]		rdaddress,		//RAM read address
	output						rden,			//RAM read
	output	[RAMAddWidth:0]		wraddress,		//RAM write address
	output						wren,			//RAM write
	input	[DataWidth-1:0]		q				//RAM output data
   
   );

	//---------------------------------
	//Compute AddWidth
	//---------------------------------
	function integer clog2;						//Compute AddWidth
		input integer depth;					//input DataDepth
		integer i,result;						//reg 
		begin
			result=0;							//clear the result
			for(i=0;(2**i)<depth;i=i+1)			//Compute AddWidth
				result=i;						//result=AddWidth-1 
			clog2=result+1;						//result=AddWidth
		end
	endfunction
	localparam AddWidth=clog2(DataDepth);		//return the parameter

	//---------------------------------
	//signal definition
	//---------------------------------
	reg 	[AddWidth:0]	wptr;				//write point
	wire	[AddWidth:0]	temp_wptr;			//write point reg
	reg 	[AddWidth:0]	rptr;				//read point
	wire	[AddWidth:0]	temp_rptr;			//read point reg
	
//	reg		[DataWidth-1:0]	Data_reg	[DataDepth-1:0];	//RAM used reg
	wire 					Empty_wire,Full_wire;			//full&empty signal 
	

		//Write pointer
		always@(posedge CLK or negedge Rest_N)
			if(~Rest_N)														//Rest_N is active low
				wptr <= {(AddWidth+1){1'b0}};								//clean all wptr
			else
				wptr <= temp_wptr;											//wptr is delayed 1cycle
								
		assign temp_wptr = 	(NotFull & Write) ?								//Notfull and Write is coming		
							((wptr[AddWidth-1:0]==(DataDepth-1))?			//write point = DataDepth
							{~wptr[AddWidth],{(AddWidth){1'b0}}}			//write point = DataDepth, wptr +1
							:{wptr[AddWidth],(wptr[AddWidth-1:0]+1'b1)})	//write point != DataDepth, wptr + 1
							:wptr;											//wait Notfull and Write
		
			
		//Read pointer
		always@(posedge CLK or negedge Rest_N)
			if(~Rest_N)														//Rest_N is active low
				rptr <= {(AddWidth+1){1'b0}};								//clean all rptr
			else
				rptr <= temp_rptr;											//wptr is delayed 1cycle

			assign temp_rptr = 	(NotEmpty & Read)?							//NotEmpty and Read is coming
								((rptr[AddWidth-1:0]==(DataDepth-1)) ? 		//Read point = DataDepth
								{~rptr[AddWidth],{(AddWidth){1'b0}}}		//read point = DataDepth, rptr +1
								:{rptr[AddWidth],(rptr[AddWidth-1:0]+1'b1)})//read point != DataDepth, rptr + 1
								:rptr;										//wait NotEmpty and Read
								
		//status signal						
			assign Empty_wire = (rptr == wptr);								//if rptr == wptr, Read all
			assign Full_wire = (wptr == {~rptr[AddWidth],rptr[AddWidth-1:0]});	//if wptr - rptr/wptr - rptr = AddWidth, Fifo is full.

			reg	 Empty_reg;													//The reg is used delay the status signal.
			always@(posedge CLK or negedge Rest_N)
				if(~Rest_N)begin
				  Empty_reg		<= 1'b1;									//clean signal
				end  
				else begin
				  Empty_reg 	<= Empty_wire;								//delay the Empty_wire 1 cycle
				end
		
			assign NotEmpty = ~Empty_wire;									//NotEmpty signal
			assign NotFull = ~Full_wire;									//NotFull signal
			
			assign Empty = Empty_reg|Empty_wire;							//Empty signal
			assign Full = Full_wire;										//Full signal
			assign Usedw = (wptr > rptr) ? (wptr - rptr) : ({1'b1,{(AddWidth){1'b0}}} - rptr + wptr);		//display the usedword
		
	assign 	aclr 			= ~Rest_N;								//reset the RAM
	assign	Clock 			= CLK;									//send clock to RAM
	
//	Write oppertion with ALTERA RAM
	assign	data			= WriteData;							//send data to RAM
	assign	wraddress		= wptr;									//write address
	assign	wren			= NotFull & Write;						//write enable

// Read oppertion with ALTERA RAM
	assign	ReadData		= ShowHead ? (NotEmpty? q : ReadData):q;//receive data form RAM
	assign	rden			= ShowHead ? NotEmpty : NotEmpty & Read;//1<->Showhead,;0<->Normal. read enable.
	
`ifdef ALTERA_RAM
	// Read oppertion with ALTERA RAM/ XILINX BLK RAM
	assign	rdaddress		= ShowHead ? temp_rptr : rptr;								//read address
`else
	// Read oppertion with XILINX DIST RAM
	assign	rdaddress		= ShowHead ? rptr : rptr-1'b1;								//read address
`endif

endmodule
