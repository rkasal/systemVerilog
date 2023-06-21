module d_ff(
		input clk,
		input reset,
		input d,
		output q
    );

	reg qReg;
	
	always @(posedge clk) 
	begin
		if(reset)//active high reset
			qReg <= 0;
		else
			qReg <= d;
	end

	assign q = qReg;
	
endmodule