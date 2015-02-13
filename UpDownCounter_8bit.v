/*------------------------------------------------------------------
Engineer: 			Patrick Go
Create Date:    	11:10 AM 8/2/2014
Module Name:    	UpDowncounter_8bit
Project Name: 
Description:    	An Up-Down Counter with individual statements are on their
						respective always blocks. Declarations of I/O and wires and registers are
						now optimized for better debugging. The timescale is 1ns/1ps.
Recommenations: 	According to texts and lectures, this is better way to 
						write a Verilog HDL code since it doesnt use much of the logc gates during
						implementation and synthesis. You can use FSM (Finite State Machine) method
						for this kind of counter. (The code using FSM will be given upon request.)
Resolved Issues: 	Resolved the issue of using a submodule. Before, I used a submodule using Class
						and defparam to control the maximum count fo the counter. 

--------------------------------------------------------------------*/ 
module UpDownCounter_8bit(
    reset,
    enable,
    clk,
    count
    );
	 
	input clk;
	input reset;
	input enable;
	output count;
	
	wire clck;
	wire reset;
	wire enable;
	reg [4:0] count;
	

	reg count_state; 
	parameter [4:0] max = 15; 
	assign step = count_state;
	
	
always @(posedge clk)
begin
		if (count_state && count <= 1)
			count_state = 0;
		else if (!count_state && count == max - 1)
			count_state = 1;
end
	
always @(posedge clk)
begin
		if (reset)
			count = 0;
		else if(enable)
			if (step) count = count - 1;
			else count = count + 1;
end
endmodule 