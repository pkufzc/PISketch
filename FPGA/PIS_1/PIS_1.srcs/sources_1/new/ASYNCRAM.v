//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/20 21:52:22
// Design Name: 
// Module Name: ASYNCRAM
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

module ASYNCRAM
#(parameter
	DataWidth				= 32,				//This is data width
	DataDepth				= 2,				//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)
	RAMAddWidth				= 2					//The RAM address width
)(
	input   wire	          			aclr,			//Reset the all write signal	
	input	wire	[RAMAddWidth-1:0]	address_a,		//RAM A port address
	input	wire	[RAMAddWidth-1:0]	address_b,		//RAM B port assress
	input   wire	          			clock_a,		//Port A clock
	input   wire	          			clock_b,		//Port B clock	
	//input	wire			data_a,			//The Inport of data 
	//input	wire			data_b,			//The Inport of data
	input	wire	[DataWidth-1:0]		data_a,			//The Inport of data 
	input	wire	[DataWidth-1:0]		data_b,			//The Inport of data  
	input   wire	          			rden_a,			//active-high, read signal
	input   wire	          			rden_b,			//active-high, read signal
	input	wire						wren_a,			//active-high, write signal
	input	wire						wren_b,			//active-high, write signal
	//output	reg				q_a,			//The Output of data
	//output	reg		       	q_b,			//The Output of data
	output	reg		[DataWidth-1:0]		q_a,			//The Output of data
	output	reg		[DataWidth-1:0]		q_b,			//The Output of data
	// ASIC RAM
	output	wire						reset,			//Reset the RAM, active higt
	output	wire						clka,			//Port A clock
	output	wire						ena,			//Port A enable
	output	wire						wea,			//Port A write
	output	wire	[RAMAddWidth-1:0]	addra,			//Port A address
	//output	wire			dina,			//Port A input data
	//input	wire			douta,			//Port A output data
	output	wire	[DataWidth-1:0]		dina,			//Port A input data
	input	wire	[DataWidth-1:0]		douta,			//Port A output data
	output	wire						clkb,			//Port B clock
	output	wire						enb,			//Port B enable
	output	wire						web,			//Port B write
	output	wire	[RAMAddWidth-1:0]	addrb,			//Port B address
	//output	wire			dinb,			//Port B input data
	//input	wire			doutb			//Port B output data
	output	wire	[DataWidth-1:0]		dinb,			//Port B input data
	input	wire	[DataWidth-1:0]		doutb			//Port B output data
   );

	//---------------------------------
	//Wire Connection
	//---------------------------------
	assign	reset					=	aclr;			//Reset the all write signal	
	assign	clka					=	clock_a;		//Port A clock
	assign	clkb					=	clock_b;		//Port B clock	
	assign	addra					=	address_a;		//RAM A port address
	assign	addrb					=	address_b;		//RAM B port address
	assign	dina					=	data_a;			//RAM A input data	
	assign	dinb					=	data_b;			//RAM B input data
	
	//---------------------------------
	//RAM Control
	//---------------------------------	
	assign	ena						=	wren_a|rden_a;	//Port A enable
	assign	wea						=	wren_a;			//Port A write
	assign	enb						=	wren_b|rden_b;	//Port B enable
	assign	web						=	wren_b;			//Port B write	
	
	//---------------------------------
	//Data output
	//---------------------------------
	always@(posedge clock_a or posedge aclr)
		if (aclr)begin
			q_a						<= {DataWidth{1'b0}};
			//q_a						<= 1'b0;
		end
		else begin
			q_a						<= douta;
		end
	always@(posedge clock_b or posedge aclr)
		if (aclr)begin
			q_b						<= {DataWidth{1'b0}};
		end
		else begin
			q_b						<= doutb;
		end	

endmodule
