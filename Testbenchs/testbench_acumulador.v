`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:51:57 09/30/2015
// Design Name:   acumulador
// Module Name:   C:/Xilinx/Proyecto3/testbench_acumulador.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: acumulador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_acumulador;

	// Inputs
	//reg rst;
	reg listo;
	reg [24:0] in;

	// Outputs
	wire [24:0] rec;
	wire [24:0] f_y;

	// Instantiate the Unit Under Test (UUT)
	acumulador uut ( 
		.listo(listo),
		.in(in), 
		.rec(rec), 
		.f_y(f_y)
	);

	initial begin
		// Initialize Inputs
		//rst = 0;
		listo = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#10;
		in = 25'h1AAAAAA;
		#10 in = 25'h1AAAAA3;
		#10 in = 25'h0AAAA11;
		#10 in = 25'h1AAAAA3;	listo = 1;
		#10 in = 25'h1111111;	listo = 0;
		#10 in = 25'h0FFFFFF;
		#10 in = 25'h0123456;
		#10 in = 25'h0ABCD12;
		#10 in = 25'h0DDDDDD;
		#10 in = 25'h15AC871;
		#10 in = 25'h0221133;	listo = 1;
		#10 in = 25'h1524687;	listo = 0;
		
		// Add stimulus here

	end
   
	
endmodule

