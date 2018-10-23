#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xc4ad90 .scope module, "spimemory_test" "spimemory_test" 2 7;
 .timescale 0 0;
P_0xc0f2f0 .param/l "ad_test" 0 2 17, C4<000000>;
P_0xc0f330 .param/l "read_op" 0 2 16, C4<01010111>;
P_0xc0f370 .param/l "write_op" 0 2 15, C4<0101011011110101>;
v0xc75500_0 .var "clk", 0 0;
v0xc755c0_0 .var "cs_pin", 0 0;
v0xc75680_0 .net "dataOut", 0 0, v0xc750d0_0;  1 drivers
o0x7fdc057e2f78 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0xc75720_0 .net "leds", 3 0, o0x7fdc057e2f78;  0 drivers
v0xc757c0_0 .net8 "miso_pin", 0 0, L_0xc75dc0;  1 drivers, strength-aware
v0xc758b0_0 .var "mosi_pin", 0 0;
v0xc759a0_0 .var "sclk_pin", 0 0;
S_0xc29c10 .scope module, "dut" "spiMemory" 2 20, 3 25 0, S_0xc4ad90;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "sclk_pin"
    .port_info 2 /INPUT 1 "cs_pin"
    .port_info 3 /OUTPUT 1 "miso_pin"
    .port_info 4 /INPUT 1 "mosi_pin"
    .port_info 5 /OUTPUT 4 "leds"
L_0xc75dc0 .functor BUFIF1 1, v0xc73710_0, v0xc705a0_0, C4<0>, C4<0>;
v0xc73840_0 .net "addr_we", 0 0, v0xc70740_0;  1 drivers
v0xc73950_0 .net "address", 6 0, L_0xc75a40;  1 drivers
v0xc73a10_0 .net "addressLatchOut", 7 0, v0xc6e950_0;  1 drivers
v0xc73ae0_0 .net "clk", 0 0, v0xc75500_0;  1 drivers
v0xc73c90_0 .net "cs_cond", 0 0, v0xc72b00_0;  1 drivers
v0xc73d80_0 .net "cs_neg", 0 0, v0xc72cc0_0;  1 drivers
v0xc73e20_0 .net "cs_pin", 0 0, v0xc755c0_0;  1 drivers
v0xc73ec0_0 .net "cs_pos", 0 0, v0xc72e70_0;  1 drivers
v0xc73f60_0 .net "dataMemOut", 7 0, v0xc6f280_0;  1 drivers
v0xc74090_0 .net "dm_we", 0 0, v0xc704b0_0;  1 drivers
v0xc74180_0 .net "leds", 3 0, o0x7fdc057e2f78;  alias, 0 drivers
v0xc74220_0 .net "misoPreBufe", 0 0, v0xc73710_0;  1 drivers
v0xc742c0_0 .net "miso_bufe", 0 0, v0xc705a0_0;  1 drivers
v0xc74360_0 .net8 "miso_pin", 0 0, L_0xc75dc0;  alias, 1 drivers, strength-aware
v0xc74400_0 .net "mosi_cond", 0 0, v0xc715a0_0;  1 drivers
v0xc744f0_0 .net "mosi_neg", 0 0, v0xc71740_0;  1 drivers
v0xc74590_0 .net "mosi_pin", 0 0, v0xc758b0_0;  1 drivers
v0xc74740_0 .net "mosi_pos", 0 0, v0xc71880_0;  1 drivers
v0xc747e0_0 .net "sclk_cond", 0 0, v0xc72040_0;  1 drivers
v0xc74880_0 .net "sclk_neg", 0 0, v0xc721b0_0;  1 drivers
v0xc74970_0 .net "sclk_pin", 0 0, v0xc759a0_0;  1 drivers
v0xc74a10_0 .net "sclk_pos", 0 0, v0xc72380_0;  1 drivers
v0xc74ab0_0 .net "shiftRegOutP", 7 0, L_0xc75c20;  1 drivers
v0xc74b50_0 .net "shiftRegOutS", 0 0, L_0xc75b80;  1 drivers
v0xc74c40_0 .net "sr_we", 0 0, v0xc70640_0;  1 drivers
L_0xc75a40 .part v0xc6e950_0, 0, 7;
L_0xc75d20 .part L_0xc75c20, 0, 1;
S_0xc29de0 .scope module, "addr_latch" "dff" 3 74, 3 11 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 8 "d"
    .port_info 3 /OUTPUT 8 "q"
