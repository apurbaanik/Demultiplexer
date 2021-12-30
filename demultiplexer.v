module Demux (input S1, S0, F, output reg A, B, C, D);
	always @(S1, S0, F) begin
		A = ~S1 & ~S0 & F;
		B = ~S1 & S0 & F;
		C = S1 & ~S0 & F;
		D = S1 & S0 & F;
	end
endmodule
