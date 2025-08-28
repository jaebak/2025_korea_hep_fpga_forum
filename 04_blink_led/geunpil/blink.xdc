## ================= CLOCK =================
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 8.000 [get_ports clk]   ;# 125 MHz → 8 ns

## ================= LED =================
set_property PACKAGE_PIN N16 [get_ports led0]
set_property IOSTANDARD LVCMOS33 [get_ports led0]

set_property PACKAGE_PIN P14 [get_ports led1]
set_property IOSTANDARD LVCMOS33 [get_ports led1]

set_property PACKAGE_PIN R14 [get_ports led2]
set_property IOSTANDARD LVCMOS33 [get_ports led2]

## RESET (BTN0 = D19, active-high)
set_property PACKAGE_PIN D19 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PULLDOWN true   [get_ports rst]
