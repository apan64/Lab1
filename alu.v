//final 32-bit ALU

`include "adder_subtracter.v"
`include "slt.v" 
`include "and_32bit.v"
`include "nand_32bit.v"
`include "xor_32bit.v"
`include "nor_32bit.v"
`include "or_32bit.v"

module ALUcontrolLUT 
(
	output cout, //addsub only
	output flag, //addsub only
	output reg[31:0] finalsignal,
	input [2:0]ALUcommand,
	input [31:0]a,
	input [31:0]b


);
//everything going through the different parts
wire [31:0]addsub;
wire [31:0]xorin;
wire [31:0]slt;
wire [31:0]andin;
wire [31:0]nandin;
wire [31:0]norin;
wire [31:0]orin;

adder_subtracter addsub0(addsub[31:0],cout,flag,a[31:0],b[31:0],ALUcommand[2:0]);
xor_32bit xor0(xorin[31:0],a[31:0],b[31:0]);
full_slt_32bit slt0(slt[31:0],a[31:0],b[31:0]);
and_32bit and0(andin[31:0],a[31:0],b[31:0]);
nand_32bit nand0(nandin[31:0],a[31:0],b[31:0]);
nor_32bit nor0(norin[31:0],a[31:0],b[31:0]);
or_32bit or0(orin[31:0],a[31:0],b[31:0]);


  always @(ALUcommand) 
  	begin
    if (ALUcommand[0]==0 && ALUcommand[1]==0 && ALUcommand[2]==0)
    	finalsignal[31:0]=addsub[31:0]; 
    if (ALUcommand[0]==0 && ALUcommand[1]==0 && ALUcommand[2]==0)
    	finalsignal[31:0]=addsub[31:0];
    if(ALUcommand[0]==0 && ALUcommand[1]==1 && ALUcommand[2]==0)
    	finalsignal[31:0]=xorin[31:0];
    if(ALUcommand[0]==1 && ALUcommand[1]==1 && ALUcommand[2]==0)
    	finalsignal[31:0]=slt[31:0];
  	if(ALUcommand[0]==0 && ALUcommand[1]==0 && ALUcommand[2]==1)
    	finalsignal[31:0]=andin[31:0];
  	if(ALUcommand[0]==1 && ALUcommand[1]==0 && ALUcommand[2]==1)
    	finalsignal[31:0]=nandin[31:0];
  	if(ALUcommand[0]==0 && ALUcommand[1]==1 && ALUcommand[2]==1)
    	finalsignal[31:0]=norin[31:0];
	else
    	finalsignal[31:0]=orin[31:0];
    end
endmodule