EESchema Schematic File Version 4
LIBS:OricAtmos-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title "CPU & VIA"
Date "2018-09-11"
Rev "V1.0"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OricAtmos-rescue:WD65C02PLCC44 U4
U 1 1 5B56601B
P 2700 1950
F 0 "U4" H 2700 3200 60  0000 C CNN
F 1 "WD65C02PLCC44" V 2700 2000 60  0000 C CNN
F 2 "saturn:PLCC-44_THT-Socket" H 2150 2400 60  0001 C CNN
F 3 "" H 2150 2400 60  0000 C CNN
	1    2700 1950
	-1   0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:WD65C22PLCC44 U5
U 1 1 5B5660C6
P 5700 4025
F 0 "U5" H 5500 5100 60  0000 C CNN
F 1 "WD65C22PLCC44" V 5775 3325 60  0000 C CNN
F 2 "saturn:PLCC-44_THT-Socket" H 5200 4050 60  0001 C CNN
F 3 "" H 5200 4050 60  0000 C CNN
	1    5700 4025
	-1   0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:Conn_02x17_Odd_Even J4
U 1 1 5B566189
P 8575 2000
F 0 "J4" H 8625 2900 50  0000 C CNN
F 1 "HE10-34" H 8625 1100 50  0000 C CNN
F 2 "" H 8575 2000 50  0001 C CNN
F 3 "" H 8575 2000 50  0001 C CNN
	1    8575 2000
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:Conn_02x10_Odd_Even J3
U 1 1 5B5661E4
P 7575 4325
F 0 "J3" H 7625 4825 50  0000 C CNN
F 1 "HE10-20" H 7625 3725 50  0000 C CNN
F 2 "" H 7575 4325 50  0001 C CNN
F 3 "" H 7575 4325 50  0001 C CNN
	1    7575 4325
	1    0    0    -1  
$EndComp
Text Label 1700 800  0    60   ~ 0
A0
Text Label 1700 900  0    60   ~ 0
A1
Text Label 1700 1000 0    60   ~ 0
A2
Text Label 1700 1100 0    60   ~ 0
A3
Text Label 1700 1200 0    60   ~ 0
A4
Text Label 1700 1300 0    60   ~ 0
A5
Text Label 1700 1400 0    60   ~ 0
A6
Text Label 1700 1500 0    60   ~ 0
A7
Text Label 1700 1600 0    60   ~ 0
A8
Text Label 1700 1700 0    60   ~ 0
A9
Text Label 1700 1800 0    60   ~ 0
A10
Text Label 1700 1900 0    60   ~ 0
A11
Text Label 1700 2000 0    60   ~ 0
A12
Text Label 1700 2100 0    60   ~ 0
A13
Text Label 1700 2200 0    60   ~ 0
A14
Text Label 1700 2300 0    60   ~ 0
A15
Text Label 3700 800  2    60   ~ 0
D0
Text Label 3700 900  2    60   ~ 0
D1
Text Label 3700 1000 2    60   ~ 0
D2
Text Label 3700 1100 2    60   ~ 0
D3
Text Label 3700 1200 2    60   ~ 0
D4
Text Label 3700 1300 2    60   ~ 0
D5
Text Label 3700 1400 2    60   ~ 0
D6
Text Label 3700 1500 2    60   ~ 0
D7
Entry Wire Line
	1700 800  1600 900 
Entry Wire Line
	1700 900  1600 1000
Entry Wire Line
	1700 1000 1600 1100
Entry Wire Line
	1700 1100 1600 1200
Entry Wire Line
	1700 1200 1600 1300
Entry Wire Line
	1700 1300 1600 1400
Entry Wire Line
	1700 1400 1600 1500
Entry Wire Line
	1700 1500 1600 1600
Entry Wire Line
	1700 1600 1600 1700
Entry Wire Line
	1700 1700 1600 1800
Entry Wire Line
	1700 1800 1600 1900
Entry Wire Line
	1700 1900 1600 2000
Entry Wire Line
	1700 2000 1600 2100
Entry Wire Line
	1700 2100 1600 2200
Entry Wire Line
	1700 2200 1600 2300
Entry Wire Line
	1700 2300 1600 2400
Entry Wire Line
	3800 700  3700 800 
