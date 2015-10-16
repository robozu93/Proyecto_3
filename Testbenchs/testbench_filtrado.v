`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:42:39 10/14/2015
// Design Name:   filtrado
// Module Name:   C:/Xilinx/Proyecto3/testbench_filtrado.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filtrado
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_filtrado;

	// Inputs
	reg rx;
	reg clk;
	reg sw_B;
	reg sw_M;
	reg sw_A;
	reg rst;
	reg [24:0] u;
	
	reg [24:0] datos [0:99];

	// Outputs
	wire [24:0] y;
	/*wire [24:0] out_B;
	wire [24:0] out_M;
	wire [24:0] out_A;*/

	// Instantiate the Unit Under Test (UUT)
	filtrado uut (
		.rx(rx), 
		.clk(clk), 
		.sw_B(sw_B), 
		.sw_M(sw_M), 
		.sw_A(sw_A), 
		.rst(rst), 
		.u(u), 
		.y(y)
		/*.out_B(out_B),
		.out_M(out_M),
		.out_A(out_A)*/
	);

	integer j, arch_text, num_datos = 100;
	
	initial 
		begin
			clk = 0;
			rx = 0;
			rst = 1;
			u = 0;
			j = 0;
			sw_B = 1;
			sw_M = 1;
			sw_A = 1;
			#1 rst = 0;
		end
		
	 initial 
		 begin 
			$readmemb("estimulac_bin.txt",datos);
			arch_text = $fopen("resp_bin.txt","w"); 
			for(j=0; j<num_datos; j=j+1) 
				begin
					rx = 1; u = datos[j];
					repeat(1) @(posedge clk); rx = 0;
					repeat(15) @(posedge clk); $fwrite(arch_text,"%b\n",y); 
				end
		 $fclose(arch_text);
		 $stop;
	 end

initial forever #5 clk = ~clk;

/*integer j, resp_A, resp_M, resp_B, num_datos = 100;
	
	initial 
		begin
			clk = 0;
			rx = 0;
			rst = 1;
			u = 0;
			j = 0;
			sw_B = 1;
			sw_M = 1;
			sw_A = 1;
			#1 rst = 0;
		end
		
	 initial 
		 begin 
			$readmemb("estimulac_bin.txt",datos);
			resp_A = $fopen("resp_A.txt","w");
			resp_M = $fopen("resp_M.txt","w"); 
			resp_B = $fopen("resp_B.txt","w"); 
			for(j=0; j<num_datos; j=j+1) 
				begin
					rx = 1; u = datos[j];
					repeat(1) @(posedge clk); rx = 0;
					repeat(15) @(posedge clk); $fwrite(resp_A,"%b\n",out_A); 
														$fwrite(resp_M,"%b\n",out_M); 
														$fwrite(resp_B,"%b\n",out_B); 
				end
		 $fclose(resp_A);
		 $fclose(resp_M);
		 $fclose(resp_B);
		 $stop;
	 end

initial forever #5 clk = ~clk;*/
      
endmodule

