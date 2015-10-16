`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:23 10/01/2015
// Design Name:   operac
// Module Name:   C:/Xilinx/Proyecto3/testbench_operac.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: operac
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_operac;

	// Inputs
	reg [24:0] in;
	reg [24:0] cte;
	reg [48:0] in_acum;

	// Outputs
	wire [48:0] out;

	// Instantiate the Unit Under Test (UUT)
	operac uut (
		.in(in), 
		.cte(cte), 
		.in_acum(in_acum), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		cte = 0;
		in_acum = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in = 25'hFFF8000;
		cte = 25'h4000;
		in_acum = 49'h0002AACCCC000;
		
		// Add stimulus here

	end
      
endmodule

