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
L MCU_Microchip_PIC12:PIC12F1822-IP U1
U 1 1 5F7E3D0D
P 6350 4100
F 0 "U1" H 6000 4600 50  0000 C CNN
F 1 "PIC12F1822-IP" H 6700 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6950 4750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41413B.pdf" H 6350 4100 50  0001 C CNN
	1    6350 4100
	1    0    0    -1  
$EndComp
NoConn ~ 6950 4000
$Comp
L Device:LED_Small D2
U 1 1 5F7E8A30
P 5100 4200
F 0 "D2" H 5100 4050 50  0000 C CNN
F 1 "LED_Small" H 5100 4050 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" V 5100 4200 50  0001 C CNN
F 3 "~" V 5100 4200 50  0001 C CNN
	1    5100 4200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F7E6636
P 4900 4200
F 0 "R2" V 5050 4200 50  0000 C CNN
F 1 "150R" V 5150 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4900 4200 50  0001 C CNN
F 3 "~" H 4900 4200 50  0001 C CNN
	1    4900 4200
	0    -1   1    0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5F7F0A3E
P 5100 4100
F 0 "D1" H 5100 4250 50  0000 C CNN
F 1 "LED_Small" H 5100 3950 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" V 5100 4100 50  0001 C CNN
F 3 "~" V 5100 4100 50  0001 C CNN
	1    5100 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F7F0AAE
P 4900 4100
F 0 "R1" V 4650 4100 50  0000 C CNN
F 1 "150R" V 4750 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4900 4100 50  0001 C CNN
F 3 "~" H 4900 4100 50  0001 C CNN
	1    4900 4100
	0    -1   1    0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5F7F23BE
P 7250 4100
F 0 "D3" H 7250 4250 50  0000 C CNN
F 1 "LED_Small" H 7250 3950 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" V 7250 4100 50  0001 C CNN
F 3 "~" V 7250 4100 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F7F2456
P 7450 4100
F 0 "R3" V 7200 4100 50  0000 C CNN
F 1 "150R" V 7300 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7450 4100 50  0001 C CNN
F 3 "~" H 7450 4100 50  0001 C CNN
	1    7450 4100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5F7FA0A8
P 4700 3850
F 0 "#PWR0101" H 4700 3700 50  0001 C CNN
F 1 "VCC" H 4715 4023 50  0000 C CNN
F 2 "" H 4700 3850 50  0001 C CNN
F 3 "" H 4700 3850 50  0001 C CNN
	1    4700 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5F7FA738
P 6350 3500
F 0 "#PWR0102" H 6350 3350 50  0001 C CNN
F 1 "VCC" H 6365 3673 50  0000 C CNN
F 2 "" H 6350 3500 50  0001 C CNN
F 3 "" H 6350 3500 50  0001 C CNN
	1    6350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3850 4700 4100
Wire Wire Line
	4700 4200 4800 4200
Wire Wire Line
	4800 4100 4700 4100
Connection ~ 4700 4100
Wire Wire Line
	4700 4100 4700 4200
$Comp
L Switch:SW_Push SW1
U 1 1 5F7E4C21
P 5550 4000
F 0 "SW1" H 5550 4285 50  0000 C CNN
F 1 "SW_Push" H 5550 4194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SKHH_Angled" H 5550 4200 50  0001 C CNN
F 3 "~" H 5550 4200 50  0001 C CNN
	1    5550 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 4100 5750 4100
Wire Wire Line
	5200 4200 5750 4200
$Comp
L power:GND #PWR0103
U 1 1 5F807186
P 5300 4450
F 0 "#PWR0103" H 5300 4200 50  0001 C CNN
F 1 "GND" H 5305 4277 50  0000 C CNN
F 2 "" H 5300 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0001 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F80747B
P 6350 4700
F 0 "#PWR0104" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6355 4527 50  0000 C CNN
F 2 "" H 6350 4700 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4000 5300 4000
Wire Wire Line
	5300 4000 5300 4450
NoConn ~ 6950 4200
$Comp
L power:VCC #PWR0105
U 1 1 5F80BADD
P 7700 3800
F 0 "#PWR0105" H 7700 3650 50  0001 C CNN
F 1 "VCC" H 7715 3973 50  0000 C CNN
F 2 "" H 7700 3800 50  0001 C CNN
F 3 "" H 7700 3800 50  0001 C CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3800 7700 4100
Wire Wire Line
	7700 4100 7550 4100
Wire Wire Line
	6950 4100 7150 4100
$Comp
L Device:Battery BT1
U 1 1 5F8118D3
P 8250 4200
F 0 "BT1" H 8358 4246 50  0000 L CNN
F 1 "Battery" H 8358 4155 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2468_2xAAA" V 8250 4260 50  0001 C CNN
F 3 "~" V 8250 4260 50  0001 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5F812611
P 8250 4000
F 0 "#PWR0106" H 8250 3850 50  0001 C CNN
F 1 "VCC" H 8265 4173 50  0000 C CNN
F 2 "" H 8250 4000 50  0001 C CNN
F 3 "" H 8250 4000 50  0001 C CNN
	1    8250 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F81311A
P 8250 4400
F 0 "#PWR0107" H 8250 4150 50  0001 C CNN
F 1 "GND" H 8255 4227 50  0000 C CNN
F 2 "" H 8250 4400 50  0001 C CNN
F 3 "" H 8250 4400 50  0001 C CNN
	1    8250 4400
	1    0    0    -1  
$EndComp
$EndSCHEMATC