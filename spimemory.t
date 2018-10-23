#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xce12f0 .scope module, "spimemory_test" "spimemory_test" 2 7;
 .timescale 0 0;
P_0xc9f310 .param/l "ad_test" 0 2 17, C4<000000>;
P_0xc9f350 .param/l "read_op" 0 2 16, C4<01010111>;
P_0xc9f390 .param/l "write_op" 0 2 15, C4<0101011011110101>;
v0xd04620_0 .var "clk", 0 0;
v0xd046e0_0 .var "cs_pin", 0 0;
v0xd047a0_0 .net "dataOut", 0 0, v0xd041f0_0;  1 drivers
o0x7f295d4d4f78 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0xd04840_0 .net "leds", 3 0, o0x7f295d4d4f78;  0 drivers
v0xd048e0_0 .net8 "miso_pin", 0 0, L_0xd04ee0;  1 drivers, strength-aware
v0xd049d0_0 .var "mosi_pin", 0 0;
v0xd04ac0_0 .var "sclk_pin", 0 0;
S_0xcdb460 .scope module, "dut" "spiMemory" 2 20, 3 25 0, S_0xce12f0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "sclk_pin"
    .port_info 2 /INPUT 1 "cs_pin"
    .port_info 3 /OUTPUT 1 "miso_pin"
    .port_info 4 /INPUT 1 "mosi_pin"
    .port_info 5 /OUTPUT 4 "leds"
L_0xd04ee0 .functor BUFIF1 1, v0xd02830_0, v0xcff6c0_0, C4<0>, C4<0>;
v0xd02960_0 .net "addr_we", 0 0, v0xcff860_0;  1 drivers
v0xd02a70_0 .net "address", 6 0, L_0xd04b60;  1 drivers
v0xd02b30_0 .net "addressLatchOut", 7 0, v0xcfda70_0;  1 drivers
v0xd02c00_0 .net "clk", 0 0, v0xd04620_0;  1 drivers
v0xd02db0_0 .net "cs_cond", 0 0, v0xd01c20_0;  1 drivers
v0xd02ea0_0 .net "cs_neg", 0 0, v0xd01de0_0;  1 drivers
v0xd02f40_0 .net "cs_pin", 0 0, v0xd046e0_0;  1 drivers
v0xd02fe0_0 .net "cs_pos", 0 0, v0xd01f90_0;  1 drivers
v0xd03080_0 .net "dataMemOut", 7 0, v0xcfe3a0_0;  1 drivers
v0xd031b0_0 .net "dm_we", 0 0, v0xcff5d0_0;  1 drivers
v0xd032a0_0 .net "leds", 3 0, o0x7f295d4d4f78;  alias, 0 drivers
v0xd03340_0 .net "misoPreBufe", 0 0, v0xd02830_0;  1 drivers
v0xd033e0_0 .net "miso_bufe", 0 0, v0xcff6c0_0;  1 drivers
v0xd03480_0 .net8 "miso_pin", 0 0, L_0xd04ee0;  alias, 1 drivers, strength-aware
v0xd03520_0 .net "mosi_cond", 0 0, v0xd006c0_0;  1 drivers
v0xd03610_0 .net "mosi_neg", 0 0, v0xd00860_0;  1 drivers
v0xd036b0_0 .net "mosi_pin", 0 0, v0xd049d0_0;  1 drivers
v0xd03860_0 .net "mosi_pos", 0 0, v0xd009a0_0;  1 drivers
v0xd03900_0 .net "sclk_cond", 0 0, v0xd01160_0;  1 drivers
v0xd039a0_0 .net "sclk_neg", 0 0, v0xd012d0_0;  1 drivers
v0xd03a90_0 .net "sclk_pin", 0 0, v0xd04ac0_0;  1 drivers
v0xd03b30_0 .net "sclk_pos", 0 0, v0xd014a0_0;  1 drivers
v0xd03bd0_0 .net "shiftRegOutP", 7 0, L_0xd04d40;  1 drivers
v0xd03c70_0 .net "shiftRegOutS", 0 0, L_0xd04ca0;  1 drivers
v0xd03d60_0 .net "sr_we", 0 0, v0xcff760_0;  1 drivers
L_0xd04b60 .part v0xcfda70_0, 0, 7;
L_0xd04e40 .part L_0xd04d40, 0, 1;
S_0xcb9c50 .scope module, "addr_latch" "dff" 3 74, 3 11 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 8 "d"
    .port_info 3 /OUTPUT 8 "q"
