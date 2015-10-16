`timescale 1ns / 1ps

module testbench_contador;

	// Inputs
	reg clk;
	reg rst;
	reg en;

	// Outputs
	wire [3:0] cont_out;

	// Instantiate the Unit Under Test (UUT)
	Contador uut (
		.clk(clk), 
		.rst(rst),
		.en(en),
		.cont_out(cont_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		en = 1;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10 rst = 0;
        
		// Add stimulus here
	
	end
	
	initial forever #5 clk = ~clk;
      
endmodule

