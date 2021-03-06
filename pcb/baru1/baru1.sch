EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
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
LIBS:bluepill
LIBS:baru1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BP STM1
U 1 1 5C1B8A76
P 6250 2450
F 0 "STM1" H 5750 3350 60  0000 C CNN
F 1 "BP" H 6550 1500 60  0000 C CNN
F 2 "BP:BLUEPILL" H 6150 3200 60  0001 C CNN
F 3 "" H 6150 3200 60  0001 C CNN
	1    6250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1150 6250 1400
$Comp
L +3.3V #PWR01
U 1 1 5C1B9615
P 6250 1150
F 0 "#PWR01" H 6250 1000 50  0001 C CNN
F 1 "+3.3V" H 6250 1290 50  0000 C CNN
F 2 "" H 6250 1150 50  0001 C CNN
F 3 "" H 6250 1150 50  0001 C CNN
	1    6250 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 MIC1
U 1 1 5C1BA3AD
P 4650 3600
F 0 "MIC1" H 4650 3900 50  0000 C CNN
F 1 "CONN_01X05" V 4750 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.54mm" H 4650 3600 50  0001 C CNN
F 3 "" H 4650 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 5C1BA660
P 4450 2400
F 0 "#PWR03" H 4450 2250 50  0001 C CNN
F 1 "+3.3V" H 4450 2540 50  0000 C CNN
F 2 "" H 4450 2400 50  0001 C CNN
F 3 "" H 4450 2400 50  0001 C CNN
	1    4450 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 5C1BA680
P 4150 3700
F 0 "#PWR04" H 4150 3550 50  0001 C CNN
F 1 "+3.3V" H 4150 3840 50  0000 C CNN
F 2 "" H 4150 3700 50  0001 C CNN
F 3 "" H 4150 3700 50  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5C1BA6BC
P 4200 2550
F 0 "#PWR06" H 4200 2300 50  0001 C CNN
F 1 "GND" H 4200 2400 50  0000 C CNN
F 2 "" H 4200 2550 50  0001 C CNN
F 3 "" H 4200 2550 50  0001 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5C1BA6DC
P 4300 3950
F 0 "#PWR07" H 4300 3700 50  0001 C CNN
F 1 "GND" H 4300 3800 50  0000 C CNN
F 2 "" H 4300 3950 50  0001 C CNN
F 3 "" H 4300 3950 50  0001 C CNN
	1    4300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2400 4550 2400
Wire Wire Line
	4200 2500 4550 2500
Wire Wire Line
	4300 3950 4300 3800
Wire Wire Line
	4300 3800 4450 3800
Wire Wire Line
	4150 3700 4450 3700
Text GLabel 5350 2250 0    60   Input ~ 0
TX
Text GLabel 5350 2100 0    60   Input ~ 0
RX
Wire Wire Line
	5350 2150 5500 2150
Wire Wire Line
	5350 2150 5350 2100
Wire Wire Line
	5350 2250 5500 2250
Text GLabel 4500 2600 0    60   Input ~ 0
SCL
Text GLabel 4500 2700 0    60   Input ~ 0
SDA
Wire Wire Line
	4200 2550 4200 2500
Wire Wire Line
	4500 2600 4550 2600
Wire Wire Line
	4500 2700 4550 2700
Text GLabel 4350 3400 0    60   Input ~ 0
MIC
Wire Wire Line
	4350 3400 4350 3500
Wire Wire Line
	4350 3500 4450 3500
Text GLabel 5400 1950 0    60   Input ~ 0
MIC
Wire Wire Line
	5400 1950 5500 1950
Text GLabel 5300 2950 0    60   Input ~ 0
SCL
Text GLabel 5300 3050 0    60   Input ~ 0
SDA
Wire Wire Line
	5300 2950 5500 2950
Wire Wire Line
	5300 3050 5500 3050
$Comp
L GND #PWR08
U 1 1 5C1BAA8C
P 6400 3600
F 0 "#PWR08" H 6400 3350 50  0001 C CNN
F 1 "GND" H 6400 3450 50  0000 C CNN
F 2 "" H 6400 3600 50  0001 C CNN
F 3 "" H 6400 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3600 6400 3600
Wire Wire Line
	6400 3600 6400 3500
$Comp
L +5V #PWR09
U 1 1 5C1BBCAA
P 6400 1300
F 0 "#PWR09" H 6400 1150 50  0001 C CNN
F 1 "+5V" H 6400 1440 50  0000 C CNN
F 2 "" H 6400 1300 50  0001 C CNN
F 3 "" H 6400 1300 50  0001 C CNN
	1    6400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1300 6400 1400
