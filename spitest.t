#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xdc7d30 .scope module, "spiMemory" "spiMemory" 2 25;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "sclk_pin"
    .port_info 2 /INPUT 1 "cs_pin"
    .port_info 3 /OUTPUT 1 "miso_pin"
    .port_info 4 /INPUT 1 "mosi_pin"
    .port_info 5 /OUTPUT 4 "leds"
L_0xe123a0 .functor BUFIF1 1, v0xe10980_0, v0xe0d850_0, C4<0>, C4<0>;
v0xe10ab0_0 .net "addr_we", 0 0, v0xe0d9f0_0;  1 drivers
v0xe10bc0_0 .net "address", 6 0, L_0xe11fe0;  1 drivers
v0xe10c80_0 .net "addressLatchOut", 7 0, v0xe0bc10_0;  1 drivers
o0x7feb0593a018 .functor BUFZ 1, C4<z>; HiZ drive
v0xe10d50_0 .net "clk", 0 0, o0x7feb0593a018;  0 drivers
v0xe10f00_0 .net "cs_cond", 0 0, v0xe0fd70_0;  1 drivers
v0xe10ff0_0 .net "cs_neg", 0 0, v0xe0ff30_0;  1 drivers
o0x7feb0593acd8 .functor BUFZ 1, C4<z>; HiZ drive
v0xe11090_0 .net "cs_pin", 0 0, o0x7feb0593acd8;  0 drivers
v0xe11130_0 .net "cs_pos", 0 0, v0xe100e0_0;  1 drivers
v0xe111d0_0 .net "dataMemOut", 7 0, v0xe0c540_0;  1 drivers
v0xe11300_0 .net "dm_we", 0 0, v0xe0d790_0;  1 drivers
o0x7feb0593af78 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0xe113f0_0 .net "leds", 3 0, o0x7feb0593af78;  0 drivers
v0xe11490_0 .net "misoPreBufe", 0 0, v0xe10980_0;  1 drivers
v0xe11530_0 .net "miso_bufe", 0 0, v0xe0d850_0;  1 drivers
v0xe115d0_0 .net8 "miso_pin", 0 0, L_0xe123a0;  1 drivers, strength-aware
v0xe11670_0 .net "mosi_cond", 0 0, v0xe0e810_0;  1 drivers
v0xe11760_0 .net "mosi_neg", 0 0, v0xe0e9b0_0;  1 drivers
o0x7feb0593a8b8 .functor BUFZ 1, C4<z>; HiZ drive
v0xe11800_0 .net "mosi_pin", 0 0, o0x7feb0593a8b8;  0 drivers
v0xe119b0_0 .net "mosi_pos", 0 0, v0xe0eaf0_0;  1 drivers
v0xe11a50_0 .net "sclk_cond", 0 0, v0xe0f2b0_0;  1 drivers
v0xe11af0_0 .net "sclk_neg", 0 0, v0xe0f420_0;  1 drivers
o0x7feb0593aaf8 .functor BUFZ 1, C4<z>; HiZ drive
v0xe11be0_0 .net "sclk_pin", 0 0, o0x7feb0593aaf8;  0 drivers
v0xe11c80_0 .net "sclk_pos", 0 0, v0xe0f5f0_0;  1 drivers
v0xe11d20_0 .net "shiftRegOutP", 7 0, L_0xe121c0;  1 drivers
v0xe11dc0_0 .net "shiftRegOutS", 0 0, L_0xe12120;  1 drivers
v0xe11eb0_0 .net "sr_we", 0 0, v0xe0d8f0_0;  1 drivers
L_0xe11fe0 .part v0xe0bc10_0, 0, 7;
L_0xe12300 .part L_0xe121c0, 0, 1;
S_0xdee960 .scope module, "addr_latch" "dff" 2 74, 2 11 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 8 "d"
    .port_info 3 /OUTPUT 8 "q"
