
module Memory_Reader_FSM (
	iDATA,
	iCLK,
	iRST,
	iADDR,

	oWE_N,
	oOE_N,
	oCE_N,
	oLB_N,
	oUB_N,
	oADDR,
	oRED,
	oGREEN,
	oBLUE,
	EstadoAtual
);

input 	wire	[19:0]	iADDR;
input		wire	[15:0]	iDATA;
input		wire	iCLK;
input 	wire	iRST;

output	reg	[7:0]		oRED;
output	reg	[7:0]		oGREEN;
output	reg	[7:0]		oBLUE;
output	reg	[19:0]	oADDR;
output	reg	oWE_N;
output	reg	oOE_N;
output	reg	oCE_N;
output	reg	oLB_N;
output	reg	oUB_N;

output [2:0] EstadoAtual;

reg	[2:0]		EstadoAtual;
reg	[2:0]		EstadoFuturo;


// Estados
parameter	Reset			= 3'b000;	// Reset = 0
parameter	Set_Address	= 3'b001;	// Set_Address = 1
parameter	Read_Data	= 3'b010;	// Read_data = 2

				
// Decodificador de próximo estado
always @ (EstadoAtual)
begin
	case (EstadoAtual)
		
		Reset:
			EstadoFuturo = Set_Address;

		Set_Address:
			EstadoFuturo = Read_Data;

		Read_Data:
			EstadoFuturo = Set_Address;

		default:
			EstadoFuturo = Reset;
		
	endcase

end


// Decodificador de saída
always @ (EstadoAtual)
begin
	case (EstadoAtual)
	
		Reset:
		begin
			oWE_N = 1'b1;
			oOE_N = 1'b0;
			oCE_N = 1'b0;
			oLB_N = 1'b0;
			oUB_N = 1'b0;
			oADDR = iADDR;
			//oADDR = 20'h00000;  corte na imagem com reset
			oRED		[7:0]	=	8'h00;
			oGREEN	[7:0]	=	8'h00;
			oBLUE		[7:0]	=	8'h00;
		end
		
		Set_Address:
		begin
			oWE_N = 1'b1;
			oOE_N = 1'b0;
			oCE_N = 1'b0;
			oLB_N = 1'b0;
			oUB_N = 1'b0;
			oADDR = iADDR;
			
			oRED		[2:0]	=	3'b000;
			oRED		[7:3]	=	iDATA	[4:0];
			
			oGREEN	[1:0]	=	2'b00;
			oGREEN	[7:2]	=	iDATA	[10:5];
			
			oBLUE		[2:0]	=	3'b000;
			oBLUE		[7:3]	=	iDATA	[15:11];
		end
		
		Read_Data:
		begin
			oWE_N = 1'b1;
			oOE_N = 1'b0;
			oCE_N = 1'b0;
			oLB_N = 1'b0;
			oUB_N = 1'b0;
			oADDR = iADDR;
			
			oRED		[2:0]	=	3'b000;
			oRED		[7:3]	=	iDATA	[4:0];
			
			oGREEN	[1:0]	=	2'b00;
			oGREEN	[7:2]	=	iDATA	[10:5];
			
			oBLUE		[2:0]	=	3'b000;
			oBLUE		[7:3]	=	iDATA	[15:11];
		end
				
		default:
		begin
			oWE_N = 1'b1;
			oOE_N = 1'b0;
			oCE_N = 1'b0;
			oLB_N = 1'b0;
			oUB_N = 1'b0;
			oADDR = 20'h00000;
			oRED		[7:0]	=	8'h00;
			oGREEN	[7:0]	=	8'h00;
			oBLUE		[7:0]	=	8'h00;
		end
	
	endcase
end


// Atualização de registrador de estado e lógica de reset
always @ (posedge iCLK)
begin

	if (iRST)
	begin
		EstadoAtual	<= Reset;
	end
	
	else
	begin
		EstadoAtual	<=	EstadoFuturo;
	end
	
end

endmodule 