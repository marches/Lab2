#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1132cf0 .scope module, "shiftregister" "shiftregister" 2 9;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "peripheralClkEdge"
    .port_info 2 /INPUT 1 "parallelLoad"
    .port_info 3 /INPUT 8 "parallelDataIn"
    .port_info 4 /INPUT 1 "serialDataIn"
    .port_info 5 /OUTPUT 8 "parallelDataOut"
    .port_info 6 /OUTPUT 1 "serialDataOut"
P_0x1133a20 .param/l "width" 0 2 10, +C4<00000000000000000000000000001000>;
L_0x117b700 .functor BUFZ 8, v0x117b430_0, C4<00000000>, C4<00000000>, C4<00000000>;
o0x7f8b599ab018 .functor BUFZ 1, C4<z>; HiZ drive
v0x1144b20_0 .net "clk", 0 0, o0x7f8b599ab018;  0 drivers
o0x7f8b599ab048 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0x117af10_0 .net "parallelDataIn", 7 0, o0x7f8b599ab048;  0 drivers
v0x117aff0_0 .net "parallelDataOut", 7 0, L_0x117b700;  1 drivers
o0x7f8b599ab0a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x117b0e0_0 .net "parallelLoad", 0 0, o0x7f8b599ab0a8;  0 drivers
o0x7f8b599ab0d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x117b1a0_0 .net "peripheralClkEdge", 0 0, o0x7f8b599ab0d8;  0 drivers
o0x7f8b599ab108 .functor BUFZ 1, C4<z>; HiZ drive
v0x117b2b0_0 .net "serialDataIn", 0 0, o0x7f8b599ab108;  0 drivers
v0x117b370_0 .net "serialDataOut", 0 0, L_0x117b630;  1 drivers
v0x117b430_0 .var "shiftregistermem", 7 0;
E_0x11688e0 .event posedge, v0x117b1a0_0;
L_0x117b630 .part v0x117b430_0, 7, 1;
    .scope S_0x1132cf0;
T_0 ;
    %wait E_0x11688e0;
    %load/vec4 v0x117b0e0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 6, 4;
    %ix/load 4, 7, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 5, 4;
    %ix/load 4, 6, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 4, 4;
    %ix/load 4, 5, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 3, 3;
    %ix/load 4, 4, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 2, 3;
    %ix/load 4, 3, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 1, 2;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b430_0;
    %parti/s 1, 0, 2;
    %ix/load 4, 1, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %load/vec4 v0x117b2b0_0;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x117b430_0, 4, 5;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x117af10_0;
    %assign/vec4 v0x117b430_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "shiftregister.v";