Entry Wire Line
	3800 800  3700 900 
Entry Wire Line
	3800 900  3700 1000
Entry Wire Line
	3800 1000 3700 1100
Entry Wire Line
	3800 1100 3700 1200
Entry Wire Line
	3800 1200 3700 1300
Entry Wire Line
	3800 1300 3700 1400
Entry Wire Line
	3800 1400 3700 1500
Text HLabel 950  2400 0    60   Output ~ 0
A[0..15]
Text Label 1350 2400 2    60   ~ 0
A[0..15]
Entry Wire Line
	4475 2975 4575 3075
Entry Wire Line
	4475 3100 4575 3200
Entry Wire Line
	4475 3225 4575 3325
Entry Wire Line
	4475 3350 4575 3450
Entry Wire Line
	4475 3600 4575 3700
Entry Wire Line
	4475 3475 4575 3575
Entry Wire Line
	4475 3725 4575 3825
Entry Wire Line
	4475 3850 4575 3950
Text Label 4475 1400 2    60   ~ 0
D[0..7]
Text Label 4575 3075 0    60   ~ 0
D0
Text Label 4575 3200 0    60   ~ 0
D1
Text Label 4575 3325 0    60   ~ 0
D2
Text Label 4575 3450 0    60   ~ 0
D3
Text Label 4575 3575 0    60   ~ 0
D4
Text Label 4575 3700 0    60   ~ 0
D5
Text Label 4575 3825 0    60   ~ 0
D6
Text Label 4575 3950 0    60   ~ 0
D7
Text Label 4575 4150 0    60   ~ 0
A0
Text Label 4575 4275 0    60   ~ 0
A1
Text Label 4575 4400 0    60   ~ 0
A2
Text Label 4575 4525 0    60   ~ 0
A3
Entry Wire Line
	4475 4050 4575 4150
Entry Wire Line
	4475 4175 4575 4275
Entry Wire Line
	4475 4300 4575 4400
Entry Wire Line
	4475 4425 4575 4525
NoConn ~ 3350 1900
NoConn ~ 3350 2000
NoConn ~ 3350 2100
Text HLabel 3700 1700 2    60   Input ~ 0
~BE
Text HLabel 3700 1800 2    60   Input ~ 0
RDY
Text HLabel 3700 2200 2    60   Input ~ 0
~SO
Text HLabel 3700 2400 2    60   Input ~ 0
~NMI
Text HLabel 3700 2500 2    60   Input ~ 0
~IRQ
Text HLabel 3700 2600 2    60   Input ~ 0
~RESET
$Comp
L OricAtmos-rescue:R_Small R10
U 1 1 5B981538
P 4150 4725
F 0 "R10" V 4225 4700 50  0000 L CNN
F 1 "2k2" V 4050 4675 50  0000 L CNN
F 2 "" H 4150 4725 50  0001 C CNN
F 3 "" H 4150 4725 50  0001 C CNN
	1    4150 4725
	0    1    1    0   
$EndComp
$Comp
L OricAtmos-rescue:VCC #PWR019
U 1 1 5B981541
P 3625 4725
F 0 "#PWR019" H 3625 4575 50  0001 C CNN
F 1 "VCC" H 3625 4875 50  0000 C CNN
F 2 "" H 3625 4725 50  0001 C CNN
F 3 "" H 3625 4725 50  0001 C CNN
	1    3625 4725
	1    0    0    -1  
