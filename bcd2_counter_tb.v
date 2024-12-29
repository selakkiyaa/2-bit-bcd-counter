module bcd2_counter_tb;
    reg clk;        
    reg rst;        
    wire [3:0] bcd1; 
    wire [3:0] bcd2; 
    bcd2_counter uut (
        .clk(clk),
        .rst(rst),
        .bcd1(bcd1),
        .bcd2(bcd2)
    );
    always begin
        #5 clk = ~clk; 
    end
    initial begin
        clk = 0;
        rst = 0;
        rst = 1;
        #10 rst = 0; 
        #1000;   
        $finish; 
    end

endmodule
