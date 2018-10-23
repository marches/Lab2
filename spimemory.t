#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xe1fda0 .scope module, "spimemory_test" "spimemory_test" 2 7;
 .timescale 0 0;
P_0xdea780 .param/l "read_op" 0 2 16, C4<01010111>;
P_0xdea7c0 .param/l "write_op" 0 2 15, C4<0101011011110101>;
v0xe43190_0 .var "clk", 0 0;
v0xe43250_0 .var "cs", 0 0;
v0xe43310_0 .net "cs_pin", 0 0, v0xe42b80_0;  1 drivers
v0xe433b0_0 .net "dataOut", 0 0, v0xe42d70_0;  1 drivers
o0x7f4d6ec3ef78 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0xe43450_0 .net "leds", 3 0, o0x7f4d6ec3ef78;  0 drivers
v0xe43540_0 .net8 "miso_pin", 0 0, L_0xe43af0;  1 drivers, strength-aware
v0xe435e0_0 .var "mosi_pin", 0 0;
v0xe436d0_0 .var "sclk_pin", 0 0;
S_0xe19d70 .scope module, "dut" "spiMemory" 2 19, 3 25 0, S_0xe1fda0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "sclk_pin"
    .port_info 2 /INPUT 1 "cs_pin"
    .port_info 3 /OUTPUT 1 "miso_pin"
    .port_info 4 /INPUT 1 "mosi_pin"
    .port_info 5 /OUTPUT 4 "leds"
L_0xe43af0 .functor BUFIF1 1, v0xe41210_0, v0xe3e0b0_0, C4<0>, C4<0>;
v0xe41340_0 .net "addr_we", 0 0, v0xe3e250_0;  1 drivers
v0xe41450_0 .net "address", 6 0, L_0xe43770;  1 drivers
v0xe41510_0 .net "addressLatchOut", 7 0, v0xe3c460_0;  1 drivers
v0xe415e0_0 .net "clk", 0 0, v0xe43190_0;  1 drivers
v0xe41790_0 .net "cs_cond", 0 0, v0xe40640_0;  1 drivers
v0xe41880_0 .net "cs_neg", 0 0, v0xe407e0_0;  1 drivers
v0xe41920_0 .net "cs_pin", 0 0, v0xe42b80_0;  alias, 1 drivers
v0xe419c0_0 .net "cs_pos", 0 0, v0xe40970_0;  1 drivers
v0xe41a60_0 .net "dataMemOut", 7 0, v0xe3cd90_0;  1 drivers
v0xe41b90_0 .net "dm_we", 0 0, v0xe3dfc0_0;  1 drivers
v0xe41c80_0 .net "leds", 3 0, o0x7f4d6ec3ef78;  alias, 0 drivers
v0xe41d20_0 .net "misoPreBufe", 0 0, v0xe41210_0;  1 drivers
v0xe41dc0_0 .net "miso_bufe", 0 0, v0xe3e0b0_0;  1 drivers
v0xe41e60_0 .net8 "miso_pin", 0 0, L_0xe43af0;  alias, 1 drivers, strength-aware
v0xe41f00_0 .net "mosi_cond", 0 0, v0xe3f080_0;  1 drivers
v0xe41ff0_0 .net "mosi_neg", 0 0, v0xe3f240_0;  1 drivers
v0xe42090_0 .net "mosi_pin", 0 0, v0xe435e0_0;  1 drivers
v0xe42240_0 .net "mosi_pos", 0 0, v0xe3f3a0_0;  1 drivers
v0xe422e0_0 .net "sclk_cond", 0 0, v0xe3fb60_0;  1 drivers
v0xe423d0_0 .net "sclk_neg", 0 0, v0xe3fd00_0;  1 drivers
v0xe424c0_0 .net "sclk_pin", 0 0, v0xe436d0_0;  1 drivers
v0xe42560_0 .net "sclk_pos", 0 0, v0xe3fe90_0;  1 drivers
v0xe42650_0 .net "shiftRegOutP", 7 0, L_0xe43950;  1 drivers
v0xe426f0_0 .net "shiftRegOutS", 0 0, L_0xe438b0;  1 drivers
v0xe427e0_0 .net "sr_we", 0 0, v0xe3e150_0;  1 drivers
L_0xe43770 .part v0xe3c460_0, 0, 7;
L_0xe43a50 .part L_0xe43950, 0, 1;
S_0xdf7d30 .scope module, "addr_latch" "dff" 3 74, 3 11 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 8 "d"
    .port_info 3 /OUTPUT 8 "q"
