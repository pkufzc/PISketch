//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/20 21:36:32
// Design Name: 
// Module Name: fifo_top
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


module fifo_top
#(parameter
	ShowHead					= 1,				//1<->Showhead,0<->Normal
	SynMode						= 1,				//1<->SynMode,0<->AsynMode
	DataWidth					= 32,				//This is data width
	DataDepth					= 4,				//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)	
	RAMAddWidth					= 2					//RAM address width
   )(
	input 						aclr,				//Reset the all signal
	input	[DataWidth-1:0]		data,				//The Inport of data 
	input						rdclk,				//ASYNC ReadClk
	input						rdreq,				//active-high
	input						wrclk,				//ASYNC WriteClk, SYNC use wrclk
	input						wrreq,				//active-high
	output	[DataWidth-1:0]		q,					//The output of data
	output						rdempty,			//Read-empty
	output						wrfull,				//Write-full
	output	[RAMAddWidth-1:0]	wrusedw,			//Write-usedword
	output	[RAMAddWidth-1:0]	rdusedw,			//Read-usedword
	//RAM control
	output						Reset,				//The signal of reset, active high
	output						wrclock,			//ASYNC WriteClk, SYNC use wrclk
	output						rdclock,			//ASYNC ReadClk
	output 	[DataWidth-1:0]		RamData,			//RAM input data
	output						RamRdreq,			//RAM read request
	output						RamWrreq,			//RAM write request
	output 	[RAMAddWidth-1:0]	rdaddress,			//RAM read address
	output 	[RAMAddWidth-1:0]	wraddress,			//RAM write address
	input 	[DataWidth-1:0]		Ram_q				//RAM output data
   );
	wire	[RAMAddWidth:0]		rd_address,wr_address;		//change the RAMAddWidth
	assign	rdaddress	=	rd_address[RAMAddWidth-1:0];	//change the RAMAddWidth of rdaddress
 	assign	wraddress	=	wr_address[RAMAddWidth-1:0]; 	//change the RAMAddWidth of wraddress

generate
	if(SynMode == 1)	begin:SYNC
		//--------------------
		//SYNCFIFO test
		//--------------------
		SYNCFIFO 
		#(	.ShowHead(ShowHead),					//show head model,1<->show head,0<->normal
			.DataWidth(DataWidth),					//This is data width
			.DataDepth(DataDepth),					//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)
			.RAMAddWidth(RAMAddWidth)				//RAM address width
		)
		scfifo_inst
		(
			.CLK(wrclk),							//ASYNC CLK, SYNC and ASYNC use CLK
			.Rest_N(~aclr),							//Reset the all write signal.
			.WriteData(data),                       //The Inport of data 
			.Write(wrreq),                          //active-high
			.Read(rdreq),                           //active-high
			.ReadData(q),                           //The Outport of data 
			.NotFull(),                             //active-high
			.NotEmpty(),                            //active-high
			.Full(wrfull),                          //active-high
			.Empty(rdempty),                        //active-high  
			.Usedw(wrusedw),                        //RAM usedword	
			
			.aclr(Reset),		                    //reset signal, active high
			.Clock(wrclock),	                    //if SYNC mode, Clock == CLK
			.data(RamData),		                    //RAM input data
			.rdaddress(rd_address),	                //RAM read address
			.rden(RamRdreq),		                //RAM read
			.wraddress(wr_address),	                //RAM write address
			.wren(RamWrreq),		                //RAM write
			.q(Ram_q)			                    //RAM output data
		);
		assign rdusedw = wrusedw;
		assign rdclock = wrclock;
	end
	else begin:ASYNC
		//--------------------
		//ASYNCFIFO test
		//--------------------
		ASYNCFIFO
		#(	.ShowHead(ShowHead),					//show head model,1<->show head,0<->normal
			.DataWidth(DataWidth),					//This is data width
			.DataDepth(DataDepth),					//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)
			.RAMAddWidth(RAMAddWidth)				//The RAM address width
		)
		dcfifo_inst
		(
			.WriteClk(wrclk),					    //ASYNC WriteClk.
			.WriteReset(~aclr),                     //Reset the all write signal.
			.WriteData(data),                       //The Inport of data 
			.Write(wrreq),                          //active-high
			.ReadClk(rdclk),                        //ASYNC ReadClk.
			.ReadReset(~aclr),                      //Reset the all read signal.
			.Read(rdreq),                           //active-high
			.ReadData(q),                           //The output-data
			.NotFull(),                             //active-high
			.NotEmpty(),                            //active-high
			.Full(wrfull),                          //active-high
			.Empty(rdempty),                        //active-high  
			.Wrusedw(wrusedw),                      //RAM wrusedword	  
			.Rdusedw(rdusedw),                      //RAM rdusedword	 

			.aclr(Reset),		                    //reset signal, active high
			.wrclk(wrclock),	                    //ASYNC ReadClk.
			.rdclk(rdclock),                        //ASYNC WriteClk.
			.data(RamData),		                    //RAM input data
			.rdaddress(rd_address),	                //RAM read address
			.rden(RamRdreq),		                //RAM read
			.wraddress(wr_address),	                //RAM write address
			.wren(RamWrreq),		                //RAM write
			.q(Ram_q)			                    //RAM output data  
		);
	end
endgenerate

endmodule
