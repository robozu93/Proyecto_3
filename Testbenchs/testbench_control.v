`timescale 1ns / 1ps

module testbench_control;

	// Inputs
	reg clk;
	reg rst;
	reg cambiar;

	// Outputs
	wire leer;
	wire desp;
	wire leer_y;
	wire rst_acum;
	wire leer_u;
	wire [3:0] sel;

	// Instantiate the Unit Under Test (UUT)
	cntrl uut (
		.clk(clk), 
		.rst(rst), 
		.leer(leer), 
		.desp(desp),
		.leer_y(leer_y), 
		.rst_acum(rst_acum),
		.leer_u(leer_u),
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		cambiar = 1;

		// Wait 100 ns for global reset to finish
		#10 rst = 0;
        
		// Add stimulus here

	end
	
      initial forever #5 clk = ~clk;
		
endmodule