$EndComp
Text HLabel 4475 4850 0    60   Input ~ 0
~I/O
Text Label 4475 5275 0    60   ~ 0
R/~W
Text Label 4475 5650 0    60   ~ 0
~IRQ
Text Label 4925 4725 2    60   ~ 0
I/O_Control
Text Label 4475 5400 0    60   ~ 0
Phi2
Text HLabel 3700 2300 2    60   Output ~ 0
R/~W
Text Label 3675 2300 2    60   ~ 0
R/~W
Text HLabel 8075 1200 0    60   Output ~ 0
~MAP
Text Label 3700 1600 2    60   ~ 0
Phi2
Text HLabel 3700 1600 2    60   Input ~ 0
Phi2
Text HLabel 8075 1300 0    60   Input ~ 0
Phi2
Text Label 8075 1400 0    60   ~ 0
~I/O
Text Label 8075 1500 0    60   ~ 0
R/~W
Text Label 8075 1600 0    60   ~ 0
D2
Text Label 8075 1700 0    60   ~ 0
A3
Text Label 8075 1800 0    60   ~ 0
A0
Text Label 8075 1900 0    60   ~ 0
A1
Text Label 8075 2000 0    60   ~ 0
A2
Text Label 8075 2100 0    60   ~ 0
D5
Text Label 8075 2200 0    60   ~ 0
A5
Text Label 8075 2300 0    60   ~ 0
A6
Text Label 8075 2400 0    60   ~ 0
A7
Text Label 8075 2500 0    60   ~ 0
A8
Text Label 8075 2600 0    60   ~ 0
A9
Text Label 8075 2700 0    60   ~ 0
A10
Text Label 9175 1300 2    60   ~ 0
~RESET
Text Label 9375 1400 2    60   ~ 0
I/O_Control
Text Label 9175 1600 2    60   ~ 0
D0
Text Label 9175 1700 2    60   ~ 0
D1
Text Label 9175 1800 2    60   ~ 0
D6
Text Label 9175 1900 2    60   ~ 0
D3
Text Label 9175 2000 2    60   ~ 0
D4
Text Label 9175 2100 2    60   ~ 0
A4
Text Label 9175 2200 2    60   ~ 0
D7
Text Label 9175 2300 2    60   ~ 0
A15
Text Label 9175 2400 2    60   ~ 0
A14
Text Label 9175 2500 2    60   ~ 0
A13
Text Label 9175 2600 2    60   ~ 0
A12
Text Label 9175 1500 2    60   ~ 0
~IRQ
Text Label 9175 2700 2    60   ~ 0
A11
$Comp
L OricAtmos-rescue:VCC #PWR023
U 1 1 5B982E67
P 8075 3050
F 0 "#PWR023" H 8075 2900 50  0001 C CNN
F 1 "VCC" H 8075 3200 50  0000 C CNN
F 2 "" H 8075 3050 50  0001 C CNN
F 3 "" H 8075 3050 50  0001 C CNN
	1    8075 3050
	-1   0    0    1   
$EndComp
$Comp
L OricAtmos-rescue:GND #PWR025
U 1 1 5B982E8B
P 9175 3050
F 0 "#PWR025" H 9175 2800 50  0001 C CNN
F 1 "GND" H 9175 2900 50  0000 C CNN
F 2 "" H 9175 3050 50  0001 C CNN
F 3 "" H 9175 3050 50  0001 C CNN
	1    9175 3050
	1    0    0    -1  
$EndComp
Text Notes 8100 3400 2    60   ~ 12
Expansion Port
$Comp
L OricAtmos-rescue:GND #PWR024
U 1 1 5B98363D
P 8250 5100
F 0 "#PWR024" H 8250 4850 50  0001 C CNN
F 1 "GND" H 8250 4950 50  0000 C CNN
F 2 "" H 8250 5100 50  0001 C CNN
F 3 "" H 8250 5100 50  0001 C CNN
	1    8250 5100
	1    0    0    -1  
$EndComp
Entry Wire Line
	6975 4125 7075 4025
Entry Wire Line
	6975 4225 7075 4125
Entry Wire Line
	6975 4325 7075 4225
Entry Wire Line
	6975 4425 7075 4325
Entry Wire Line
	6975 4525 7075 4425
Entry Wire Line
	6975 4625 7075 4525
Entry Wire Line
	6975 4725 7075 4625
Entry Wire Line
	6975 4825 7075 4725
Entry Wire Line
	6650 3075 6750 3175
Entry Wire Line
	6650 3200 6750 3300
Entry Wire Line
	6650 3325 6750 3425
Entry Wire Line
	6650 3450 6750 3550
Entry Wire Line
	6650 3700 6750 3800
Entry Wire Line
	6650 3575 6750 3675
Entry Wire Line
	6650 3825 6750 3925
Entry Wire Line
	6650 3950 6750 4050
