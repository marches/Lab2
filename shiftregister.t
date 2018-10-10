#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x93ab60 .scope module, "testshiftregister" "testshiftregister" 2 6;
 .timescale 0 0;
v0x975bf0_0 .var "clk", 0 0;
v0x975cb0_0 .var "dutpassed", 0 0;
v0x975d50_0 .var "parallelDataIn", 7 0;
v0x975e50_0 .net "parallelDataOut", 7 0, L_0x976370;  1 drivers
v0x975f20_0 .var "parallelLoad", 0 0;
v0x976010_0 .var "peripheralClkEdge", 0 0;
v0x9760e0_0 .var "serialDataIn", 0 0;
v0x9761b0_0 .net "serialDataOut", 0 0, L_0x976280;  1 drivers
S_0x960ad0 .scope module, "dut" "shiftregister" 2 17, 3 9 0, S_0x93ab60;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "peripheralClkEdge"
    .port_info 2 /INPUT 1 "parallelLoad"
    .port_info 3 /INPUT 8 "parallelDataIn"
    .port_info 4 /INPUT 1 "serialDataIn"
    .port_info 5 /OUTPUT 8 "parallelDataOut"
    .port_info 6 /OUTPUT 1 "serialDataOut"
P_0x960c50 .param/l "width" 0 3 10, +C4<00000000000000000000000000001000>;
L_0x976370 .functor BUFZ 8, v0x9759f0_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0x960cf0_0 .net "clk", 0 0, v0x975bf0_0;  1 drivers
v0x9754d0_0 .net "parallelDataIn", 7 0, v0x975d50_0;  1 drivers
v0x9755b0_0 .net "parallelDataOut", 7 0, L_0x976370;  alias, 1 drivers
v0x9756a0_0 .net "parallelLoad", 0 0, v0x975f20_0;  1 drivers
v0x975760_0 .net "peripheralClkEdge", 0 0, v0x976010_0;  1 drivers
v0x975870_0 .net "serialDataIn", 0 0, v0x9760e0_0;  1 drivers
v0x975930_0 .net "serialDataOut", 0 0, L_0x976280;  alias, 1 drivers
v0x9759f0_0 .var "shiftregistermem", 7 0;
E_0x961550 .event posedge, v0x975760_0;
L_0x976280 .part v0x9759f0_0, 7, 1;
    .scope S_0x960ad0;
T_0 ;
    %wait E_0x961550;
    %load/vec4 v0x9756a0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 6, 4;
    %ix/load 4, 7, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 5, 4;
    %ix/load 4, 6, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 4, 4;
    %ix/load 4, 5, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 3, 3;
    %ix/load 4, 4, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 2, 3;
    %ix/load 4, 3, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 1, 2;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x9759f0_0;
    %parti/s 1, 0, 2;
    %ix/load 4, 1, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %load/vec4 v0x975870_0;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x9759f0_0, 4, 5;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x9754d0_0;
    %assign/vec4 v0x9759f0_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x93ab60;
T_1 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x975f20_0, 0, 1;
    %pushi/vec4 15, 0, 8;
    %store/vec4 v0x975d50_0, 0, 8;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x9760e0_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x976010_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x976010_0, 0, 1;
    %delay 10, 0;
    %load/vec4 v0x975e50_0;
    %pad/u 32;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x9761b0_0;
    %pad/u 32;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_1.0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x975cb0_0, 0, 1;
    %vpi_call 2 35 "$display", "Test Case 1 Failed" {0 0 0};
    %vpi_call 2 36 "$display", "%b  |  %b", v0x975e50_0, v0x9761b0_0 {0 0 0};
T_1.0 ;
    %end;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "shiftregister.t.v";
    "./shiftregister.v";
