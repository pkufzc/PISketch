`timescale 1ns/1ns
module key_send
#(parameter
	KEY_RANGE_1		= 15
)
(
	input	wire							Clk,					//The input clock
	input	wire							nreset,					//Reset, active low
	input	wire		[31:0]				NUM,					//The number of key   
	input	wire		[31:0]				CYCLE,		
	//Send the KEY
	output	reg								KEY_WR,					//Key write
	output	reg			[31:0]				KEY,					//Key
	input	wire							KEY_ALLMOSTFULL		//allmostfull
	
);

	reg		[31:0]				send_cnt;
	reg     [31:0]              send_cycle;
always@(posedge Clk or negedge nreset)
	if(!nreset) 
	begin
		KEY_WR							<= 1'b0;
		KEY								<= 32'b0;
		send_cnt						<= 32'h00000001;
		send_cycle                      <= 32'h00000001;
	end
	else 
	begin
		if (KEY_ALLMOSTFULL == 1'b0)
		begin				//KEY isn't full
			if (send_cnt <= NUM)
			begin					//Send the key
				KEY_WR						<= 1'b1;	//write is high
				KEY							<= 1+{$random}%KEY_RANGE_1;
				send_cnt					<= send_cnt + 32'h1;	//send counter  
			end
			else if((send_cnt > NUM)&&(send_cycle <= CYCLE))
			begin
			     KEY_WR						<= 1'b1;	//write is high
				 KEY					    <= 32'b0;
			     send_cnt                   <= 32'h00000001;
			     send_cycle                 <= send_cycle+3'b1;
			end
			else 
			begin									//All KEY is send out
				KEY_WR						<= 1'b0;
				KEY							<= 32'b0;
			end
		end
		else 
		begin										//AHeap top is full, waiting
			KEY_WR							<= 1'b0;
			KEY								<= 32'b0;
		end
	end
	
endmodule