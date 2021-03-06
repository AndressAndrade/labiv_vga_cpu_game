module Level_Counter (clock, enable, reset, level_out);

input enable, reset, clock;

output reg [6:0] level_out;

always @ (negedge clock)
begin

	if (reset == 1'b1)
		level_out <= 7'b0000000;
	else
	begin
		if (enable == 1'b1)
			level_out <= level_out + 7'b0000001;
		else
			level_out <= level_out;
	end

end

endmodule
