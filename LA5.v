`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:31 10/06/2016 
// Design Name: 
// Module Name:    LA5 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//data_in11,data_in12,data_in13,data_in14,data_in15,data_in21,data_in22,data_in23,data_in24,data_in25,data_in31,data_in32,data_in33,data_in34,data_in35,data_in41,data_in42,data_in43,data_in44,data_in45,data_in51,data_in52,data_in53,data_in54,data_in55
//////////////////////////////////////////////////////////////////////////////////
//idn stands for identity
//mat stands for matrix

module LA5(clk, reset, data_out, address, idn11,idn12,idn13,idn14,idn15,idn21,idn22,idn23,idn24,idn25,idn31,idn32,idn33,idn34,idn35,idn41,idn42,idn43,idn44,idn45,idn51,idn52,idn53,idn54,idn55,idn11d,idn12d,idn13d,idn14d,idn15d,idn21d,idn22d,idn23d,idn24d,idn25d,idn31d,idn32d,idn33d,idn34d,idn35d,idn41d,idn42d,idn43d,idn44d,idn45d,idn51d,idn52d,idn53d,idn54d,idn55d);


output [31:0] idn11d,idn12d,idn13d,idn14d,idn15d;
output [31:0] idn21d,idn22d,idn23d,idn24d,idn25d;
output [31:0] idn31d,idn32d,idn33d,idn34d,idn35d;
output [31:0] idn41d,idn42d,idn43d,idn44d,idn45d;
output [31:0] idn51d,idn52d,idn53d,idn54d,idn55d;

output reg [31:0] idn11,idn12,idn13,idn14,idn15;
output reg [31:0] idn21,idn22,idn23,idn24,idn25;
output reg [31:0] idn31,idn32,idn33,idn34,idn35;
output reg [31:0] idn41,idn42,idn43,idn44,idn45;
output reg [31:0] idn51,idn52,idn53,idn54,idn55;

reg [31:0] mat[0:25];
reg [31:0] inverse[0:24];

output [31:0] data_out;

input reset;
input [4:0] address;

reg [31:0] data_in11,data_in12,data_in13,data_in14,data_in15;
reg [31:0] data_in21,data_in22,data_in23,data_in24,data_in25;
reg [31:0] data_in31,data_in32,data_in33,data_in34,data_in35;
reg [31:0] data_in41,data_in42,data_in43,data_in44,data_in45;
reg [31:0] data_in51,data_in52,data_in53,data_in54,data_in55;
input clk;


reg [31:0] idn11t = 32'd1;
reg [31:0] idn12t = 32'd0;
reg [31:0] idn13t = 32'd0;
reg [31:0] idn14t = 32'd0;
reg [31:0] idn15t = 32'd0;

reg [31:0] idn21t = 32'd0;
reg [31:0] idn22t = 32'd1;
reg [31:0] idn23t = 32'd0;
reg [31:0] idn24t = 32'd0;
reg [31:0] idn25t = 32'd0;

reg [31:0] idn31t = 32'd0;
reg [31:0] idn32t = 32'd0;
reg [31:0] idn33t = 32'd1;
reg [31:0] idn34t = 32'd0;
reg [31:0] idn35t = 32'd0;

reg [31:0] idn41t = 32'd0;
reg [31:0] idn42t = 32'd0;
reg [31:0] idn43t = 32'd0;
reg [31:0] idn44t = 32'd1;
reg [31:0] idn45t = 32'd0;

reg [31:0] idn51t = 32'd0;
reg [31:0] idn52t = 32'd0;
reg [31:0] idn53t = 32'd0;
reg [31:0] idn54t = 32'd0;
reg [31:0] idn55t = 32'd1;

reg [31:0] answer_temp11,answer_temp12,answer_temp13,answer_temp14,answer_temp15,answer_temp21,answer_temp22,answer_temp23,answer_temp24,answer_temp25,answer_temp31,answer_temp32,answer_temp33,answer_temp34,answer_temp35,answer_temp41,answer_temp42,answer_temp43,answer_temp44,answer_temp45,answer_temp51,answer_temp52,answer_temp53t,answer_temp54t,answer_temp55t;

reg [31:0] x;
reg [31:0] y;

mat_ROM set_value (
  .clka(clk), // input clka
  .addra(address), // input [4 : 0] addra
  .douta(data_out) // output [31 : 0] douta
);


always@(posedge clk)
begin

if(reset==1'b0)
begin
	mat[address] <= data_out;
end

else
begin

data_in11 = mat[1];
data_in12 = mat[2];
data_in13 = mat[3];
data_in14 = mat[4];
data_in15 = mat[5];

data_in21 = mat[6];
data_in22 = mat[7];
data_in23 = mat[8];
data_in24 = mat[9];
data_in25 = mat[10];

data_in31 = mat[11];
data_in32= mat[12];
data_in33= mat[13];
data_in34 = mat[14];
data_in35 = mat[15];

data_in41 = mat[16];
data_in42 =  mat[17];
data_in43 = mat[18];
data_in44 = mat[19];
data_in45 = mat[20];

data_in51 = mat[21];
data_in52 = mat[22];
data_in53 = mat[23];
data_in54 = mat[24];
data_in55 = mat[25];

answer_temp11 = (data_in11 > 0 ? data_in11 : (~data_in11+32'd1));
answer_temp12 = (data_in12 > 0 ? data_in12 : (~data_in12+32'd1));
answer_temp13 = (data_in13 > 0 ? data_in13 : (~data_in13+32'd1));
answer_temp14 = (data_in14 > 0 ? data_in14 : (~data_in14+32'd1));
answer_temp15 = (data_in15 > 0 ? data_in15 : (~data_in15+32'd1));

answer_temp21 = (data_in21 > 0 ? data_in21 : (~data_in21 + 32'd1));
answer_temp22 = (data_in22 > 0 ? data_in22 : (~data_in22 + 32'd1));
answer_temp23 = (data_in23 > 0 ? data_in23 : (~data_in23 + 32'd1));
answer_temp24 = (data_in24 > 0 ? data_in24 : (~data_in24 + 32'd1));
answer_temp25 = (data_in25 > 0 ? data_in25 : (~data_in25 + 32'd1));

answer_temp31 = (data_in31 > 0 ? data_in31 : (~data_in31 + 32'd1));
answer_temp32 = (data_in32 > 0 ? data_in32 : (~data_in32 + 32'd1));
answer_temp33 = (data_in33 > 0 ? data_in33 : (~data_in33 + 32'd1));
answer_temp34 = (data_in34 > 0 ? data_in34 : (~data_in34 + 32'd1));
answer_temp35 = (data_in35 > 0 ? data_in35 : (~data_in35 + 32'd1));

answer_temp41 = (data_in41 > 0 ? data_in41 : (~data_in41+32'd1));
answer_temp42 = (data_in42 > 0 ? data_in42 : (~data_in42+32'd1));
answer_temp43 = (data_in43 > 0 ? data_in43 : (~data_in43+32'd1));
answer_temp44 = (data_in44 > 0 ? data_in44 : (~data_in44+32'd1));
answer_temp45 = (data_in45 > 0 ? data_in45 : (~data_in45+32'd1));

answer_temp51 = (data_in51 > 0 ? data_in51 : (~data_in51+32'd1));
answer_temp52 = (data_in52 > 0 ? data_in52 : (~data_in52+32'd1));
answer_temp53t = (data_in53 > 0 ? data_in53 : (~data_in53+32'd1));
answer_temp54t = (data_in54 > 0 ? data_in54 : (~data_in54+32'd1));
answer_temp55t = (data_in55 > 0 ? data_in55 : (~data_in55+32'd1));


x = answer_temp11;
y = answer_temp21;

answer_temp21 = x*answer_temp21 - y*answer_temp11;
answer_temp22 = x*answer_temp22 - y*answer_temp12;
answer_temp23 = x*answer_temp23 - y*answer_temp13;
answer_temp24 = x*answer_temp24 - y*answer_temp14;
answer_temp25 = x*answer_temp25 - y*answer_temp15;

idn21t = x*idn21t - y*idn11t;
idn22t = x*idn22t - y*idn12t;
idn23t = x*idn23t - y*idn13t;
idn24t = x*idn24t - y*idn14t;
idn25t = x*idn25t - y*idn15t;

x = answer_temp11;
y = answer_temp31;

answer_temp31 = x*answer_temp31 - y*answer_temp11;
answer_temp32 = x*answer_temp32 - y*answer_temp12;
answer_temp33 = x*answer_temp33 - y*answer_temp13;
answer_temp34 = x*answer_temp34 - y*answer_temp14;
answer_temp35 = x*answer_temp35 - y*answer_temp15;

idn31t = x*idn31t - y*idn11t;
idn32t = x*idn32t - y*idn12t;
idn33t = x*idn33t - y*idn13t;
idn34t = x*idn34t - y*idn14t;
idn35t = x*idn35t - y*idn15t;

x = answer_temp11;
y = answer_temp41;

answer_temp41 = x*answer_temp41 - y*answer_temp11;
answer_temp42 = x*answer_temp42 - y*answer_temp12;
answer_temp43 = x*answer_temp43 - y*answer_temp13;
answer_temp44 = x*answer_temp44 - y*answer_temp14;
answer_temp45 = x*answer_temp45 - y*answer_temp15;

idn41t = x*idn41t - y*idn11t;
idn42t = x*idn42t - y*idn12t;
idn43t = x*idn43t - y*idn13t;
idn44t = x*idn44t - y*idn14t;
idn45t = x*idn45t - y*idn15t;

x = answer_temp11;
y = answer_temp51;

answer_temp51t = x*answer_temp51 - y*answer_temp11;
answer_temp52t = x*answer_temp52 - y*answer_temp12;
answer_temp53t = x*answer_temp53t - y*answer_temp13;
answer_temp54t = x*answer_temp54t - y*answer_temp14;
answer_temp55t = x*answer_temp55t - y*answer_temp15;

idn51t = x*idn51t - y*idn11t;
idn52t = x*idn52t - y*idn12t;
idn53t = x*idn53t - y*idn13t;
idn54t = x*idn54t - y*idn14t;
idn55t = x*idn55t - y*idn15t;

x = answer_temp22;
y = answer_temp12;

answer_temp11 = x*answer_temp11 - y*answer_temp21;
answer_temp12 = x*answer_temp12 - y*answer_temp22;
answer_temp13 = x*answer_temp13 - y*answer_temp23;
answer_temp14 = x*answer_temp14 - y*answer_temp24;
answer_temp15 = x*answer_temp15 - y*answer_temp25;
idn11t = x*idn11t - y*idn21t;
idn12t = x*idn12t - y*idn22t;
idn13t = x*idn13t - y*idn23t;
idn14t = x*idn14t - y*idn24t;
idn15t = x*idn15t - y*idn25t;

x = answer_temp22;
y = answer_temp32;

answer_temp31 = x*answer_temp31 - y*answer_temp21;
answer_temp32 = x*answer_temp32 - y*answer_temp22;
answer_temp33 = x*answer_temp33 - y*answer_temp23;
answer_temp34 = x*answer_temp34 - y*answer_temp24;
answer_temp35 = x*answer_temp35 - y*answer_temp25;
idn31t = x*idn31t - y*idn21t;
idn32t = x*idn32t - y*idn22t;
idn33t = x*idn33t - y*idn23t;
idn34t = x*idn34t - y*idn24t;
idn35t = x*idn35t - y*idn25t;

x = answer_temp22;
y = answer_temp42;

answer_temp41 = x*answer_temp41 - y*answer_temp21;
answer_temp42 = x*answer_temp42 - y*answer_temp22;
answer_temp43 = x*answer_temp43 - y*answer_temp23;
answer_temp44 = x*answer_temp44 - y*answer_temp24;
answer_temp45 = x*answer_temp45 - y*answer_temp25;
idn41t = x*idn41t - y*idn21t;
idn42t = x*idn42t - y*idn22t;
idn43t = x*idn43t - y*idn23t;
idn44t = x*idn44t - y*idn24t;
idn45t = x*idn45t - y*idn25t;

x = answer_temp22;
y = answer_temp52;

answer_temp51 = x*answer_temp51 - y*answer_temp21;
answer_temp52 = x*answer_temp52 - y*answer_temp22;
answer_temp53t = x*answer_temp53t - y*answer_temp23;
answer_temp54t = x*answer_temp54t - y*answer_temp24;
answer_temp55t = x*answer_temp55t - y*answer_temp25;
idn51t = x*idn51t - y*idn21t;
idn52t = x*idn52t - y*idn22t;
idn53t = x*idn53t - y*idn23t;
idn54t = x*idn54t - y*idn24t;
idn55t = x*idn55t - y*idn25t;

x = answer_temp33;
y = answer_temp13;

answer_temp11 = x*answer_temp11 - y*answer_temp31;
answer_temp12 = x*answer_temp12 - y*answer_temp32;
answer_temp13 = x*answer_temp13 - y*answer_temp33;
answer_temp14 = x*answer_temp14 - y*answer_temp34;
answer_temp15 = x*answer_temp15 - y*answer_temp35;
idn11t = x*idn11t - y*idn31t;
idn12t = x*idn12t - y*idn32t;
idn13t = x*idn13t - y*idn33t;
idn14t = x*idn14t - y*idn34t;
idn15t = x*idn15t - y*idn35t;

x = answer_temp33;
y = answer_temp23;

answer_temp21 = x*answer_temp21 - y*answer_temp31;
answer_temp22 = x*answer_temp22 - y*answer_temp32;
answer_temp23 = x*answer_temp23 - y*answer_temp33;
answer_temp24 = x*answer_temp24 - y*answer_temp34;
answer_temp25 = x*answer_temp25 - y*answer_temp35;
idn21t = x*idn21t - y*idn31t;
idn22t = x*idn22t - y*idn32t;
idn23t = x*idn23t - y*idn33t;
idn24t = x*idn24t - y*idn34t;
idn25t = x*idn25t - y*idn35t;

x = answer_temp33;
y = answer_temp43;

answer_temp41 = x*answer_temp41 - y*answer_temp31;
answer_temp42 = x*answer_temp42 - y*answer_temp32;
answer_temp43 = x*answer_temp43 - y*answer_temp33;
answer_temp44 = x*answer_temp44 - y*answer_temp34;
answer_temp45 = x*answer_temp45 - y*answer_temp35;
idn41t = x*idn41t - y*idn31t;
idn42t = x*idn42t - y*idn32t;
idn43t = x*idn43t - y*idn33t;
idn44t = x*idn44t - y*idn34t;
idn45t = x*idn45t - y*idn35t;

x = answer_temp33;
y = answer_temp53t;

answer_temp51 = x*answer_temp51 - y*answer_temp31;
answer_temp52 = x*answer_temp52 - y*answer_temp32;
answer_temp53t = x*answer_temp53t - y*answer_temp33;
answer_temp54t = x*answer_temp54t - y*answer_temp34;
answer_temp55t = x*answer_temp55t - y*answer_temp35;
idn51t = x*idn51t - y*idn31t;
idn52t = x*idn52t - y*idn32t;
idn53t = x*idn53t - y*idn33t;
idn54t = x*idn54t - y*idn34t;
idn55t = x*idn55t - y*idn35t;

x = answer_temp44;
y = answer_temp14;

answer_temp11 = x*answer_temp11 - y*answer_temp41;
answer_temp12 = x*answer_temp12 - y*answer_temp42;
answer_temp13 = x*answer_temp13 - y*answer_temp43;
answer_temp14 = x*answer_temp14 - y*answer_temp44;
answer_temp15 = x*answer_temp15 - y*answer_temp45;
idn11t = x*idn11t - y*idn41t;
idn12t = x*idn12t - y*idn42t;
idn13t = x*idn13t - y*idn43t;
idn14t = x*idn14t - y*idn44t;
idn15t = x*idn15t - y*idn45t;

x = answer_temp44;
y = answer_temp24;

answer_temp21 = x*answer_temp21 - y*answer_temp41;
answer_temp22 = x*answer_temp22 - y*answer_temp42;
answer_temp23 = x*answer_temp23 - y*answer_temp43;
answer_temp24 = x*answer_temp24 - y*answer_temp44;
answer_temp25 = x*answer_temp25 - y*answer_temp45;
idn21t = x*idn21t - y*idn41t;
idn22t = x*idn22t - y*idn42t;
idn23t = x*idn23t - y*idn43t;
idn24t = x*idn24t - y*idn44t;
idn25t = x*idn25t - y*idn45t;

x = answer_temp44;
y = answer_temp34;

answer_temp31 = x*answer_temp31 - y*answer_temp41;
answer_temp32 = x*answer_temp32 - y*answer_temp42;
answer_temp33 = x*answer_temp33 - y*answer_temp43;
answer_temp34 = x*answer_temp34 - y*answer_temp44;
answer_temp35 = x*answer_temp35 - y*answer_temp45;
idn31t = x*idn31t - y*idn41t;
idn32t = x*idn32t - y*idn42t;
idn33t = x*idn33t - y*idn43t;
idn34t = x*idn34t - y*idn44t;
idn35t = x*idn35t - y*idn45t;

x = answer_temp44;
y = answer_temp54t;

answer_temp51 = x*answer_temp51 - y*answer_temp41;
answer_temp52 = x*answer_temp52 - y*answer_temp42;
answer_temp53t = x*answer_temp53t - y*answer_temp43;
answer_temp54t = x*answer_temp54t - y*answer_temp44;
answer_temp55t = x*answer_temp55t - y*answer_temp45;
idn51t = x*idn51t - y*idn41t;
idn52t = x*idn52t - y*idn42t;
idn53t = x*idn53t - y*idn43t;
idn54t = x*idn54t - y*idn44t;
idn55t = x*idn55t - y*idn45t;

x = answer_temp55t;
y = answer_temp15;

answer_temp11 = x*answer_temp11 - y*answer_temp51;
answer_temp12 = x*answer_temp12 - y*answer_temp52;
answer_temp13 = x*answer_temp13 - y*answer_temp53t;
answer_temp14 = x*answer_temp14 - y*answer_temp54t;
answer_temp15 = x*answer_temp15 - y*answer_temp55t;
idn11t = x*idn11t - y*idn51t;
idn12t = x*idn12t - y*idn52t;
idn13t = x*idn13t - y*idn53t;
idn14t = x*idn14t - y*idn54t;
idn15t = x*idn15t - y*idn55t;

x = answer_temp55t;
y = answer_temp25;

answer_temp21 = x*answer_temp21 - y*answer_temp51;
answer_temp22 = x*answer_temp22 - y*answer_temp52;
answer_temp23 = x*answer_temp23 - y*answer_temp53t;
answer_temp24 = x*answer_temp24 - y*answer_temp54t;
answer_temp25 = x*answer_temp25 - y*answer_temp55t;
idn21t = x*idn21t - y*idn51t;
idn22t = x*idn22t - y*idn52t;
idn23t = x*idn23t - y*idn53t;
idn24t = x*idn24t - y*idn54t;
idn25t = x*idn25t - y*idn55t;

x = answer_temp55t;
y = answer_temp35;

answer_temp31 = x*answer_temp31 - y*answer_temp51;
answer_temp32 = x*answer_temp32 - y*answer_temp52;
answer_temp33 = x*answer_temp33 - y*answer_temp53t;
answer_temp34 = x*answer_temp34 - y*answer_temp54t;
answer_temp35 = x*answer_temp35 - y*answer_temp55t;
idn31t = x*idn31t - y*idn51t;
idn32t = x*idn32t - y*idn52t;
idn33t = x*idn33t - y*idn53t;
idn34t = x*idn34t - y*idn54t;
idn35t = x*idn35t - y*idn55t;

x = answer_temp55t;
y = answer_temp45;

answer_temp41 = x*answer_temp41 - y*answer_temp51;
answer_temp42 = x*answer_temp42 - y*answer_temp52;
answer_temp43 = x*answer_temp43 - y*answer_temp53t;
answer_temp44 = x*answer_temp44 - y*answer_temp54t;
answer_temp45 = x*answer_temp45 - y*answer_temp55t;
idn41t = x*idn41t - y*idn51t;
idn42t = x*idn42t - y*idn52t;
idn43t = x*idn43t - y*idn53t;
idn44t = x*idn44t - y*idn54t;
idn45t = x*idn45t - y*idn55t;

if(answer_temp11==32'd0 || answer_temp22 == 32'd0 || answer_temp33 == 32'd0 || answer_temp44==32'd0 || answer_temp55t==32'd0)
begin
	idn11=32'dx;
	idn22=32'dx;
	idn33=32'dx;
	idn44=32'dx;
	idn55=32'dx;
end

else
begin
	idn11 = idn11t;
	idn12 = idn12t;
	idn13 = idn13t;
	idn14 = idn14t;
	idn15 = idn15t;

	idn21 = idn21t;
	idn22 = idn22t;
	idn23 = idn23t;
	idn24 = idn24t;
	idn25 = idn25t;

	idn31 = idn31t;
	idn32 = idn32t;
	idn33 = idn33t;
	idn34 = idn34t;
	idn35 = idn35t;

	idn41 = idn41t;
	idn42 = idn42t;
	idn43 = idn43t;
	idn44 = idn44t;
	idn45 = idn45t;

	idn51 = idn51t;
	idn52 = idn52t;
	idn53 = idn53t;
	idn54 = idn54t;
	idn55 = idn55t;
end

inverse[0] = idn11;
inverse[1] = idn12;
inverse[2] = idn13;
inverse[3] = idn14;
inverse[4] = idn15;

inverse[5] = idn21;
inverse[6] = idn22;
inverse[7] = idn23;
inverse[8] = idn24;
inverse[9] = idn25;

inverse[10] = idn31;
inverse[11] = idn32;
inverse[12] = idn33;
inverse[13] = idn34;
inverse[14] = idn35;

inverse[15] = idn41;
inverse[16] = idn42;
inverse[17] = idn43;
inverse[18] = idn44;
inverse[19] = idn45;

inverse[20] = idn51;
inverse[21] = idn52;
inverse[22] = idn53;
inverse[23] = idn54;
inverse[24] = idn55;

end

end

wire [31:0] idn11dt,idn12dt,idn13dt,idn14dt,idn15dt;
wire [31:0] idn21dt,idn22dt,idn23dt,idn24dt,idn25dt;
wire [31:0] idn31dt,idn32dt,idn33dt,idn34dt,idn35dt;
wire [31:0] idn41dt,idn42dt,idn43dt,idn44dt,idn45dt;
wire [31:0] idn51dt,idn52dt,idn53dt,idn54dt,idn55dt;

assign idn12d = idn12;
assign idn13d = idn13;
assign idn14d = idn14;
assign idn15d = idn15;

assign idn21d = idn21;
assign idn22d = idn22;
assign idn23d = idn23;
assign idn24d = idn24;
assign idn25d = idn25;

assign idn31d = idn31;
assign idn32d = idn32;
assign idn33d = idn33;
assign idn34d = idn34;
assign idn35d = idn35;

assign idn41d = idn41;
assign idn42d = idn42;
assign idn43d = idn43;
assign idn44d = idn44;
assign idn45d = idn45;

assign idn51d = idn51;
assign idn52d = idn52;
assign idn53d = idn53;
assign idn54d = idn54;
assign idn55d = idn55;

wire [31:0] a,b,c,d,e;

assign a = answer_temp11;
assign b = answer_temp22;
assign c = answer_temp33;
assign d = answer_temp44;
assign e = answer_temp55t;


assign idn11d = idn11dt;
assign idn12d = idn12dt;
assign idn13d = idn13dt;
assign idn14d = idn14dt;
assign idn15d = idn15dt;

assign idn21d = idn21dt;
assign idn22d = idn22dt;
assign idn23d = idn23dt;
assign idn24d = idn24dt;
assign idn25d = idn25dt;

assign idn31d = idn31dt;
assign idn32d = idn32dt;
assign idn33d = idn33dt;
assign idn34d = idn34dt;
assign idn35d = idn35dt;

assign idn41d = idn41dt;
assign idn42d = idn42dt;
assign idn43d = idn43dt;
assign idn44d = idn44dt;
assign idn45d = idn45dt;

assign idn51d = idn51dt;
assign idn52d = idn52dt;
assign idn53d = idn53dt;
assign idn54d = idn54dt;
assign idn55d = idn55dt;

endmodule
