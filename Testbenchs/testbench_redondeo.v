`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:21:28 09/26/2015
// Design Name:   redondeo
// Module Name:   C:/Xilinx/Proyecto3/testbench_redondeo.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: redondeo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_redondeo;

	// Inputs
	reg [10:0] in;

	// Outputs
	wire [5:0] out;

	// Instantiate the Unit Under Test (UUT)
	redondeo uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#10;
      in = 11'b00011101010;	//normal +
		#20 in = 11'b11110011011; //normal -
		#20 in = 11'b01000001101;	//overflow +
		#20 in = 11'b11001000000; //overflow -
		
		// Add stimulus here

	end
      
endmodule