P_0xc29fb0 .param/l "W" 0 3 11, +C4<00000000000000000000000000001000>;
v0xc48720_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc6e7a0_0 .net "d", 7 0, L_0xc75c20;  alias, 1 drivers
v0xc6e880_0 .net "enable", 0 0, v0xc70740_0;  alias, 1 drivers
v0xc6e950_0 .var "q", 7 0;
E_0xc4c710 .event posedge, v0xc48720_0;
S_0xc6eae0 .scope module, "data_mem" "datamemory" 3 65, 4 8 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 8 "dataOut"
    .port_info 2 /INPUT 7 "address"
    .port_info 3 /INPUT 1 "writeEnable"
    .port_info 4 /INPUT 8 "dataIn"
P_0xc6ecd0 .param/l "addresswidth" 0 4 10, +C4<00000000000000000000000000000111>;
P_0xc6ed10 .param/l "depth" 0 4 11, +C4<00000000000000000000000010000000>;
P_0xc6ed50 .param/l "width" 0 4 12, +C4<00000000000000000000000000001000>;
v0xc6efb0_0 .net "address", 6 0, L_0xc75a40;  alias, 1 drivers
v0xc6f090_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc6f180_0 .net "dataIn", 7 0, L_0xc75c20;  alias, 1 drivers
v0xc6f280_0 .var "dataOut", 7 0;
v0xc6f320 .array "memory", 0 127, 7 0;
v0xc6f410_0 .net "writeEnable", 0 0, v0xc704b0_0;  alias, 1 drivers
S_0xc6f570 .scope module, "dut" "shiftregister" 3 58, 5 9 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "peripheralClkEdge"
    .port_info 2 /INPUT 1 "parallelLoad"
    .port_info 3 /INPUT 8 "parallelDataIn"
    .port_info 4 /INPUT 1 "serialDataIn"
    .port_info 5 /OUTPUT 8 "parallelDataOut"
    .port_info 6 /OUTPUT 1 "serialDataOut"
P_0xc6f740 .param/l "width" 0 5 10, +C4<00000000000000000000000000001000>;
L_0xc75c20 .functor BUFZ 8, v0xc6ff00_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0xc6f950_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc6f9f0_0 .net "parallelDataIn", 7 0, v0xc6f280_0;  alias, 1 drivers
v0xc6fab0_0 .net "parallelDataOut", 7 0, L_0xc75c20;  alias, 1 drivers
v0xc6fbd0_0 .net "parallelLoad", 0 0, v0xc70640_0;  alias, 1 drivers
v0xc6fc70_0 .net "peripheralClkEdge", 0 0, v0xc72380_0;  alias, 1 drivers
v0xc6fd80_0 .net "serialDataIn", 0 0, v0xc715a0_0;  alias, 1 drivers
v0xc6fe40_0 .net "serialDataOut", 0 0, L_0xc75b80;  alias, 1 drivers
v0xc6ff00_0 .var "shiftregistermem", 7 0;
L_0xc75b80 .part v0xc6ff00_0, 7, 1;
S_0xc70100 .scope module, "finite_state_m" "fsm" 3 79, 6 7 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "cs"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "sclk"
    .port_info 3 /INPUT 1 "shiftRegOut0"
    .port_info 4 /OUTPUT 1 "add_WE"
    .port_info 5 /OUTPUT 1 "DM_WE"
    .port_info 6 /OUTPUT 1 "SR_WE"
    .port_info 7 /OUTPUT 1 "MISO_Buff"
