// Modelsim-ASE requires a timescale directive
`timescale 1 ns / 1 ns
module tb_d_ff();

reg clk	    = 1;
reg reset   ;
reg d		;
reg q       ;
  
d_ff 
		d_ff_Inst(
			.clk	(clk	)	,
			.reset	(reset	)	,
			.d		(d		)	,
			.q      (q    	)
    );
    
	always #5 clk <= ~clk;
	
	initial begin 
		reset	<= 1;
		d 		<= 0;
		
		#20
		reset 	<= 0;
		#15		d 	<=1;		
		#25		d 	<=0;
		#12		d 	<=1;
		#17		d 	<=0;
		#21		d 	<=1;
		#9		d 	<=0;
		
		#50
		$stop;
	end
	
endmodule
