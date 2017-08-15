module VGA_Interface_block(
	
	clk,
	rst,
	R_in,
	G_in,
	B_in,
	
	oAddress,
	R,G,B,
	HS,VS,
	BLANK,
	VGA_SYNC,
	VGA_CLK,
	h_pos,
	v_pos
	
); 

	input [7:0] R_in, G_in, B_in;
	input clk, rst;
	
	output reg [7:0] R, G, B;
	output HS, VS;
	output BLANK;
	output VGA_SYNC, VGA_CLK;

	output reg [9:0] h_pos, v_pos;
	output reg [19:0]	oAddress;

	parameter H_FRONT = 16;
	parameter H_SYNC = 96;
	parameter H_BACK = 48;
	parameter H_DISPLAY = 640;
	parameter H_BLANK = H_SYNC+H_BACK;
	parameter H_TOTAL = H_FRONT+H_SYNC+H_BACK+H_DISPLAY;

	parameter V_FRONT = 12;
	parameter V_SYNC = 2;
	parameter V_BACK = 31;
	parameter V_DISPLAY	= 480;
	parameter V_BLANK = V_SYNC+V_BACK;
	parameter V_TOTAL = V_FRONT+V_SYNC+V_BACK+V_DISPLAY;

	reg b_flag; 
	
	always @(posedge clk)
	begin
		if (rst == 1'b1)
		begin
			h_pos <= 1'b0;
			v_pos <= 1'b0;
		end
		else if (h_pos<H_TOTAL-1)//800 pulsos
		begin
			h_pos <= h_pos + 1'b1;
		end		
		else
			begin
				h_pos <= 1'b0;
				if (v_pos<V_TOTAL-1)//525 pulsos
				begin
					v_pos <= v_pos + 1'b1;
				end
				
				else
				begin
					v_pos <= 1'b0;
				end
			end
	end
	
	always @(h_pos or v_pos)
	begin
		b_flag <= (h_pos<(H_BLANK) || h_pos>(H_TOTAL - H_FRONT - 1) || v_pos<(V_BLANK) || v_pos>(V_TOTAL - V_FRONT - 1));
	end


	assign HS = (h_pos < H_SYNC)?1'b0:1'b1;
	assign VS = (v_pos < V_SYNC)?1'b0:1'b1;
	assign BLANK = b_flag?1'b0:1'b1;
	
	assign VGA_CLK = clk;
	assign VGA_SYNC = 1'b1;

	always @(posedge clk )
	begin
		if(BLANK)
			begin
			/*R <= colors[250][23:16];
				G <= colors[0][15:8];
				B <= colors[0][7:0];*/
				R <= R_in;
				G <= G_in;
				B <= B_in;
			end
		else
			begin
				R <= 8'h00;
				G <= 8'h00;
				B <= 8'h00;
			end
	end
	
	
	// Bloco para geracao dos enderecos de cada pixel na memoria
	// Cada pixel está guardado em um endereco diferente, sequencialmente
	always @(negedge clk )
	begin
		
		// Reset no circuito, endereco vai para zero
		if (rst == 1'b1)
		begin
			oAddress <= 1'b0;
		end
		
		// Operacao normal, apos reset
		else
		begin
			
			// Operacao na parte visivel do video
			if(BLANK)
			begin

				// Enquanto nao tiver atingido o ultimo pixel
				if ( oAddress < ((H_DISPLAY*V_DISPLAY) - 1)  )
				begin
					oAddress <= oAddress + 1'b1;
				end
				
				// Retorna para o inicio apos atingir o ultimo pixel
				else
				begin
					oAddress <= 1'b0;
				end
			
			end
			
			// Operacao na parte de sincronismo do video
			else
			begin
				oAddress <= oAddress;
			end
		end
	end
	
endmodule