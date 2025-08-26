module led_blink #(
    parameter   integer     led0_counter_bits = 28,
    parameter   integer     led1_counter_bits = 27,
    parameter   integer     led2_counter_bits = 26,
    parameter   integer     led3_counter_bits = 25
)
(
    input   wire           clk,
    input   wire           rst_n,

    output  reg    [3:0]   led
);

    reg [led0_counter_bits-1:0] led0_counter = 0;
    reg [led1_counter_bits-1:0] led1_counter = 0;
    reg [led2_counter_bits-1:0] led2_counter = 0;
    reg [led3_counter_bits-1:0] led3_counter = 0;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            led0_counter <= 0;
            led1_counter <= 0;
            led2_counter <= 0;
            led3_counter <= 0;
            led          <= 4'b0000;
        end else begin
            led0_counter <= led0_counter + 1;
            led1_counter <= led1_counter + 1;
            led2_counter <= led2_counter + 1;
            led3_counter <= led3_counter + 1;
            
            led[0] <= led0_counter[led0_counter_bits-1];
            led[1] <= led1_counter[led1_counter_bits-1];
            led[2] <= led2_counter[led2_counter_bits-1];
            led[3] <= led3_counter[led3_counter_bits-1];
        end
    end

endmodule