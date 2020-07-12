module seven_seg(
    input                           clk_in,
    input                           rst_n,
    output reg[3:0] anode_activate,
    output reg[0:6] data_out
);
reg [10:0] refresh_rate = 0;
reg[20:0] seconds = 10'd0;
reg[22:0] seconds_counter= 23'b0;
reg [1:0] CS = 2'b00;
reg [20:0] temp = 10'd0;

always @(posedge clk_in) begin
    refresh_rate <= refresh_rate +1;
    if (seconds_counter == 23'b11111000100101101000000)
    begin
        seconds<=seconds+1;
        seconds_counter<=23'b0;
    end
    else begin
         seconds_counter<=seconds_counter+1;
    end
    
end

always @(posedge refresh_rate[5]) begin
    CS <= CS +1; 
end

always @(CS) begin

        case (CS)
            2'b00: begin
                anode_activate = 4'b0111;
                temp <=seconds/1000;
            end

            2'b01: begin
                anode_activate = 4'b1011;
                temp <=(seconds%1000)/100;
            end

            2'b10: begin
                anode_activate = 4'b1001;
                temp <= ((seconds% 1000)%100)/10;
            end

            2'b11: begin
                anode_activate = 4'b1000;
                temp <= ((seconds% 1000)%100)%10;
            end
        endcase
end

always @(*) begin
    case(temp)
        	 0: data_out = 7'b0000001;
           1  : data_out = 7'b1001111;
            2 : data_out = 7'b0010010;
             3: data_out = 7'b0000110;
             4: data_out = 7'b1001100;
             5: data_out = 7'b0100100;
             6: data_out = 7'b0100000;
             7: data_out = 7'b0001111;
             8: data_out = 7'b0000000;
             9: data_out = 7'b0000100;
        default: data_out = 7'b0000001; // "0"
        endcase
end



endmodule  //seven-seg