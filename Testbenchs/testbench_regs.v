`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:38:29 10/01/2015
// Design Name:   regs
// Module Name:   C:/Xilinx/Proyecto3/testbench_regs.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_regs;

	// Inputs
	reg [24:0] in;
	reg clk;
	reg leer;

	// Outputs
	wire [24:0] out;

	// Instantiate the Unit Under Test (UUT)
	regs uut (
		.in(in), 
		.clk(clk), 
		.leer(leer), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		leer = 0;

		// Wait 100 ns for global reset to finish
		#10;
		in = 25'h1AAAAAA;
		#10 in = 25'h1AAAAA3;
		#10 in = 25'h0AAAA11;
		#10 in = 25'h1AAAAA3;	leer = 1;
		#10 in = 25'h1111111;	leer = 0;
		#10 in = 25'h0FFFFFF;
		#10 in = 25'h0123456;
		#10 in = 25'h0ABCD12;
		#10 in = 25'h0DDDDDD;
		#10 in = 25'h15AC871;
		#10 in = 25'h0221133;	leer = 1;
		#10 in = 25'h1524687;	leer = 0;
        
		// Add stimulus here

	end
	
	initial forever #5 clk = ~clk;
      
endmodule