$Comp
L CONN_01X03 J-PWR1
U 1 1 5C1BBF05
P 8150 1600
F 0 "J-PWR1" H 8150 1800 50  0000 C CNN
F 1 "CONN_01X03" V 8250 1600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 8150 1600 50  0001 C CNN
F 3 "" H 8150 1600 50  0001 C CNN
	1    8150 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 5C1BBF48
P 7850 1500
F 0 "#PWR010" H 7850 1350 50  0001 C CNN
F 1 "+5V" H 7850 1640 50  0000 C CNN
F 2 "" H 7850 1500 50  0001 C CNN
F 3 "" H 7850 1500 50  0001 C CNN
	1    7850 1500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 5C1BBF6B
P 7700 1600
F 0 "#PWR011" H 7700 1450 50  0001 C CNN
F 1 "+3.3V" H 7700 1740 50  0000 C CNN
F 2 "" H 7700 1600 50  0001 C CNN
F 3 "" H 7700 1600 50  0001 C CNN
	1    7700 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5C1BBF89
P 7850 1700
F 0 "#PWR012" H 7850 1450 50  0001 C CNN
F 1 "GND" H 7850 1550 50  0000 C CNN
F 2 "" H 7850 1700 50  0001 C CNN
F 3 "" H 7850 1700 50  0001 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1500 7850 1500
Wire Wire Line
	7950 1600 7700 1600
Wire Wire Line
	7950 1700 7850 1700
$Comp
L CONN_01X03 J-UART1
U 1 1 5C1BC12B
P 8150 2400
F 0 "J-UART1" H 8150 2600 50  0000 C CNN
F 1 "CONN_01X03" V 8250 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 8150 2400 50  0001 C CNN
F 3 "" H 8150 2400 50  0001 C CNN
	1    8150 2400
	1    0    0    -1  
$EndComp
Text GLabel 7850 2300 0    60   Input ~ 0
FT_RX
Text GLabel 7850 2400 0    60   Input ~ 0
FT_TX
$Comp
L GND #PWR013
U 1 1 5C1BC402
P 7850 2500
F 0 "#PWR013" H 7850 2250 50  0001 C CNN
F 1 "GND" H 7850 2350 50  0000 C CNN
F 2 "" H 7850 2500 50  0001 C CNN
F 3 "" H 7850 2500 50  0001 C CNN
	1    7850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2300 7950 2300
Wire Wire Line
	7850 2400 7950 2400
Wire Wire Line
	7950 2500 7850 2500
Text GLabel 7150 2750 2    60   Input ~ 0
FT_TX
Text GLabel 7150 2650 2    60   Input ~ 0
FT_RX
Wire Wire Line
	7150 2650 7000 2650
Wire Wire Line
	7150 2750 7000 2750
$Comp
L CONN_01X08 J1
U 1 1 5C1CA4F9
P 4750 2750
F 0 "J1" H 4750 3200 50  0000 C CNN
F 1 "CONN_01X08" V 4850 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 4750 2750 50  0001 C CNN
F 3 "" H 4750 2750 50  0001 C CNN
	1    4750 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 WIFI1
U 1 1 5C1B8D1A
P 4550 1900
F 0 "WIFI1" H 4550 2150 50  0000 C CNN
F 1 "CONN_02X04" H 4550 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 4550 700 50  0001 C CNN
F 3 "" H 4550 700 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
Text GLabel 4150 1750 0    60   Input ~ 0
TX
Wire Wire Line
	4300 1750 4150 1750
Wire Wire Line
	4300 1850 4200 1850
Wire Wire Line
	4200 1850 4200 2050
Wire Wire Line
	4200 2050 4300 2050
Wire Wire Line
	4000 1950 4300 1950
Connection ~ 4200 1950
$Comp
L +3.3V #PWR?
U 1 1 5C1CB91E
P 4000 1950
F 0 "#PWR?" H 4000 1800 50  0001 C CNN
F 1 "+3.3V" H 4000 2090 50  0000 C CNN
F 2 "" H 4000 1950 50  0001 C CNN
F 3 "" H 4000 1950 50  0001 C CNN
	1    4000 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C1CBACF
P 4950 1750
F 0 "#PWR?" H 4950 1500 50  0001 C CNN
F 1 "GND" H 4950 1600 50  0000 C CNN
F 2 "" H 4950 1750 50  0001 C CNN
F 3 "" H 4950 1750 50  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1750 4800 1750
Text GLabel 4900 2150 0    60   Input ~ 0
RX
Wire Wire Line
	4800 2050 4900 2050
Wire Wire Line
	4900 2050 4900 2150
$EndSCHEMATC
