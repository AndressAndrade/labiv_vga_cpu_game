module Sprite_Shape_Reader(
	clk,
	rst,
	level_counter,
	data_in,
	sprite_id,
	sprite_y,
	V_pos_in,
	H_pos_in,
	
	sprite_shape_out,
	wren_out,
	addr_out,
	level_counter_enable,
	level_counter_reset,
	EstadoAtual_FSM1
);


	input clk;
	input rst;
	input	[6:0]		level_counter;
	input	[9:0]		H_pos_in;
	input	[9:0]		V_pos_in;
	input	[15:0]	data_in;
	
	input	[383:0]	sprite_id;
	input	[639:0]	sprite_y;
	
	
	output			wren_out;
	output	reg	level_counter_enable;
	output	reg	level_counter_reset;
	output	reg	[15:0]	addr_out;
	
	output	[1023:0]	sprite_shape_out;
	
	reg	[1023:0]	line_A_shape;
	reg	[1023:0]	line_B_shape;
	reg				line_flag;
	
	parameter	line_A	= 1'b0;
	parameter	line_B	= 1'b1;
	
	assign wren_out = 1'b0;
	assign sprite_shape_out = (line_flag == line_A)? line_B_shape : line_A_shape;
	
	
	/*################################################################*/
	/*############  MAQUINA DE ESTADO 1							############*/
	/*############  													############*/
	/*############  LEITURA	DOS SHAPES							############*/
	/*############  SALVOS NA DATA_SEGMENT_RAM				############*/
	/*################################################################*/
	
	output	reg	[3:0]		EstadoAtual_FSM1;
				reg	[3:0]		EstadoFuturo_FSM1;

	// Estados
	parameter	Reset_FSM1			= 4'b0000;	// Reset_FSM1			= 0
	parameter	Wait_Line			= 4'b0001;	// Wait_Line			= 1
	parameter	Set_Line				= 4'b0010;	// Set_Line				= 2
	parameter	Set_Address_Shape	= 4'b0011;	// Set_Address_Shape	= 3
	parameter	Read_Shape			= 4'b0100;	// Read_Shape			= 4
	parameter	Change_Level		= 4'b0101;	// Change_Level		= 5
	
	// Decodificador de proximo estado
	always @ (V_pos_in, H_pos_in, sprite_y, level_counter, EstadoAtual_FSM1)
	begin
		case (EstadoAtual_FSM1)
		
			Reset_FSM1:
			begin
				if(V_pos_in == 31 && H_pos_in == 0)
					EstadoFuturo_FSM1 = Wait_Line;
					
				else
					EstadoFuturo_FSM1 = Reset_FSM1;
			end
			
			Wait_Line:
			begin
				if(V_pos_in >= 32 && V_pos_in <= 511 && H_pos_in == 0)
					EstadoFuturo_FSM1 = Set_Line;
				else
					EstadoFuturo_FSM1 = Wait_Line;
			end
			
			Set_Line:
			begin
				if(V_pos_in >= sprite_y[level_counter*10 +: 10]-1 && V_pos_in <= sprite_y[level_counter*10 +: 10]+14)
					EstadoFuturo_FSM1 = Set_Address_Shape;
				else
					EstadoFuturo_FSM1 = Change_Level;
			end
			
			Set_Address_Shape:
			begin
				EstadoFuturo_FSM1 = Read_Shape;
			end
			
			Read_Shape:
			begin
				EstadoFuturo_FSM1 = Change_Level;
			end
			
			Change_Level:
			begin
				if(level_counter < 63 && V_pos_in <= 511)
					EstadoFuturo_FSM1 = Set_Line;
				else if(level_counter >= 63 && V_pos_in > 511)
					EstadoFuturo_FSM1 = Reset_FSM1;
				else
					EstadoFuturo_FSM1 = Wait_Line;
			end
			
			default:
			begin
				EstadoFuturo_FSM1 = Reset_FSM1;
			end

		endcase

	end


	// Decodificador de saida
	always @ (posedge clk)
	begin
		case (EstadoAtual_FSM1)
	
			Reset_FSM1:
			begin
				level_counter_enable <= 1'b0;
				level_counter_reset <= 1'b1;
				//addr_out = 16'hzzzz;
				line_flag <= line_B;
			end
			
			Wait_Line:
			begin
				level_counter_enable <= 1'b0;
				level_counter_reset <= 1'b1;
				if (line_flag == line_A)
					line_flag <= line_B;
				else
					line_flag <= line_A;
			end
			
			Set_Line:
			begin
				level_counter_enable <= 1'b0;
				level_counter_reset <= 1'b0;
			end
		
			Set_Address_Shape:
			begin
				addr_out <= (sprite_id[level_counter*6 +: 6]*8'h10) + (V_pos_in - sprite_y[level_counter*10 +: 10]+1'b1);
			end
			
			Read_Shape:
			begin
				if(line_flag == line_A)
					line_A_shape[level_counter*16 +: 16] <= data_in[15:0];
				else
					line_B_shape[level_counter*16 +: 16] <= data_in[15:0];
			end
			
			Change_Level:
			begin
				level_counter_enable <= 1'b1;
			end
			
			default:
			begin
				level_counter_reset <= 1'b1;
				//addr_out = 16'hzzzz;
				line_flag <= line_B;
			end
	
		endcase
	end


	// Atualizacao de registrador de estado e logica de reset
	always @ (posedge clk)
	begin

		if (rst)
		begin
			EstadoAtual_FSM1	<= Reset_FSM1;
		end
	
		else
		begin
			EstadoAtual_FSM1	<=	EstadoFuturo_FSM1;
		end
	
	end

	/*################################################################*/
	/*################################################################*/

	
	
endmodule