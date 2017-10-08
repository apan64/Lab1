// Adder_subtacter testbench

`timescale 1 ns / 1 ps
`include "adder_subtracter.v"

module test32bitAdder();
    reg[31:0] a;
    reg[31:0] b;
    reg[2:0] carryin;
    wire[31:0] ans;
    wire carryout, overflow;

    adder_subtracter adder0(ans[31:0], carryout, overflow, finalB[31:0],a[31:0], b[31:0], carryin[2:0]);

    initial begin
    	
    	a[31]=0;a[30]=0;a[29]=0;a[28]=0;a[27]=0;a[26]=0;a[25]=0;a[24]=0;a[23]=0;a[22]=0;a[21]=0;a[20]=0;a[19]=0;a[18]=0;a[17]=0;a[16]=0;a[15]=0;a[14]=0;a[13]=0;a[12]=0;a[11]=0;a[10]=0;a[9]=0;a[8]=0;a[7]=0;a[6]=0;a[5]=0;a[4]=0;a[3]=0;a[2]=0;a[1]=0;a[0]=0; b[31]=0;b[30]=0;b[29]=0;b[28]=0;b[27]=0;b[26]=0;b[25]=0;b[24]=0;b[23]=0;b[22]=0;b[21]=0;b[20]=0;b[19]=0;b[18]=0;b[17]=0;b[16]=0;b[15]=0;b[14]=0;b[13]=0;b[12]=0;b[11]=0;b[10]=0;b[9]=0;b[8]=0;b[7]=0;b[6]=0;b[5]=0;b[4]=0;b[3]=0;b[2]=0;b[1]=0;b[0]=0; carryin[0]=1;carryin[1]=0;carryin[2]=0; #5000 
    	$display("%b  %b  %b | 	%b  %b %b | ", a[31:0],b[31:0],carryin,ans[31:0],carryout, overflow);
        $display("~~~~~~~~~~~~~~~~~~~~~~~~ %b~~~~~~~~~~", finalB[31:0]);

    	a[31]=0;a[30]=0;a[29]=0;a[28]=0;a[27]=0;a[26]=0;a[25]=0;a[24]=0;a[23]=0;a[22]=0;a[21]=0;a[20]=0;a[19]=0;a[18]=0;a[17]=0;a[16]=0;a[15]=0;a[14]=0;a[13]=0;a[12]=0;a[11]=0;a[10]=0;a[9]=0;a[8]=0;a[7]=0;a[6]=0;a[5]=0;a[4]=0;a[3]=0;a[2]=0;a[1]=0;a[0]=1; b[31]=0;b[30]=0;b[29]=0;b[28]=0;b[27]=0;b[26]=0;b[25]=0;b[24]=0;b[23]=0;b[22]=0;b[21]=0;b[20]=0;b[19]=0;b[18]=0;b[17]=0;b[16]=0;b[15]=0;b[14]=0;b[13]=0;b[12]=0;b[11]=0;b[10]=0;b[9]=0;b[8]=0;b[7]=0;b[6]=0;b[5]=0;b[4]=0;b[3]=0;b[2]=0;b[1]=1;b[0]=0; carryin[0]=1;carryin[1]=0;carryin[2]=0; #5000 
    	$display("%b  %b  %b | 	%b  %b %b | ", a[31:0],b[31:0],carryin,ans[31:0],carryout, overflow);
        $display("~~~~~~~~~~~~~~~~~~~~~~~~ %b~~~~~~~~~~", finalB);

    	a[31]=0;a[30]=0;a[29]=0;a[28]=0;a[27]=0;a[26]=0;a[25]=0;a[24]=0;a[23]=0;a[22]=0;a[21]=1;a[20]=0;a[19]=0;a[18]=0;a[17]=0;a[16]=0;a[15]=0;a[14]=0;a[13]=0;a[12]=0;a[11]=0;a[10]=0;a[9]=0;a[8]=0;a[7]=0;a[6]=0;a[5]=0;a[4]=0;a[3]=0;a[2]=0;a[1]=0;a[0]=0; b[31]=0;b[30]=0;b[29]=0;b[28]=0;b[27]=0;b[26]=0;b[25]=0;b[24]=0;b[23]=0;b[22]=0;b[21]=0;b[20]=0;b[19]=0;b[18]=0;b[17]=0;b[16]=0;b[15]=0;b[14]=0;b[13]=0;b[12]=0;b[11]=0;b[10]=0;b[9]=0;b[8]=0;b[7]=1;b[6]=0;b[5]=0;b[4]=0;b[3]=0;b[2]=0;b[1]=0;b[0]=0; carryin[0]=1;carryin[1]=0;carryin[2]=0; #5000 
    	$display("%b  %b  %b | 	%b  %b %b | ", a[31:0],b[31:0],carryin,ans[31:0],carryout, overflow);
        $display("~~~~~~~~~~~~~~~~~~~~~~~~ %b~~~~~~~~~~", finalB);

        a[31]=1;a[30]=0;a[29]=0;a[28]=0;a[27]=0;a[26]=0;a[25]=0;a[24]=0;a[23]=0;a[22]=0;a[21]=1;a[20]=0;a[19]=0;a[18]=0;a[17]=0;a[16]=1;a[15]=0;a[14]=0;a[13]=0;a[12]=0;a[11]=0;a[10]=0;a[9]=0;a[8]=0;a[7]=0;a[6]=0;a[5]=0;a[4]=0;a[3]=0;a[2]=0;a[1]=0;a[0]=0; b[31]=1;b[30]=0;b[29]=0;b[28]=0;b[27]=0;b[26]=0;b[25]=0;b[24]=0;b[23]=0;b[22]=0;b[21]=0;b[20]=0;b[19]=0;b[18]=0;b[17]=0;b[16]=1;b[15]=0;b[14]=0;b[13]=0;b[12]=0;b[11]=0;b[10]=0;b[9]=0;b[8]=0;b[7]=1;b[6]=0;b[5]=0;b[4]=0;b[3]=0;b[2]=0;b[1]=0;b[0]=0; carryin[0]=1;carryin[1]=0;carryin[2]=0; #5000 
        $display("%b  %b  %b |  %b  %b %b | ", a[31:0],b[31:0],carryin,ans[31:0],carryout, overflow);
        $display("~~~~~~~~~~~~~~~~~~~~~~~~ %b~~~~~~~~~~", finalB);

    end
endmodule