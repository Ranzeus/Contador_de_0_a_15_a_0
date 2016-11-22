module cont_ud (
input reset, clk,
output [3:0] Out );

logic [3:0] Cont;
logic direcao = 1'd1;


always_ff @ (posedge clk) begin 

		if(reset) 
			Cont <= 4'd0;
		
		else
			if(direcao == 1'd1) 
				if (Out == 4'd15)begin
					direcao = 1'd0;
					Out = 4'd15;end
				else
					Out <= Out + 4'd1;
			
			else 
				if (Out == 4'd0)begin
					direcao = 1'd1;
					Out = 4'd0;end
				else	
					Out <= Out - 4'd1;
	end
	endmodule