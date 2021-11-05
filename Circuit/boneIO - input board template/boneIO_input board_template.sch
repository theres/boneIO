EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 618025F6
P 1750 1450
F 0 "J1" H 1800 1767 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1800 1676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1750 1450 50  0001 C CNN
F 3 "~" H 1750 1450 50  0001 C CNN
	1    1750 1450
	1    0    0    -1  
$EndComp
Text GLabel 2050 1650 2    50   Input ~ 0
SDA
Text GLabel 1550 1650 0    50   Input ~ 0
SCL
$Comp
L power:GND #PWR04
U 1 1 61804ED3
P 2500 1950
F 0 "#PWR04" H 2500 1700 50  0001 C CNN
F 1 "GND" H 2505 1777 50  0000 C CNN
F 2 "" H 2500 1950 50  0001 C CNN
F 3 "" H 2500 1950 50  0001 C CNN
	1    2500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1350 2500 1350
Wire Wire Line
	2500 1350 2500 1450
Wire Wire Line
	2050 1450 2500 1450
Connection ~ 2500 1450
Wire Wire Line
	2500 1450 2500 1550
Wire Wire Line
	2050 1550 2500 1550
Connection ~ 2500 1550
Wire Wire Line
	2500 1550 2500 1950
$Comp
L power:+24V #PWR03
U 1 1 618056DE
P 1250 850
F 0 "#PWR03" H 1250 700 50  0001 C CNN
F 1 "+24V" H 1265 1023 50  0000 C CNN
F 2 "" H 1250 850 50  0001 C CNN
F 3 "" H 1250 850 50  0001 C CNN
	1    1250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 61805D20
P 1000 850
F 0 "#PWR02" H 1000 700 50  0001 C CNN
F 1 "+5V" H 1015 1023 50  0000 C CNN
F 2 "" H 1000 850 50  0001 C CNN
F 3 "" H 1000 850 50  0001 C CNN
	1    1000 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 61805E6E
P 750 850
F 0 "#PWR01" H 750 700 50  0001 C CNN
F 1 "+3.3V" H 765 1023 50  0000 C CNN
F 2 "" H 750 850 50  0001 C CNN
F 3 "" H 750 850 50  0001 C CNN
	1    750  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 850  1250 1350
Wire Wire Line
	1250 1350 1550 1350
Wire Wire Line
	1000 850  1000 1450
Wire Wire Line
	1000 1450 1550 1450
Wire Wire Line
	750  850  750  1550
Wire Wire Line
	750  1550 1550 1550
$EndSCHEMATC