P_0xdee640 .param/l "W" 0 2 11, +C4<00000000000000000000000000001000>;
v0xde8df0_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0ba60_0 .net "d", 7 0, L_0xe121c0;  alias, 1 drivers
v0xe0bb40_0 .net "enable", 0 0, v0xe0d9f0_0;  alias, 1 drivers
v0xe0bc10_0 .var "q", 7 0;
E_0xdc77f0 .event posedge, v0xde8df0_0;
S_0xe0bda0 .scope module, "data_mem" "datamemory" 2 65, 3 8 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 8 "dataOut"
    .port_info 2 /INPUT 7 "address"
    .port_info 3 /INPUT 1 "writeEnable"
    .port_info 4 /INPUT 8 "dataIn"
P_0xe0bf90 .param/l "addresswidth" 0 3 10, +C4<00000000000000000000000000000111>;
P_0xe0bfd0 .param/l "depth" 0 3 11, +C4<00000000000000000000000010000000>;
P_0xe0c010 .param/l "width" 0 3 12, +C4<00000000000000000000000000001000>;
v0xe0c270_0 .net "address", 6 0, L_0xe11fe0;  alias, 1 drivers
v0xe0c350_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0c440_0 .net "dataIn", 7 0, L_0xe121c0;  alias, 1 drivers
v0xe0c540_0 .var "dataOut", 7 0;
v0xe0c5e0 .array "memory", 0 127, 7 0;
v0xe0c6d0_0 .net "writeEnable", 0 0, v0xe0d790_0;  alias, 1 drivers
S_0xe0c830 .scope module, "dut" "shiftregister" 2 58, 4 9 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "peripheralClkEdge"
    .port_info 2 /INPUT 1 "parallelLoad"
    .port_info 3 /INPUT 8 "parallelDataIn"
    .port_info 4 /INPUT 1 "serialDataIn"
    .port_info 5 /OUTPUT 8 "parallelDataOut"
    .port_info 6 /OUTPUT 1 "serialDataOut"
P_0xe0ca00 .param/l "width" 0 4 10, +C4<00000000000000000000000000001000>;
L_0xe121c0 .functor BUFZ 8, v0xe0d1c0_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0xe0cc10_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0ccb0_0 .net "parallelDataIn", 7 0, v0xe0c540_0;  alias, 1 drivers
v0xe0cd70_0 .net "parallelDataOut", 7 0, L_0xe121c0;  alias, 1 drivers
v0xe0ce90_0 .net "parallelLoad", 0 0, v0xe0d8f0_0;  alias, 1 drivers
v0xe0cf30_0 .net "peripheralClkEdge", 0 0, v0xe0f5f0_0;  alias, 1 drivers
v0xe0d040_0 .net "serialDataIn", 0 0, v0xe0e810_0;  alias, 1 drivers
v0xe0d100_0 .net "serialDataOut", 0 0, L_0xe12120;  alias, 1 drivers
v0xe0d1c0_0 .var "shiftregistermem", 7 0;
L_0xe12120 .part v0xe0d1c0_0, 7, 1;
S_0xe0d3c0 .scope module, "finite_state_m" "fsm" 2 79, 5 7 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "cs"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "sclk"
    .port_info 3 /INPUT 1 "shiftRegOut0"
    .port_info 4 /OUTPUT 1 "add_WE"
    .port_info 5 /OUTPUT 1 "DM_WE"
    .port_info 6 /OUTPUT 1 "SR_WE"
    .port_info 7 /OUTPUT 1 "MISO_Buff"