Text Label 6350 3075 0    60   ~ 0
PA0
Text Label 6350 3200 0    60   ~ 0
PA1
Text Label 6350 3325 0    60   ~ 0
PA2
Text Label 6350 3450 0    60   ~ 0
PA3
Text Label 6350 3575 0    60   ~ 0
PA4
Text Label 6350 3700 0    60   ~ 0
PA5
Text Label 6350 3825 0    60   ~ 0
PA6
Text Label 6350 3950 0    60   ~ 0
PA7
Text Label 7375 4025 2    60   ~ 0
PA0
Text Label 7375 4125 2    60   ~ 0
PA1
Text Label 7375 4225 2    60   ~ 0
PA2
Text Label 7375 4325 2    60   ~ 0
PA3
Text Label 7375 4425 2    60   ~ 0
PA4
Text Label 7375 4525 2    60   ~ 0
PA5
Text Label 7375 4625 2    60   ~ 0
PA6
Text Label 7375 4725 2    60   ~ 0
PA7
Text Label 7375 3925 2    60   ~ 0
STRB
NoConn ~ 6350 5150
Entry Wire Line
	6650 4525 6750 4625
Entry Wire Line
	6650 4650 6750 4750
Entry Wire Line
	6650 4775 6750 4875
Entry Wire Line
	6650 4900 6750 5000
Entry Wire Line
	6650 5025 6750 5125
Entry Wire Line
	6650 5275 6750 5375
Entry Wire Line
	6650 5400 6750 5500
Text Label 6350 4525 0    60   ~ 0
PB0
Text Label 6350 4650 0    60   ~ 0
PB1
Text Label 6350 4775 0    60   ~ 0
PB2
Text Label 6350 4900 0    60   ~ 0
PB3
Text Label 6350 5025 0    60   ~ 0
PB4
Text Label 6350 5275 0    60   ~ 0
PB6
Text Label 6350 5400 0    60   ~ 0
PB7
Text Label 7025 5500 0    60   ~ 0
PB[0..7]
Text HLabel 7500 5500 2    60   BiDi ~ 0
PB[0..7]
Entry Wire Line
	6900 5400 7000 5500
Text Label 6900 4825 1    60   ~ 0
PB4
Text HLabel 6750 5650 2    60   BiDi ~ 0
CB1
Text HLabel 6750 5775 2    60   BiDi ~ 0
CB2
Text HLabel 6650 4200 2    60   BiDi ~ 0
CA2
Text Label 7075 5050 1    60   ~ 0
CA1
Text Label 6650 4075 2    60   ~ 0
CA1
Text Notes 7375 5075 0    60   ~ 12
Printer Port
$Comp
L OricAtmos-rescue:VCC #PWR014
U 1 1 5B986931
P 950 4375
F 0 "#PWR014" H 950 4225 50  0001 C CNN
F 1 "VCC" H 950 4525 50  0000 C CNN
F 2 "" H 950 4375 50  0001 C CNN
F 3 "" H 950 4375 50  0001 C CNN
	1    950  4375
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:R_Small R8
U 1 1 5B986955
P 950 4700
F 0 "R8" H 980 4720 50  0000 L CNN
F 1 "2k2" V 875 4625 50  0000 L CNN
F 2 "" H 950 4700 50  0001 C CNN
F 3 "" H 950 4700 50  0001 C CNN
	1    950  4700
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:SW_Push SW2
U 1 1 5B986984
P 950 5175
F 0 "SW2" H 875 5375 50  0000 L CNN
F 1 "SW_Push" H 950 5115 50  0000 C CNN
F 2 "" H 950 5375 50  0001 C CNN
F 3 "" H 950 5375 50  0001 C CNN
	1    950  5175
	0    -1   -1   0   
$EndComp
$Comp
L OricAtmos-rescue:GND #PWR015
U 1 1 5B9869CD
P 950 5700
F 0 "#PWR015" H 950 5450 50  0001 C CNN
F 1 "GND" H 950 5550 50  0000 C CNN
F 2 "" H 950 5700 50  0001 C CNN
F 3 "" H 950 5700 50  0001 C CNN
	1    950  5700
	1    0    0    -1  
