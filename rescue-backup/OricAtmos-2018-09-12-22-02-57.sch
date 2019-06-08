EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:OricAtmos
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:65xx
LIBS:pluto
LIBS:saturn
LIBS:OricAtmos-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "ULA and Memory decoding"
Date "2018-09-11"
Rev "V1.0"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1100 800  1475 1050
U 5B565584
F0 "Power" 60
F1 "power.sch" 60
F2 "~IRQ" B R 2575 1350 60 
F3 "~NMI" B R 2575 1225 60 
F4 "BE" O R 2575 875 60 
F5 "~SO" O R 2575 1100 60 
F6 "RDY" O R 2575 1000 60 
F7 "~ROMDIS" O L 1100 1000 60 
F8 "~RESET" O R 2575 1475 60 
F9 "~MAP" O L 1100 1450 60 
$EndSheet
$Sheet
S 1200 2300 1450 1275
U 5B565587
F0 "Audio" 60
F1 "audio.sch" 60
F2 "PB[0..7]" I R 2650 3200 60 
F3 "SOUND_OUT" O L 1200 2950 60 
F4 "PA[0..7]" B R 2650 2950 60 
F5 "CA2" I R 2650 2825 60 
F6 "CB2" I R 2650 3075 60 
F7 "~RESET" I R 2650 2700 60 
F8 "Phi1" I R 2650 3350 60 
$EndSheet
$Sheet
S 1175 3800 1500 600 
U 5B56558A
F0 "Tape" 60
F1 "tape.sch" 60
$EndSheet
$Sheet
S 3400 1925 2025 2425
U 5B56558D
F0 "CPU" 60
F1 "cpu.sch" 60
F2 "A[0..15]" O R 5425 2100 60 
F3 "~BE" I L 3400 2050 60 
F4 "RDY" I L 3400 2175 60 
F5 "~SO" I L 3400 2300 60 
F6 "~NMI" I L 3400 2425 60 
F7 "~IRQ" I L 3400 2550 60 
F8 "~RESET" I L 3400 2700 60 
F9 "~I/O" I R 5425 2800 60 
F10 "R/~W" O R 5425 2550 60 
F11 "~MAP" O R 5425 2950 60 
F12 "Phi2" I R 5425 3975 60 
F13 "CB1" B L 3400 3325 60 
F14 "CB2" B L 3400 3075 60 
F15 "CA2" B L 3400 2825 60 
F16 "PA[0..7]" B L 3400 2950 60 
F17 "~ROMDIS" O R 5425 4125 60 
F18 "PB[0..7]" B L 3400 3200 60 
F19 "D[0..7]" B R 5425 2225 60 
$EndSheet
$Sheet
S 5900 1925 1850 1525
U 5B565590
F0 "ULA" 60
F1 "ula.sch" 60
F2 "MA[0..7]" O R 7750 2975 60 
F3 "A[0..15]" I L 5900 2100 60 
F4 "D[0..7]" B L 5900 2225 60 
F5 "~MAP" I L 5900 2950 60 
F6 "~CSROM" O R 7750 3375 60 
F7 "CSYNC" O R 7750 2375 60 
F8 "RED" O R 7750 2275 60 
F9 "GREEN" O R 7750 2175 60 
F10 "BLUE" O R 7750 2075 60 
F11 "~CAS" O R 7750 3175 60 
F12 "~RAS" O R 7750 3075 60 
F13 "R/~W_RAM" O R 7750 3275 60 
F14 "Phi2" O L 5900 3275 60 
F15 "R/~W" I L 5900 2550 60 
F16 "~VIA_CS" O L 5900 2800 60 
$EndSheet
$Sheet
S 8425 1925 1875 725 
U 5B565593
F0 "Video Generator" 60
F1 "video.sch" 60
F2 "BLUE" I L 8425 2075 60 
F3 "RED" I L 8425 2275 60 
F4 "GREEN" I L 8425 2175 60 
F5 "CSYNC" I L 8425 2375 60 
F6 "SYNC_IN" O R 10300 2525 60 
F7 "SOUND_OUT" I R 10300 2100 60 
$EndSheet
$Sheet
S 8425 2900 2125 1425
U 5B565596
F0 "Memory" 60
F1 "memory.sch" 60
F2 "MA[0..7]" I L 8425 2975 60 
F3 "R/~W" I L 8425 3275 60 
F4 "~CAS" I L 8425 3175 60 
F5 "~RAS" I L 8425 3075 60 
F6 "D[0..7]" B R 10550 3150 60 
F7 "~ROMDIS" I L 8425 4125 60 
F8 "~CSROM" I L 8425 3375 60 
F9 "A[0..15]" I R 10550 3000 60 
F10 "Phi2" I L 8425 3975 60 
$EndSheet
Wire Wire Line
	2575 875  3300 875 
Wire Wire Line
	3300 875  3300 2050
Wire Wire Line
	3300 2050 3400 2050