P_0xdf7f00 .param/l "W" 0 3 11, +C4<00000000000000000000000000001000>;
v0xe176c0_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe3c2b0_0 .net "d", 7 0, L_0xe43950;  alias, 1 drivers
v0xe3c390_0 .net "enable", 0 0, v0xe3e250_0;  alias, 1 drivers
v0xe3c460_0 .var "q", 7 0;
E_0xdd9510 .event posedge, v0xe176c0_0;
S_0xe3c5f0 .scope module, "data_mem" "datamemory" 3 65, 4 8 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 8 "dataOut"
    .port_info 2 /INPUT 7 "address"
    .port_info 3 /INPUT 1 "writeEnable"
    .port_info 4 /INPUT 8 "dataIn"
P_0xe3c7e0 .param/l "addresswidth" 0 4 10, +C4<00000000000000000000000000000111>;
P_0xe3c820 .param/l "depth" 0 4 11, +C4<00000000000000000000000010000000>;
P_0xe3c860 .param/l "width" 0 4 12, +C4<00000000000000000000000000001000>;
v0xe3cac0_0 .net "address", 6 0, L_0xe43770;  alias, 1 drivers
v0xe3cba0_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe3cc90_0 .net "dataIn", 7 0, L_0xe43950;  alias, 1 drivers
v0xe3cd90_0 .var "dataOut", 7 0;
v0xe3ce30 .array "memory", 0 127, 7 0;
v0xe3cf20_0 .net "writeEnable", 0 0, v0xe3dfc0_0;  alias, 1 drivers
S_0xe3d080 .scope module, "dut" "shiftregister" 3 58, 5 9 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "peripheralClkEdge"
    .port_info 2 /INPUT 1 "parallelLoad"
    .port_info 3 /INPUT 8 "parallelDataIn"
    .port_info 4 /INPUT 1 "serialDataIn"
    .port_info 5 /OUTPUT 8 "parallelDataOut"
    .port_info 6 /OUTPUT 1 "serialDataOut"
P_0xe3d250 .param/l "width" 0 5 10, +C4<00000000000000000000000000001000>;
L_0xe43950 .functor BUFZ 8, v0xe3da10_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0xe3d460_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe3d500_0 .net "parallelDataIn", 7 0, v0xe3cd90_0;  alias, 1 drivers
v0xe3d5c0_0 .net "parallelDataOut", 7 0, L_0xe43950;  alias, 1 drivers
v0xe3d6e0_0 .net "parallelLoad", 0 0, v0xe3e150_0;  alias, 1 drivers
v0xe3d780_0 .net "peripheralClkEdge", 0 0, v0xe3fe90_0;  alias, 1 drivers
v0xe3d890_0 .net "serialDataIn", 0 0, v0xe3f080_0;  alias, 1 drivers
v0xe3d950_0 .net "serialDataOut", 0 0, L_0xe438b0;  alias, 1 drivers
v0xe3da10_0 .var "shiftregistermem", 7 0;
L_0xe438b0 .part v0xe3da10_0, 7, 1;
S_0xe3dc10 .scope module, "finite_state_m" "fsm" 3 79, 6 7 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "cs"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "sclk"
    .port_info 3 /INPUT 1 "shiftRegOut0"
    .port_info 4 /OUTPUT 1 "add_WE"
    .port_info 5 /OUTPUT 1 "DM_WE"
    .port_info 6 /OUTPUT 1 "SR_WE"
    .port_info 7 /OUTPUT 1 "MISO_Buff"
