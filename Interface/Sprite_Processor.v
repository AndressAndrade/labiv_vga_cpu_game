module Sprite_Processor(
	R_in,
	G_in,
	B_in,
	clk,
	rst,
	sprite_shape,
	sprite_id,
	sprite_x,
	sprite_y,
	sprite_color,
	V_pos_in,
	H_pos_in,
	
	R_out,
	G_out,
	B_out
);


	input clk;
	input rst;
	input	[7:0]		R_in;
	input	[7:0]		G_in;
	input	[7:0]		B_in;
	input	[9:0]		H_pos_in;
	input	[9:0]		V_pos_in;
	
	input	[383:0]	sprite_id;
	input	[639:0]	sprite_x;
	input	[639:0]	sprite_y;
	input	[1023:0]	sprite_color;
	input	[1023:0]	sprite_shape;

	output	reg	[7:0]		R_out;
	output	reg	[7:0]		G_out;
	output	reg	[7:0]		B_out;
	

		
	always @ (posedge clk)
	begin

		if (rst)
		begin
			
		end
	
		else
		begin
			
			// SPRITE LEVEL 63 - START
			if	(
				V_pos_in >= sprite_y[(63*10)+9 : 63*10] &&
				V_pos_in <= sprite_y[(63*10)+9 : 63*10] + 15 &&
				H_pos_in >= sprite_x[(63*10)+9 : 63*10] &&
				H_pos_in <= sprite_x[(63*10)+9 : 63*10] + 15 &&
				sprite_shape[ (63*16) + (H_pos_in - sprite_x[(63*10)+9 : 63*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(63*16)+4	: (63*16)+0];
				G_out	[7:2]	<=	sprite_color[(63*16)+10	: (63*16)+5];
				B_out	[7:3]	<=	sprite_color[(63*16)+15 : (63*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 62 - START
			if	(
				V_pos_in >= sprite_y[(62*10)+9 : 62*10] &&
				V_pos_in <= sprite_y[(62*10)+9 : 62*10] + 15 &&
				H_pos_in >= sprite_x[(62*10)+9 : 62*10] &&
				H_pos_in <= sprite_x[(62*10)+9 : 62*10] + 15 &&
				sprite_shape[ (62*16) + (H_pos_in - sprite_x[(62*10)+9 : 62*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(62*16)+4	: (62*16)+0];
				G_out	[7:2]	<=	sprite_color[(62*16)+10	: (62*16)+5];
				B_out	[7:3]	<=	sprite_color[(62*16)+15 : (62*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 61 - START
			if	(
				V_pos_in >= sprite_y[(61*10)+9 : 61*10] &&
				V_pos_in <= sprite_y[(61*10)+9 : 61*10] + 15 &&
				H_pos_in >= sprite_x[(61*10)+9 : 61*10] &&
				H_pos_in <= sprite_x[(61*10)+9 : 61*10] + 15 &&
				sprite_shape[ (61*16) + (H_pos_in - sprite_x[(61*10)+9 : 61*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(61*16)+4	: (61*16)+0];
				G_out	[7:2]	<=	sprite_color[(61*16)+10	: (61*16)+5];
				B_out	[7:3]	<=	sprite_color[(61*16)+15 : (61*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 60 - START
			if	(
				V_pos_in >= sprite_y[(60*10)+9 : 60*10] &&
				V_pos_in <= sprite_y[(60*10)+9 : 60*10] + 15 &&
				H_pos_in >= sprite_x[(60*10)+9 : 60*10] &&
				H_pos_in <= sprite_x[(60*10)+9 : 60*10] + 15 &&
				sprite_shape[ (60*16) + (H_pos_in - sprite_x[(60*10)+9 : 60*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(60*16)+4	: (60*16)+0];
				G_out	[7:2]	<=	sprite_color[(60*16)+10	: (60*16)+5];
				B_out	[7:3]	<=	sprite_color[(60*16)+15 : (60*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 59 - START
			if	(
				V_pos_in >= sprite_y[(59*10)+9 : 59*10] &&
				V_pos_in <= sprite_y[(59*10)+9 : 59*10] + 15 &&
				H_pos_in >= sprite_x[(59*10)+9 : 59*10] &&
				H_pos_in <= sprite_x[(59*10)+9 : 59*10] + 15 &&
				sprite_shape[ (59*16) + (H_pos_in - sprite_x[(59*10)+9 : 59*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(59*16)+4	: (59*16)+0];
				G_out	[7:2]	<=	sprite_color[(59*16)+10	: (59*16)+5];
				B_out	[7:3]	<=	sprite_color[(59*16)+15 : (59*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 58 - START
			if	(
				V_pos_in >= sprite_y[(58*10)+9 : 58*10] &&
				V_pos_in <= sprite_y[(58*10)+9 : 58*10] + 15 &&
				H_pos_in >= sprite_x[(58*10)+9 : 58*10] &&
				H_pos_in <= sprite_x[(58*10)+9 : 58*10] + 15 &&
				sprite_shape[ (58*16) + (H_pos_in - sprite_x[(58*10)+9 : 58*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(58*16)+4	: (58*16)+0];
				G_out	[7:2]	<=	sprite_color[(58*16)+10	: (58*16)+5];
				B_out	[7:3]	<=	sprite_color[(58*16)+15 : (58*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 57 - START
			if	(
				V_pos_in >= sprite_y[(57*10)+9 : 57*10] &&
				V_pos_in <= sprite_y[(57*10)+9 : 57*10] + 15 &&
				H_pos_in >= sprite_x[(57*10)+9 : 57*10] &&
				H_pos_in <= sprite_x[(57*10)+9 : 57*10] + 15 &&
				sprite_shape[ (57*16) + (H_pos_in - sprite_x[(57*10)+9 : 57*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(57*16)+4	: (57*16)+0];
				G_out	[7:2]	<=	sprite_color[(57*16)+10	: (57*16)+5];
				B_out	[7:3]	<=	sprite_color[(57*16)+15 : (57*16)+11];
			end
			
				else
			begin
			
			// SPRITE LEVEL 56 - START
			if	(
				V_pos_in >= sprite_y[(56*10)+9 : 56*10] &&
				V_pos_in <= sprite_y[(56*10)+9 : 56*10] + 15 &&
				H_pos_in >= sprite_x[(56*10)+9 : 56*10] &&
				H_pos_in <= sprite_x[(56*10)+9 : 56*10] + 15 &&
				sprite_shape[ (56*16) + (H_pos_in - sprite_x[(56*10)+9 : 56*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(56*16)+4	: (56*16)+0];
				G_out	[7:2]	<=	sprite_color[(56*16)+10	: (56*16)+5];
				B_out	[7:3]	<=	sprite_color[(56*16)+15 : (56*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 55 - START
			if	(
				V_pos_in >= sprite_y[(55*10)+9 : 55*10] &&
				V_pos_in <= sprite_y[(55*10)+9 : 55*10] + 15 &&
				H_pos_in >= sprite_x[(55*10)+9 : 55*10] &&
				H_pos_in <= sprite_x[(55*10)+9 : 55*10] + 15 &&
				sprite_shape[ (55*16) + (H_pos_in - sprite_x[(55*10)+9 : 55*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(55*16)+4	: (55*16)+0];
				G_out	[7:2]	<=	sprite_color[(55*16)+10	: (55*16)+5];
				B_out	[7:3]	<=	sprite_color[(55*16)+15 : (55*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 54 - START
			if	(
				V_pos_in >= sprite_y[(54*10)+9 : 54*10] &&
				V_pos_in <= sprite_y[(54*10)+9 : 54*10] + 15 &&
				H_pos_in >= sprite_x[(54*10)+9 : 54*10] &&
				H_pos_in <= sprite_x[(54*10)+9 : 54*10] + 15 &&
				sprite_shape[ (54*16) + (H_pos_in - sprite_x[(54*10)+9 : 54*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(54*16)+4	: (54*16)+0];
				G_out	[7:2]	<=	sprite_color[(54*16)+10	: (54*16)+5];
				B_out	[7:3]	<=	sprite_color[(54*16)+15 : (54*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 53 - START
			if	(
				V_pos_in >= sprite_y[(53*10)+9 : 53*10] &&
				V_pos_in <= sprite_y[(53*10)+9 : 53*10] + 15 &&
				H_pos_in >= sprite_x[(53*10)+9 : 53*10] &&
				H_pos_in <= sprite_x[(53*10)+9 : 53*10] + 15 &&
				sprite_shape[ (53*16) + (H_pos_in - sprite_x[(53*10)+9 : 53*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(53*16)+4	: (53*16)+0];
				G_out	[7:2]	<=	sprite_color[(53*16)+10	: (53*16)+5];
				B_out	[7:3]	<=	sprite_color[(53*16)+15 : (53*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 52 - START
			if	(
				V_pos_in >= sprite_y[(52*10)+9 : 52*10] &&
				V_pos_in <= sprite_y[(52*10)+9 : 52*10] + 15 &&
				H_pos_in >= sprite_x[(52*10)+9 : 52*10] &&
				H_pos_in <= sprite_x[(52*10)+9 : 52*10] + 15 &&
				sprite_shape[ (52*16) + (H_pos_in - sprite_x[(52*10)+9 : 52*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(52*16)+4	: (52*16)+0];
				G_out	[7:2]	<=	sprite_color[(52*16)+10	: (52*16)+5];
				B_out	[7:3]	<=	sprite_color[(52*16)+15 : (52*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 51 - START
			if	(
				V_pos_in >= sprite_y[(51*10)+9 : 51*10] &&
				V_pos_in <= sprite_y[(51*10)+9 : 51*10] + 15 &&
				H_pos_in >= sprite_x[(51*10)+9 : 51*10] &&
				H_pos_in <= sprite_x[(51*10)+9 : 51*10] + 15 &&
				sprite_shape[ (51*16) + (H_pos_in - sprite_x[(51*10)+9 : 51*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(51*16)+4	: (51*16)+0];
				G_out	[7:2]	<=	sprite_color[(51*16)+10	: (51*16)+5];
				B_out	[7:3]	<=	sprite_color[(51*16)+15 : (51*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 50 - START
			if	(
				V_pos_in >= sprite_y[(50*10)+9 : 50*10] &&
				V_pos_in <= sprite_y[(50*10)+9 : 50*10] + 15 &&
				H_pos_in >= sprite_x[(50*10)+9 : 50*10] &&
				H_pos_in <= sprite_x[(50*10)+9 : 50*10] + 15 &&
				sprite_shape[ (50*16) + (H_pos_in - sprite_x[(50*10)+9 : 50*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(50*16)+4	: (50*16)+0];
				G_out	[7:2]	<=	sprite_color[(50*16)+10	: (50*16)+5];
				B_out	[7:3]	<=	sprite_color[(50*16)+15 : (50*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 49 - START
			if	(
				V_pos_in >= sprite_y[(49*10)+9 : 49*10] &&
				V_pos_in <= sprite_y[(49*10)+9 : 49*10] + 15 &&
				H_pos_in >= sprite_x[(49*10)+9 : 49*10] &&
				H_pos_in <= sprite_x[(49*10)+9 : 49*10] + 15 &&
				sprite_shape[ (49*16) + (H_pos_in - sprite_x[(49*10)+9 : 49*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(49*16)+4	: (49*16)+0];
				G_out	[7:2]	<=	sprite_color[(49*16)+10	: (49*16)+5];
				B_out	[7:3]	<=	sprite_color[(49*16)+15 : (49*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 48 - START
			if	(
				V_pos_in >= sprite_y[(48*10)+9 : 48*10] &&
				V_pos_in <= sprite_y[(48*10)+9 : 48*10] + 15 &&
				H_pos_in >= sprite_x[(48*10)+9 : 48*10] &&
				H_pos_in <= sprite_x[(48*10)+9 : 48*10] + 15 &&
				sprite_shape[ (48*16) + (H_pos_in - sprite_x[(48*10)+9 : 48*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(48*16)+4	: (48*16)+0];
				G_out	[7:2]	<=	sprite_color[(48*16)+10	: (48*16)+5];
				B_out	[7:3]	<=	sprite_color[(48*16)+15 : (48*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 47 - START
			if	(
				V_pos_in >= sprite_y[(47*10)+9 : 47*10] &&
				V_pos_in <= sprite_y[(47*10)+9 : 47*10] + 15 &&
				H_pos_in >= sprite_x[(47*10)+9 : 47*10] &&
				H_pos_in <= sprite_x[(47*10)+9 : 47*10] + 15 &&
				sprite_shape[ (47*16) + (H_pos_in - sprite_x[(47*10)+9 : 47*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(47*16)+4	: (47*16)+0];
				G_out	[7:2]	<=	sprite_color[(47*16)+10	: (47*16)+5];
				B_out	[7:3]	<=	sprite_color[(47*16)+15 : (47*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 46 - START
			if	(
				V_pos_in >= sprite_y[(46*10)+9 : 46*10] &&
				V_pos_in <= sprite_y[(46*10)+9 : 46*10] + 15 &&
				H_pos_in >= sprite_x[(46*10)+9 : 46*10] &&
				H_pos_in <= sprite_x[(46*10)+9 : 46*10] + 15 &&
				sprite_shape[ (46*16) + (H_pos_in - sprite_x[(46*10)+9 : 46*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(46*16)+4	: (46*16)+0];
				G_out	[7:2]	<=	sprite_color[(46*16)+10	: (46*16)+5];
				B_out	[7:3]	<=	sprite_color[(46*16)+15 : (46*16)+11];
			end
			
				else
			begin
			
			// SPRITE LEVEL 45 - START
			if	(
				V_pos_in >= sprite_y[(45*10)+9 : 45*10] &&
				V_pos_in <= sprite_y[(45*10)+9 : 45*10] + 15 &&
				H_pos_in >= sprite_x[(45*10)+9 : 45*10] &&
				H_pos_in <= sprite_x[(45*10)+9 : 45*10] + 15 &&
				sprite_shape[ (45*16) + (H_pos_in - sprite_x[(45*10)+9 : 45*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(45*16)+4	: (45*16)+0];
				G_out	[7:2]	<=	sprite_color[(45*16)+10	: (45*16)+5];
				B_out	[7:3]	<=	sprite_color[(45*16)+15 : (45*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 44 - START
			if	(
				V_pos_in >= sprite_y[(44*10)+9 : 44*10] &&
				V_pos_in <= sprite_y[(44*10)+9 : 44*10] + 15 &&
				H_pos_in >= sprite_x[(44*10)+9 : 44*10] &&
				H_pos_in <= sprite_x[(44*10)+9 : 44*10] + 15 &&
				sprite_shape[ (44*16) + (H_pos_in - sprite_x[(44*10)+9 : 44*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(44*16)+4	: (44*16)+0];
				G_out	[7:2]	<=	sprite_color[(44*16)+10	: (44*16)+5];
				B_out	[7:3]	<=	sprite_color[(44*16)+15 : (44*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 43 - START
			if	(
				V_pos_in >= sprite_y[(43*10)+9 : 43*10] &&
				V_pos_in <= sprite_y[(43*10)+9 : 43*10] + 15 &&
				H_pos_in >= sprite_x[(43*10)+9 : 43*10] &&
				H_pos_in <= sprite_x[(43*10)+9 : 43*10] + 15 &&
				sprite_shape[ (43*16) + (H_pos_in - sprite_x[(43*10)+9 : 43*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(43*16)+4	: (43*16)+0];
				G_out	[7:2]	<=	sprite_color[(43*16)+10	: (43*16)+5];
				B_out	[7:3]	<=	sprite_color[(43*16)+15 : (43*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 42 - START
			if	(
				V_pos_in >= sprite_y[(42*10)+9 : 42*10] &&
				V_pos_in <= sprite_y[(42*10)+9 : 42*10] + 15 &&
				H_pos_in >= sprite_x[(42*10)+9 : 42*10] &&
				H_pos_in <= sprite_x[(42*10)+9 : 42*10] + 15 &&
				sprite_shape[ (42*16) + (H_pos_in - sprite_x[(42*10)+9 : 42*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(42*16)+4	: (42*16)+0];
				G_out	[7:2]	<=	sprite_color[(42*16)+10	: (42*16)+5];
				B_out	[7:3]	<=	sprite_color[(42*16)+15 : (42*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 41 - START
			if	(
				V_pos_in >= sprite_y[(41*10)+9 : 41*10] &&
				V_pos_in <= sprite_y[(41*10)+9 : 41*10] + 15 &&
				H_pos_in >= sprite_x[(41*10)+9 : 41*10] &&
				H_pos_in <= sprite_x[(41*10)+9 : 41*10] + 15 &&
				sprite_shape[ (41*16) + (H_pos_in - sprite_x[(41*10)+9 : 41*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(41*16)+4	: (41*16)+0];
				G_out	[7:2]	<=	sprite_color[(41*16)+10	: (41*16)+5];
				B_out	[7:3]	<=	sprite_color[(41*16)+15 : (41*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 40 - START
			if	(
				V_pos_in >= sprite_y[(40*10)+9 : 40*10] &&
				V_pos_in <= sprite_y[(40*10)+9 : 40*10] + 15 &&
				H_pos_in >= sprite_x[(40*10)+9 : 40*10] &&
				H_pos_in <= sprite_x[(40*10)+9 : 40*10] + 15 &&
				sprite_shape[ (40*16) + (H_pos_in - sprite_x[(40*10)+9 : 40*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(40*16)+4	: (40*16)+0];
				G_out	[7:2]	<=	sprite_color[(40*16)+10	: (40*16)+5];
				B_out	[7:3]	<=	sprite_color[(40*16)+15 : (40*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 39 - START
			if	(
				V_pos_in >= sprite_y[(39*10)+9 : 39*10] &&
				V_pos_in <= sprite_y[(39*10)+9 : 39*10] + 15 &&
				H_pos_in >= sprite_x[(39*10)+9 : 39*10] &&
				H_pos_in <= sprite_x[(39*10)+9 : 39*10] + 15 &&
				sprite_shape[ (39*16) + (H_pos_in - sprite_x[(39*10)+9 : 39*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(39*16)+4	: (39*16)+0];
				G_out	[7:2]	<=	sprite_color[(39*16)+10	: (39*16)+5];
				B_out	[7:3]	<=	sprite_color[(39*16)+15 : (39*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 38 - START
			if	(
				V_pos_in >= sprite_y[(38*10)+9 : 38*10] &&
				V_pos_in <= sprite_y[(38*10)+9 : 38*10] + 15 &&
				H_pos_in >= sprite_x[(38*10)+9 : 38*10] &&
				H_pos_in <= sprite_x[(38*10)+9 : 38*10] + 15 &&
				sprite_shape[ (38*16) + (H_pos_in - sprite_x[(38*10)+9 : 38*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(38*16)+4	: (38*16)+0];
				G_out	[7:2]	<=	sprite_color[(38*16)+10	: (38*16)+5];
				B_out	[7:3]	<=	sprite_color[(38*16)+15 : (38*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 37 - START
			if	(
				V_pos_in >= sprite_y[(37*10)+9 : 37*10] &&
				V_pos_in <= sprite_y[(37*10)+9 : 37*10] + 15 &&
				H_pos_in >= sprite_x[(37*10)+9 : 37*10] &&
				H_pos_in <= sprite_x[(37*10)+9 : 37*10] + 15 &&
				sprite_shape[ (37*16) + (H_pos_in - sprite_x[(37*10)+9 : 37*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(37*16)+4	: (37*16)+0];
				G_out	[7:2]	<=	sprite_color[(37*16)+10	: (37*16)+5];
				B_out	[7:3]	<=	sprite_color[(37*16)+15 : (37*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 36 - START
			if	(
				V_pos_in >= sprite_y[(36*10)+9 : 36*10] &&
				V_pos_in <= sprite_y[(36*10)+9 : 36*10] + 15 &&
				H_pos_in >= sprite_x[(36*10)+9 : 36*10] &&
				H_pos_in <= sprite_x[(36*10)+9 : 36*10] + 15 &&
				sprite_shape[ (36*16) + (H_pos_in - sprite_x[(36*10)+9 : 36*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(36*16)+4	: (36*16)+0];
				G_out	[7:2]	<=	sprite_color[(36*16)+10	: (36*16)+5];
				B_out	[7:3]	<=	sprite_color[(36*16)+15 : (36*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 35 - START
			if	(
				V_pos_in >= sprite_y[(35*10)+9 : 35*10] &&
				V_pos_in <= sprite_y[(35*10)+9 : 35*10] + 15 &&
				H_pos_in >= sprite_x[(35*10)+9 : 35*10] &&
				H_pos_in <= sprite_x[(35*10)+9 : 35*10] + 15 &&
				sprite_shape[ (35*16) + (H_pos_in - sprite_x[(35*10)+9 : 35*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(35*16)+4	: (35*16)+0];
				G_out	[7:2]	<=	sprite_color[(35*16)+10	: (35*16)+5];
				B_out	[7:3]	<=	sprite_color[(35*16)+15 : (35*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 34 - START
			if	(
				V_pos_in >= sprite_y[(34*10)+9 : 34*10] &&
				V_pos_in <= sprite_y[(34*10)+9 : 34*10] + 15 &&
				H_pos_in >= sprite_x[(34*10)+9 : 34*10] &&
				H_pos_in <= sprite_x[(34*10)+9 : 34*10] + 15 &&
				sprite_shape[ (34*16) + (H_pos_in - sprite_x[(34*10)+9 : 34*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(34*16)+4	: (34*16)+0];
				G_out	[7:2]	<=	sprite_color[(34*16)+10	: (34*16)+5];
				B_out	[7:3]	<=	sprite_color[(34*16)+15 : (34*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 33 - START
			if	(
				V_pos_in >= sprite_y[(33*10)+9 : 33*10] &&
				V_pos_in <= sprite_y[(33*10)+9 : 33*10] + 15 &&
				H_pos_in >= sprite_x[(33*10)+9 : 33*10] &&
				H_pos_in <= sprite_x[(33*10)+9 : 33*10] + 15 &&
				sprite_shape[ (33*16) + (H_pos_in - sprite_x[(33*10)+9 : 33*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(33*16)+4	: (33*16)+0];
				G_out	[7:2]	<=	sprite_color[(33*16)+10	: (33*16)+5];
				B_out	[7:3]	<=	sprite_color[(33*16)+15 : (33*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 32 - START
			if	(
				V_pos_in >= sprite_y[(32*10)+9 : 32*10] &&
				V_pos_in <= sprite_y[(32*10)+9 : 32*10] + 15 &&
				H_pos_in >= sprite_x[(32*10)+9 : 32*10] &&
				H_pos_in <= sprite_x[(32*10)+9 : 32*10] + 15 &&
				sprite_shape[ (32*16) + (H_pos_in - sprite_x[(32*10)+9 : 32*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(32*16)+4	: (32*16)+0];
				G_out	[7:2]	<=	sprite_color[(32*16)+10	: (32*16)+5];
				B_out	[7:3]	<=	sprite_color[(32*16)+15 : (32*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 31 - START
			if	(
				V_pos_in >= sprite_y[(31*10)+9 : 31*10] &&
				V_pos_in <= sprite_y[(31*10)+9 : 31*10] + 15 &&
				H_pos_in >= sprite_x[(31*10)+9 : 31*10] &&
				H_pos_in <= sprite_x[(31*10)+9 : 31*10] + 15 &&
				sprite_shape[ (31*16) + (H_pos_in - sprite_x[(31*10)+9 : 31*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(31*16)+4	: (31*16)+0];
				G_out	[7:2]	<=	sprite_color[(31*16)+10	: (31*16)+5];
				B_out	[7:3]	<=	sprite_color[(31*16)+15 : (31*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 30 - START
			if	(
				V_pos_in >= sprite_y[(30*10)+9 : 30*10] &&
				V_pos_in <= sprite_y[(30*10)+9 : 30*10] + 15 &&
				H_pos_in >= sprite_x[(30*10)+9 : 30*10] &&
				H_pos_in <= sprite_x[(30*10)+9 : 30*10] + 15 &&
				sprite_shape[ (30*16) + (H_pos_in - sprite_x[(30*10)+9 : 30*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(30*16)+4	: (30*16)+0];
				G_out	[7:2]	<=	sprite_color[(30*16)+10	: (30*16)+5];
				B_out	[7:3]	<=	sprite_color[(30*16)+15 : (30*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 29 - START
			if	(
				V_pos_in >= sprite_y[(29*10)+9 : 29*10] &&
				V_pos_in <= sprite_y[(29*10)+9 : 29*10] + 15 &&
				H_pos_in >= sprite_x[(29*10)+9 : 29*10] &&
				H_pos_in <= sprite_x[(29*10)+9 : 29*10] + 15 &&
				sprite_shape[ (29*16) + (H_pos_in - sprite_x[(29*10)+9 : 29*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(29*16)+4	: (29*16)+0];
				G_out	[7:2]	<=	sprite_color[(29*16)+10	: (29*16)+5];
				B_out	[7:3]	<=	sprite_color[(29*16)+15 : (29*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 28 - START
			if	(
				V_pos_in >= sprite_y[(28*10)+9 : 28*10] &&
				V_pos_in <= sprite_y[(28*10)+9 : 28*10] + 15 &&
				H_pos_in >= sprite_x[(28*10)+9 : 28*10] &&
				H_pos_in <= sprite_x[(28*10)+9 : 28*10] + 15 &&
				sprite_shape[ (28*16) + (H_pos_in - sprite_x[(28*10)+9 : 28*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(28*16)+4	: (28*16)+0];
				G_out	[7:2]	<=	sprite_color[(28*16)+10	: (28*16)+5];
				B_out	[7:3]	<=	sprite_color[(28*16)+15 : (28*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 27 - START
			if	(
				V_pos_in >= sprite_y[(27*10)+9 : 27*10] &&
				V_pos_in <= sprite_y[(27*10)+9 : 27*10] + 15 &&
				H_pos_in >= sprite_x[(27*10)+9 : 27*10] &&
				H_pos_in <= sprite_x[(27*10)+9 : 27*10] + 15 &&
				sprite_shape[ (27*16) + (H_pos_in - sprite_x[(27*10)+9 : 27*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(27*16)+4	: (27*16)+0];
				G_out	[7:2]	<=	sprite_color[(27*16)+10	: (27*16)+5];
				B_out	[7:3]	<=	sprite_color[(27*16)+15 : (27*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 26 - START
			if	(
				V_pos_in >= sprite_y[(26*10)+9 : 26*10] &&
				V_pos_in <= sprite_y[(26*10)+9 : 26*10] + 15 &&
				H_pos_in >= sprite_x[(26*10)+9 : 26*10] &&
				H_pos_in <= sprite_x[(26*10)+9 : 26*10] + 15 &&
				sprite_shape[ (26*16) + (H_pos_in - sprite_x[(26*10)+9 : 26*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(26*16)+4	: (26*16)+0];
				G_out	[7:2]	<=	sprite_color[(26*16)+10	: (26*16)+5];
				B_out	[7:3]	<=	sprite_color[(26*16)+15 : (26*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 25 - START
			if	(
				V_pos_in >= sprite_y[(25*10)+9 : 25*10] &&
				V_pos_in <= sprite_y[(25*10)+9 : 25*10] + 15 &&
				H_pos_in >= sprite_x[(25*10)+9 : 25*10] &&
				H_pos_in <= sprite_x[(25*10)+9 : 25*10] + 15 &&
				sprite_shape[ (25*16) + (H_pos_in - sprite_x[(25*10)+9 : 25*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(25*16)+4	: (25*16)+0];
				G_out	[7:2]	<=	sprite_color[(25*16)+10	: (25*16)+5];
				B_out	[7:3]	<=	sprite_color[(25*16)+15 : (25*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 24 - START
			if	(
				V_pos_in >= sprite_y[(24*10)+9 : 24*10] &&
				V_pos_in <= sprite_y[(24*10)+9 : 24*10] + 15 &&
				H_pos_in >= sprite_x[(24*10)+9 : 24*10] &&
				H_pos_in <= sprite_x[(24*10)+9 : 24*10] + 15 &&
				sprite_shape[ (24*16) + (H_pos_in - sprite_x[(24*10)+9 : 24*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(24*16)+4	: (24*16)+0];
				G_out	[7:2]	<=	sprite_color[(24*16)+10	: (24*16)+5];
				B_out	[7:3]	<=	sprite_color[(24*16)+15 : (24*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 23 - START
			if	(
				V_pos_in >= sprite_y[(23*10)+9 : 23*10] &&
				V_pos_in <= sprite_y[(23*10)+9 : 23*10] + 15 &&
				H_pos_in >= sprite_x[(23*10)+9 : 23*10] &&
				H_pos_in <= sprite_x[(23*10)+9 : 23*10] + 15 &&
				sprite_shape[ (23*16) + (H_pos_in - sprite_x[(23*10)+9 : 23*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(23*16)+4	: (23*16)+0];
				G_out	[7:2]	<=	sprite_color[(23*16)+10	: (23*16)+5];
				B_out	[7:3]	<=	sprite_color[(23*16)+15 : (23*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 22 - START
			if	(
				V_pos_in >= sprite_y[(22*10)+9 : 22*10] &&
				V_pos_in <= sprite_y[(22*10)+9 : 22*10] + 15 &&
				H_pos_in >= sprite_x[(22*10)+9 : 22*10] &&
				H_pos_in <= sprite_x[(22*10)+9 : 22*10] + 15 &&
				sprite_shape[ (22*16) + (H_pos_in - sprite_x[(22*10)+9 : 22*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(22*16)+4	: (22*16)+0];
				G_out	[7:2]	<=	sprite_color[(22*16)+10	: (22*16)+5];
				B_out	[7:3]	<=	sprite_color[(22*16)+15 : (22*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 21 - START
			if	(
				V_pos_in >= sprite_y[(21*10)+9 : 21*10] &&
				V_pos_in <= sprite_y[(21*10)+9 : 21*10] + 15 &&
				H_pos_in >= sprite_x[(21*10)+9 : 21*10] &&
				H_pos_in <= sprite_x[(21*10)+9 : 21*10] + 15 &&
				sprite_shape[ (21*16) + (H_pos_in - sprite_x[(21*10)+9 : 21*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(21*16)+4	: (21*16)+0];
				G_out	[7:2]	<=	sprite_color[(21*16)+10	: (21*16)+5];
				B_out	[7:3]	<=	sprite_color[(21*16)+15 : (21*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 20 - START
			if	(
				V_pos_in >= sprite_y[(20*10)+9 : 20*10] &&
				V_pos_in <= sprite_y[(20*10)+9 : 20*10] + 15 &&
				H_pos_in >= sprite_x[(20*10)+9 : 20*10] &&
				H_pos_in <= sprite_x[(20*10)+9 : 20*10] + 15 &&
				sprite_shape[ (20*16) + (H_pos_in - sprite_x[(20*10)+9 : 20*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(20*16)+4	: (20*16)+0];
				G_out	[7:2]	<=	sprite_color[(20*16)+10	: (20*16)+5];
				B_out	[7:3]	<=	sprite_color[(20*16)+15 : (20*16)+11];
			end
			
				else
			begin
			
			// SPRITE LEVEL 19 - START
			if	(
				V_pos_in >= sprite_y[(19*10)+9 : 19*10] &&
				V_pos_in <= sprite_y[(19*10)+9 : 19*10] + 15 &&
				H_pos_in >= sprite_x[(19*10)+9 : 19*10] &&
				H_pos_in <= sprite_x[(19*10)+9 : 19*10] + 15 &&
				sprite_shape[ (19*16) + (H_pos_in - sprite_x[(19*10)+9 : 19*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(19*16)+4	: (19*16)+0];
				G_out	[7:2]	<=	sprite_color[(19*16)+10	: (19*16)+5];
				B_out	[7:3]	<=	sprite_color[(19*16)+15 : (19*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 18 - START
			if	(
				V_pos_in >= sprite_y[(18*10)+9 : 18*10] &&
				V_pos_in <= sprite_y[(18*10)+9 : 18*10] + 15 &&
				H_pos_in >= sprite_x[(18*10)+9 : 18*10] &&
				H_pos_in <= sprite_x[(18*10)+9 : 18*10] + 15 &&
				sprite_shape[ (18*16) + (H_pos_in - sprite_x[(18*10)+9 : 18*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(18*16)+4	: (18*16)+0];
				G_out	[7:2]	<=	sprite_color[(18*16)+10	: (18*16)+5];
				B_out	[7:3]	<=	sprite_color[(18*16)+15 : (18*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 17 - START
			if	(
				V_pos_in >= sprite_y[(17*10)+9 : 17*10] &&
				V_pos_in <= sprite_y[(17*10)+9 : 17*10] + 15 &&
				H_pos_in >= sprite_x[(17*10)+9 : 17*10] &&
				H_pos_in <= sprite_x[(17*10)+9 : 17*10] + 15 &&
				sprite_shape[ (17*16) + (H_pos_in - sprite_x[(17*10)+9 : 17*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(17*16)+4	: (17*16)+0];
				G_out	[7:2]	<=	sprite_color[(17*16)+10	: (17*16)+5];
				B_out	[7:3]	<=	sprite_color[(17*16)+15 : (17*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 16 - START
			if	(
				V_pos_in >= sprite_y[(16*10)+9 : 16*10] &&
				V_pos_in <= sprite_y[(16*10)+9 : 16*10] + 15 &&
				H_pos_in >= sprite_x[(16*10)+9 : 16*10] &&
				H_pos_in <= sprite_x[(16*10)+9 : 16*10] + 15 &&
				sprite_shape[ (16*16) + (H_pos_in - sprite_x[(16*10)+9 : 16*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(16*16)+4	: (16*16)+0];
				G_out	[7:2]	<=	sprite_color[(16*16)+10	: (16*16)+5];
				B_out	[7:3]	<=	sprite_color[(16*16)+15 : (16*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 15 - START
			if	(
				V_pos_in >= sprite_y[(15*10)+9 : 15*10] &&
				V_pos_in <= sprite_y[(15*10)+9 : 15*10] + 15 &&
				H_pos_in >= sprite_x[(15*10)+9 : 15*10] &&
				H_pos_in <= sprite_x[(15*10)+9 : 15*10] + 15 &&
				sprite_shape[ (15*16) + (H_pos_in - sprite_x[(15*10)+9 : 15*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(15*16)+4	: (15*16)+0];
				G_out	[7:2]	<=	sprite_color[(15*16)+10	: (15*16)+5];
				B_out	[7:3]	<=	sprite_color[(15*16)+15 : (15*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 14 - START
			if	(
				V_pos_in >= sprite_y[(14*10)+9 : 14*10] &&
				V_pos_in <= sprite_y[(14*10)+9 : 14*10] + 15 &&
				H_pos_in >= sprite_x[(14*10)+9 : 14*10] &&
				H_pos_in <= sprite_x[(14*10)+9 : 14*10] + 15 &&
				sprite_shape[ (14*16) + (H_pos_in - sprite_x[(14*10)+9 : 14*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(14*16)+4	: (14*16)+0];
				G_out	[7:2]	<=	sprite_color[(14*16)+10	: (14*16)+5];
				B_out	[7:3]	<=	sprite_color[(14*16)+15 : (14*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 13 - START
			if	(
				V_pos_in >= sprite_y[(13*10)+9 : 13*10] &&
				V_pos_in <= sprite_y[(13*10)+9 : 13*10] + 15 &&
				H_pos_in >= sprite_x[(13*10)+9 : 13*10] &&
				H_pos_in <= sprite_x[(13*10)+9 : 13*10] + 15 &&
				sprite_shape[ (13*16) + (H_pos_in - sprite_x[(13*10)+9 : 13*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(13*16)+4	: (13*16)+0];
				G_out	[7:2]	<=	sprite_color[(13*16)+10	: (13*16)+5];
				B_out	[7:3]	<=	sprite_color[(13*16)+15 : (13*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 12 - START
			if	(
				V_pos_in >= sprite_y[(12*10)+9 : 12*10] &&
				V_pos_in <= sprite_y[(12*10)+9 : 12*10] + 15 &&
				H_pos_in >= sprite_x[(12*10)+9 : 12*10] &&
				H_pos_in <= sprite_x[(12*10)+9 : 12*10] + 15 &&
				sprite_shape[ (12*16) + (H_pos_in - sprite_x[(12*10)+9 : 12*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(12*16)+4	: (12*16)+0];
				G_out	[7:2]	<=	sprite_color[(12*16)+10	: (12*16)+5];
				B_out	[7:3]	<=	sprite_color[(12*16)+15 : (12*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 11 - START
			if	(
				V_pos_in >= sprite_y[(11*10)+9 : 11*10] &&
				V_pos_in <= sprite_y[(11*10)+9 : 11*10] + 15 &&
				H_pos_in >= sprite_x[(11*10)+9 : 11*10] &&
				H_pos_in <= sprite_x[(11*10)+9 : 11*10] + 15 &&
				sprite_shape[ (11*16) + (H_pos_in - sprite_x[(11*10)+9 : 11*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(11*16)+4	: (11*16)+0];
				G_out	[7:2]	<=	sprite_color[(11*16)+10	: (11*16)+5];
				B_out	[7:3]	<=	sprite_color[(11*16)+15 : (11*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 10 - START
			if	(
				V_pos_in >= sprite_y[(10*10)+9 : 10*10] &&
				V_pos_in <= sprite_y[(10*10)+9 : 10*10] + 15 &&
				H_pos_in >= sprite_x[(10*10)+9 : 10*10] &&
				H_pos_in <= sprite_x[(10*10)+9 : 10*10] + 15 &&
				sprite_shape[ (10*16) + (H_pos_in - sprite_x[(10*10)+9 : 10*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(10*16)+4	: (10*16)+0];
				G_out	[7:2]	<=	sprite_color[(10*16)+10	: (10*16)+5];
				B_out	[7:3]	<=	sprite_color[(10*16)+15 : (10*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 9 - START
			if	(
				V_pos_in >= sprite_y[(9*10)+9 : 9*10] &&
				V_pos_in <= sprite_y[(9*10)+9 : 9*10] + 15 &&
				H_pos_in >= sprite_x[(9*10)+9 : 9*10] &&
				H_pos_in <= sprite_x[(9*10)+9 : 9*10] + 15 &&
				sprite_shape[ (9*16) + (H_pos_in - sprite_x[(9*10)+9 : 9*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(9*16)+4	: (9*16)+0];
				G_out	[7:2]	<=	sprite_color[(9*16)+10	: (9*16)+5];
				B_out	[7:3]	<=	sprite_color[(9*16)+15 : (9*16)+11];
			end
				else
			begin
			
			// SPRITE LEVEL 8 - START
			if	(
				V_pos_in >= sprite_y[(8*10)+9 : 8*10] &&
				V_pos_in <= sprite_y[(8*10)+9 : 8*10] + 15 &&
				H_pos_in >= sprite_x[(8*10)+9 : 8*10] &&
				H_pos_in <= sprite_x[(8*10)+9 : 8*10] + 15 &&
				sprite_shape[ (8*16) + (H_pos_in - sprite_x[(8*10)+9 : 8*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(8*16)+4	: (8*16)+0];
				G_out	[7:2]	<=	sprite_color[(8*16)+10	: (8*16)+5];
				B_out	[7:3]	<=	sprite_color[(8*16)+15 : (8*16)+11];
			end
			
				else
			begin
			
			// SPRITE LEVEL 7 - START
			if	(
				V_pos_in >= sprite_y[(7*10)+9 : 7*10] &&
				V_pos_in <= sprite_y[(7*10)+9 : 7*10] + 15 &&
				H_pos_in >= sprite_x[(7*10)+9 : 7*10] &&
				H_pos_in <= sprite_x[(7*10)+9 : 7*10] + 15 &&
				sprite_shape[ (7*16) + (H_pos_in - sprite_x[(7*10)+9 : 7*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(7*16)+4	: (7*16)+0];
				G_out	[7:2]	<=	sprite_color[(7*16)+10	: (7*16)+5];
				B_out	[7:3]	<=	sprite_color[(7*16)+15 : (7*16)+11];
			end
			
			else begin
			
			// SPRITE LEVEL 8 - START
			if	(
				V_pos_in >= sprite_y[(6*10)+9 : 6*10] &&
				V_pos_in <= sprite_y[(6*10)+9 : 6*10] + 15 &&
				H_pos_in >= sprite_x[(6*10)+9 : 6*10] &&
				H_pos_in <= sprite_x[(6*10)+9 : 6*10] + 15 &&
				sprite_shape[ (6*16) + (H_pos_in - sprite_x[(6*10)+9 : 6*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(6*16)+4	: (6*16)+0];
				G_out	[7:2]	<=	sprite_color[(6*16)+10	: (6*16)+5];
				B_out	[7:3]	<=	sprite_color[(6*16)+15 : (6*16)+11];
			end
					else
			begin
			
			// SPRITE LEVEL 5 - START
			if	(
				V_pos_in >= sprite_y[(5*10)+9 : 5*10] &&
				V_pos_in <= sprite_y[(5*10)+9 : 5*10] + 15 &&
				H_pos_in >= sprite_x[(5*10)+9 : 5*10] &&
				H_pos_in <= sprite_x[(5*10)+9 : 5*10] + 15 &&
				sprite_shape[ (5*16) + (H_pos_in - sprite_x[(5*10)+9 : 5*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(5*16)+4	: (5*16)+0];
				G_out	[7:2]	<=	sprite_color[(5*16)+10	: (5*16)+5];
				B_out	[7:3]	<=	sprite_color[(5*16)+15 : (5*16)+11];
			end
			else
			begin
			
			// SPRITE LEVEL 4 - START
			if	(
				V_pos_in >= sprite_y[(4*10)+9 : 4*10] &&
				V_pos_in <= sprite_y[(4*10)+9 : 4*10] + 15 &&
				H_pos_in >= sprite_x[(4*10)+9 : 4*10] &&
				H_pos_in <= sprite_x[(4*10)+9 : 4*10] + 15 &&
				sprite_shape[ (4*16) + (H_pos_in - sprite_x[(4*10)+9 : 4*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(4*16)+4	: (4*16)+0];
				G_out	[7:2]	<=	sprite_color[(4*16)+10	: (4*16)+5];
				B_out	[7:3]	<=	sprite_color[(4*16)+15 : (4*16)+11];
			end
			
				else
			begin
			
			// SPRITE LEVEL 3 - START
			if	(
				V_pos_in >= sprite_y[(3*10)+9 : 3*10] &&
				V_pos_in <= sprite_y[(3*10)+9 : 3*10] + 15 &&
				H_pos_in >= sprite_x[(3*10)+9 : 3*10] &&
				H_pos_in <= sprite_x[(3*10)+9 : 3*10] + 15 &&
				sprite_shape[ (3*16) + (H_pos_in - sprite_x[(3*10)+9 : 3*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(3*16)+4	: (3*16)+0];
				G_out	[7:2]	<=	sprite_color[(3*16)+10	: (3*16)+5];
				B_out	[7:3]	<=	sprite_color[(3*16)+15 : (3*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 2 - START
			if	(
				V_pos_in >= sprite_y[(2*10)+9 : 2*10] &&
				V_pos_in <= sprite_y[(2*10)+9 : 2*10] + 15 &&
				H_pos_in >= sprite_x[(2*10)+9 : 2*10] &&
				H_pos_in <= sprite_x[(2*10)+9 : 2*10] + 15 &&
				sprite_shape[ (2*16) + (H_pos_in - sprite_x[(2*10)+9 : 2*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(2*16)+4	: (2*16)+0];
				G_out	[7:2]	<=	sprite_color[(2*16)+10	: (2*16)+5];
				B_out	[7:3]	<=	sprite_color[(2*16)+15 : (2*16)+11];
			end
			
			else
			begin
			
			// SPRITE LEVEL 8 - START
			if	(
				V_pos_in >= sprite_y[(1*10)+9 : 1*10] &&
				V_pos_in <= sprite_y[(1*10)+9 : 1*10] + 15 &&
				H_pos_in >= sprite_x[(1*10)+9 : 1*10] &&
				H_pos_in <= sprite_x[(1*10)+9 : 1*10] + 15 &&
				sprite_shape[ (1*16) + (H_pos_in - sprite_x[(1*10)+9 : 1*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(1*16)+4	: (1*16)+0];
				G_out	[7:2]	<=	sprite_color[(1*16)+10	: (1*16)+5];
				B_out	[7:3]	<=	sprite_color[(1*16)+15 : (1*16)+11];
			end
			
				else
			begin
			
			// SPRITE LEVEL 0 - START
			if	(
				V_pos_in >= sprite_y[(0*10)+9 : 0*10] &&
				V_pos_in <= sprite_y[(0*10)+9 : 0*10] + 15 &&
				H_pos_in >= sprite_x[(0*10)+9 : 0*10] &&
				H_pos_in <= sprite_x[(0*10)+9 : 0*10] + 15 &&
				sprite_shape[ (0*16) + (H_pos_in - sprite_x[(0*10)+9 : 0*10]) ]
				)
			begin
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	sprite_color[(0*16)+4	: (0*16)+0];
				G_out	[7:2]	<=	sprite_color[(0*16)+10	: (0*16)+5];
				B_out	[7:3]	<=	sprite_color[(0*16)+15 : (0*16)+11];
			end
			else
			begin
			
				R_out [2:0]	=	3'b000;
				G_out [1:0]	=	2'b000;
				B_out [2:0]	=	3'b000;
				R_out	[7:3]	<=	R_in	[7:3];
				G_out	[7:2]	<=	G_in	[7:2];
				B_out	[7:3]	<=	B_in	[7:3];
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 58 - ELSE END
			end	// SPRITE LEVEL 60 - ELSE END
			end	// SPRITE LEVEL 61 - ELSE END
			end	// SPRITE LEVEL 62 - ELSE END
			end	// SPRITE LEVEL 63 - ELSE END
			end   // SPRITE LEVEL 59 - ELSE END
			end
		end
	
	end
	

endmodule