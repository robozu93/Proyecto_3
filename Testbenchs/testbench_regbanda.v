`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:13 10/03/2015
// Design Name:   reg_banda
// Module Name:   C:/Xilinx/Proyecto3/testbench_regbanda.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_banda
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_regbanda;

	// Inputs
	reg [24:0] in;
	reg leer;
	reg escribir;
	reg clk;

	// Outputs
	wire [24:0] out;

	// Instantiate the Unit Under Test (UUT)
	reg_banda uut (
		.in(in), 
		.leer(leer), 
		.escribir(escribir), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		leer = 0;
		escribir = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		#10 in = 25'b0000011111000001111100000;	
		#10 in = 25'b1111100000111110000011111;
		#10 in = 25'b1111111111000000000011111;	leer = 1;
		#10 in = 25'b0000000000111111111100000;	leer = 0;
		#10 in = 25'b1100110011001100110011001;	
		#10 in = 25'b0011001100110011001100110;	
		#10 in = 25'b1110001110001110001110001;	
		#10 in = 25'b1111111110000000001111101;	escribir = 1;
		#10 in = 25'b1010101010101010101010101;	escribir = 0;
		#10 in = 25'b1100110011001100110011001;	leer = 1;
		#10 in = 25'b0011001100110011001100110;	leer = 0;
		#10 in = 25'b1110001110001110001110001;
        
		// Add stimulus here

	end
    
	initial forever #5 clk = ~clk;
	
endmodule