P_0xe3dde0 .param/l "waittime" 0 6 20, +C4<00000000000000000000000000000111>;
v0xe3dfc0_0 .var "DM_WE", 0 0;
v0xe3e0b0_0 .var "MISO_Buff", 0 0;
v0xe3e150_0 .var "SR_WE", 0 0;
v0xe3e250_0 .var "add_WE", 0 0;
v0xe3e320_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe3e410_0 .var "counter", 4 0;
v0xe3e4b0_0 .net "cs", 0 0, v0xe40640_0;  alias, 1 drivers
v0xe3e550_0 .var "miOut", 0 0;
v0xe3e610_0 .var "moMem", 0 0;
v0xe3e760_0 .net "sclk", 0 0, v0xe3fb60_0;  alias, 1 drivers
v0xe3e820_0 .net "shiftRegOut0", 0 0, L_0xe43a50;  1 drivers
v0xe3e8e0_0 .var "state", 2 0;
v0xe3e9c0_0 .var "turnOn", 0 0;
E_0xe3d2f0 .event posedge, v0xe3e760_0;
S_0xe3eb80 .scope module, "ic0" "inputconditioner" 3 43, 7 8 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xe3ed50 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xe3ed90 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xe3ef30_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe3f080_0 .var "conditioned", 0 0;
v0xe3f170_0 .var "counter", 2 0;
v0xe3f240_0 .var "negativeedge", 0 0;
v0xe3f2e0_0 .net "noisysignal", 0 0, v0xe435e0_0;  alias, 1 drivers
v0xe3f3a0_0 .var "positiveedge", 0 0;
v0xe3f460_0 .var "synchronizer0", 0 0;
v0xe3f520_0 .var "synchronizer1", 0 0;
S_0xe3f680 .scope module, "ic1" "inputconditioner" 3 48, 7 8 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xe3f850 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xe3f890 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xe3fac0_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe3fb60_0 .var "conditioned", 0 0;
v0xe3fc30_0 .var "counter", 2 0;
v0xe3fd00_0 .var "negativeedge", 0 0;
v0xe3fda0_0 .net "noisysignal", 0 0, v0xe436d0_0;  alias, 1 drivers
v0xe3fe90_0 .var "positiveedge", 0 0;
v0xe3ff30_0 .var "synchronizer0", 0 0;
v0xe3ffd0_0 .var "synchronizer1", 0 0;
S_0xe40160 .scope module, "ic2" "inputconditioner" 3 53, 7 8 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xe40330 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xe40370 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xe405a0_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe40640_0 .var "conditioned", 0 0;
v0xe40710_0 .var "counter", 2 0;
v0xe407e0_0 .var "negativeedge", 0 0;
v0xe40880_0 .net "noisysignal", 0 0, v0xe42b80_0;  alias, 1 drivers
v0xe40970_0 .var "positiveedge", 0 0;
v0xe40a30_0 .var "synchronizer0", 0 0;
v0xe40af0_0 .var "synchronizer1", 0 0;
S_0xe40c50 .scope module, "miso_buff" "dff" 3 70, 3 11 0, S_0xe19d70;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 1 "d"
    .port_info 3 /OUTPUT 1 "q"
P_0xe40e20 .param/l "W" 0 3 11, +C4<00000000000000000000000000000001>;
v0xe40f60_0 .net "clk", 0 0, v0xe43190_0;  alias, 1 drivers
v0xe41020_0 .net "d", 0 0, L_0xe438b0;  alias, 1 drivers
v0xe41110_0 .net "enable", 0 0, v0xe3fd00_0;  alias, 1 drivers
v0xe41210_0 .var "q", 0 0;
S_0xe42910 .scope module, "inWave" "inputWave" 2 20, 8 1 0, S_0xe1fda0;
 .timescale 0 0;
    .port_info 0 /INPUT 16 "dataIn"
    .port_info 1 /INPUT 1 "sclk"
    .port_info 2 /INPUT 1 "enable"
    .port_info 3 /OUTPUT 1 "dataOut"
    .port_info 4 /OUTPUT 1 "actualCS"
v0xe42b80_0 .var "actualCS", 0 0;
L_0x7f4d6ebf5018 .functor BUFT 1, C4<0101011011110101>, C4<0>, C4<0>, C4<0>;
v0xe42c90_0 .net "dataIn", 15 0, L_0x7f4d6ebf5018;  1 drivers
v0xe42d70_0 .var "dataOut", 0 0;
v0xe42e10_0 .net "enable", 0 0, v0xe43250_0;  1 drivers
v0xe42ed0_0 .var "pos", 4 0;
v0xe43000_0 .net "sclk", 0 0, v0xe436d0_0;  alias, 1 drivers
E_0xe1b7e0 .event negedge, v0xe3fda0_0;
    .scope S_0xe3eb80;
T_0 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe3f170_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe3f460_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe3f520_0, 0, 1;
    %end;
    .thread T_0;
    .scope S_0xe3eb80;
T_1 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe3f080_0;
    %load/vec4 v0xe3f520_0;
    %cmp/e;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe3f170_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3f3a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3f240_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0xe3f170_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_1.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe3f170_0, 0;
    %load/vec4 v0xe3f520_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3f080_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3f3a0_0, 0;
T_1.4 ;
    %load/vec4 v0xe3f520_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3f080_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3f240_0, 0;