$EndComp
Text Label 1550 4900 2    60   ~ 0
~NMI
Text Label 1925 5525 0    60   ~ 0
~RESET
$Comp
L OricAtmos-rescue:C_Small C9
U 1 1 5B987FB5
P 2700 3175
F 0 "C9" V 2825 3125 50  0000 L CNN
F 1 "0.1uF" V 2575 3075 50  0000 L CNN
F 2 "" H 2700 3175 50  0001 C CNN
F 3 "" H 2700 3175 50  0001 C CNN
	1    2700 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 800  1700 800 
Wire Wire Line
	2050 900  1700 900 
Wire Wire Line
	2050 1000 1700 1000
Wire Wire Line
	2050 1100 1700 1100
Wire Wire Line
	2050 1200 1700 1200
Wire Wire Line
	2050 1300 1700 1300
Wire Wire Line
	2050 1400 1700 1400
Wire Wire Line
	2050 1500 1700 1500
Wire Wire Line
	2050 1600 1700 1600
Wire Wire Line
	2050 1700 1700 1700
Wire Wire Line
	2050 1800 1700 1800
Wire Wire Line
	2050 1900 1700 1900
Wire Wire Line
	2050 2000 1700 2000
Wire Wire Line
	2050 2100 1700 2100
Wire Wire Line
	2050 2200 1700 2200
Wire Wire Line
	2050 2300 1700 2300
Wire Wire Line
	2050 2800 1700 2800
Wire Wire Line
	2050 2900 1700 2900
Wire Wire Line
	3350 800  3700 800 
Wire Wire Line
	3350 900  3700 900 
Wire Wire Line
	3350 1000 3700 1000
Wire Wire Line
	3350 1100 3700 1100
Wire Wire Line
	3350 1200 3700 1200
Wire Wire Line
	3350 1300 3700 1300
Wire Wire Line
	3350 1400 3700 1400
Wire Wire Line
	3350 1500 3700 1500
Wire Wire Line
	3350 1600 3700 1600
Wire Wire Line
	3350 1700 3700 1700
Wire Wire Line
	3350 1800 3700 1800
Wire Wire Line
	3350 2200 3700 2200
Wire Wire Line
	3350 2300 3700 2300
Wire Wire Line
	3350 2400 3700 2400
Wire Wire Line
	3350 2500 3700 2500
Wire Wire Line
	3350 2600 3700 2600
Wire Wire Line
	3350 2700 3700 2700
Wire Wire Line
	3350 2800 3700 2800
Wire Wire Line
	3700 2900 3350 2900
Wire Bus Line
	1600 2400 950  2400
Wire Wire Line
	4925 3075 4575 3075
Wire Wire Line
	4925 3200 4575 3200
Wire Wire Line
	4925 3325 4575 3325
Wire Wire Line
	4925 3450 4575 3450
Wire Wire Line
	4925 3950 4575 3950
Wire Wire Line
	4925 3575 4575 3575
Wire Wire Line
	4925 3700 4575 3700
Wire Wire Line
	4575 3825 4925 3825
Wire Bus Line
	3800 1400 4475 1400
Wire Wire Line
	4925 4150 4575 4150
Wire Wire Line
	4925 4275 4575 4275
Wire Wire Line
	4925 4400 4575 4400
Wire Wire Line
	4925 4525 4575 4525
Wire Bus Line
	1600 4050 4475 4050
Wire Wire Line
	1925 5525 4925 5525
Wire Wire Line
	4925 4725 4250 4725
Wire Wire Line
	4050 4725 3625 4725
Wire Wire Line
	4925 4850 4475 4850
Wire Wire Line
	4925 5275 4475 5275
Wire Wire Line
	4075 5650 4925 5650
Wire Wire Line
	4925 5400 4475 5400
Wire Wire Line
	8375 1200 8075 1200
Wire Wire Line
	8375 1300 8075 1300
Wire Wire Line
	8375 1400 8075 1400
Wire Wire Line
	8375 1500 8075 1500
Wire Wire Line
	8375 1600 8075 1600
Wire Wire Line
	8375 1700 8075 1700
Wire Wire Line
	8375 1800 8075 1800
Wire Wire Line
	8375 1900 8075 1900
Wire Wire Line
	8375 2000 8075 2000
Wire Wire Line
	8375 2100 8075 2100
Wire Wire Line
	8375 2200 8075 2200
Wire Wire Line
	8375 2300 8075 2300
