#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x26d4dc0 .scope module, "inputWave" "inputWave" 2 1;
 .timescale 0 0;
    .port_info 0 /INPUT 4 "dataIn"
    .port_info 1 /INPUT 1 "sclk"
    .port_info 2 /INPUT 1 "Initialpos"
    .port_info 3 /OUTPUT 1 "dataOut"
o0x7faeabcf1018 .functor BUFZ 1, C4<z>; HiZ drive
v0x26d4fd0_0 .net "Initialpos", 0 0, o0x7faeabcf1018;  0 drivers
o0x7faeabcf1048 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0x2717a90_0 .net "dataIn", 3 0, o0x7faeabcf1048;  0 drivers
v0x2717b70_0 .var "dataOut", 0 0;
v0x2717c40_0 .var "pos", 0 0;
o0x7faeabcf10d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2717d00_0 .net "sclk", 0 0, o0x7faeabcf10d8;  0 drivers
E_0x26d5960 .event posedge, v0x2717d00_0;
    .scope S_0x26d4dc0;
T_0 ;
    %load/vec4 v0x26d4fd0_0;
    %store/vec4 v0x2717c40_0, 0, 1;
    %end;
    .thread T_0;
    .scope S_0x26d4dc0;
T_1 ;
    %wait E_0x26d5960;
    %load/vec4 v0x2717a90_0;
    %load/vec4 v0x2717c40_0;
    %part/u 1;
    %store/vec4 v0x2717b70_0, 0, 1;
    %load/vec4 v0x2717c40_0;
    %pad/u 2;
    %addi 1, 0, 2;
    %pad/u 1;
    %store/vec4 v0x2717c40_0, 0, 1;
    %jmp T_1;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "inputWave.v";
