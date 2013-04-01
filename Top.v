/***********************************************************
 * @author		Jon Hourany
 * @date		3/09/13
 * @class		EECE 444
 *
 * @file		ctrl_lines.v
 * @proj		Video Card
 ************************************************************/
module Top(RESET, H_SYNC, V_SYNC, RED);
	input  wire RESET;
	output wire H_SYNC;
	output wire V_SYNC;
	output wire RED;
	
	wire rgb_en;
	
	//output wire osc_clk;
	//output reg  BLUE;	//output reg  GREEN;
	
	//event reset_trigger; 
     //event  reset_done_trigger; 
       
     //initial begin 
       //forever begin 
         //@ (reset_trigger); 
         //@ (negedge clk); 
         //reset = 0; 
         //@ (negedge clk); 
         //reset = 1; 
         //-> reset_done_trigger; 
       //end 
     //end
	 
	 //reg osc_clk, reset;
	 //initial begin
		 //#0 reset 	= 0;
		 //#0 osc_clk = 0;
		 //#2 reset 	= 1;
	 //end
	 
	 //always #1 osc_clk = ~osc_clk;
	 
	OSCC OSCC_1 (.OSC(osc_clk));
	Controller CNTRL(.NRST(RESET), .CLK(osc_clk), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC), .RGB_EN(rgb_en));
	
	assign RED = (rgb_en ? 1:1'bz); 

	
endmodule 