Wire Wire Line
	8375 2400 8075 2400
Wire Wire Line
	8375 2500 8075 2500
Wire Wire Line
	8375 2600 8075 2600
Wire Wire Line
	8375 2700 8075 2700
Wire Wire Line
	8375 2800 8075 2800
Wire Wire Line
	8875 1200 9375 1200
Wire Wire Line
	8875 1300 9175 1300
Wire Wire Line
	8875 1400 9375 1400
Wire Wire Line
	8875 1600 9175 1600
Wire Wire Line
	8875 1700 9175 1700
Wire Wire Line
	8875 1800 9175 1800
Wire Wire Line
	8875 1900 9175 1900
Wire Wire Line
	8875 2000 9175 2000
Wire Wire Line
	8875 2100 9175 2100
Wire Wire Line
	8875 2200 9175 2200
Wire Wire Line
	8875 2300 9175 2300
Wire Wire Line
	8875 2400 9175 2400
Wire Wire Line
	8875 2500 9175 2500
Wire Wire Line
	8875 2600 9175 2600
Wire Wire Line
	8875 2700 9175 2700
Wire Wire Line
	8875 2800 9175 2800
Wire Wire Line
	8875 1500 9175 1500
Wire Wire Line
	9175 2800 9175 3050
Wire Wire Line
	8075 2800 8075 3050
Wire Notes Line
	7100 550  9900 550 
Wire Notes Line
	9900 550  9900 3550
Wire Notes Line
	9900 3550 7100 3550
Wire Notes Line
	7100 3550 7100 550 
Wire Wire Line
	7875 3925 8250 3925
Wire Wire Line
	8250 3925 8250 4025
Wire Wire Line
	7875 4025 8250 4025
Connection ~ 8250 4025
Wire Wire Line
	7875 4125 8250 4125
Connection ~ 8250 4125
Wire Wire Line
	7875 4225 8250 4225
Connection ~ 8250 4225
Wire Wire Line
	7875 4325 8250 4325
Connection ~ 8250 4325
Wire Wire Line
	7875 4425 8250 4425
Connection ~ 8250 4425
Wire Wire Line
	7875 4525 8250 4525
Connection ~ 8250 4525
Wire Wire Line
	7875 4625 8250 4625
Connection ~ 8250 4625
Wire Wire Line
	7875 4725 8250 4725
Connection ~ 8250 4725
Wire Wire Line
	7875 4825 8250 4825
Connection ~ 8250 4825
Wire Wire Line
	6900 3925 7375 3925
Wire Wire Line
	7375 4025 7075 4025
Wire Wire Line
	7375 4125 7075 4125
Wire Wire Line
	7375 4225 7075 4225
Wire Wire Line
	7375 4325 7075 4325
Wire Wire Line
	7375 4425 7075 4425
Wire Wire Line
	7375 4525 7075 4525
Wire Wire Line
	7375 4625 7075 4625
Wire Wire Line
	7375 4725 7075 4725
Wire Wire Line
	7375 4825 7075 4825
Wire Wire Line
	6350 3075 6650 3075
Wire Wire Line
	6350 3200 6650 3200
Wire Wire Line
	6350 3325 6650 3325
Wire Wire Line
	6350 3450 6650 3450
Wire Wire Line
	6350 3575 6650 3575
Wire Wire Line
	6350 3825 6650 3825
Wire Wire Line
	6350 3700 6650 3700
Wire Wire Line
	6350 3950 6650 3950
Wire Bus Line
	6750 4050 6975 4050
Wire Wire Line
	6350 4525 6650 4525
Wire Wire Line
	6350 4650 6650 4650
Wire Wire Line
	6350 5400 6650 5400
Wire Wire Line
	6350 4775 6650 4775
Wire Wire Line
	6350 4900 6650 4900
Wire Wire Line
	6350 5025 6650 5025
Wire Wire Line
	6350 5275 6650 5275
Wire Wire Line
	6900 5400 6900 3925
Wire Wire Line
	6350 5525 6650 5525
Wire Wire Line
	6650 5525 6650 5650
Wire Wire Line
	6650 5650 6750 5650
Wire Wire Line
	6350 5650 6525 5650
