set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS18 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 [get_ports { clk }];
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS18 } [get_ports { rst }]; #IO_L4P_T0_35 Sch=btn[0]
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS18 } [get_ports { led[0] } ];
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS18 } [get_ports { led[1] } ];
set_property -dict { PACKAGE_PIN L14 IOSTANDARD LVCMOS18 } [get_ports { led[2] } ];
set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS18 } [get_ports { led[3] } ];
set_property -dict { PACKAGE_PIN L15 IOSTANDARD LVCMOS18 } [get_ports { led[4] } ];
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS18 } [get_ports { led[5] } ];