P_0xe0d590 .param/l "waittime" 0 5 19, +C4<00000000000000000000000000000111>;
v0xe0d790_0 .var "DM_WE", 0 0;
v0xe0d850_0 .var "MISO_Buff", 0 0;
v0xe0d8f0_0 .var "SR_WE", 0 0;
v0xe0d9f0_0 .var "add_WE", 0 0;
v0xe0dac0_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0dbb0_0 .var "counter", 0 0;
v0xe0dc50_0 .net "cs", 0 0, v0xe0fd70_0;  alias, 1 drivers
v0xe0dcf0_0 .var "miOut", 0 0;
v0xe0dd90_0 .var "moMem", 0 0;
v0xe0dee0_0 .net "sclk", 0 0, v0xe0f5f0_0;  alias, 1 drivers
v0xe0df80_0 .net "shiftRegOut0", 0 0, L_0xe12300;  1 drivers
v0xe0e020_0 .var "state", 0 0;
v0xe0e0e0_0 .var "turnOn", 0 0;
E_0xe0caa0 .event posedge, v0xe0cf30_0;
S_0xe0e2a0 .scope module, "ic0" "inputconditioner" 2 43, 6 8 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xe0e470 .param/l "counterwidth" 0 6 17, +C4<00000000000000000000000000000011>;
P_0xe0e4b0 .param/l "waittime" 0 6 18, +C4<00000000000000000000000000000011>;
v0xe0e6e0_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0e810_0 .var "conditioned", 0 0;
v0xe0e8e0_0 .var "counter", 2 0;
v0xe0e9b0_0 .var "negativeedge", 0 0;
v0xe0ea50_0 .net "noisysignal", 0 0, o0x7feb0593a8b8;  alias, 0 drivers
v0xe0eaf0_0 .var "positiveedge", 0 0;
v0xe0ebb0_0 .var "synchronizer0", 0 0;
v0xe0ec70_0 .var "synchronizer1", 0 0;
S_0xe0edd0 .scope module, "ic1" "inputconditioner" 2 48, 6 8 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xe0efa0 .param/l "counterwidth" 0 6 17, +C4<00000000000000000000000000000011>;
P_0xe0efe0 .param/l "waittime" 0 6 18, +C4<00000000000000000000000000000011>;
v0xe0f210_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0f2b0_0 .var "conditioned", 0 0;
v0xe0f350_0 .var "counter", 2 0;
v0xe0f420_0 .var "negativeedge", 0 0;
v0xe0f4e0_0 .net "noisysignal", 0 0, o0x7feb0593aaf8;  alias, 0 drivers
v0xe0f5f0_0 .var "positiveedge", 0 0;
v0xe0f6e0_0 .var "synchronizer0", 0 0;
v0xe0f7a0_0 .var "synchronizer1", 0 0;
S_0xe0f900 .scope module, "ic2" "inputconditioner" 2 53, 6 8 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xe0fad0 .param/l "counterwidth" 0 6 17, +C4<00000000000000000000000000000011>;
P_0xe0fb10 .param/l "waittime" 0 6 18, +C4<00000000000000000000000000000011>;
v0xe0fcb0_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe0fd70_0 .var "conditioned", 0 0;
v0xe0fe60_0 .var "counter", 2 0;
v0xe0ff30_0 .var "negativeedge", 0 0;
v0xe0ffd0_0 .net "noisysignal", 0 0, o0x7feb0593acd8;  alias, 0 drivers
v0xe100e0_0 .var "positiveedge", 0 0;
v0xe101a0_0 .var "synchronizer0", 0 0;
v0xe10260_0 .var "synchronizer1", 0 0;
S_0xe103c0 .scope module, "miso_buff" "dff" 2 70, 2 11 0, S_0xdc7d30;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 1 "d"
    .port_info 3 /OUTPUT 1 "q"
P_0xe10590 .param/l "W" 0 2 11, +C4<00000000000000000000000000000001>;
v0xe106d0_0 .net "clk", 0 0, o0x7feb0593a018;  alias, 0 drivers
v0xe10790_0 .net "d", 0 0, L_0xe12120;  alias, 1 drivers
v0xe10880_0 .net "enable", 0 0, v0xe0f420_0;  alias, 1 drivers
v0xe10980_0 .var "q", 0 0;
    .scope S_0xe0e2a0;
T_0 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe0e8e0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe0ebb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe0ec70_0, 0, 1;
    %end;
    .thread T_0;
    .scope S_0xe0e2a0;
T_1 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0e810_0;
    %load/vec4 v0xe0ec70_0;
    %cmp/e;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe0e8e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0eaf0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0e9b0_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0xe0e8e0_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_1.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe0e8e0_0, 0;
    %load/vec4 v0xe0ec70_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0e810_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0eaf0_0, 0;
T_1.4 ;
    %load/vec4 v0xe0ec70_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0e810_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e9b0_0, 0;