Wire Wire Line
	6525 5650 6525 5775
Wire Wire Line
	6525 5775 6750 5775
Wire Wire Line
	6350 4200 6650 4200
Wire Wire Line
	7075 4825 7075 5050
Wire Wire Line
	6350 4075 6650 4075
Wire Notes Line
	6925 3750 8400 3750
Wire Notes Line
	8400 3750 8400 5350
Wire Notes Line
	8400 5350 6925 5350
Wire Notes Line
	6925 5350 6925 3750
Wire Wire Line
	950  4375 950  4600
Wire Wire Line
	950  4800 950  4900
Wire Wire Line
	950  5375 950  5700
Wire Wire Line
	950  4900 1550 4900
Connection ~ 950  4900
Wire Wire Line
	1700 2800 1700 2900
Wire Wire Line
	1700 3175 2600 3175
Connection ~ 1700 2900
Wire Wire Line
	3700 2700 3700 2800
Connection ~ 3700 2800
Wire Wire Line
	3700 3175 2800 3175
Connection ~ 3700 2900
Wire Wire Line
	5625 6225 5625 6450
Wire Wire Line
	5625 6450 3475 6450
Wire Wire Line
	3475 6450 3475 3450
Wire Wire Line
	3475 3450 4175 3450
Wire Wire Line
	4175 3450 4175 2725
Wire Wire Line
	4175 2725 5225 2725
$Comp
L OricAtmos-rescue:C_Small C10
U 1 1 5B988B69
P 5325 2725
F 0 "C10" V 5200 2675 50  0000 L CNN
F 1 "0.1uF" V 5425 2625 50  0000 L CNN
F 2 "" H 5325 2725 50  0001 C CNN
F 3 "" H 5325 2725 50  0001 C CNN
	1    5325 2725
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5425 2725 5625 2725
Text HLabel 6750 3075 1    60   BiDi ~ 0
PA[0..7]
Text HLabel 9375 1200 2    60   Output ~ 0
~ROMDIS
$Comp
L OricAtmos-rescue:D_Schottky D1
U 1 1 5B99D725
P 3925 5650
F 0 "D1" H 3925 5750 50  0000 C CNN
F 1 "D_Schottky" H 3900 5575 50  0000 C CNN
F 2 "" H 3925 5650 50  0001 C CNN
F 3 "" H 3925 5650 50  0001 C CNN
	1    3925 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3775 5650 3225 5650
Text HLabel 3225 5650 0    60   Input ~ 0
~IRQ
$Comp
L OricAtmos-rescue:GND #PWR020
U 1 1 5B99F1C8
P 3700 3175
F 0 "#PWR020" H 3700 2925 50  0001 C CNN
F 1 "GND" H 3700 3025 50  0000 C CNN
F 2 "" H 3700 3175 50  0001 C CNN
F 3 "" H 3700 3175 50  0001 C CNN
	1    3700 3175
	0    -1   -1   0   
$EndComp
$Comp
L OricAtmos-rescue:VCC #PWR018
U 1 1 5B99F1F8
P 1700 3175
F 0 "#PWR018" H 1700 3025 50  0001 C CNN
F 1 "VCC" H 1700 3325 50  0000 C CNN
F 2 "" H 1700 3175 50  0001 C CNN
F 3 "" H 1700 3175 50  0001 C CNN
	1    1700 3175
	-1   0    0    1   
$EndComp
$Comp
L OricAtmos-rescue:VCC #PWR021
U 1 1 5B99F386
P 5625 2725
F 0 "#PWR021" H 5625 2575 50  0001 C CNN
F 1 "VCC" H 5625 2875 50  0000 C CNN
F 2 "" H 5625 2725 50  0001 C CNN
F 3 "" H 5625 2725 50  0001 C CNN
	1    5625 2725
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:GND #PWR022
U 1 1 5B99F488
P 5625 6450
F 0 "#PWR022" H 5625 6200 50  0001 C CNN
F 1 "GND" H 5625 6300 50  0000 C CNN
F 2 "" H 5625 6450 50  0001 C CNN
F 3 "" H 5625 6450 50  0001 C CNN
	1    5625 6450
	1    0    0    -1  