P_0xcb9e20 .param/l "W" 0 3 11, +C4<00000000000000000000000000001000>;
v0xcd8df0_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xcfd8c0_0 .net "d", 7 0, L_0xd04d40;  alias, 1 drivers
v0xcfd9a0_0 .net "enable", 0 0, v0xcff860_0;  alias, 1 drivers
v0xcfda70_0 .var "q", 7 0;
E_0xc9b290 .event posedge, v0xcd8df0_0;
S_0xcfdc00 .scope module, "data_mem" "datamemory" 3 65, 4 8 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 8 "dataOut"
    .port_info 2 /INPUT 7 "address"
    .port_info 3 /INPUT 1 "writeEnable"
    .port_info 4 /INPUT 8 "dataIn"
P_0xcfddf0 .param/l "addresswidth" 0 4 10, +C4<00000000000000000000000000000111>;
P_0xcfde30 .param/l "depth" 0 4 11, +C4<00000000000000000000000010000000>;
P_0xcfde70 .param/l "width" 0 4 12, +C4<00000000000000000000000000001000>;
v0xcfe0d0_0 .net "address", 6 0, L_0xd04b60;  alias, 1 drivers
v0xcfe1b0_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xcfe2a0_0 .net "dataIn", 7 0, L_0xd04d40;  alias, 1 drivers
v0xcfe3a0_0 .var "dataOut", 7 0;
v0xcfe440 .array "memory", 0 127, 7 0;
v0xcfe530_0 .net "writeEnable", 0 0, v0xcff5d0_0;  alias, 1 drivers
S_0xcfe690 .scope module, "dut" "shiftregister" 3 58, 5 9 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "peripheralClkEdge"
    .port_info 2 /INPUT 1 "parallelLoad"
    .port_info 3 /INPUT 8 "parallelDataIn"
    .port_info 4 /INPUT 1 "serialDataIn"
    .port_info 5 /OUTPUT 8 "parallelDataOut"
    .port_info 6 /OUTPUT 1 "serialDataOut"
P_0xcfe860 .param/l "width" 0 5 10, +C4<00000000000000000000000000001000>;
L_0xd04d40 .functor BUFZ 8, v0xcff020_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0xcfea70_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xcfeb10_0 .net "parallelDataIn", 7 0, v0xcfe3a0_0;  alias, 1 drivers
v0xcfebd0_0 .net "parallelDataOut", 7 0, L_0xd04d40;  alias, 1 drivers
v0xcfecf0_0 .net "parallelLoad", 0 0, v0xcff760_0;  alias, 1 drivers
v0xcfed90_0 .net "peripheralClkEdge", 0 0, v0xd014a0_0;  alias, 1 drivers
v0xcfeea0_0 .net "serialDataIn", 0 0, v0xd006c0_0;  alias, 1 drivers
v0xcfef60_0 .net "serialDataOut", 0 0, L_0xd04ca0;  alias, 1 drivers
v0xcff020_0 .var "shiftregistermem", 7 0;
L_0xd04ca0 .part v0xcff020_0, 7, 1;
S_0xcff220 .scope module, "finite_state_m" "fsm" 3 79, 6 7 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "cs"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "sclk"
    .port_info 3 /INPUT 1 "shiftRegOut0"
    .port_info 4 /OUTPUT 1 "add_WE"
    .port_info 5 /OUTPUT 1 "DM_WE"
    .port_info 6 /OUTPUT 1 "SR_WE"
    .port_info 7 /OUTPUT 1 "MISO_Buff"