T_1.6 ;
    %load/vec4 v0xe0ec70_0;
    %assign/vec4 v0xe0e810_0, 0;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xe0e8e0_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xe0e8e0_0, 0;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0xe0ea50_0;
    %assign/vec4 v0xe0ebb0_0, 0;
    %load/vec4 v0xe0ebb0_0;
    %assign/vec4 v0xe0ec70_0, 0;
    %jmp T_1;
    .thread T_1;
    .scope S_0xe0edd0;
T_2 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe0f350_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe0f6e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe0f7a0_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0xe0edd0;
T_3 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0f2b0_0;
    %load/vec4 v0xe0f7a0_0;
    %cmp/e;
    %jmp/0xz  T_3.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe0f350_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0f5f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0f420_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0xe0f350_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe0f350_0, 0;
    %load/vec4 v0xe0f7a0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0f2b0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0f5f0_0, 0;
T_3.4 ;
    %load/vec4 v0xe0f7a0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0f2b0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0f420_0, 0;
T_3.6 ;
    %load/vec4 v0xe0f7a0_0;
    %assign/vec4 v0xe0f2b0_0, 0;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0xe0f350_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xe0f350_0, 0;
T_3.3 ;
T_3.1 ;
    %load/vec4 v0xe0f4e0_0;
    %assign/vec4 v0xe0f6e0_0, 0;
    %load/vec4 v0xe0f6e0_0;
    %assign/vec4 v0xe0f7a0_0, 0;
    %jmp T_3;
    .thread T_3;
    .scope S_0xe0f900;
T_4 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe0fe60_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe101a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe10260_0, 0, 1;
    %end;
    .thread T_4;
    .scope S_0xe0f900;
T_5 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0fd70_0;
    %load/vec4 v0xe10260_0;
    %cmp/e;
    %jmp/0xz  T_5.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe0fe60_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe100e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0ff30_0, 0;
    %jmp T_5.1;
T_5.0 ;
    %load/vec4 v0xe0fe60_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_5.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe0fe60_0, 0;
    %load/vec4 v0xe10260_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0fd70_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe100e0_0, 0;
T_5.4 ;
    %load/vec4 v0xe10260_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0fd70_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0ff30_0, 0;
T_5.6 ;
    %load/vec4 v0xe10260_0;
    %assign/vec4 v0xe0fd70_0, 0;
    %jmp T_5.3;
T_5.2 ;
    %load/vec4 v0xe0fe60_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xe0fe60_0, 0;
T_5.3 ;
T_5.1 ;
    %load/vec4 v0xe0ffd0_0;
    %assign/vec4 v0xe101a0_0, 0;
    %load/vec4 v0xe101a0_0;
    %assign/vec4 v0xe10260_0, 0;
    %jmp T_5;
    .thread T_5;
    .scope S_0xe0c830;
T_6 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0ce90_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %load/vec4 v0xe0ccb0_0;
    %assign/vec4 v0xe0d1c0_0, 0;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0xe0cf30_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.2, 4;
    %load/vec4 v0xe0d1c0_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %assign/vec4 v0xe0d1c0_0, 0;
    %load/vec4 v0xe0d040_0;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xe0d1c0_0, 4, 5;
T_6.2 ;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0xe0bda0;
T_7 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0c6d0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0xe0c440_0;
    %load/vec4 v0xe0c270_0;
    %pad/u 9;
    %ix/vec4 3;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xe0c5e0, 0, 4;
T_7.0 ;
    %load/vec4 v0xe0c270_0;
    %pad/u 9;
    %ix/vec4 4;
    %load/vec4a v0xe0c5e0, 4;
    %assign/vec4 v0xe0c540_0, 0;
    %jmp T_7;
    .thread T_7;
    .scope S_0xe103c0;
T_8 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe10880_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0xe10790_0;
    %assign/vec4 v0xe10980_0, 0;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0xdee960;
T_9 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0bb40_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0xe0ba60_0;
    %assign/vec4 v0xe0bc10_0, 0;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0xe0d3c0;
T_10 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dbb0_0, 0;
    %end;
    .thread T_10;
    .scope S_0xe0d3c0;