$EndComp
Text HLabel 4475 1400 2    60   BiDi ~ 0
D[0..7]
$Comp
L OricAtmos-rescue:Q_NPN_EBC Q2
U 1 1 5B9A9514
P 1175 6700
F 0 "Q2" H 1375 6750 50  0000 L CNN
F 1 "DS1813" H 900 6875 50  0000 L CNN
F 2 "" H 1375 6800 50  0001 C CNN
F 3 "" H 1175 6700 50  0001 C CNN
	1    1175 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	725  6400 1075 6400
Wire Wire Line
	725  6400 725  6525
$Comp
L OricAtmos-rescue:SW_Push SW1
U 1 1 5B9A970B
P 725 6725
F 0 "SW1" H 650 6925 50  0000 L CNN
F 1 "SW_Push" H 725 6665 50  0000 C CNN
F 2 "" H 725 6925 50  0001 C CNN
F 3 "" H 725 6925 50  0001 C CNN
	1    725  6725
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1075 6400 1075 6500
Wire Wire Line
	725  6925 725  7100
Wire Wire Line
	725  7100 1075 7100
Wire Wire Line
	1075 7100 1075 6900
$Comp
L OricAtmos-rescue:GND #PWR016
U 1 1 5B9A9A61
P 1075 7100
F 0 "#PWR016" H 1075 6850 50  0001 C CNN
F 1 "GND" H 1075 6950 50  0000 C CNN
F 2 "" H 1075 7100 50  0001 C CNN
F 3 "" H 1075 7100 50  0001 C CNN
	1    1075 7100
	1    0    0    -1  
$EndComp
$Comp
L OricAtmos-rescue:VCC #PWR017
U 1 1 5B9A9A8F
P 1500 6700
F 0 "#PWR017" H 1500 6550 50  0001 C CNN
F 1 "VCC" H 1500 6850 50  0000 C CNN
F 2 "" H 1500 6700 50  0001 C CNN
F 3 "" H 1500 6700 50  0001 C CNN
	1    1500 6700
	0    1    1    0   
$EndComp
$Comp
L OricAtmos-rescue:R_Small R9
U 1 1 5B9A9ABD
P 1075 6300
F 0 "R9" V 1175 6275 50  0000 L CNN
F 1 "3.3k" V 1000 6250 50  0000 L CNN
F 2 "" H 1075 6300 50  0001 C CNN
F 3 "" H 1075 6300 50  0001 C CNN
	1    1075 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 6700 1500 6700
Wire Wire Line
	1075 6200 1075 6150
Wire Wire Line
	1075 6150 1375 6150
Wire Wire Line
	1375 6150 1375 6700
Connection ~ 1075 6400
Text HLabel 2050 6400 2    60   Output ~ 0
~RESET
Wire Wire Line
	1925 6400 1925 5525
Connection ~ 1925 6400
Wire Bus Line
	1600 2400 1600 4050
Wire Wire Line
	8250 4025 8250 4125
Wire Wire Line
	8250 4125 8250 4225
Wire Wire Line
	8250 4225 8250 4325
Wire Wire Line
	8250 4325 8250 4425
Wire Wire Line
	8250 4425 8250 4525
Wire Wire Line
	8250 4525 8250 4625
Wire Wire Line
	8250 4625 8250 4725
Wire Wire Line
	8250 4725 8250 4825
Wire Wire Line
	8250 4825 8250 5100
Wire Wire Line
	950  4900 950  4975
Wire Wire Line
	1700 2900 1700 3175
Wire Wire Line
	3700 2800 3700 2900
Wire Wire Line
	3700 2900 3700 3175
Wire Wire Line
	1075 6400 1925 6400
Wire Wire Line
	1925 6400 2050 6400
Wire Bus Line
	6750 5500 7500 5500
Wire Bus Line
	4475 4050 4475 4425
Wire Bus Line
	3800 700  3800 1400
Wire Bus Line
	6750 4625 6750 5500
Wire Bus Line
	4475 1400 4475 3850
Wire Bus Line
	6750 3075 6750 4050
Wire Bus Line
	6975 4050 6975 4825
Wire Bus Line
	1600 900  1600 2400
Text Notes 1200 5150 0    50   ~ 0
Add a DS1813 as button debouncer
$EndSCHEMATC