T_1.6 ;
    %load/vec4 v0xe3f520_0;
    %assign/vec4 v0xe3f080_0, 0;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xe3f170_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xe3f170_0, 0;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0xe3f2e0_0;
    %assign/vec4 v0xe3f460_0, 0;
    %load/vec4 v0xe3f460_0;
    %assign/vec4 v0xe3f520_0, 0;
    %jmp T_1;
    .thread T_1;
    .scope S_0xe3f680;
T_2 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe3fc30_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe3ff30_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe3ffd0_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0xe3f680;
T_3 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe3fb60_0;
    %load/vec4 v0xe3ffd0_0;
    %cmp/e;
    %jmp/0xz  T_3.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe3fc30_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3fe90_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3fd00_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0xe3fc30_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe3fc30_0, 0;
    %load/vec4 v0xe3ffd0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3fb60_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3fe90_0, 0;
T_3.4 ;
    %load/vec4 v0xe3ffd0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3fb60_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3fd00_0, 0;
T_3.6 ;
    %load/vec4 v0xe3ffd0_0;
    %assign/vec4 v0xe3fb60_0, 0;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0xe3fc30_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xe3fc30_0, 0;
T_3.3 ;
T_3.1 ;
    %load/vec4 v0xe3fda0_0;
    %assign/vec4 v0xe3ff30_0, 0;
    %load/vec4 v0xe3ff30_0;
    %assign/vec4 v0xe3ffd0_0, 0;
    %jmp T_3;
    .thread T_3;
    .scope S_0xe40160;
T_4 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe40710_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe40a30_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe40af0_0, 0, 1;
    %end;
    .thread T_4;
    .scope S_0xe40160;
T_5 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe40640_0;
    %load/vec4 v0xe40af0_0;
    %cmp/e;
    %jmp/0xz  T_5.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe40710_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe40970_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe407e0_0, 0;
    %jmp T_5.1;
T_5.0 ;
    %load/vec4 v0xe40710_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_5.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xe40710_0, 0;
    %load/vec4 v0xe40af0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe40640_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe40970_0, 0;
T_5.4 ;
    %load/vec4 v0xe40af0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe40640_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe407e0_0, 0;
T_5.6 ;
    %load/vec4 v0xe40af0_0;
    %assign/vec4 v0xe40640_0, 0;
    %jmp T_5.3;
T_5.2 ;
    %load/vec4 v0xe40710_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xe40710_0, 0;
T_5.3 ;
T_5.1 ;
    %load/vec4 v0xe40880_0;
    %assign/vec4 v0xe40a30_0, 0;
    %load/vec4 v0xe40a30_0;
    %assign/vec4 v0xe40af0_0, 0;
    %jmp T_5;
    .thread T_5;
    .scope S_0xe3d080;
T_6 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe3d6e0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %load/vec4 v0xe3d500_0;
    %assign/vec4 v0xe3da10_0, 0;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0xe3d780_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.2, 4;
    %load/vec4 v0xe3da10_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0xe3da10_0, 0, 8;
    %load/vec4 v0xe3d890_0;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xe3da10_0, 4, 1;
    %vpi_call 5 32 "$display", "Shift Register address: %b", v0xe3da10_0 {0 0 0};
T_6.2 ;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0xe3c5f0;
T_7 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe3cf20_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %vpi_call 4 27 "$display", "Write Enable: %b", v0xe3cf20_0 {0 0 0};
    %load/vec4 v0xe3cc90_0;
    %load/vec4 v0xe3cac0_0;
    %pad/u 9;
    %ix/vec4 3;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xe3ce30, 0, 4;
T_7.0 ;
    %load/vec4 v0xe3cac0_0;
    %pad/u 9;
    %ix/vec4 4;
    %load/vec4a v0xe3ce30, 4;
    %assign/vec4 v0xe3cd90_0, 0;
    %jmp T_7;
    .thread T_7;
    .scope S_0xe40c50;
T_8 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe41110_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0xe41020_0;
    %assign/vec4 v0xe41210_0, 0;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0xdf7d30;
T_9 ;
    %wait E_0xdd9510;
    %load/vec4 v0xe3c390_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0xe3c2b0_0;
    %assign/vec4 v0xe3c460_0, 0;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0xe3dc10;
T_10 ;
    %pushi/vec4 5, 0, 3;
    %store/vec4 v0xe3e8e0_0, 0, 3;
    %end;
    .thread T_10;
    .scope S_0xe3dc10;
T_11 ;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xe3e410_0, 0;
    %end;
    .thread T_11;
    .scope S_0xe3dc10;