T_11 ;
    %wait E_0xe0caa0;
    %load/vec4 v0xe0dbb0_0;
    %pad/u 32;
    %cmpi/e 7, 0, 32;
    %jmp/0xz  T_11.0, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dbb0_0, 0;
    %jmp T_11.1;
T_11.0 ;
    %load/vec4 v0xe0dbb0_0;
    %pad/u 2;
    %addi 1, 0, 2;
    %pad/u 1;
    %assign/vec4 v0xe0dbb0_0, 0;
T_11.1 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0xe0d3c0;
T_12 ;
    %wait E_0xe0caa0;
    %load/vec4 v0xe0dc50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0e0e0_0, 0;
    %jmp T_12.1;
T_12.0 ;
    %load/vec4 v0xe0dc50_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %pushi/vec4 5, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.2, 8;
    %load/vec4 v0xe0e0e0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_12.4, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dbb0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e0e0_0, 0;
T_12.4 ;
    %load/vec4 v0xe0dbb0_0;
    %pad/u 3;
    %cmpi/e 7, 0, 3;
    %jmp/0xz  T_12.6, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
T_12.6 ;
    %jmp T_12.3;
T_12.2 ;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0df80_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.8, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
    %jmp T_12.9;
T_12.8 ;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %cmpi/e 1, 0, 3;
    %jmp/0xz  T_12.10, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dcf0_0, 0;
    %jmp T_12.11;
T_12.10 ;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %cmpi/e 2, 0, 3;
    %jmp/0xz  T_12.12, 4;
    %load/vec4 v0xe0dcf0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_12.14, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dbb0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0dcf0_0, 0;
T_12.14 ;
    %load/vec4 v0xe0dbb0_0;
    %pad/u 3;
    %cmpi/e 7, 0, 3;
    %jmp/0xz  T_12.16, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
T_12.16 ;
    %jmp T_12.13;
T_12.12 ;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe0df80_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.18, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dd90_0, 0;
    %jmp T_12.19;
T_12.18 ;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %cmpi/e 3, 0, 3;
    %jmp/0xz  T_12.20, 4;
    %load/vec4 v0xe0dd90_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_12.22, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0dd90_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0dbb0_0, 0;
    %load/vec4 v0xe0dbb0_0;
    %pad/u 3;
    %cmpi/e 7, 0, 3;
    %jmp/0xz  T_12.24, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
T_12.24 ;
    %jmp T_12.23;
T_12.22 ;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %cmpi/e 4, 0, 3;
    %jmp/0xz  T_12.26, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0e020_0, 0;
T_12.26 ;
T_12.23 ;
T_12.20 ;
T_12.19 ;
T_12.13 ;
T_12.11 ;
T_12.9 ;
T_12.3 ;
T_12.1 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0xe0d3c0;
T_13 ;
    %wait E_0xdc77f0;
    %load/vec4 v0xe0e020_0;
    %pad/u 3;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/u;
    %jmp/1 T_13.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/u;
    %jmp/1 T_13.1, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 3;
    %cmp/u;
    %jmp/1 T_13.2, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/u;
    %jmp/1 T_13.3, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 3;
    %cmp/u;
    %jmp/1 T_13.4, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 3;
    %cmp/u;
    %jmp/1 T_13.5, 6;
    %jmp T_13.6;
T_13.0 ;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0d9f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d790_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d8f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d850_0, 0;
    %jmp T_13.6;
T_13.1 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d9f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d790_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0d8f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d850_0, 0;
    %jmp T_13.6;
T_13.2 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d9f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d790_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d8f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d850_0, 0;
    %jmp T_13.6;
T_13.3 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d9f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d790_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d8f0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0d850_0, 0;
    %jmp T_13.6;
T_13.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d9f0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe0d790_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d8f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d850_0, 0;
    %jmp T_13.6;
T_13.5 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d9f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d790_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d8f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe0d850_0, 0;
    %jmp T_13.6;
T_13.6 ;
    %pop/vec4 1;
    %jmp T_13;
    .thread T_13;
# The file index is used to find the file name in the following table.
:file_names 7;
    "N/A";
    "<interactive>";
    "spimemory.v";
    "./datamemory.v";
    "./shiftregister.v";
    "./fsm.v";
    "./inputconditioner.v";