P_0xcff3f0 .param/l "waittime" 0 6 20, +C4<00000000000000000000000000001000>;
v0xcff5d0_0 .var "DM_WE", 0 0;
v0xcff6c0_0 .var "MISO_Buff", 0 0;
v0xcff760_0 .var "SR_WE", 0 0;
v0xcff860_0 .var "add_WE", 0 0;
v0xcff930_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xcffa20_0 .var "counter", 4 0;
v0xcffac0_0 .net "cs", 0 0, v0xd01c20_0;  alias, 1 drivers
v0xcffb60_0 .var "miOut", 0 0;
v0xcffc20_0 .var "moMem", 0 0;
v0xcffd70_0 .net "sclk", 0 0, v0xd014a0_0;  alias, 1 drivers
v0xcffe10_0 .net "shiftRegOut0", 0 0, L_0xd04e40;  1 drivers
v0xcffeb0_0 .var "state", 2 0;
v0xcfff90_0 .var "turnOn", 0 0;
E_0xcfe900 .event posedge, v0xcfed90_0;
S_0xd00150 .scope module, "ic0" "inputconditioner" 3 43, 7 8 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xd00320 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xd00360 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xd00590_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xd006c0_0 .var "conditioned", 0 0;
v0xd00790_0 .var "counter", 2 0;
v0xd00860_0 .var "negativeedge", 0 0;
v0xd00900_0 .net "noisysignal", 0 0, v0xd049d0_0;  alias, 1 drivers
v0xd009a0_0 .var "positiveedge", 0 0;
v0xd00a60_0 .var "synchronizer0", 0 0;
v0xd00b20_0 .var "synchronizer1", 0 0;
S_0xd00c80 .scope module, "ic1" "inputconditioner" 3 48, 7 8 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xd00e50 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xd00e90 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xd010c0_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xd01160_0 .var "conditioned", 0 0;
v0xd01200_0 .var "counter", 2 0;
v0xd012d0_0 .var "negativeedge", 0 0;
v0xd01390_0 .net "noisysignal", 0 0, v0xd04ac0_0;  alias, 1 drivers
v0xd014a0_0 .var "positiveedge", 0 0;
v0xd01590_0 .var "synchronizer0", 0 0;
v0xd01650_0 .var "synchronizer1", 0 0;
S_0xd017b0 .scope module, "ic2" "inputconditioner" 3 53, 7 8 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xd01980 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xd019c0 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xd01b60_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xd01c20_0 .var "conditioned", 0 0;
v0xd01d10_0 .var "counter", 2 0;
v0xd01de0_0 .var "negativeedge", 0 0;
v0xd01e80_0 .net "noisysignal", 0 0, v0xd046e0_0;  alias, 1 drivers
v0xd01f90_0 .var "positiveedge", 0 0;
v0xd02050_0 .var "synchronizer0", 0 0;
v0xd02110_0 .var "synchronizer1", 0 0;
S_0xd02270 .scope module, "miso_buff" "dff" 3 70, 3 11 0, S_0xcdb460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 1 "d"
    .port_info 3 /OUTPUT 1 "q"
P_0xd02440 .param/l "W" 0 3 11, +C4<00000000000000000000000000000001>;
v0xd02580_0 .net "clk", 0 0, v0xd04620_0;  alias, 1 drivers
v0xd02640_0 .net "d", 0 0, L_0xd04ca0;  alias, 1 drivers
v0xd02730_0 .net "enable", 0 0, v0xd012d0_0;  alias, 1 drivers
v0xd02830_0 .var "q", 0 0;
S_0xd03e90 .scope module, "inWave" "inputWave" 2 21, 8 1 0, S_0xce12f0;
 .timescale 0 0;
    .port_info 0 /INPUT 16 "dataIn"
    .port_info 1 /INPUT 1 "sclk"
    .port_info 2 /INPUT 1 "enable"
    .port_info 3 /OUTPUT 1 "dataOut"
L_0x7f295d48b018 .functor BUFT 1, C4<0101011011110101>, C4<0>, C4<0>, C4<0>;
v0xd040f0_0 .net "dataIn", 15 0, L_0x7f295d48b018;  1 drivers
v0xd041f0_0 .var "dataOut", 0 0;
v0xd042b0_0 .net "enable", 0 0, v0xd046e0_0;  alias, 1 drivers
v0xd043a0_0 .var "pos", 4 0;
v0xd04460_0 .net "sclk", 0 0, v0xd04ac0_0;  alias, 1 drivers
E_0xcdcde0 .event negedge, v0xd01390_0;
    .scope S_0xd00150;
T_0 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xd00790_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd00a60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd00b20_0, 0, 1;
    %end;
    .thread T_0;
    .scope S_0xd00150;
T_1 ;
    %wait E_0xc9b290;
    %load/vec4 v0xd006c0_0;
    %load/vec4 v0xd00b20_0;
    %cmp/e;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xd00790_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd009a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd00860_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0xd00790_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_1.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xd00790_0, 0;
    %load/vec4 v0xd00b20_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd006c0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd009a0_0, 0;