T_12 ;
    %wait E_0xe3d2f0;
    %load/vec4 v0xe3e410_0;
    %pad/u 32;
    %cmpi/e 7, 0, 32;
    %jmp/0xz  T_12.0, 4;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xe3e410_0, 0;
    %jmp T_12.1;
T_12.0 ;
    %load/vec4 v0xe3e410_0;
    %addi 1, 0, 5;
    %assign/vec4 v0xe3e410_0, 0;
T_12.1 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0xe3dc10;
T_13 ;
    %wait E_0xe3d2f0;
    %vpi_call 6 36 "$display", "Positive sclk edge" {0 0 0};
    %load/vec4 v0xe3e4b0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e9c0_0, 0;
    %vpi_call 6 40 "$display", "In state OFF" {0 0 0};
    %jmp T_13.1;
T_13.0 ;
    %load/vec4 v0xe3e4b0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3e8e0_0;
    %pushi/vec4 5, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.2, 8;
    %load/vec4 v0xe3e9c0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.4, 4;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0xe3e410_0, 0, 5;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xe3e9c0_0, 0, 1;
    %vpi_call 6 47 "$display", "Turn on = %b", v0xe3e9c0_0 {0 0 0};
T_13.4 ;
    %vpi_call 6 49 "$display", "In state OFF going to address" {0 0 0};
    %load/vec4 v0xe3e410_0;
    %pad/u 32;
    %cmpi/e 7, 0, 32;
    %jmp/0xz  T_13.6, 4;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xe3e8e0_0, 0, 3;
    %vpi_call 6 52 "$display", "counter: %b", v0xe3e410_0 {0 0 0};
T_13.6 ;
    %vpi_call 6 54 "$display", "counter: %b", v0xe3e410_0 {0 0 0};
    %jmp T_13.3;
T_13.2 ;
    %load/vec4 v0xe3e8e0_0;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3e820_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.8, 8;
    %pushi/vec4 1, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
    %vpi_call 6 59 "$display", "In state ADDRESS going to miso_reg" {0 0 0};
    %jmp T_13.9;
T_13.8 ;
    %load/vec4 v0xe3e8e0_0;
    %cmpi/e 1, 0, 3;
    %jmp/0xz  T_13.10, 4;
    %pushi/vec4 2, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e550_0, 0;
    %vpi_call 6 65 "$display", "In state going to miso_out" {0 0 0};
    %jmp T_13.11;
T_13.10 ;
    %load/vec4 v0xe3e8e0_0;
    %cmpi/e 2, 0, 3;
    %jmp/0xz  T_13.12, 4;
    %load/vec4 v0xe3e550_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.14, 4;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xe3e410_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3e550_0, 0;
    %vpi_call 6 72 "$display", "In state of miso_out" {0 0 0};
T_13.14 ;
    %load/vec4 v0xe3e410_0;
    %pad/u 32;
    %cmpi/e 7, 0, 32;
    %jmp/0xz  T_13.16, 4;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
T_13.16 ;
    %jmp T_13.13;
T_13.12 ;
    %load/vec4 v0xe3e8e0_0;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe3e820_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.18, 8;
    %pushi/vec4 3, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e610_0, 0;
    %vpi_call 6 81 "$display", "In state ADDRESS going to mosimem" {0 0 0};
    %jmp T_13.19;
T_13.18 ;
    %load/vec4 v0xe3e8e0_0;
    %cmpi/e 3, 0, 3;
    %jmp/0xz  T_13.20, 4;
    %vpi_call 6 85 "$display", "In state of mosimem" {0 0 0};
    %load/vec4 v0xe3e610_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.22, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xe3e610_0, 0, 1;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0xe3e410_0, 0, 5;
    %vpi_call 6 89 "$display", "MOSI counter: %b", v0xe3e410_0 {0 0 0};
T_13.22 ;
    %load/vec4 v0xe3e410_0;
    %pad/u 32;
    %cmpi/e 6, 0, 32;
    %jmp/0xz  T_13.24, 4;
    %pushi/vec4 4, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
T_13.24 ;
    %vpi_call 6 93 "$display", "MOSI counter: %b", v0xe3e410_0 {0 0 0};
    %jmp T_13.21;
