`timescale 1ns / 1ps



module LA5_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] address;
	
	// Outputs
	wire [31:0] idn11;
	wire [31:0] idn12;
	wire [31:0] idn13;
	wire [31:0] idn14;
	wire [31:0] idn15;
	wire [31:0] idn21;
	wire [31:0] idn22;
	wire [31:0] idn23;
	wire [31:0] idn24;
	wire [31:0] idn25;
	wire [31:0] idn31;
	wire [31:0] idn32;
	wire [31:0] idn33;
	wire [31:0] idn34;
	wire [31:0] idn35;
	wire [31:0] idn41;
	wire [31:0] idn42;
	wire [31:0] idn43;
	wire [31:0] idn44;
	wire [31:0] idn45;
	wire [31:0] idn51;
	wire [31:0] idn52;
	wire [31:0] idn53;
	wire [31:0] idn54;
	wire [31:0] idn55;
	wire [31:0] idn11d;
	wire [31:0] idn12d;
	wire [31:0] idn13d;
	wire [31:0] idn14d;
	wire [31:0] idn15d;
	wire [31:0] idn21d;
	wire [31:0] idn22d;
	wire [31:0] idn23d;
	wire [31:0] idn24d;
	wire [31:0] idn25d;
	wire [31:0] idn31d;
	wire [31:0] idn32d;
	wire [31:0] idn33d;
	wire [31:0] idn34d;
	wire [31:0] idn35d;
	wire [31:0] idn41d;
	wire [31:0] idn42d;
	wire [31:0] idn43d;
	wire [31:0] idn44d;
	wire [31:0] idn45d;
	wire [31:0] idn51d;
	wire [31:0] idn52d;
	wire [31:0] idn53d;
	wire [31:0] idn54d;
	wire [31:0] idn55d;
	
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	LA5 uut (
		.clk(clk), 
		.address(address),
		.data_out(data_out),
		.reset(reset),
		
		.idn11(idn11), 
		.idn12(idn12), 
		.idn13(idn13), 
		.idn14(idn14), 
		.idn15(idn15), 
		.idn21(idn21), 
		.idn22(idn22), 
		.idn23(idn23), 
		.idn24(idn24), 
		.idn25(idn25), 
		.idn31(idn31), 
		.idn32(idn32), 
		.idn33(idn33), 
		.idn34(idn34), 
		.idn35(idn35), 
		.idn41(idn41), 
		.idn42(idn42), 
		.idn43(idn43), 
		.idn44(idn44), 
		.idn45(idn45), 
		.idn51(idn51), 
		.idn52(idn52), 
		.idn53(idn53), 
		.idn54(idn54), 
		.idn55(idn55), 
		.idn11d(idn11d), 
		.idn12d(idn12d), 
		.idn13d(idn13d), 
		.idn14d(idn14d), 
		.idn15d(idn15d), 
		.idn21d(idn21d), 
		.idn22d(idn22d), 
		.idn23d(idn23d), 
		.idn24d(idn24d), 
		.idn25d(idn25d), 
		.idn31d(idn31d), 
		.idn32d(idn32d), 
		.idn33d(idn33d), 
		.idn34d(idn34d), 
		.idn35d(idn35d), 
		.idn41d(idn41d), 
		.idn42d(idn42d), 
		.idn43d(idn43d), 
		.idn44d(idn44d), 
		.idn45d(idn45d), 
		.idn51d(idn51d), 
		.idn52d(idn52d), 
		.idn53d(idn53d), 
		.idn54d(idn54d), 
		.idn55d(idn55d)
	);
	
	always #100 clk = ~clk;

	initial 
	begin
		clk = 0;
		reset=0;
		
		#50;
		address = 5'd0;
		
		#200;
		address = 5'd1;
		
		#200;
		address = 5'd2;
		
		#200;
		address = 5'd3;
		
		#200;
		address = 5'd4;
		
		#200;
		address = 5'd5;
		
		#200;
		address = 5'd6;
		
		#200;
		address = 5'd7;
		
		#200;
		address = 5'd8;
		#200;
		address = 5'd9;
		#200;
		address = 5'd10;
		#200;
		address = 5'd11;
		#200;
		address = 5'd12;
		
		#200;
		address = 5'd13;
		
		#200;
		address = 5'd14;
		#200;
		address = 5'd15;
		#200;
		address = 5'd16;
		#200;
		address = 5'd17;
		#200;
		address = 5'd18;
		#200;
		address = 5'd19;
		#200;
		address = 5'd20;
		#200;
		address = 5'd21;
		#200;
		address = 5'd22;
		#200;
		address = 5'd23;
		#200;
		address = 5'd24;
		#200;
		address = 5'd25;
		#200;
		reset=1'b1;
		#200;
		
		reset=1'b0;

	end
      
endmodule