T_1.4 ;
    %load/vec4 v0xd00b20_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd006c0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd00860_0, 0;
T_1.6 ;
    %load/vec4 v0xd00b20_0;
    %assign/vec4 v0xd006c0_0, 0;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xd00790_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xd00790_0, 0;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0xd00900_0;
    %assign/vec4 v0xd00a60_0, 0;
    %load/vec4 v0xd00a60_0;
    %assign/vec4 v0xd00b20_0, 0;
    %jmp T_1;
    .thread T_1;
    .scope S_0xd00c80;
T_2 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xd01200_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd01590_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd01650_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0xd00c80;
T_3 ;
    %wait E_0xc9b290;
    %load/vec4 v0xd01160_0;
    %load/vec4 v0xd01650_0;
    %cmp/e;
    %jmp/0xz  T_3.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xd01200_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd014a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd012d0_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0xd01200_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xd01200_0, 0;
    %load/vec4 v0xd01650_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd01160_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd014a0_0, 0;
T_3.4 ;
    %load/vec4 v0xd01650_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd01160_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd012d0_0, 0;
T_3.6 ;
    %load/vec4 v0xd01650_0;
    %assign/vec4 v0xd01160_0, 0;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0xd01200_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xd01200_0, 0;
T_3.3 ;
T_3.1 ;
    %load/vec4 v0xd01390_0;
    %assign/vec4 v0xd01590_0, 0;
    %load/vec4 v0xd01590_0;
    %assign/vec4 v0xd01650_0, 0;
    %jmp T_3;
    .thread T_3;
    .scope S_0xd017b0;
T_4 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xd01d10_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd02050_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd02110_0, 0, 1;
    %end;
    .thread T_4;
    .scope S_0xd017b0;
T_5 ;
    %wait E_0xc9b290;
    %load/vec4 v0xd01c20_0;
    %load/vec4 v0xd02110_0;
    %cmp/e;
    %jmp/0xz  T_5.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xd01d10_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd01f90_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd01de0_0, 0;
    %jmp T_5.1;
T_5.0 ;
    %load/vec4 v0xd01d10_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_5.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xd01d10_0, 0;
    %load/vec4 v0xd02110_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd01c20_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd01f90_0, 0;
T_5.4 ;
    %load/vec4 v0xd02110_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd01c20_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd01de0_0, 0;
T_5.6 ;
    %load/vec4 v0xd02110_0;
    %assign/vec4 v0xd01c20_0, 0;
    %jmp T_5.3;
T_5.2 ;
    %load/vec4 v0xd01d10_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xd01d10_0, 0;
T_5.3 ;
T_5.1 ;
    %load/vec4 v0xd01e80_0;
    %assign/vec4 v0xd02050_0, 0;
    %load/vec4 v0xd02050_0;
    %assign/vec4 v0xd02110_0, 0;
    %jmp T_5;
    .thread T_5;
    .scope S_0xcfe690;
T_6 ;
    %wait E_0xc9b290;
    %load/vec4 v0xcfecf0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %load/vec4 v0xcfeb10_0;
    %assign/vec4 v0xcff020_0, 0;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0xcfed90_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.2, 4;
    %load/vec4 v0xcfeea0_0;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcff020_0, 4, 1;
    %load/vec4 v0xcff020_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0xcff020_0, 0, 8;
    %vpi_call 5 31 "$display", "Shift Register address: %b", v0xcff020_0 {0 0 0};
T_6.2 ;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0xcfdc00;
T_7 ;
    %wait E_0xc9b290;
    %load/vec4 v0xcfe530_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %vpi_call 4 27 "$display", "Write Enable: %b", v0xcfe530_0 {0 0 0};
    %load/vec4 v0xcfe2a0_0;
    %load/vec4 v0xcfe0d0_0;
    %pad/u 9;
    %ix/vec4 3;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcfe440, 0, 4;
T_7.0 ;
    %load/vec4 v0xcfe0d0_0;
    %pad/u 9;
    %ix/vec4 4;
    %load/vec4a v0xcfe440, 4;
    %assign/vec4 v0xcfe3a0_0, 0;
    %jmp T_7;
    .thread T_7;
    .scope S_0xd02270;
