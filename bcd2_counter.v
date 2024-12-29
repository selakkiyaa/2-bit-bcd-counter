module bcd2_counter(
    input clk,         
    input rst,         
    output reg [3:0] bcd1, 
    output reg [3:0] bcd2  
);
    reg [3:0] ones; 
    reg [3:0] tens; 
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ones <= 4'b0000;  
            tens <= 4'b0000;  
        end else begin
            if (ones == 9) begin
                ones <= 4'b0000;  
                if (tens == 9) begin
                    tens <= 4'b0000;  
                end else begin
                    tens <= tens + 1; 
                end
            end else begin
                ones <= ones + 1; 
            end
        end
    end
    always @(ones or tens) begin
        bcd1 = tens;
        bcd2 = ones; 
    end
endmodule
