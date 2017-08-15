module GPU_processador(
	h_pos,
	v_pos,
	clk,
	rst,
	
	sprite_id_out,
	sprite_x_out,
	sprite_y_out,
	sprite_color_out
	
);
//obtem as posicoes atuais do controlador vga
//obtem o pixel background atual da memoria, relativo à essa posicao
//envia o pixel atual com o indice sprite relacionado para o modulo sprite
	
	input clk;
	input	rst;
	input	[9:0]	h_pos;
	input	[9:0]	v_pos;
	
	//6 bits por sprite
	output	reg	[383:0]	sprite_id_out;
	//10 bits
	output	reg	[639:0]	sprite_x_out;
	//10 bits
	output	reg	[639:0]	sprite_y_out;
	//16 bits
	output	reg	[1023:0]	sprite_color_out;
	
	reg	[26:0]	contador_segundo;
	
	always @(posedge clk)
	begin
	
		if (rst == 1'b1)
		begin
			contador_segundo <= 1'b0;
		end
		
		else
		begin
		
			if(contador_segundo <= 50000000)
			begin
				contador_segundo <= contador_segundo + 1'b1;
			
				sprite_id_out[((63+1)*6)-1:63*6] <= 6'h00;	// SPRITE LEVEL 63 = 0
				sprite_id_out[((62+1)*6)-1:62*6] <= 6'h01;	// SPRITE LEVEL 62 = 1
				sprite_id_out[((61+1)*6)-1:61*6] <= 6'h02;	// SPRITE LEVEL 61 = 2
				sprite_id_out[((60+1)*6)-1:60*6] <= 6'h03;	// SPRITE LEVEL 60 = 3
				sprite_id_out[((59+1)*6)-1:59*6] <= 6'h05;	// SPRITE LEVEL 59 = 4
				sprite_id_out[((58+1)*6)-1:58*6] <= 6'h07;	// SPRITE LEVEL 58 = 5
				sprite_id_out[((57+1)*6)-1:57*6] <= 6'h06;	// SPRITE LEVEL 57 = 6
				sprite_id_out[57*6-1:0]   <= 0;

				sprite_y_out[(63+1)*10 - 1:63*10] <= 10'hA2;	// SPRITE LEVEL 63 = 50
				sprite_y_out[(62+1)*10 - 1:62*10] <= 10'h32;	// SPRITE LEVEL 62 = 50
				sprite_y_out[(61+1)*10 - 1:61*10] <= 10'hB9;	// SPRITE LEVEL 61 = 58
				sprite_y_out[(60+1)*10 - 1:60*10] <= 10'h3A;	// SPRITE LEVEL 60 = 58
				sprite_y_out[(59+1)*10 - 1:59*10] <= 10'h32;	// SPRITE LEVEL 59 = 50
				sprite_y_out[(58+1)*10 - 1:58*10] <= 10'h68;	// SPRITE LEVEL 59 = 50
				sprite_y_out[(57+1)*10 - 1:57*10] <= 10'hDD;	// SPRITE LEVEL 59 = 50
				sprite_y_out[57*10-1:0] 	 <= 0;
				
				sprite_x_out[(63+1)*10 - 1:63*10] <= 10'h96;	// SPRITE LEVEL 63 = 150
				sprite_x_out[(62+1)*10 - 1:62*10] <= 10'hB6;	// SPRITE LEVEL 62 = 182
				sprite_x_out[(61+1)*10 - 1:61*10] <= 10'hBE;	// SPRITE LEVEL 61 = 190
				sprite_x_out[(60+1)*10 - 1:60*10] <= 10'hB2;	// SPRITE LEVEL 60 = 210
				sprite_x_out[(59+1)*10 - 1:59*10] <= 10'hA7;	// SPRITE LEVEL 59 = 230
				sprite_x_out[(58+1)*10 - 1:58*10] <= 10'hE2;	// SPRITE LEVEL 59 = 230
				sprite_x_out[(57+1)*10 - 1:57*10] <= 10'hE1;	// SPRITE LEVEL 59 = 230
				sprite_x_out[57*10-1:0]	 <= 0;
		
				sprite_color_out[(63+1)*16 - 1:63*16]	<= 16'b1111111111111111;	// SPRITE LEVEL 63
				sprite_color_out[(62+1)*16 - 1:62*16]		<= 16'b1111100000000000;	// SPRITE LEVEL 62
				sprite_color_out[(61+1)*16 - 1:61*16]		<= 16'b0000011111100000;	// SPRITE LEVEL 61
				sprite_color_out[(60+1)*16 - 1:60*16]		<= 16'b0000000000011111;	// SPRITE LEVEL 60
				sprite_color_out[(59+1)*16 - 1:59*16]		<= 16'b1010101010101010;	// SPRITE LEVEL 59
				sprite_color_out[(58+1)*16 - 1:58*16]		<= 16'b1010001010101000;	// SPRITE LEVEL 59
				sprite_color_out[(57+1)*16 - 1:57*16]		<= 16'b1010111010101110;	// SPRITE LEVEL 59
				sprite_color_out[57*16-1:0]			<= 0;
			end
			
			else if(contador_segundo <= 100000000)
			begin
				contador_segundo <= contador_segundo + 1'b1;
				
				sprite_id_out[((63+1)*6)-1:63*6] <= 6'h00;	// SPRITE LEVEL 63 = 0
				sprite_id_out[((62+1)*6)-1:62*6] <= 6'h01;	// SPRITE LEVEL 62 = 1
				sprite_id_out[((61+1)*6)-1:61*6] <= 6'h02;	// SPRITE LEVEL 61 = 2
				sprite_id_out[((60+1)*6)-1:60*6] <= 6'h03;	// SPRITE LEVEL 60 = 3
				sprite_id_out[((59+1)*6)-1:59*6] <= 6'h04;	// SPRITE LEVEL 59 = 4
				sprite_id_out[((58+1)*6)-1:58*6] <= 6'h05;	// SPRITE LEVEL 58 = 5
				sprite_id_out[((57+1)*6)-1:57*6] <= 6'h05;	// SPRITE LEVEL 57 = 6
				sprite_id_out[57*6-1:0]   <= 0;

				sprite_y_out[(63+1)*10 - 1:63*10] <= 10'hA2;	// SPRITE LEVEL 63 = 50
				sprite_y_out[(62+1)*10 - 1:62*10] <= 10'h32;	// SPRITE LEVEL 62 = 50
				sprite_y_out[(61+1)*10 - 1:61*10] <= 10'hBD;	// SPRITE LEVEL 61 = 58
				sprite_y_out[(60+1)*10 - 1:60*10] <= 10'h3A;	// SPRITE LEVEL 60 = 58
				sprite_y_out[(59+1)*10 - 1:59*10] <= 10'h3C;	// SPRITE LEVEL 59 = 50
				sprite_y_out[(58+1)*10 - 1:58*10] <= 10'h68;	// SPRITE LEVEL 59 = 50
				sprite_y_out[(57+1)*10 - 1:57*10] <= 10'hAD;	// SPRITE LEVEL 59 = 50
				sprite_y_out[57*10-1:0] 	 <= 0;
				
				sprite_x_out[(63+1)*10 - 1:63*10] <= 10'h96;	// SPRITE LEVEL 63 = 150
				sprite_x_out[(62+1)*10 - 1:62*10] <= 10'hE6;	// SPRITE LEVEL 62 = 182
				sprite_x_out[(61+1)*10 - 1:61*10] <= 10'hBE;	// SPRITE LEVEL 61 = 190
				sprite_x_out[(60+1)*10 - 1:60*10] <= 10'hF2;	// SPRITE LEVEL 60 = 210
				sprite_x_out[(59+1)*10 - 1:59*10] <= 10'hA7;	// SPRITE LEVEL 59 = 230
				sprite_x_out[(58+1)*10 - 1:58*10] <= 10'hE2;	// SPRITE LEVEL 59 = 230
				sprite_x_out[(57+1)*10 - 1:57*10] <= 10'h41;	// SPRITE LEVEL 59 = 230
				sprite_x_out[57*10-1:0]	 <= 0;
		
				sprite_color_out[(63+1)*16 - 1:63*16]	<= 16'b1111111111111111;	// SPRITE LEVEL 63
				sprite_color_out[(62+1)*16 - 1:62*16]		<= 16'b1111100000000000;	// SPRITE LEVEL 62
				sprite_color_out[(61+1)*16 - 1:61*16]		<= 16'b0000011111100000;	// SPRITE LEVEL 61
				sprite_color_out[(60+1)*16 - 1:60*16]		<= 16'b0000000000011111;	// SPRITE LEVEL 60
				sprite_color_out[(59+1)*16 - 1:59*16]		<= 16'b1010101010101010;	// SPRITE LEVEL 59
				sprite_color_out[(58+1)*16 - 1:58*16]		<= 16'b1010001010101000;	// SPRITE LEVEL 59
				sprite_color_out[(57+1)*16 - 1:57*16]		<= 16'b1010111010101110;	// SPRITE LEVEL 59
				sprite_color_out[57*16-1:0]			<= 0;
				
			end
			
			else
			begin
				contador_segundo <= 1'b0;
			end
			
		end
	
	end

endmodule