P_0xc702d0 .param/l "waittime" 0 6 20, +C4<00000000000000000000000000000111>;
v0xc704b0_0 .var "DM_WE", 0 0;
v0xc705a0_0 .var "MISO_Buff", 0 0;
v0xc70640_0 .var "SR_WE", 0 0;
v0xc70740_0 .var "add_WE", 0 0;
v0xc70810_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc70900_0 .var "counter", 4 0;
v0xc709a0_0 .net "cs", 0 0, v0xc72b00_0;  alias, 1 drivers
v0xc70a40_0 .var "miOut", 0 0;
v0xc70b00_0 .var "moMem", 0 0;
v0xc70c50_0 .net "sclk", 0 0, v0xc72380_0;  alias, 1 drivers
v0xc70cf0_0 .net "shiftRegOut0", 0 0, L_0xc75d20;  1 drivers
v0xc70d90_0 .var "state", 2 0;
v0xc70e70_0 .var "turnOn", 0 0;
E_0xc6f7e0 .event posedge, v0xc6fc70_0;
S_0xc71030 .scope module, "ic0" "inputconditioner" 3 43, 7 8 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xc71200 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xc71240 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xc71470_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc715a0_0 .var "conditioned", 0 0;
v0xc71670_0 .var "counter", 2 0;
v0xc71740_0 .var "negativeedge", 0 0;
v0xc717e0_0 .net "noisysignal", 0 0, v0xc758b0_0;  alias, 1 drivers
v0xc71880_0 .var "positiveedge", 0 0;
v0xc71940_0 .var "synchronizer0", 0 0;
v0xc71a00_0 .var "synchronizer1", 0 0;
S_0xc71b60 .scope module, "ic1" "inputconditioner" 3 48, 7 8 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xc71d30 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xc71d70 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xc71fa0_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc72040_0 .var "conditioned", 0 0;
v0xc720e0_0 .var "counter", 2 0;
v0xc721b0_0 .var "negativeedge", 0 0;
v0xc72270_0 .net "noisysignal", 0 0, v0xc759a0_0;  alias, 1 drivers
v0xc72380_0 .var "positiveedge", 0 0;
v0xc72470_0 .var "synchronizer0", 0 0;
v0xc72530_0 .var "synchronizer1", 0 0;
S_0xc72690 .scope module, "ic2" "inputconditioner" 3 53, 7 8 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "noisysignal"
    .port_info 2 /OUTPUT 1 "conditioned"
    .port_info 3 /OUTPUT 1 "positiveedge"
    .port_info 4 /OUTPUT 1 "negativeedge"
P_0xc72860 .param/l "counterwidth" 0 7 17, +C4<00000000000000000000000000000011>;
P_0xc728a0 .param/l "waittime" 0 7 18, +C4<00000000000000000000000000000011>;
v0xc72a40_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc72b00_0 .var "conditioned", 0 0;
v0xc72bf0_0 .var "counter", 2 0;
v0xc72cc0_0 .var "negativeedge", 0 0;
v0xc72d60_0 .net "noisysignal", 0 0, v0xc755c0_0;  alias, 1 drivers
v0xc72e70_0 .var "positiveedge", 0 0;
v0xc72f30_0 .var "synchronizer0", 0 0;
v0xc72ff0_0 .var "synchronizer1", 0 0;
S_0xc73150 .scope module, "miso_buff" "dff" 3 70, 3 11 0, S_0xc29c10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 1 "d"
    .port_info 3 /OUTPUT 1 "q"
P_0xc73320 .param/l "W" 0 3 11, +C4<00000000000000000000000000000001>;
v0xc73460_0 .net "clk", 0 0, v0xc75500_0;  alias, 1 drivers
v0xc73520_0 .net "d", 0 0, L_0xc75b80;  alias, 1 drivers
v0xc73610_0 .net "enable", 0 0, v0xc721b0_0;  alias, 1 drivers
v0xc73710_0 .var "q", 0 0;
S_0xc74d70 .scope module, "inWave" "inputWave" 2 21, 8 1 0, S_0xc4ad90;
 .timescale 0 0;
    .port_info 0 /INPUT 16 "dataIn"
    .port_info 1 /INPUT 1 "sclk"
    .port_info 2 /INPUT 1 "enable"
    .port_info 3 /OUTPUT 1 "dataOut"
L_0x7fdc05799018 .functor BUFT 1, C4<0101011011110101>, C4<0>, C4<0>, C4<0>;
v0xc74fd0_0 .net "dataIn", 15 0, L_0x7fdc05799018;  1 drivers
v0xc750d0_0 .var "dataOut", 0 0;
v0xc75190_0 .net "enable", 0 0, v0xc755c0_0;  alias, 1 drivers
v0xc75280_0 .var "pos", 4 0;
v0xc75340_0 .net "sclk", 0 0, v0xc759a0_0;  alias, 1 drivers
E_0xc3edf0 .event negedge, v0xc72270_0;
    .scope S_0xc71030;
T_0 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc71670_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc71940_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc71a00_0, 0, 1;
    %end;
    .thread T_0;
    .scope S_0xc71030;
T_1 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc715a0_0;
    %load/vec4 v0xc71a00_0;
    %cmp/e;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xc71670_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc71880_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc71740_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0xc71670_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_1.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xc71670_0, 0;
    %load/vec4 v0xc71a00_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc715a0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc71880_0, 0;
