module Demux_tb();

reg S1, S0, F;
wire A, B, C, D;
integer i;

Demux dut (.S1(S1),.S0(S0),.F(F),.A(A),.B(B),.C(C),.D(D)); 

initial begin
	S1 <= 0;
	S0 <= 0;
	F <= 0;

	$monitor ("S1=%0b S0=%0b F=%0b D=%0b C=%0b B=%0b A=%0b", S1, S0, F, A, B, C, D);

for (i = 0; i < 8; i = i + 1) begin
		{F, S1, S0} = i;
		#10;
	end
end
endmodule