Wire Wire Line
	2575 1000 3200 1000
Wire Wire Line
	3200 1000 3200 2175
Wire Wire Line
	3200 2175 3400 2175
Wire Wire Line
	2575 1100 3100 1100
Wire Wire Line
	3100 1100 3100 2300
Wire Wire Line
	3100 2300 3400 2300
Wire Wire Line
	2575 1225 3000 1225
Wire Wire Line
	3000 1225 3000 2425
Wire Wire Line
	3000 2425 3400 2425
Wire Wire Line
	2575 1350 2900 1350
Wire Wire Line
	2900 1350 2900 2550
Wire Wire Line
	2900 2550 3400 2550
Wire Wire Line
	2575 1475 2800 1475
Wire Wire Line
	2800 1475 2800 2700
Wire Wire Line
	2650 2700 3400 2700
Wire Wire Line
	7750 3375 8425 3375
Wire Wire Line
	7750 3275 8425 3275
Wire Wire Line
	7750 3175 8425 3175
Wire Wire Line
	7750 3075 8425 3075
Wire Bus Line
	7750 2975 8425 2975
Text Label 7900 2975 0    60   ~ 0
MA[0..7]
Text Label 7900 3075 0    60   ~ 0
~RAS
Text Label 7900 3175 0    60   ~ 0
~CAS
Text Label 7900 3275 0    60   ~ 0
R/~W_RAM
Text Label 7900 3375 0    60   ~ 0
~CSROM
Wire Wire Line
	5425 4125 8425 4125
Wire Wire Line
	5425 3975 8425 3975
Wire Wire Line
	5900 3275 5650 3275
Wire Wire Line
	5650 3275 5650 3975
Connection ~ 5650 3975
Wire Bus Line
	5425 2100 5900 2100
Wire Bus Line
	5425 2225 5900 2225
Text Label 5425 2100 0    60   ~ 0
A[0..15]
Text Label 5425 2225 0    60   ~ 0
D[0..7]
Wire Bus Line
	5875 2100 5875 1750
Wire Bus Line
	5875 1750 10625 1750
Wire Bus Line
	10625 1750 10625 3000
Wire Bus Line
	10625 3000 10550 3000
Wire Bus Line
	10550 3150 10775 3150
Wire Bus Line
	10775 3150 10775 1625
Wire Bus Line
	10775 1625 5825 1625
Wire Bus Line
	5825 1625 5825 2225
Connection ~ 5875 2100
Connection ~ 5825 2225
Connection ~ 2800 2700
Wire Wire Line
	2650 2825 3400 2825
Wire Wire Line
	2650 3075 3400 3075
Wire Bus Line
	2650 2950 3400 2950
Wire Bus Line
	2650 3200 3400 3200
Text Label 2800 2825 0    60   ~ 0
CA2
Text Label 2800 2950 0    60   ~ 0
PA[0..7]
Text Label 2800 3075 0    60   ~ 0
CB2
Text Label 2800 3200 0    60   ~ 0
PB[0..7]
Wire Wire Line
	5425 2800 5900 2800
Wire Wire Line
	5425 2550 5900 2550
Wire Wire Line
	5425 2950 5900 2950
Text Label 5525 2550 0    60   ~ 0
R/~W
Text Label 5525 2800 0    60   ~ 0
~I/O
Text Label 5525 2950 0    60   ~ 0
~MAP
Text Label 5850 3975 0    60   ~ 0
Phi2
Text Label 5850 4125 0    60   ~ 0
~ROMDIS
Wire Wire Line
	7750 2075 8425 2075
Wire Wire Line
	7750 2175 8425 2175
Wire Wire Line
	7750 2275 8425 2275
Wire Wire Line
	7750 2375 8425 2375
Text Label 7875 2075 0    60   ~ 0
BLUE
Text Label 7875 2175 0    60   ~ 0
GREEN
Text Label 7875 2275 0    60   ~ 0
RED
Text Label 7875 2375 0    60   ~ 0
CSYNC
Wire Wire Line
	1200 2950 875  2950
Wire Wire Line
	875  2950 875  650 
Wire Wire Line
	875  650  10450 650 
Wire Wire Line
	10450 650  10450 2100
Wire Wire Line
	10450 2100 10300 2100
Text Label 3750 650  0    60   ~ 0
SOUND_OUT
Wire Wire Line
	1100 1000 1000 1000
Wire Wire Line
	1000 1000 1000 700 
Wire Wire Line
	1000 700  10950 700 
Wire Wire Line
	10950 700  10950 4600
Wire Wire Line
	10950 4600 8125 4600
Wire Wire Line
	8125 4600 8125 4125
Connection ~ 8125 4125
Wire Wire Line
	1100 1450 700  1450
Wire Wire Line
	700  1450 700  4775
Wire Wire Line
	700  4775 5525 4775
Wire Wire Line
	5525 4775 5525 2950
Connection ~ 5525 2950
$EndSCHEMATC