T_1.4 ;
    %load/vec4 v0xc71a00_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc715a0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc71740_0, 0;
T_1.6 ;
    %load/vec4 v0xc71a00_0;
    %assign/vec4 v0xc715a0_0, 0;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xc71670_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xc71670_0, 0;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0xc717e0_0;
    %assign/vec4 v0xc71940_0, 0;
    %load/vec4 v0xc71940_0;
    %assign/vec4 v0xc71a00_0, 0;
    %jmp T_1;
    .thread T_1;
    .scope S_0xc71b60;
T_2 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc720e0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc72470_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc72530_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0xc71b60;
T_3 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc72040_0;
    %load/vec4 v0xc72530_0;
    %cmp/e;
    %jmp/0xz  T_3.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xc720e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc72380_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc721b0_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0xc720e0_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xc720e0_0, 0;
    %load/vec4 v0xc72530_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc72040_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc72380_0, 0;
T_3.4 ;
    %load/vec4 v0xc72530_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc72040_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc721b0_0, 0;
T_3.6 ;
    %load/vec4 v0xc72530_0;
    %assign/vec4 v0xc72040_0, 0;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0xc720e0_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xc720e0_0, 0;
T_3.3 ;
T_3.1 ;
    %load/vec4 v0xc72270_0;
    %assign/vec4 v0xc72470_0, 0;
    %load/vec4 v0xc72470_0;
    %assign/vec4 v0xc72530_0, 0;
    %jmp T_3;
    .thread T_3;
    .scope S_0xc72690;
T_4 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc72bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc72f30_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc72ff0_0, 0, 1;
    %end;
    .thread T_4;
    .scope S_0xc72690;
T_5 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc72b00_0;
    %load/vec4 v0xc72ff0_0;
    %cmp/e;
    %jmp/0xz  T_5.0, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xc72bf0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc72e70_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc72cc0_0, 0;
    %jmp T_5.1;
T_5.0 ;
    %load/vec4 v0xc72bf0_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_5.2, 4;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0xc72bf0_0, 0;
    %load/vec4 v0xc72ff0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc72b00_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.4, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc72e70_0, 0;
T_5.4 ;
    %load/vec4 v0xc72ff0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc72b00_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.6, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc72cc0_0, 0;
T_5.6 ;
    %load/vec4 v0xc72ff0_0;
    %assign/vec4 v0xc72b00_0, 0;
    %jmp T_5.3;
T_5.2 ;
    %load/vec4 v0xc72bf0_0;
    %addi 1, 0, 3;
    %assign/vec4 v0xc72bf0_0, 0;
T_5.3 ;
T_5.1 ;
    %load/vec4 v0xc72d60_0;
    %assign/vec4 v0xc72f30_0, 0;
    %load/vec4 v0xc72f30_0;
    %assign/vec4 v0xc72ff0_0, 0;
    %jmp T_5;
    .thread T_5;
    .scope S_0xc6f570;
T_6 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc6fbd0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %load/vec4 v0xc6f9f0_0;
    %assign/vec4 v0xc6ff00_0, 0;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0xc6fc70_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_6.2, 4;
    %load/vec4 v0xc6ff00_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %assign/vec4 v0xc6ff00_0, 0;
    %vpi_call 5 30 "$display", "Shift Register address: %b", v0xc6ff00_0 {0 0 0};
    %load/vec4 v0xc6fd80_0;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xc6ff00_0, 4, 5;
T_6.2 ;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0xc6eae0;
T_7 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc6f410_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %vpi_call 4 27 "$display", "Write Enable: %b", v0xc6f410_0 {0 0 0};
    %load/vec4 v0xc6f180_0;
    %load/vec4 v0xc6efb0_0;
    %pad/u 9;
    %ix/vec4 3;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc6f320, 0, 4;
T_7.0 ;
    %load/vec4 v0xc6efb0_0;
    %pad/u 9;
    %ix/vec4 4;
    %load/vec4a v0xc6f320, 4;
    %assign/vec4 v0xc6f280_0, 0;
    %jmp T_7;
    .thread T_7;
    .scope S_0xc73150;
T_8 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc73610_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0xc73520_0;
    %assign/vec4 v0xc73710_0, 0;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0xc29de0;
T_9 ;
    %wait E_0xc4c710;
    %load/vec4 v0xc6e880_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0xc6e7a0_0;
    %assign/vec4 v0xc6e950_0, 0;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0xc70100;
