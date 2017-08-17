module Controller_Mux (
	clk,
	rst,
	sel,
	[5:0]dOUT,
	[2:0]result
);

input					clk,rst;
input			      [5:0]	dOUT;

output	reg 		sel;
output	reg[2:0] result;

/*
Data Aquisition Sequence of 6-Button-Controller

Sel   D0 D1 D2 D3 D4 D5
Low   UP DW LO LO A  ST
High  UP DW LF RG B  C
Low   UP DW LO LO A  ST
High  UP DW LF RG B  C   # If there is two up-edge in 1.1 milli seconds,
Low   LO LO LO LO A  ST  # D0 - D3 go Low as Sel goes Low.
High  Z  Y  X  MD HI HI  # Make Sel High and read D0 - D3.
Low   HI HI HI HI A  ST  # Check that D0 - D3 go High as Sel goes Low.
High  UP DW LF RG B  C   # Once this sequence take place
Low   UP DW LO LO A  ST  # sequence can't be started for 1.8 milli seconds
.                        # after the first up-edge of Sel.
.                        # Only Datas read in 1.6 milli seconds from the
.                        # first up-edge of Sel are reliable.

   # LO --- Always Low
   # HI --- Always High
   # UP --- Up of Cross Key
   # DW --- Down of Cross Key
   # LF --- Left of Cross Key
   # RG --- Right of Cross Key
   # A ---- Trigger Button A
   # B ---- Trigger Button B
   # C ---- Trigger Button C
   # X ---- Trigger Button X
   # Y ---- Trigger Button Y
   # Z ---- Trigger Button Z
   # ST --- Start Button
   # MD --- Mode Button
   ## Low -> Pressed , High -> Not Pressed
	
	
	Acoes:
	Sobe     -   result = 3'b000
	Desce    -   result = 3'b001
	Direita  -   result = 3'b010
	Esquerda -   result = 3'b011
	Pausar   -   result = 3'b100

*/


always @ (posedge clk)
begin

	if (rst)
	begin
		sel <= 0;
	end
	
	else
	begin
		sel <= !sel;
	end
	
end

/*	Acoes:
	Sobe     -   result = 3'b000
	Desce    -   result = 3'b001
	Direita  -   result = 3'b010
	Esquerda -   result = 3'b011
	Pausar   -   result = 3'b100
	Nada		-   result = 3'b111
	*/
always @ (sel)
begin
	if(sel)       // SEL = HIGH
		begin
			case (dOUT)
				6'b111110: result =  3'b000  //D0 = HIGH
				6'b111101: result =  3'b001  //D1 = HIGH
				6'b111011: result =  3'b011  //D2 = HIGH
				6'b110111: result =  3'b010  //D3 = HIGH
				default:   result =  3'b010
				//$display("Nenhum botao pressionado");
			endcase
		end	
		
	else
		begin
			case (dOUT)
				6'b111110: result =  3'b000  //D0 = HIGH
				6'b111101: result =  3'b001  //D1 = HIGH
				6'b110111: result =  3'b100  //D4 = HIGH
				default:   result =  3'b010  
				//$display("Nenhum botao pressionado");
			endcase
		end		
end

endmodule 