// blink_led.sv

module blink_led (
    input  logic clk,
    output logic [2:0] rgb_3bits_0,
    output logic [2:0] rgb_3bits_1
    );

    localparam COUNT_MAX = 50_000_000 - 1;

    logic [31:0] counter = 0;
    logic        led_state = 0;

    always_ff @(posedge clk) begin
        if (counter == COUNT_MAX) begin
            counter <= 0;
            led_state <= ~led_state;
        end else begin
            counter <= counter + 1;
        end
    end

    logic [2:0] RGB = 0;
    always_ff @(posedge led_state) begin
        if (RGB < 7) begin
            RGB <= RGB + 1;
            rgb_3bits_0[2:0] = RGB;
            rgb_3bits_1[2:0] = ~RGB;
        end else begin
            RGB <= 0;
            rgb_3bits_0[2:0] = RGB;
            rgb_3bits_1[2:0] = ~RGB;
        end
    end
    
    ila_0 prob_count(
    .clk(clk),
    .probe0(counter)
    );
endmodule