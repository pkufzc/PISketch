//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/20 21:40:38
// Design Name: 
// Module Name: ASYNCFIFO
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
module ASYNCFIFO

#(parameter
	ShowHead				= 1,				//1<->Showhead,0<->Normal
	DataWidth				= 32,				//This is data width
	DataDepth				= 2,				//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)
	RAMAddWidth				= 2					//The RAM address width
)(
	input             			WriteClk,		//ASYNC WriteClk.
	input             			WriteReset,		//Reset the all write signal.
	input	[DataWidth-1:0]		WriteData,		//The Inport of data 
	input             			Write,			//active-high
	input             			ReadClk,		//ASYNC ReadClk.
	input             			ReadReset,		//Reset the all read signal.
	input             			Read,			//active-high
	output	[DataWidth-1:0]		ReadData,		//The output-data
	output             			NotFull,		//active-high
	output             			NotEmpty,		//active-high
 	output             			Full,			//active-high
	output             			Empty,			//active-high  
	output	[RAMAddWidth-1:0]	Wrusedw,		//RAM wrusedword	  
	output	[RAMAddWidth-1:0]	Rdusedw,		//RAM rdusedword	 
   
 	// ALTERA RAM
	output						aclr,			//reset signal, active high
	output						rdclk,			//ASYNC ReadClk.
	output						wrclk,			//ASYNC WriteClk.
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
	
	wire 					Empty_wire,Full_wire;			//full&empty signal

  //Write Pointer
	always@(posedge WriteClk or negedge WriteReset)
		if(~WriteReset)											//WriteReset is active low
			wptr <= {(AddWidth+1){1'b0}};						//clean all wptr
			else
				wptr <= temp_wptr;								//wptr is delayed 1cycle
	assign temp_wptr = 	(NotFull & Write) ?								//Notfull and Write is coming		
						((wptr[AddWidth-1:0]==(DataDepth-1))?			//write point = DataDepth
						{~wptr[AddWidth],{(AddWidth){1'b0}}}			//write point = DataDepth, wptr +1
						:{wptr[AddWidth],(wptr[AddWidth-1:0]+1'b1)})	//write point != DataDepth, wptr + 1
						:wptr;											//wait Notfull and Write

//Read pointer
	always@(posedge ReadClk or negedge ReadReset)
		if(~ReadReset)											//ReadReset is active low
			rptr <= {(AddWidth+1){1'b0}};						//clean all rptr
		else
			rptr <= temp_rptr;									//rptr is delayed 1cycle
	assign temp_rptr = 	(NotEmpty & Read)?							//NotEmpty and Read is coming
						((rptr[AddWidth-1:0]==(DataDepth-1)) ? 		//Read point = DataDepth
						{~rptr[AddWidth],{(AddWidth){1'b0}}}		//read point = DataDepth, rptr +1
						:{rptr[AddWidth],(rptr[AddWidth-1:0]+1'b1)})//read point != DataDepth, rptr + 1
						:rptr;										//wait NotEmpty and Read
//binary code to gray code
	reg		[AddWidth:0]	rptr_gray;								//Read point gray
	reg		[AddWidth:0]	wptr_gray;								//Wrtie point gray
	
	wire	[AddWidth:0]	rptrnext_gray=((temp_rptr)>>1^(temp_rptr));	//change temp_rptr to gray
	wire	[AddWidth:0]	wptrnext_gray=((temp_wptr)>>1^(temp_wptr));	//change temp_wptr to gray
	always@(posedge ReadClk or negedge ReadReset)
		if(~WriteReset)												//WriteReset is active low
			rptr_gray <= {(AddWidth+1){1'b0}};						//clean all rptr_gray
			else
				rptr_gray <= rptrnext_gray;							//rptr_gray is delayed 1cycle	
				
	always@(posedge WriteClk or negedge WriteReset)
		if(~WriteReset)												//WriteReset is active low
			wptr_gray <= {(AddWidth+1){1'b0}};						//clean all wptr_gray
			else
				wptr_gray <= wptrnext_gray;							//wptr_gray is delayed 1cycle
//------------------clock 	synchronizer-----------------------------------------			
	reg		[AddWidth:0]	wq1_rptr,wq2_rptr,rq1_wptr,rq2_wptr;	//The reg is used synchronizer.

	always@(posedge WriteClk or negedge WriteReset)					//read_domain to write-domain synchronizer
		   if(~WriteReset)											//WriteReset is active low
				{wq2_rptr,wq1_rptr} <= 0;							//clean all
		   else
//				{wq2_rptr,wq1_rptr} <= {wq1_rptr,temp_rptr};		//REG shift left, read_domain to write-domain
				{wq2_rptr,wq1_rptr} <= {wq1_rptr,rptrnext_gray};	//REG shift left, read_domain to write-domain
				
	always@(posedge ReadClk or negedge ReadReset)					// write-domain to read_domain synchronizer
		   if(~ReadReset)											//WriteReset is active low
				{rq2_wptr,rq1_wptr} <= 0;							//clean all
		   else
//				{rq2_wptr,rq1_wptr} <= {rq1_wptr,temp_wptr};		//REG shift left, write-domain to read_domain
				{rq2_wptr,rq1_wptr} <= {rq1_wptr,wptrnext_gray};	//REG shift left, write-domain to read_domain
				 
//		assign	Empty_wire		= (rptr == rq2_wptr);				//rp = wp, is empty		//	assign	Empty_wire	= (temp_rptr == rq2_wptr);					//rp = wp, is empty	
		assign	Empty_wire		= (rptr_gray == rq2_wptr);			//rp = wp, is empty

//		assign	Full_wire 		= (wptr == {~wq2_rptr[AddWidth],wq2_rptr[AddWidth-1:0]});	//wp - rp = DataDepth,is full	//	assign Full_wire = (temp_wptr == {~wq2_rptr[AddWidth],wq2_rptr[AddWidth-1:0]});	
		assign	Full_wire 		= (wptr_gray == {~wq2_rptr[AddWidth:AddWidth-1],wq2_rptr[AddWidth-2:0]});	//wp - rp = DataDepth,is full

	
	reg		NotEmpty_reg;											//The reg is used delay the status signal.
	always@(posedge ReadClk or negedge ReadReset)
		if(~ReadReset)begin
		  NotEmpty_reg <= 1'b0;										//clean signal
		end  
		else begin
		  NotEmpty_reg <= ~Empty_wire;								//delay the Empty_wire 1 cycle
		end
//	reg		NotFull_reg;
//	always@(posedge WriteClk or negedge WriteReset)
//	   if(~WriteReset)
//		  NotFull_reg <= 1'b1;										//clean signal
//	   else
//		  NotFull_reg <= ~Full_wire;								//delay the Full_wire 1 cycle
		  
	assign	NotEmpty		= ~Empty_wire;						//NoEmpty signal	//	assign	NotEmpty	= NotEmpty_reg;	
	assign	NotFull			= ~Full_wire;						//NoFull signal		//	assign	NotFull		= NotFull_reg;
	
//status signal						
	assign	Empty  		=	~NotEmpty_reg|Empty_wire;			//Empty signal		//	assign Empty = ~NotEmpty_reg;
	assign	Full   		=	Full_wire;							//Full signal		//	assign Full = ~NotFull_reg;		
	assign	Wrusedw		=	(wptr > wq2_rptr) ? (wptr - wq2_rptr) : ({1'b1,{(AddWidth){1'b0}}} - wq2_rptr + wptr);		//display the wrusedword, this  wrusedword is better than altera wrusedw.
	assign	Rdusedw		=	(rq2_wptr > rptr) ? (rq2_wptr - rptr) : ({1'b1,{(AddWidth){1'b0}}} - rptr + rq2_wptr);		//display the wrusedword, this  wrusedword is better than altera wrusedw.
	
	//-------------------------------
	// RAM  Write&Read
	//-------------------------------
	//	RAM Reset and clock signal
		assign 	aclr 			= ~WriteReset;												//reset the RAM
		assign	rdclk 			= ReadClk;													//send rdclock to RAM
		assign	wrclk 			= WriteClk;													//send wrclock to RAM	
		
	//	Write oppertion with ALTERA RAM
		assign	data			= WriteData;												//send data to RAM
		assign	wraddress		= wptr;														//write address
		assign	wren			= NotFull & Write;											//write enable

	// Read oppertion with ALTERA RAM
		assign	ReadData		= q;														//receive data form RAM
		assign	rden			= ShowHead ? (NotEmpty | ~Empty_wire) : (NotEmpty & Read);	//1<->Showhead,;0<->Normal. read enable.
	

		
`ifdef ALTERA_RAM
		// Read oppertion with ALTERA RAM/ XILINX BLK RAM
		assign	rdaddress		= ShowHead ? temp_rptr : rptr;								//read address
`else
		// Read oppertion with XILINX RAM
		assign	rdaddress		= ShowHead ? rptr : rptr-1'b1;								//read address
`endif	

endmodule