T_8 ;
    %wait E_0xc9b290;
    %load/vec4 v0xd02730_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0xd02640_0;
    %assign/vec4 v0xd02830_0, 0;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0xcb9c50;
T_9 ;
    %wait E_0xc9b290;
    %load/vec4 v0xcfd9a0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0xcfd8c0_0;
    %assign/vec4 v0xcfda70_0, 0;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0xcff220;
T_10 ;
    %pushi/vec4 5, 0, 3;
    %store/vec4 v0xcffeb0_0, 0, 3;
    %end;
    .thread T_10;
    .scope S_0xcff220;
T_11 ;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xcffa20_0, 0;
    %end;
    .thread T_11;
    .scope S_0xcff220;
T_12 ;
    %wait E_0xcfe900;
    %load/vec4 v0xcffa20_0;
    %pad/u 32;
    %cmpi/e 8, 0, 32;
    %jmp/0xz  T_12.0, 4;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xcffa20_0, 0;
    %jmp T_12.1;
T_12.0 ;
    %load/vec4 v0xcffa20_0;
    %addi 1, 0, 5;
    %assign/vec4 v0xcffa20_0, 0;
T_12.1 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0xcff220;
T_13 ;
    %wait E_0xcfe900;
    %vpi_call 6 36 "$display", "Positive sclk edge" {0 0 0};
    %load/vec4 v0xcffac0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcfff90_0, 0;
    %vpi_call 6 40 "$display", "In state OFF" {0 0 0};
    %jmp T_13.1;
T_13.0 ;
    %load/vec4 v0xcffac0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xcffeb0_0;
    %pushi/vec4 5, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.2, 8;
    %load/vec4 v0xcfff90_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.4, 4;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0xcffa20_0, 0, 5;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xcfff90_0, 0, 1;
    %vpi_call 6 47 "$display", "Turn on = %b", v0xcfff90_0 {0 0 0};
T_13.4 ;
    %vpi_call 6 49 "$display", "In state OFF going to address" {0 0 0};
    %load/vec4 v0xcffa20_0;
    %pad/u 32;
    %cmpi/e 8, 0, 32;
    %jmp/0xz  T_13.6, 4;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xcffeb0_0, 0, 3;
    %vpi_call 6 52 "$display", "counter: %b", v0xcffa20_0 {0 0 0};
T_13.6 ;
    %vpi_call 6 54 "$display", "counter: %b", v0xcffa20_0 {0 0 0};
    %jmp T_13.3;
T_13.2 ;
    %load/vec4 v0xcffeb0_0;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xcffe10_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.8, 8;
    %pushi/vec4 1, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
    %vpi_call 6 59 "$display", "In state ADDRESS going to miso_reg" {0 0 0};
    %jmp T_13.9;
T_13.8 ;
    %load/vec4 v0xcffeb0_0;
    %cmpi/e 1, 0, 3;
    %jmp/0xz  T_13.10, 4;
    %pushi/vec4 2, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcffb60_0, 0;
    %vpi_call 6 65 "$display", "In state going to miso_out" {0 0 0};
    %jmp T_13.11;
T_13.10 ;
    %load/vec4 v0xcffeb0_0;
    %cmpi/e 2, 0, 3;
    %jmp/0xz  T_13.12, 4;
    %load/vec4 v0xcffb60_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.14, 4;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xcffa20_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xcffb60_0, 0;
    %vpi_call 6 72 "$display", "In state of miso_out" {0 0 0};
T_13.14 ;
    %load/vec4 v0xcffa20_0;
    %pad/u 32;
    %cmpi/e 8, 0, 32;
    %jmp/0xz  T_13.16, 4;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
T_13.16 ;
    %jmp T_13.13;
T_13.12 ;
    %load/vec4 v0xcffeb0_0;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xcffe10_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.18, 8;
    %pushi/vec4 3, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcffc20_0, 0;
    %vpi_call 6 81 "$display", "In state ADDRESS going to mosimem" {0 0 0};
    %jmp T_13.19;
T_13.18 ;
    %load/vec4 v0xcffeb0_0;
    %cmpi/e 3, 0, 3;
    %jmp/0xz  T_13.20, 4;
    %vpi_call 6 85 "$display", "In state of mosimem" {0 0 0};
    %load/vec4 v0xcffc20_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.22, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xcffc20_0, 0;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xcffa20_0, 0;
    %vpi_call 6 89 "$display", "MOSI counter: %b", v0xcffa20_0 {0 0 0};
