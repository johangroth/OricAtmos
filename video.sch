EESchema Schematic File Version 4
LIBS:OricAtmos-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
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
L OricAtmos-rescue:74LS365 U10
U 1 1 5B992802
P 4200 1250
F 0 "U10" H 4200 1250 50  0000 C CNN
F 1 "74LS365" H 4250 1050 50  0000 C CNN
F 2 "" H 4200 1250 50  0001 C CNN
F 3 "" H 4200 1250 50  0001 C CNN
	1    4200 1250
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:DIN-8 J5
U 1 1 5B99281D
P 6900 1150
F 0 "J5" H 7025 1375 50  0000 C CNN
F 1 "DIN-8" H 6980 920 50  0000 L CNN
F 2 "" H 6900 1150 50  0001 C CNN
F 3 "" H 6900 1150 50  0001 C CNN
	1    6900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 850  850  850 
Wire Wire Line
	3500 950  3000 950 
Wire Wire Line
	3500 1150 850  1150
Wire Wire Line
	3500 1250 850  1250
Wire Wire Line
	3500 1350 850  1350
Text HLabel 850  850  0    60   Input ~ 0
BLUE
Text HLabel 850  1150 0    60   Input ~ 0
RED
NoConn ~ 3500 1050
Text HLabel 850  1250 0    60   Input ~ 0
GREEN
Text HLabel 850  1350 0    60   Input ~ 0
CSYNC
NoConn ~ 4900 1050
$Comp
L OricAtmos-rescue:R_Small R16
U 1 1 5B9929E2
P 5225 1150
F 0 "R16" V 5275 1275 50  0000 L CNN
F 1 "220" V 5300 900 50  0000 L CNN
F 2 "" H 5225 1150 50  0001 C CNN
F 3 "" H 5225 1150 50  0001 C CNN
	1    5225 1150
	0    -1   -1   0   
$EndComp
$Comp
L OricAtmos-rescue:R_Small R15
U 1 1 5B992BCC
P 5225 850
F 0 "R15" V 5275 975 50  0000 L CNN
F 1 "220" V 5300 625 50  0000 L CNN
F 2 "" H 5225 850 50  0001 C CNN
F 3 "" H 5225 850 50  0001 C CNN
	1    5225 850 
	0    -1   -1   0   
$EndComp
$Comp
L OricAtmos-rescue:R_Small R17
U 1 1 5B992C06
P 5225 1250
F 0 "R17" V 5275 1375 50  0000 L CNN
F 1 "220" V 5250 975 50  0000 L CNN
F 2 "" H 5225 1250 50  0001 C CNN
F 3 "" H 5225 1250 50  0001 C CNN
	1    5225 1250
	0    -1   -1   0   
$EndComp
$Comp
L OricAtmos-rescue:R_Small R18
U 1 1 5B992C32
P 5225 1350
F 0 "R18" V 5275 1475 50  0000 L CNN
F 1 "220" V 5175 1100 50  0000 L CNN
F 2 "" H 5225 1350 50  0001 C CNN
F 3 "" H 5225 1350 50  0001 C CNN
	1    5225 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 850  5125 850 
Wire Wire Line
	4900 1150 5125 1150
Wire Wire Line
	4900 1250 5125 1250
Wire Wire Line
	4900 1350 5125 1350
Wire Wire Line
	5325 1150 6600 1150
Wire Wire Line
	4900 950  5650 950 
Text HLabel 5650 950  2    60   Output ~ 0
SYNC_IN
Text Label 5650 1150 0    60   ~ 0
OUT_RED
Wire Wire Line
	5325 1250 6400 1250
Wire Wire Line
	5325 1350 6475 1350
Text Label 5650 1250 0    60   ~ 0
OUT_GREEN
Text Label 5650 1350 0    60   ~ 0
OUT_CSYNC
Wire Wire Line
	5325 850  6300 850 
Text Label 5650 850  0    60   ~ 0
OUT_BLUE
Wire Wire Line
	6400 1250 6400 850 
Wire Wire Line
	6400 850  6900 850 
Wire Wire Line
	6300 850  6300 750 
Wire Wire Line
	6300 750  7200 750 
Wire Wire Line
	7200 750  7200 1050
Wire Wire Line
	6475 1350 6475 1050
Wire Wire Line
	6475 1050 6600 1050
Wire Wire Line
	6600 1250 6600 1500
Wire Wire Line
	6600 1500 6075 1500
Text Label 6075 1500 0    60   ~ 0
CSYNC_IN
Text Label 3000 950  0    60   ~ 0
CSYNC_IN
Wire Wire Line
	6900 1450 6900 1575
Wire Wire Line
	7200 1150 7425 1150
Wire Wire Line
	7425 1150 7425 1575
Wire Wire Line
	7200 1250 7300 1250
Wire Wire Line
	7300 1250 7300 1575
$Comp
L OricAtmos-rescue:VCC #PWR032
U 1 1 5B992FF2
P 6900 1575
F 0 "#PWR032" H 6900 1425 50  0001 C CNN
F 1 "VCC" H 6900 1725 50  0000 C CNN
F 2 "" H 6900 1575 50  0001 C CNN
F 3 "" H 6900 1575 50  0001 C CNN
	1    6900 1575
	-1   0    0    1   
$EndComp
$Comp
L OricAtmos-rescue:GND #PWR033
U 1 1 5B993012
P 7425 1575
F 0 "#PWR033" H 7425 1325 50  0001 C CNN
F 1 "GND" H 7425 1425 50  0000 C CNN
F 2 "" H 7425 1575 50  0001 C CNN
F 3 "" H 7425 1575 50  0001 C CNN
	1    7425 1575
	1    0    0    -1  
$EndComp
Text HLabel 7300 1575 3    60   Input ~ 0
SOUND_OUT
$Comp
L OricAtmos-rescue:C_Small C13
U 1 1 5B993135
P 3050 1550
F 0 "C13" V 3175 1525 50  0000 L CNN
F 1 "100nF" V 2925 1450 50  0000 L CNN
F 2 "" H 3050 1550 50  0001 C CNN
F 3 "" H 3050 1550 50  0001 C CNN
	1    3050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 1550 3500 1925
Wire Wire Line
	3500 1550 3150 1550
Wire Wire Line
	2950 1550 2825 1550
Wire Wire Line
	2825 1550 2825 1925
$Comp
L OricAtmos-rescue:GND #PWR031
U 1 1 5B99329F
P 3500 1925
F 0 "#PWR031" H 3500 1675 50  0001 C CNN
F 1 "GND" H 3500 1775 50  0000 C CNN
F 2 "" H 3500 1925 50  0001 C CNN
F 3 "" H 3500 1925 50  0001 C CNN
	1    3500 1925
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:VCC #PWR030
U 1 1 5B9932C1
P 2825 1925
F 0 "#PWR030" H 2825 1775 50  0001 C CNN
F 1 "VCC" H 2825 2075 50  0000 C CNN
F 2 "" H 2825 1925 50  0001 C CNN
F 3 "" H 2825 1925 50  0001 C CNN
	1    2825 1925
	-1   0    0    1   
$EndComp
$EndSCHEMATC
