//`define testbeach								//Define is test or FPGA model
module BloomFilter
#(parameter
	RAMAddWidth						= 15,        //The RAM address width
	DataDepth						= 32768,     //The RAM data depth
	
	WINDOW_NUM						= 4'd4        //每个窗口的元素个数
	
)
(
	//clock and reset signal
	input 							Clk,						//clock, this is synchronous clock
	input 							Reset_N,					//Reset the all signal, active high
	//Input port
	input		[63:0]				BF_in_key,					//receive metadata
	input							BF_in_key_wr,				//receive write
	output							BF_out_key_alf,			//output ACL allmostfull
	//Output port
	output	reg[64:0]     			BF_out_value,				//send metadata to DMUX
	output	reg						BF_out_value_wr,			//receive write to DMUX
	input							BF_in_value_alf			//output ACL allmostfull
);

    /*wire和register*/
    //fifo
    wire							check_key_empty;			//fifo empty
	wire		[3:0]				check_key_usedw;			//fifo usedword
	reg								check_key_rd;				//fifo read 
	wire		[63:0]				check_key_q;				//fifo data
	reg			[2:0]				count;						//count the read-signal
	
	reg			[63:0]				check_key_q_reg0;			//restore the key
	reg			[63:0]				check_key_q_reg1;
	
	reg         [31:0]               window_num_now;             //窗口的元素个数
	
	//bloom filter数据结构ram0
	reg         [DataDepth-1:0]           ram0_data;
	reg			[RAMAddWidth-1:0]	ram0_addr;					//ram address
	//bloom filter数据结构ram1
	reg         [DataDepth-1:0]           ram1_data;
	reg			[RAMAddWidth-1:0]	ram1_addr;					//ram address
	//bloom filter数据结构ram2
	reg         [DataDepth-1:0]           ram2_data;
	reg			[RAMAddWidth-1:0]	ram2_addr;					//ram address
	
    //State
    reg			[3:0]				lookup_state;				//look up state
	/*不同状态的查找操作*/
	localparam						idle_s 		=	4'h0,
									pharse_1_s	=	4'h1,
									pharse_2_s	=	4'h2,
									pharse_3_s	=	4'h3,
									pharse_4_s	=	4'h4,
									wait_1_s	=	4'h5,
									wait_2_s	=	4'h6,
									read_s		=	4'h7;
									
	assign BF_out_key_alf						= &check_key_usedw[3:0];					//send out allmostfull

	/*得出Value*/
