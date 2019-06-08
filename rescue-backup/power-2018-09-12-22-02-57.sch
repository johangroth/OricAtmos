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
Sheet 2 8
Title "ULA and Memory decoding"
Date "2018-09-11"
Rev "V1.0"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Barrel_Jack J1
U 1 1 5B56559F
P 1550 1275
F 0 "J1" H 1550 1485 50  0000 C CNN
F 1 "Barrel_Jack" H 1550 1100 50  0000 C CNN
F 2 "" H 1600 1235 50  0001 C CNN
F 3 "" H 1600 1235 50  0001 C CNN
	1    1550 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1375 3825 1375
Wire Wire Line
	1850 1275 2025 1275
Wire Wire Line
	2025 1275 2025 1375
Connection ~ 2025 1375
Wire Wire Line
	1850 1175 2300 1175
$Comp
L LM7805_TO220 U1
U 1 1 5B565DE0
P 2925 1025
F 0 "U1" H 2775 1150 50  0000 C CNN
F 1 "LM7805_TO220" H 2925 1150 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2925 1250 50  0001 C CIN
F 3 "" H 2925 975 50  0001 C CNN
	1    2925 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1175 2300 1025
Wire Wire Line
	2300 1025 2625 1025
$Comp
L +9V #PWR2
U 1 1 5B565E45
P 2300 1025
F 0 "#PWR2" H 2300 875 50  0001 C CNN
F 1 "+9V" H 2300 1165 50  0000 C CNN
F 2 "" H 2300 1025 50  0001 C CNN
F 3 "" H 2300 1025 50  0001 C CNN
	1    2300 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 1025 3800 1025
$Comp
L VCC #PWR3
U 1 1 5B565E71
P 3800 1025
F 0 "#PWR3" H 3800 875 50  0001 C CNN
F 1 "VCC" H 3800 1175 50  0000 C CNN
F 2 "" H 3800 1025 50  0001 C CNN
F 3 "" H 3800 1025 50  0001 C CNN
	1    3800 1025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 5B565E96
P 3825 1375
F 0 "#PWR4" H 3825 1125 50  0001 C CNN
F 1 "GND" H 3825 1225 50  0000 C CNN
F 2 "" H 3825 1375 50  0001 C CNN
F 3 "" H 3825 1375 50  0001 C CNN
	1    3825 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 1325 2925 1375
Connection ~ 2925 1375
$Comp
L CP1_Small C1
U 1 1 5B565EBB
P 2475 1200
F 0 "C1" H 2485 1270 50  0000 L CNN
F 1 "100uF" H 2485 1120 50  0000 L CNN
F 2 "" H 2475 1200 50  0001 C CNN
F 3 "" H 2475 1200 50  0001 C CNN
	1    2475 1200
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C2
U 1 1 5B565F0B
P 3300 1200
F 0 "C2" H 3310 1270 50  0000 L CNN
F 1 "10uF" H 3310 1120 50  0000 L CNN
F 2 "" H 3300 1200 50  0001 C CNN
F 3 "" H 3300 1200 50  0001 C CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 1100 2475 1025
Connection ~ 2475 1025
Wire Wire Line
	2475 1300 2475 1375
Connection ~ 2475 1375
Wire Wire Line
	3300 1300 3300 1375
Connection ~ 3300 1375
Wire Wire Line
	3300 1100 3300 1025
Connection ~ 3300 1025
$Comp
L R_Network08 RN1
U 1 1 5B566F98
P 1900 2400
F 0 "RN1" V 1400 2400 50  0000 C CNN
F 1 "3.3kOhm" V 2300 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 2375 2400 50  0001 C CNN
F 3 "" H 1900 2400 50  0001 C CNN
	1    1900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2200 1500 1950
$Comp
L VCC #PWR1
U 1 1 5B56701D
P 1500 1950
F 0 "#PWR1" H 1500 1800 50  0001 C CNN
F 1 "VCC" H 1500 2100 50  0000 C CNN
F 2 "" H 1500 1950 50  0001 C CNN
F 3 "" H 1500 1950 50  0001 C CNN
	1    1500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2600 2200 2700
Wire Wire Line
	2200 2700 2700 2700
Wire Wire Line
	2100 2600 2100 2800
Wire Wire Line
	2100 2800 2700 2800
Wire Wire Line
	2000 2600 2000 2900
Wire Wire Line
	2000 2900 2700 2900
Wire Wire Line
	1900 2600 1900 3000
Wire Wire Line
	1900 3000 2700 3000
Wire Wire Line
	1800 2600 1800 3100
Wire Wire Line
	1800 3100 2700 3100
Wire Wire Line
	1700 2600 1700 3200
Wire Wire Line
	1700 3200 2700 3200
Wire Wire Line
	1600 2600 1600 3300
Wire Wire Line
	1600 3300 2700 3300
Wire Wire Line
	1500 2600 1500 3400
Wire Wire Line
	1500 3400 2700 3400
Text HLabel 2700 2700 2    60   BiDi ~ 0
~IRQ
Text HLabel 2700 2800 2    60   BiDi ~ 0
~NMI
Text HLabel 2700 2900 2    60   Output ~ 0
~RESET
Text HLabel 2700 3000 2    60   Output ~ 0
BE
Text HLabel 2700 3100 2    60   Output ~ 0
~SO
Text HLabel 2700 3200 2    60   Output ~ 0
RDY
Text HLabel 2700 3300 2    60   Output ~ 0
~ROMDIS
Text HLabel 2700 3400 2    60   Output ~ 0
~MAP
$EndSCHEMATC
