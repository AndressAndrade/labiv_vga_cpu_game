
// Definicao da unidade de tempo e da precisao da simulacao
`timescale 1ns/1ns

module VGA_tb;

	// Outputs do modulo 'VGA_tb'
	// Inputs do modulo 'VGA_Interface_block'
	reg	clk;
	reg	rst;
	reg	[7:0]	R_in;
	reg	[7:0]	G_in;
	reg	[7:0]	B_in;

	// Inputs do modulo 'VGA_tb'
	// Outputs do modulo 'VGA_Interface_block'
	wire	[19:0]	oAddress;
	wire	[7:0]	R;
	wire	[7:0]	G;
	wire	[7:0]	B;
	wire	HS;
	wire	VS;
	wire	BLANK;
	wire	VGA_SYNC;
	wire	VGA_CLK;
	wire	[9:0]	h_pos;
	wire	[9:0]	v_pos;

	// Outputs do modulo 'VGA_tb'
	// Inputs do modulo 'Memory_Reader_FSM'
	reg	[15:0]	iDATA;
	reg	iCLK;
	reg	iRST;
	reg	[19:0]	iADDR;

	// Inputs do modulo 'VGA_tb'
	// Outputs do modulo 'Memory_Reader_FSM'
	wire	oWE_N;
	wire	oOE_N;
	wire	oCE_N;
	wire	oLB_N;
	wire	oUB_N;
	wire	[19:0]	oADDR;
	wire	[7:0]	oRED;
	wire	[7:0]	oGREEN;
	wire	[7:0]	oBLUE;
	wire	[2:0]	EstadoAtual;

	// Outputs do modulo 'VGA_tb'
	// Inputs do modulo 'SRAM_Controller'
	reg	iRST_N_SRAM;
	reg	iCLK_SRAM;
	reg	iWE_N_SRAM;
	reg	iOE_N_SRAM;
	reg	iCE_N_SRAM;
	reg	iLB_N_SRAM;
	reg	iUB_N_SRAM;
	reg	[19:0]	iADDR_SRAM;
	reg	[15:0]	iDATA_SRAM;

	// Inputs do modulo 'VGA_tb'
	// Outputs do modulo 'SRAM_Controller'
	wire	[15:0]	oDATA_SRAM;
	wire	[15:0]	SRAM_DQ;
	wire	SRAM_WE_N;
	wire	SRAM_OE_N;
	wire	SRAM_CE_N;
	wire	SRAM_LB_N;
	wire	SRAM_UB_N;
	wire	[19:0]	SRAM_ADDR;

	// Outputs do modulo 'VGA_tb'
	// Inputs do modulo 'Sprite_Processor'
	reg	clk_sprite;
	reg	rst_sprite;
	reg	[7:0]	R_in_sprite;
	reg	[7:0]	G_in_sprite;
	reg	[7:0]	B_in_sprite;
	reg	[9:0]	H_pos_in_sprite;
	reg	[9:0]	V_pos_in_sprite;
	reg	[15:0]	data_in_sprite;

	// Inputs do modulo 'VGA_tb'
	// Outputs do modulo 'Sprite_Processor'
	wire	wren_out_sprite;
	wire	[7:0]	R_out_sprite;
	wire	[7:0]	G_out_sprite;
	wire	[7:0]	B_out_sprite;
	wire	[15:0]	addr_out_sprite;
	wire	[6:0]	level_count_sprite;
	wire	[3:0]	EstadoAtual_FSM1;
	wire	[9:0]	test1;
	wire	[9:0]	test2;

	// Simulacao da memoria SRAM - Controle dos pinos bidirecionais
	wire	[15:0]	DQ_INPUT;
	reg	[15:0]	DQ_OUTPUT;
	reg	DQ_OE = 1'b1;		// DQ_OE = 1'b1, configurado como sa�da

	assign	DQ_INPUT = SRAM_DQ;
	assign	SRAM_DQ = (DQ_OE==1'b1)? DQ_OUTPUT : 16'hzzzz;

	// Instanciacao do modulo VGA_Interface_block
	VGA_Interface_block U0(
	.clk		(clk),
	.rst		(rst),
	.R_in		(R_in),
	.G_in		(G_in),
	.B_in		(B_in),
	
	.oAddress	(oAddress),
	.R		(R),
	.G		(G),
	.B		(B),
	.HS		(HS),
	.VS		(VS),
	.BLANK		(BLANK),
	.VGA_SYNC	(VGA_SYNC),
	.VGA_CLK	(VGA_CLK),
	.h_pos		(h_pos),
	.v_pos		(v_pos)
	);

	// Instanciacao do modulo Memory_Reader_FSM
	Memory_Reader_FSM U1(
	.iDATA		(iDATA),
	.iCLK		(iCLK),
	.iRST		(iRST),
	.iADDR		(iADDR),

	.oWE_N		(oWE_N),
	.oOE_N		(oOE_N),
	.oCE_N		(oCE_N),
	.oLB_N		(oLB_N),
	.oUB_N		(oUB_N),
	.oADDR		(oADDR),
	.oRED		(oRED),
	.oGREEN		(oGREEN),
	.oBLUE		(oBLUE),
	.EstadoAtual	(EstadoAtual)
	);

	// Instanciacao do modulo SRAM_Controller
	SRAM_Controller U2(
	.iRST_N		(iRST_N_SRAM),
	.iCLK		(iCLK_SRAM),
	.iWE_N		(iWE_N_SRAM),
	.iOE_N		(iOE_N_SRAM),
	.iCE_N		(iCE_N_SRAM),
	.iLB_N		(iLB_N_SRAM),
	.iUB_N		(iUB_N_SRAM),
	.iADDR		(iADDR_SRAM),
	.iDATA		(iDATA_SRAM),
	.oDATA		(oDATA_SRAM),

	.SRAM_DQ	(SRAM_DQ),
	.SRAM_WE_N	(SRAM_WE_N),
	.SRAM_OE_N	(SRAM_OE_N),
	.SRAM_CE_N	(SRAM_CE_N),
	.SRAM_LB_N	(SRAM_LB_N),
	.SRAM_UB_N	(SRAM_UB_N),
	.SRAM_ADDR	(SRAM_ADDR)
	);

	// Instanciacao do modulo Sprite_Processor
	Sprite_Processor U3(
	.R_in		(R_in_sprite),
	.G_in		(G_in_sprite),
	.B_in		(B_in_sprite),
	.clk		(clk_sprite),
	.rst		(rst_sprite),
	.data_in	(data_in_sprite),
	.H_pos_in	(H_pos_in_sprite),
	.V_pos_in	(V_pos_in_sprite),

	.R_out		(R_out_sprite),
	.G_out		(G_out_sprite),
	.B_out		(B_out_sprite),
	.wren_out	(wren_out_sprite),
	.addr_out	(addr_out_sprite),
	.level_count	(level_count_sprite),
	.EstadoAtual_FSM1	(EstadoAtual_FSM1),
	.teste1		(test1),
	.teste2		(test2)
	);

	// Inicializacao das entradas
	initial
	begin
		clk = 1;
		iCLK = 1;
		clk_sprite = 1;
		rst = 0;	// Botao DE2-115 nao pressionado em 0ns
		#40 rst = 1;	// Botao DE2-115 pressionado em 40ns
		#40 rst = 0;	// Botao DE2-115 nao pressionado em 80ns
	end
	
	// Criacao de clock com periodo de 40ns para VGA_Interface_block (25 Mhz)
	always
		#20 clk = !clk;

	// Criacao de clock com periodo de 20ns para Memory_Reader_FSM (50 Mhz)
	always
		#10 iCLK = !iCLK;

	// Criacao de clock com periodo de 20ns para Sprite_Processor (50 Mhz)
	always
		#10 clk_sprite = !clk_sprite;

	// Interligacao entre modulo VGA_Interface_block e Memory_Reader_FSM
	always @ (iADDR, oAddress)
	begin
		iADDR = oAddress;
	end

	always @ (iRST, rst)
	begin
		iRST = rst;
	end

	// Interligacao entre modulo Memory_Reader_FSM e SRAM_Controller
	always @ (oWE_N, oOE_N, oCE_N, oLB_N, oUB_N, iWE_N_SRAM, iOE_N_SRAM, iCE_N_SRAM, iLB_N_SRAM, iUB_N_SRAM)
	begin
		iWE_N_SRAM = oWE_N;
		iOE_N_SRAM = oOE_N;
		iCE_N_SRAM = oCE_N;
		iLB_N_SRAM = oLB_N;
		iUB_N_SRAM = oUB_N;
	end

	always @ (iDATA, oADDR, iADDR_SRAM, oDATA_SRAM)
	begin
		iADDR_SRAM = oADDR;
		iDATA = oDATA_SRAM;
	end


	// Interligacao entre modulo Sprite_Processor e Memory_Reader_FSM
	always @ (R_in_sprite, G_in_sprite, B_in_sprite, oRED, oGREEN, oBLUE)
	begin
		R_in_sprite = oRED;
		G_in_sprite = oGREEN;
		B_in_sprite = oBLUE;
	end

	// Interligacao entre modulo Sprite_Processor e VGA_Interface_block
	always @ (R_in, G_in, B_in, R_out_sprite, G_out_sprite, B_out_sprite)
	begin
		R_in = R_out_sprite;
		G_in = G_out_sprite;
		B_in = B_out_sprite;
	end

	always @ (H_pos_in_sprite, V_pos_in_sprite, h_pos, v_pos)
	begin
		H_pos_in_sprite = h_pos;
		V_pos_in_sprite = v_pos;
	end

	always @ (rst_sprite, rst)
	begin
		rst_sprite = rst;
	end

	// Simulacao da memoria SRAM externa
	always @ (negedge iCLK)
	begin
		case (SRAM_ADDR[1:0])
			2'b00:	DQ_OUTPUT <= 16'b1111100000000000;	//Address = 0
			2'b01:	DQ_OUTPUT <= 16'b0000011111100000;	//Address = 1
			2'b10:	DQ_OUTPUT <= 16'b0000000000011111;	//Address = 2
			2'b11:	DQ_OUTPUT <= 16'b0000011111100000;	//Address = 3
		endcase
	end

	// Simulacao da memoria RAM interna
	always @ (negedge clk_sprite)
	begin
		case (addr_out_sprite)
			16:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_1
			17:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_2
			18:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_3
			19:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_4
			20:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_5
			21:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_6
			22:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_7
			23:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_8
			24:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_9
			25:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_10
			26:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_11
			27:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_12
			28:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_13
			29:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_14
			30:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_15
			31:	data_in_sprite <= 16'b1111111111111111;	//shape	id1	line_16

			1027:	data_in_sprite <= 16'b0000000010010001;	//sprite_x	level 3 = 145
			1091:	data_in_sprite <= 16'b0000000000100010;	//sprite_y	level 3 = 34
			1155:	data_in_sprite <= 16'b0000000001111111;	//sprite_color	level 3 = 127
			1219:	data_in_sprite <= 16'b0000000000000001;	//sprite_id	level 3 = 1

			default:
				data_in_sprite <= 16'b0000000000000000;
		endcase
	end

	always @ (v_pos)
	begin
		if (v_pos == 512)
		begin
			$stop;
		end
	end

/*
	reg	[15:0]	data_in_sprite;
	wire	[15:0]	addr_out_sprite;
	wire	[6:0]	level_count_sprite;
	wire	[15:0]	ram_addr_sprite;
*/

	// Exibicao no terminal do tempo de simulacao
	
	// VISUALIZACAO PARA TESTAR LEITURA DA SRAM E EXIBICAO NO VGA
	/*initial
	begin
		$monitor("\tTIME\t\tCLK_50\tCLK_25\tRST\toRED\tRED\t\toGREEN\tGREEN\t\toBLUE\tBLUE\t\tV_POS\tH_POS\tADDR\t\tSTATE \n\t|%.4d|\t\t|%b|\t|%b|\t|%b|\t|%d|\t|%d|\t\t|%d|\t|%d|\t\t|%d|\t|%d|\t\t|%.4d|\t|%.4d|\t|%.4d|\t\t|%.4d|",$time,iCLK,clk,iRST,oRED,R,oGREEN,G,oBLUE,B,v_pos,h_pos,oAddress,EstadoAtual);
	end*/

	
	// VISUALIZACAO PARA TESTAR PROCESSADOR DE SPRITES
	initial
	begin
		$monitor("CLK_50\tCLK_25\tRST\tR_SPRITE\t\tRED\t\tG_SPRITE\t\tGREEN\t\tB_SPRITE\t\tBLUE\tV_POS\tH_POS\tADDR_SPRITE\t\tLVL_SPRITE\t\tSTATE\tTEST1\tTEST2 \n|%b|\t|%b|\t|%b|\t|%d|\t\t|%d|\t\t|%d|\t\t|%d|\t\t|%d|\t\t|%d|\t|%.4d|\t|%.4d|\t|%.4d|\t\t|%.4d|\t\t|%.4d|\t|%.4d|\t|%.4d|",clk_sprite,clk,rst_sprite,R_out_sprite,R,G_out_sprite,G,B_out_sprite,B,v_pos,h_pos,addr_out_sprite,level_count_sprite,EstadoAtual_FSM1,test1,test2);
	end


endmodule
