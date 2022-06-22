//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/20 20:25:58
// Design Name: 
// Module Name: CRC32h_32bit
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

module CRC32h_32bit(
    input		wire				clk,
	input		wire				reset_n,
	//-----------input key-------------//    
	input		wire	[31:0]		data,
	input		wire				datavalid,
	//-----------output hash value----//
	output		reg		[63:0]		checksum,
	output		reg					crcvalid
    );
    
//----------------------reg--------------------------//
	wire		[63:0]	checksum_w;
	reg			[63:0]	checksum_reg;
	reg					crcvalid_reg;
/************************************code**********************************/ 
always @ (posedge clk or negedge reset_n)
begin
    if (!reset_n)
    begin
        checksum        <= 64'hffffffffffffffff;
		checksum_reg	<= 64'hffffffffffffffff;
        crcvalid_reg	<= 1'b0;
		crcvalid		<= 1'b0;
    end
    else 
    begin
		if(datavalid)
		begin//1 cycle, get the value of data
			checksum_reg	<= checksum_w;
			checksum    	<= checksum_reg;
			crcvalid		<= crcvalid_reg;
			crcvalid_reg	<= 1'b1;
		end
		else//data transmit is over
		begin
			checksum_reg	<= 64'hffffffff;
			checksum	    <= checksum_reg;
			crcvalid		<= crcvalid_reg;
			crcvalid_reg	<= 1'b0;
		end
	end
end
	
	wire		[63:0]	checksum_tmp;
	assign		checksum_w[31:0]	= ~{checksum_tmp[24],checksum_tmp[25]	,checksum_tmp[26]	,checksum_tmp[27]	,checksum_tmp[28]	,checksum_tmp[29]	,checksum_tmp[30]	,checksum_tmp[31],
								checksum_tmp[16],checksum_tmp[17]	,checksum_tmp[18]	,checksum_tmp[19]	,checksum_tmp[20]	,checksum_tmp[21]	,checksum_tmp[22]	,checksum_tmp[23],
								checksum_tmp[8]	,checksum_tmp[9]	,checksum_tmp[10]	,checksum_tmp[11]	,checksum_tmp[12]	,checksum_tmp[13]	,checksum_tmp[14]	,checksum_tmp[15],
								checksum_tmp[0]	,checksum_tmp[1]	,checksum_tmp[2]	,checksum_tmp[3]	,checksum_tmp[4]	,checksum_tmp[5]	,checksum_tmp[6]	,checksum_tmp[7]};
	assign     checksum_w[63:32]=checksum_tmp[63:32];
	wire		[63:0]	data_tmp;
	assign data_tmp[63:32]=data;
    assign data_tmp[31:0] = {
					data[24]	 ,data[25]	,data[26]	,data[27]	,data[28]	,data[29]	,data[30]	,data[31],
					data[16]	 ,data[17]	,data[18]	,data[19]	,data[20]	,data[21]	,data[22]	,data[23],
					data[8] 	 ,data[9]	,data[10]	,data[11]	,data[12]	,data[13]	,data[14]	,data[15],
					data[0] 	 ,data[1]	,data[2]	,data[3]	,data[4]	,data[5]	,data[6]	,data[7]
                   };
	
CRC32_D32	CRC32_D32_inst(.data_in(data_tmp),.crc_last(32'hffffffff),.crc_out(checksum_tmp));
  
endmodule