T_13.20 ;
    %load/vec4 v0xe3e8e0_0;
    %cmpi/e 4, 0, 3;
    %jmp/0xz  T_13.26, 4;
    %vpi_call 6 97 "$display", "In state mosi_wri" {0 0 0};
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xe3e8e0_0, 0;
T_13.26 ;
T_13.21 ;
T_13.19 ;
T_13.13 ;
T_13.11 ;
T_13.9 ;
T_13.3 ;
T_13.1 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0xe3dc10;
T_14 ;
    %wait E_0xe3d2f0;
    %load/vec4 v0xe3e8e0_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/u;
    %jmp/1 T_14.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/u;
    %jmp/1 T_14.1, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 3;
    %cmp/u;
    %jmp/1 T_14.2, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/u;
    %jmp/1 T_14.3, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 3;
    %cmp/u;
    %jmp/1 T_14.4, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 3;
    %cmp/u;
    %jmp/1 T_14.5, 6;
    %jmp T_14.6;
T_14.0 ;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3dfc0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e150_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e0b0_0, 0;
    %jmp T_14.6;
T_14.1 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3dfc0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3e150_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e0b0_0, 0;
    %jmp T_14.6;
T_14.2 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3dfc0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e150_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e0b0_0, 0;
    %jmp T_14.6;
T_14.3 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3dfc0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e150_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3e0b0_0, 0;
    %jmp T_14.6;
T_14.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e250_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe3dfc0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e150_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e0b0_0, 0;
    %jmp T_14.6;
T_14.5 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3dfc0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e150_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe3e0b0_0, 0;
    %jmp T_14.6;
T_14.6 ;
    %pop/vec4 1;
    %jmp T_14;
    .thread T_14;
    .scope S_0xe42910;
T_15 ;
    %pushi/vec4 15, 0, 5;
    %store/vec4 v0xe42ed0_0, 0, 5;
    %end;
    .thread T_15;
    .scope S_0xe42910;
T_16 ;
    %wait E_0xe1b7e0;
    %load/vec4 v0xe42e10_0;
    %store/vec4 v0xe42b80_0, 0, 1;
    %load/vec4 v0xe42c90_0;
    %load/vec4 v0xe42ed0_0;
    %part/u 1;
    %store/vec4 v0xe42d70_0, 0, 1;
    %vpi_call 8 14 "$display", "On bit %b which equals %b", v0xe42ed0_0, &PV<v0xe42c90_0, v0xe42ed0_0, 1> {0 0 0};
    %load/vec4 v0xe42b80_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_16.0, 4;
    %load/vec4 v0xe42ed0_0;
    %subi 1, 0, 5;
    %store/vec4 v0xe42ed0_0, 0, 5;
T_16.0 ;
    %load/vec4 v0xe42ed0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xe42b80_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.2, 8;
    %pushi/vec4 15, 0, 5;
    %store/vec4 v0xe42ed0_0, 0, 5;
T_16.2 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0xe1fda0;
T_17 ;
    %delay 10, 0;
    %load/vec4 v0xe43190_0;
    %nor/r;
    %store/vec4 v0xe43190_0, 0, 1;
    %jmp T_17;
    .thread T_17;
    .scope S_0xe1fda0;
T_18 ;
    %delay 100, 0;
    %load/vec4 v0xe436d0_0;
    %nor/r;
    %store/vec4 v0xe436d0_0, 0, 1;
    %jmp T_18;
    .thread T_18;
    .scope S_0xe1fda0;
T_19 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe436d0_0, 0, 1;
    %end;
    .thread T_19;
    .scope S_0xe1fda0;
T_20 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xe43190_0, 0, 1;
    %end;
    .thread T_20;
    .scope S_0xe1fda0;
T_21 ;
    %vpi_call 2 29 "$dumpfile", "spi.vcd" {0 0 0};
    %vpi_call 2 30 "$dumpvars" {0 0 0};
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe43250_0, 0;
    %delay 200, 0;
    %vpi_call 2 33 "$display", "STARTING NOW! Mosi=%b", v0xe433b0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xe43250_0, 0;
    %delay 200, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xe433b0_0;
    %assign/vec4 v0xe435e0_0, 0;
    %delay 100, 0;
    %vpi_call 2 73 "$display", "Address: %b", v0xe3cac0_0 {0 0 0};
    %vpi_call 2 75 "$finish" {0 0 0};
    %end;
    .thread T_21;
# The file index is used to find the file name in the following table.
:file_names 9;
    "N/A";
    "<interactive>";
    "spimemory.t.v";
    "./spimemory.v";
    "./datamemory.v";
    "./shiftregister.v";
    "./fsm.v";
    "./inputconditioner.v";
    "./inputWave.v";