T_10 ;
    %pushi/vec4 5, 0, 3;
    %store/vec4 v0xc70d90_0, 0, 3;
    %end;
    .thread T_10;
    .scope S_0xc70100;
T_11 ;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xc70900_0, 0;
    %end;
    .thread T_11;
    .scope S_0xc70100;
T_12 ;
    %wait E_0xc6f7e0;
    %load/vec4 v0xc70900_0;
    %pad/u 32;
    %cmpi/e 7, 0, 32;
    %jmp/0xz  T_12.0, 4;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xc70900_0, 0;
    %jmp T_12.1;
T_12.0 ;
    %load/vec4 v0xc70900_0;
    %addi 1, 0, 5;
    %assign/vec4 v0xc70900_0, 0;
T_12.1 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0xc70100;
T_13 ;
    %wait E_0xc6f7e0;
    %vpi_call 6 36 "$display", "Positive sclk edge" {0 0 0};
    %load/vec4 v0xc709a0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70e70_0, 0;
    %vpi_call 6 40 "$display", "In state OFF" {0 0 0};
    %jmp T_13.1;
T_13.0 ;
    %load/vec4 v0xc709a0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc70d90_0;
    %pushi/vec4 5, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.2, 8;
    %load/vec4 v0xc70e70_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.4, 4;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0xc70900_0, 0, 5;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc70e70_0, 0, 1;
    %vpi_call 6 47 "$display", "Turn on = %b", v0xc70e70_0 {0 0 0};
T_13.4 ;
    %vpi_call 6 49 "$display", "In state OFF going to address" {0 0 0};
    %load/vec4 v0xc70900_0;
    %cmpi/e 7, 0, 5;
    %jmp/0xz  T_13.6, 4;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc70d90_0, 0, 3;
    %vpi_call 6 52 "$display", "counter: %b", v0xc70900_0 {0 0 0};
T_13.6 ;
    %vpi_call 6 54 "$display", "counter: %b", v0xc70900_0 {0 0 0};
    %jmp T_13.3;
T_13.2 ;
    %load/vec4 v0xc70d90_0;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc70cf0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.8, 8;
    %pushi/vec4 1, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
    %vpi_call 6 59 "$display", "In state ADDRESS going to miso_reg" {0 0 0};
    %jmp T_13.9;
T_13.8 ;
    %load/vec4 v0xc70d90_0;
    %cmpi/e 1, 0, 3;
    %jmp/0xz  T_13.10, 4;
    %pushi/vec4 2, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70a40_0, 0;
    %vpi_call 6 65 "$display", "In state going to miso_out" {0 0 0};
    %jmp T_13.11;
T_13.10 ;
    %load/vec4 v0xc70d90_0;
    %cmpi/e 2, 0, 3;
    %jmp/0xz  T_13.12, 4;
    %load/vec4 v0xc70a40_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.14, 4;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xc70900_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc70a40_0, 0;
    %vpi_call 6 72 "$display", "In state of miso_out" {0 0 0};
T_13.14 ;
    %load/vec4 v0xc70900_0;
    %cmpi/e 7, 0, 5;
    %jmp/0xz  T_13.16, 4;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
T_13.16 ;
    %jmp T_13.13;
T_13.12 ;
    %load/vec4 v0xc70d90_0;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc70cf0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.18, 8;
    %pushi/vec4 3, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70b00_0, 0;
    %vpi_call 6 81 "$display", "In state ADDRESS going to mosimem" {0 0 0};
    %jmp T_13.19;
T_13.18 ;
    %load/vec4 v0xc70d90_0;
    %cmpi/e 3, 0, 3;
    %jmp/0xz  T_13.20, 4;
    %vpi_call 6 85 "$display", "In state of mosimem" {0 0 0};
    %load/vec4 v0xc70b00_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_13.22, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc70b00_0, 0;
    %pushi/vec4 0, 0, 5;
    %assign/vec4 v0xc70900_0, 0;
    %vpi_call 6 89 "$display", "MOSI counter: %b", v0xc70900_0 {0 0 0};
T_13.22 ;
    %load/vec4 v0xc70900_0;
    %cmpi/e 7, 0, 5;
    %jmp/0xz  T_13.24, 4;
    %pushi/vec4 4, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
T_13.24 ;
    %vpi_call 6 93 "$display", "MOSI counter: %b", v0xc70900_0 {0 0 0};
    %jmp T_13.21;