T_13.22 ;
    %load/vec4 v0xcffa20_0;
    %cmpi/e 7, 0, 5;
    %jmp/0xz  T_13.24, 4;
    %pushi/vec4 4, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
T_13.24 ;
    %vpi_call 6 93 "$display", "MOSI counter: %b", v0xcffa20_0 {0 0 0};
    %jmp T_13.21;
T_13.20 ;
    %load/vec4 v0xcffeb0_0;
    %cmpi/e 4, 0, 3;
    %jmp/0xz  T_13.26, 4;
    %vpi_call 6 97 "$display", "In state mosi_wri" {0 0 0};
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xcffeb0_0, 0;
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
    .scope S_0xcff220;
T_14 ;
    %wait E_0xcfe900;
    %load/vec4 v0xcffeb0_0;
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
    %assign/vec4 v0xcff860_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff760_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff6c0_0, 0;
    %jmp T_14.6;
T_14.1 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff860_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff5d0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xcff760_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff6c0_0, 0;
    %jmp T_14.6;
T_14.2 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff860_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff760_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff6c0_0, 0;
    %jmp T_14.6;
T_14.3 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff860_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff760_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xcff6c0_0, 0;
    %jmp T_14.6;
T_14.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff860_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xcff5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff760_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff6c0_0, 0;
    %jmp T_14.6;
T_14.5 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff860_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff760_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xcff6c0_0, 0;
    %jmp T_14.6;
T_14.6 ;
    %pop/vec4 1;
    %jmp T_14;
    .thread T_14;
    .scope S_0xd03e90;
T_15 ;
    %pushi/vec4 15, 0, 5;
    %store/vec4 v0xd043a0_0, 0, 5;
    %end;
    .thread T_15;
    .scope S_0xd03e90;
T_16 ;
    %wait E_0xcdcde0;
    %load/vec4 v0xd040f0_0;
    %load/vec4 v0xd043a0_0;
    %part/u 1;
    %store/vec4 v0xd041f0_0, 0, 1;
    %vpi_call 8 13 "$display", "On bit %b which equals %b", v0xd043a0_0, &PV<v0xd040f0_0, v0xd043a0_0, 1> {0 0 0};
    %load/vec4 v0xd042b0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_16.0, 4;
    %load/vec4 v0xd043a0_0;
    %subi 1, 0, 5;
    %store/vec4 v0xd043a0_0, 0, 5;
T_16.0 ;
    %load/vec4 v0xd043a0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xd042b0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.2, 8;
    %pushi/vec4 15, 0, 5;
    %store/vec4 v0xd043a0_0, 0, 5;
T_16.2 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0xce12f0;
T_17 ;
    %delay 10, 0;
    %load/vec4 v0xd04620_0;
    %nor/r;
    %store/vec4 v0xd04620_0, 0, 1;
    %jmp T_17;
    .thread T_17;
    .scope S_0xce12f0;
T_18 ;
    %delay 100, 0;
    %load/vec4 v0xd04ac0_0;
    %nor/r;
    %store/vec4 v0xd04ac0_0, 0, 1;
    %jmp T_18;
    .thread T_18;
    .scope S_0xce12f0;
T_19 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd04ac0_0, 0, 1;
    %end;
    .thread T_19;
    .scope S_0xce12f0;
T_20 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xd04620_0, 0, 1;
    %end;
    .thread T_20;
    .scope S_0xce12f0;
T_21 ;
    %vpi_call 2 30 "$dumpfile", "spi.vcd" {0 0 0};
    %vpi_call 2 31 "$dumpvars" {0 0 0};
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xd046e0_0, 0;
    %delay 200, 0;
    %vpi_call 2 34 "$display", "STARTING NOW! Mosi=%b", v0xd047a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xd046e0_0, 0;
    %delay 200, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %load/vec4 v0xd047a0_0;
    %assign/vec4 v0xd049d0_0, 0;
    %delay 100, 0;
    %vpi_call 2 74 "$display", "Address: %b", v0xcfe0d0_0 {0 0 0};
    %vpi_call 2 76 "$finish" {0 0 0};
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