//look up the ram
always @(posedge Clk or negedge Reset_N)
begin
	if (~Reset_N) 
	begin
		BF_out_value_wr					<= 1'b0;									//clean all signal
        BF_out_value                       <=65'b0;
		
		window_num_now                      <= {(32){1'b0}};
		
		ram0_data                           <= 32768'b0;
		ram0_addr                           <= {(RAMAddWidth){1'b0}};					//clean all signal
		ram1_data                           <= 32768'b0;
		ram1_addr                           <= {(RAMAddWidth){1'b0}};					//clean all signal
		ram2_data                           <= 32768'b0;
		ram2_addr                           <= {(RAMAddWidth){1'b0}};					//clean all signal		
		
		check_key_rd						<= 1'b0;									//clean all signal
		count								<= 3'd0;									//clean all signal
		lookup_state						<= idle_s;									//clean all signal
	end
	else 
	begin
		case(lookup_state)
		idle_s: 
		begin																	
			BF_out_value_wr					<= 1'b0;								//clean signal
            BF_out_value                       <=65'b0;
            
            check_key_q_reg0                    <=64'b0;
            check_key_q_reg1                    <=64'b0;	
		    
		    window_num_now                      <= {(32){1'b0}};
		    
		    ram0_data                           <= 32768'b0;
		    ram0_addr                           <= {(RAMAddWidth){1'b0}};					//clean all signal
		    ram1_data                           <= 32768'b0;
		    ram1_addr                           <= {(RAMAddWidth){1'b0}};					//clean all signal
		    ram2_data                           <= 32768'b0;
		    ram2_addr                           <= {(RAMAddWidth){1'b0}};					//clean all signal
		    
			if (check_key_empty == 1'b0 && BF_in_value_alf == 1'b0) begin				//address is coming
				check_key_rd					<= 1'b1;								//read the address fifo
				lookup_state					<= pharse_1_s;							//read-data need 2 cycle from ram 
				count							<= 3'd1;								//counter, record the read cycle
			end
			else begin																	//no address, wait
				check_key_rd					<= 1'b0;								//clean signal
				lookup_state					<= idle_s;								//waiting
			end
		end
		
		pharse_1_s: 
		begin
		    ram0_addr                           <= check_key_q[RAMAddWidth-1:0];					
		    ram1_addr                           <= check_key_q[9+RAMAddWidth:10];					
		    ram2_addr                           <= check_key_q[16+RAMAddWidth:17];
		    
		    check_key_q_reg0                    <= check_key_q;	    
		    
			if (check_key_usedw	> 4'h2)	
			begin											//hash address isn't empty, read
				check_key_rd					<= 1'b1;								//read fifo
				lookup_state					<= pharse_2_s;							//turn to pharse_2_s		
				count							<= count + 3'd1;						//counter=2
			end
			else 
			begin																	//no address, wait data
				check_key_rd					<= 1'b0;								//don't read fifo
				lookup_state					<= wait_1_s;							//counter=1			
			end
		end
		
		pharse_2_s: 
		begin
		    ram0_addr                           <= check_key_q[RAMAddWidth-1:0];					
		    ram1_addr                           <= check_key_q[9+RAMAddWidth:10];					
		    ram2_addr                           <= check_key_q[16+RAMAddWidth:17];
		    
		    check_key_q_reg0                    <=check_key_q;	    
		    window_num_now                      <= window_num_now+1'b1;
		   
		    if(window_num_now==WINDOW_NUM)
		    begin
		          //清空ram0/1/2
		          window_num_now                <={(32){1'b0}};
		          ram0_data                     <= 32768'b0;
		          ram1_data                     <= 32768'b0;
		          ram2_data                     <= 32768'b0;
		          BF_out_value_wr				<= 1'b1;								//send the Value valid
			      BF_out_value				    <= 65'b0; 
		    end
		    else
		    begin
		          //read the data form ram, then send the data
			     BF_out_value_wr				<= 1'b1;								//send the Value valid
			     BF_out_value[0]				<= ram0_data[ram0_addr]&ram1_data[ram1_addr]&ram1_data[ram1_addr];//send the Value	
			     BF_out_value[32:1]            <=check_key_q_reg0[63:32];
			     BF_out_value[64:33]           <=check_key_q_reg0[31:0];
			     //若BF_out_value的结果为0，当前位置的ram值都置1
			     if((ram0_data[ram0_addr]&ram1_data[ram1_addr]&ram2_data[ram2_addr])==1'b0)
			     begin
			          ram0_data[ram0_addr]           <=1'b1;
			          ram1_data[ram1_addr]           <=1'b1;
			          ram2_data[ram2_addr]           <=1'b1;
			     end
		    end
									
			if (check_key_usedw	> 4'h2)
			begin											//hash address isn't empty, read
				check_key_rd					<= 1'b1;								//read fifo
				lookup_state					<= pharse_2_s;							//countue send
			end
			else 
			begin																	//no address, wait data
				check_key_rd					<= 1'b0;								//don't read fifo
				count							<= count - 3'd1;						//decrease 1
				lookup_state					<= read_s;								//counter=3
			end
		end	
		
		wait_1_s: 
		begin																	//ram have 2 cycle to send data, so wait 2 cycle 
			check_key_q_reg0					<= 64'b0;								//clear		
			lookup_state						<= read_s;							//waiting data
		end
		
		read_s: 
		begin
			//read the data form ram, then send the data
			check_key_q_reg0					<= 64'b0;								//clear					
			window_num_now                      <= window_num_now+1'b1;
			
		    if(window_num_now==WINDOW_NUM)
		    begin
		          //清空ram0/1/2
		          window_num_now                <={(32){1'b0}};
		          ram0_data                     <= 32768'b0;
		          ram1_data                     <= 32768'b0;
		          ram2_data                     <= 32768'b0;
		          BF_out_value_wr				<= 1'b1;								//send the Value valid
			      BF_out_value				    <= 65'b0; 
		    end
		    else
		    begin
		          //read the data form ram, then send the data
			     BF_out_value_wr				<= 1'b1;								//send the Value valid
			     BF_out_value[0]				<= ram0_data[ram0_addr]&ram1_data[ram1_addr]&ram1_data[ram1_addr];//send the Value	
			     BF_out_value[32:1]            <=check_key_q_reg0[63:32];
			     BF_out_value[64:33]           <=check_key_q_reg0[31:0];
			     //若BF_out_value的结果为0，当前位置的ram值都置1
			     if((ram0_data[ram0_addr]&ram1_data[ram1_addr]&ram2_data[ram2_addr])==1'b0)
			     begin
			          ram0_data[ram0_addr]           <=1'b1;
			          ram1_data[ram1_addr]           <=1'b1;
			          ram2_data[ram2_addr]           <=1'b1;
			     end
		    end
						
			if (count == 3'd1)	
			begin 													//all read is empty
				lookup_state					<= idle_s;								//go back
			end			
			else  
			begin
				count							<= count - 3'd1;						//send 
				lookup_state					<= read_s;								//countine
			end			
		end
		
		default: 
		begin
			lookup_state						<= idle_s;								//go back
		end
		endcase
	end
end
	

//PKT_FIFO（缓存指针）
	wire						pkt0_Reset;		
	wire						pkt0_wrclock;	
	wire	[63:0]				pkt0_RamData;	
	wire						pkt0_RamRdreq;	
	wire						pkt0_RamWrreq;	
	wire	[3:0]				pkt0_rdaddress;	
	wire	[3:0]				pkt0_wraddress;	
	wire	[63:0]				pkt0_Ram_q;	
	fifo_top
	#(		.ShowHead			(1							),	//show head model,1<->show head,0<->normal
			.SynMode			(1							),	//1<->SynMode,0<->AsynMode
			.DataWidth			(64							),	//This is data width
			.DataDepth			(16							),	//for ASYNC,DataDepth must be 2^n (n>=1). for SYNC,DataDepth is a positive number(>=1)
			.RAMAddWidth		(4							)	//RAM address width, RAMAddWidth= log2(DataDepth).
	)scfifo_64_16_pkt_fifo(
			.aclr				(~Reset_N					),	//Reset the all signal, active high
			.data				(BF_in_key[63:0]			),	//The Inport of data 
			.rdclk				(Clk						),	//ASYNC ReadClk
			.rdreq				(check_key_rd				),	//active-high
			.wrclk				(Clk						),	//ASYNC WriteClk, SYNC use wrclk
			.wrreq				(BF_in_key_wr				),	//active-high
			.q					(check_key_q				),	//The Outport of data
			.rdempty			(check_key_empty			),	//active-high
			.wrfull				(							),	//active-high
			.wrusedw			(check_key_usedw			),	//RAM wrusedword
			.rdusedw			(							),	//RAM rdusedword			
			.Reset				(pkt0_Reset					),	//The signal of reset, active high
			.wrclock			(pkt0_wrclock				),	//ASYNC WriteClk, SYNC use wrclk
			.rdclock			(							),	//ASYNC ReadClk
			.RamData			(pkt0_RamData				),	//RAM input data
			.RamRdreq			(pkt0_RamRdreq				),	//RAM read request
			.RamWrreq			(pkt0_RamWrreq				),	//RAM write request
			.rdaddress			(pkt0_rdaddress				),	//RAM read address
			.wraddress			(pkt0_wraddress				),	//RAM write address
			.Ram_q				(pkt0_Ram_q					)	//RAM output data			
	);	
//`ifdef testbeach
	ram_64_16		ram_64_16_pkt0 (
					.clka		(pkt0_wrclock				),	//ASYNC WriteClk, SYNC use wrclk
					.ena		(pkt0_RamWrreq				),	//RAM write address
					.wea		(pkt0_RamWrreq				),	//RAM write address
					.addra		(pkt0_wraddress				),	//RAM read address
					.dina		(pkt0_RamData				),	//RAM input data
					.douta		(							),
					.clkb		(pkt0_wrclock				),	//ASYNC WriteClk, SYNC use wrclk
					.enb		(pkt0_RamRdreq				),  //RAM write request
					.web		(1'b0						),
					.addrb		(pkt0_rdaddress				),  //RAM read request
					.dinb		(64'b0						),
					.doutb		(pkt0_Ram_q					)	//RAM output data				
				);	
//`endif

endmodule