T_13.20 ;
    %load/vec4 v0xc70d90_0;
    %cmpi/e 4, 0, 3;
    %jmp/0xz  T_13.26, 4;
    %vpi_call 6 97 "$display", "In state mosi_wri" {0 0 0};
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0xc70d90_0, 0;
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
    .scope S_0xc70100;
T_14 ;
    %wait E_0xc6f7e0;
    %load/vec4 v0xc70d90_0;
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
    %assign/vec4 v0xc70740_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc704b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70640_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc705a0_0, 0;
    %jmp T_14.6;
T_14.1 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70740_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc704b0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc70640_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc705a0_0, 0;
    %jmp T_14.6;
T_14.2 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70740_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc704b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70640_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc705a0_0, 0;
    %jmp T_14.6;
T_14.3 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70740_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc704b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70640_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc705a0_0, 0;
    %jmp T_14.6;
T_14.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70740_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc704b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70640_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc705a0_0, 0;
    %jmp T_14.6;
T_14.5 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70740_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc704b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc70640_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc705a0_0, 0;
    %jmp T_14.6;
T_14.6 ;
    %pop/vec4 1;
    %jmp T_14;
    .thread T_14;
    .scope S_0xc74d70;
T_15 ;
    %pushi/vec4 15, 0, 5;
    %store/vec4 v0xc75280_0, 0, 5;
    %end;
    .thread T_15;
    .scope S_0xc74d70;
T_16 ;
    %wait E_0xc3edf0;
    %load/vec4 v0xc74fd0_0;
    %load/vec4 v0xc75280_0;
    %part/u 1;
    %store/vec4 v0xc750d0_0, 0, 1;
    %vpi_call 8 13 "$display", "On bit %b which equals %b", v0xc75280_0, &PV<v0xc74fd0_0, v0xc75280_0, 1> {0 0 0};
    %load/vec4 v0xc75190_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_16.0, 4;
    %load/vec4 v0xc75280_0;
    %subi 1, 0, 5;
    %store/vec4 v0xc75280_0, 0, 5;
T_16.0 ;
    %load/vec4 v0xc75280_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc75190_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.2, 8;
    %pushi/vec4 15, 0, 5;
    %store/vec4 v0xc75280_0, 0, 5;
T_16.2 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0xc4ad90;
T_17 ;
    %delay 10, 0;
    %load/vec4 v0xc75500_0;
    %nor/r;
    %store/vec4 v0xc75500_0, 0, 1;
    %jmp T_17;
    .thread T_17;
    .scope S_0xc4ad90;
T_18 ;
    %delay 100, 0;
    %load/vec4 v0xc759a0_0;
    %nor/r;
    %store/vec4 v0xc759a0_0, 0, 1;
    %jmp T_18;
    .thread T_18;
    .scope S_0xc4ad90;
T_19 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc759a0_0, 0, 1;
    %end;
    .thread T_19;
    .scope S_0xc4ad90;
T_20 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc75500_0, 0, 1;
    %end;
    .thread T_20;
    .scope S_0xc4ad90;
T_21 ;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 31 "$dumpfile", "spi.vcd" {0 0 0};
    %vpi_call 2 32 "$dumpvars" {0 0 0};
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xc755c0_0, 0;
    %delay 100, 0;
    %vpi_call 2 34 "$display", "STARTING NOW!" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0xc755c0_0, 0;
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 38 "$display", v0xc73840_0 {0 0 0};
    %vpi_call 2 39 "$display", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 44 "$display", v0xc73840_0 {0 0 0};
    %vpi_call 2 45 "$display", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 49 "$display", v0xc73840_0 {0 0 0};
    %vpi_call 2 50 "$display", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 54 "$display", v0xc73840_0 {0 0 0};
    %vpi_call 2 55 "$display", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 58 "$display", "Address: %b", v0xc73840_0 {0 0 0};
    %vpi_call 2 59 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 62 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 63 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 66 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 67 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 70 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 71 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 73 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 74 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 77 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 78 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 81 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 82 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %load/vec4 v0xc75680_0;
    %assign/vec4 v0xc758b0_0, 0;
    %vpi_call 2 85 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 86 "$display", "ADDRESS: %b", v0xc6efb0_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 2 87 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 2 88 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 2 89 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 2 90 "$display", "DatMem: %b", v0xc74090_0 {0 0 0};
    %vpi_call 2 91 "$display", "Address: %b", v0xc6efb0_0 {0 0 0};
    %vpi_call 2 93 "$finish" {0 0 0};
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
