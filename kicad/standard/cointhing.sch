EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "CoinThing ESP8266"
Date "2021-04-04"
Rev "rev.D"
Comp "barn53"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C2
U 1 1 60095901
P 3300 1150
F 0 "C2" H 3415 1196 50  0000 L CNN
F 1 "4.7u" H 3415 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 1000 50  0001 C CNN
F 3 "~" H 3300 1150 50  0001 C CNN
F 4 "C1779" H 3300 1150 50  0001 C CNN "LCSC"
	1    3300 1150
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:ESP-12E U1
U 1 1 60095902
P 8400 2200
F 0 "U1" H 8000 3050 50  0000 C CNN
F 1 "ESP-12E" H 8100 2950 50  0000 C CNN
F 2 "barn53-kicad:ESP-12E" H 8400 2200 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 8050 2300 50  0001 C CNN
F 4 "C82891" H 8400 2200 50  0001 C CNN "LCSC"
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:USB_B_Micro J1
U 1 1 5DB8FF43
P 1850 6600
F 0 "J1" H 1907 7067 50  0000 C CNN
F 1 "USB_B_Micro" H 1907 6976 50  0000 C CNN
F 2 "barn53-kicad:MicroUSB_through_hole_fixing" H 2000 6550 50  0001 C CNN
F 3 "~" H 2000 6550 50  0001 C CNN
	1    1850 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5DBADAF3
P 1850 7250
F 0 "#PWR022" H 1850 7000 50  0001 C CNN
F 1 "GND" H 1855 7077 50  0000 C CNN
F 2 "" H 1850 7250 50  0001 C CNN
F 3 "" H 1850 7250 50  0001 C CNN
	1    1850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7000 1850 7150
Wire Wire Line
	1750 7000 1750 7150
Wire Wire Line
	1750 7150 1850 7150
Connection ~ 1850 7150
Wire Wire Line
	1850 7150 1850 7250
$Comp
L power:GND #PWR021
U 1 1 60095905
P 4850 7000
F 0 "#PWR021" H 4850 6750 50  0001 C CNN
F 1 "GND" H 4855 6827 50  0000 C CNN
F 2 "" H 4850 7000 50  0001 C CNN
F 3 "" H 4850 7000 50  0001 C CNN
	1    4850 7000
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR018
U 1 1 5DBB197D
P 2300 6300
F 0 "#PWR018" H 2300 6150 50  0001 C CNN
F 1 "VBUS" H 2315 6473 50  0000 C CNN
F 2 "" H 2300 6300 50  0001 C CNN
F 3 "" H 2300 6300 50  0001 C CNN
	1    2300 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6400 2300 6400
Wire Wire Line
	2300 6400 2300 6300
$Comp
L power:VBUS #PWR019
U 1 1 5DBB244F
P 3950 6300
F 0 "#PWR019" H 3950 6150 50  0001 C CNN
F 1 "VBUS" H 3965 6473 50  0000 C CNN
F 2 "" H 3950 6300 50  0001 C CNN
F 3 "" H 3950 6300 50  0001 C CNN
	1    3950 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60095908
P 3950 6750
F 0 "C6" H 4065 6796 50  0000 L CNN
F 1 "1u" H 4065 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3988 6600 50  0001 C CNN
F 3 "~" H 3950 6750 50  0001 C CNN
F 4 "C28323" H 3950 6750 50  0001 C CNN "LCSC"
	1    3950 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60095909
P 4350 6750
F 0 "C7" H 4465 6796 50  0000 L CNN
F 1 "100n" H 4465 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4388 6600 50  0001 C CNN
F 3 "~" H 4350 6750 50  0001 C CNN
F 4 "C49678" H 4350 6750 50  0001 C CNN "LCSC"
	1    4350 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6009590B
P 5750 6750
F 0 "C9" H 5865 6796 50  0000 L CNN
F 1 "4.7u" H 5865 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 6600 50  0001 C CNN
F 3 "~" H 5750 6750 50  0001 C CNN
F 4 "C1779" H 5750 6750 50  0001 C CNN "LCSC"
	1    5750 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6400 3950 6300
Wire Wire Line
	3950 6400 4350 6400
Wire Wire Line
	3950 6600 3950 6400
Connection ~ 3950 6400
Wire Wire Line
	4350 6600 4350 6400
Connection ~ 4350 6400
Wire Wire Line
	4350 6400 4550 6400
Wire Wire Line
	5150 6400 5300 6400
Wire Wire Line
	5750 6400 5750 6600
Wire Wire Line
	5300 6600 5300 6400
Connection ~ 5300 6400
Wire Wire Line
	5300 6400 5750 6400
$Comp
L power:+3V3 #PWR020
U 1 1 6009590C
P 5750 6300
F 0 "#PWR020" H 5750 6150 50  0001 C CNN
F 1 "+3V3" H 5765 6473 50  0000 C CNN
F 2 "" H 5750 6300 50  0001 C CNN
F 3 "" H 5750 6300 50  0001 C CNN
	1    5750 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6300 5750 6400
Connection ~ 5750 6400
Connection ~ 4850 6950
Wire Wire Line
	3950 6950 4350 6950
$Comp
L Device:C C8
U 1 1 6009590A
P 5300 6750
F 0 "C8" H 5415 6796 50  0000 L CNN
F 1 "100n" H 5415 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 6600 50  0001 C CNN
F 3 "~" H 5300 6750 50  0001 C CNN
F 4 "C49678" H 5300 6750 50  0001 C CNN "LCSC"
	1    5300 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6700 4850 6950
Wire Wire Line
	4850 6950 5300 6950
Wire Wire Line
	3950 6900 3950 6950
Wire Wire Line
	4350 6900 4350 6950
Connection ~ 4350 6950
Wire Wire Line
	4350 6950 4850 6950
Wire Wire Line
	5300 6900 5300 6950
Connection ~ 5300 6950
Wire Wire Line
	5300 6950 5750 6950
Wire Wire Line
	5750 6900 5750 6950
Wire Wire Line
	4850 7000 4850 6950
NoConn ~ 2150 6800
Wire Wire Line
	2150 6600 2400 6600
Wire Wire Line
	2150 6700 2400 6700
$Comp
L Device:C C3
U 1 1 60095910
P 2850 2350
F 0 "C3" H 2965 2396 50  0000 L CNN
F 1 "100n" H 2965 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 2200 50  0001 C CNN
F 3 "~" H 2850 2350 50  0001 C CNN
F 4 "C49678" H 2850 2350 50  0001 C CNN "LCSC"
	1    2850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60095912
P 2850 1150
F 0 "C1" H 2965 1196 50  0000 L CNN
F 1 "100n" H 2965 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 1000 50  0001 C CNN
F 3 "~" H 2850 1150 50  0001 C CNN
F 4 "C49678" H 2850 1150 50  0001 C CNN "LCSC"
	1    2850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4700 2300 4700
Wire Wire Line
	2050 5350 2300 5350
Wire Wire Line
	1650 5000 2600 5000
Wire Wire Line
	1650 4700 1650 5000
Connection ~ 1650 4700
Wire Wire Line
	1650 4700 1750 4700
Wire Wire Line
	1650 5350 1650 5200
Wire Wire Line
	1650 5200 2400 5200
Wire Wire Line
	2400 5200 2400 4900
Wire Wire Line
	2400 4900 2600 4900
Connection ~ 1650 5350
Wire Wire Line
	1650 5350 1750 5350
Wire Wire Line
	2600 5550 2600 5600
Wire Wire Line
	2600 4500 2600 4450
Wire Wire Line
	2600 4450 3250 4450
Wire Wire Line
	2600 5000 2600 5150
$Comp
L Device:C C4
U 1 1 5DBF95C5
P 3250 4700
F 0 "C4" H 3365 4746 50  0000 L CNN
F 1 "100n" H 3365 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3288 4550 50  0001 C CNN
F 3 "~" H 3250 4700 50  0001 C CNN
F 4 "C49678" H 3250 4700 50  0001 C CNN "LCSC"
	1    3250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3950 3250 4050
Wire Wire Line
	3250 4350 3250 4450
Connection ~ 3250 4450
Wire Wire Line
	3250 4450 4000 4450
Wire Wire Line
	3250 4450 3250 4550
Wire Wire Line
	3250 4850 3250 4950
$Comp
L power:GND #PWR08
U 1 1 5DC0E4BB
P 8400 3000
F 0 "#PWR08" H 8400 2750 50  0001 C CNN
F 1 "GND" H 8405 2827 50  0000 C CNN
F 2 "" H 8400 3000 50  0001 C CNN
F 3 "" H 8400 3000 50  0001 C CNN
	1    8400 3000
	1    0    0    -1  
$EndComp
NoConn ~ 7800 2200
NoConn ~ 7800 2300
NoConn ~ 7800 2400
NoConn ~ 7800 2500
NoConn ~ 7800 2600
NoConn ~ 7800 2700
Wire Wire Line
	8400 2900 8400 3000
$Comp
L power:+3V3 #PWR04
U 1 1 5DC2AC3F
P 8400 1150
F 0 "#PWR04" H 8400 1000 50  0001 C CNN
F 1 "+3V3" H 8415 1323 50  0000 C CNN
F 2 "" H 8400 1150 50  0001 C CNN
F 3 "" H 8400 1150 50  0001 C CNN
	1    8400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1150 8400 1400
Wire Wire Line
	7800 1800 6950 1800
Wire Wire Line
	6950 1800 6950 1400
$Comp
L power:+3V3 #PWR02
U 1 1 5DC334C7
P 6950 1050
F 0 "#PWR02" H 6950 900 50  0001 C CNN
F 1 "+3V3" H 6965 1223 50  0000 C CNN
F 2 "" H 6950 1050 50  0001 C CNN
F 3 "" H 6950 1050 50  0001 C CNN
	1    6950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1050 6950 1100
Wire Wire Line
	7800 1600 7450 1600
NoConn ~ 9000 2600
NoConn ~ 9000 2200
Wire Wire Line
	3800 5150 3800 5250
Wire Wire Line
	2600 5600 3800 5600
Wire Wire Line
	3800 5550 3800 5600
Connection ~ 3800 5600
Wire Wire Line
	9650 1800 9650 1400
$Comp
L power:+3V3 #PWR03
U 1 1 6009591B
P 9650 1050
F 0 "#PWR03" H 9650 900 50  0001 C CNN
F 1 "+3V3" H 9665 1223 50  0000 C CNN
F 2 "" H 9650 1050 50  0001 C CNN
F 3 "" H 9650 1050 50  0001 C CNN
	1    9650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1050 9650 1100
Wire Wire Line
	9000 1800 9650 1800
$Comp
L power:GND #PWR09
U 1 1 5DC76A97
P 9200 3050
F 0 "#PWR09" H 9200 2800 50  0001 C CNN
F 1 "GND" H 9205 2877 50  0000 C CNN
F 2 "" H 9200 3050 50  0001 C CNN
F 3 "" H 9200 3050 50  0001 C CNN
	1    9200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2650 9200 2500
Wire Wire Line
	9200 2500 9000 2500
Wire Wire Line
	9200 3050 9200 2950
$Comp
L power:+3V3 #PWR012
U 1 1 5DCD2000
P 3250 3950
F 0 "#PWR012" H 3250 3800 50  0001 C CNN
F 1 "+3V3" H 3265 4123 50  0000 C CNN
F 2 "" H 3250 3950 50  0001 C CNN
F 3 "" H 3250 3950 50  0001 C CNN
	1    3250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5DCD200A
P 3250 4950
F 0 "#PWR015" H 3250 4700 50  0001 C CNN
F 1 "GND" H 3255 4777 50  0000 C CNN
F 2 "" H 3250 4950 50  0001 C CNN
F 3 "" H 3250 4950 50  0001 C CNN
	1    3250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5DCD2024
P 3800 5150
F 0 "#PWR016" H 3800 5000 50  0001 C CNN
F 1 "+3V3" H 3815 5323 50  0000 C CNN
F 2 "" H 3800 5150 50  0001 C CNN
F 3 "" H 3800 5150 50  0001 C CNN
	1    3800 5150
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R2
U 4 1 5FF6F232
P 3800 5400
F 0 "R2" H 3870 5446 50  0000 L CNN
F 1 "10k" H 3870 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 3925 4775 50  0001 C CNN
F 3 "" H 3700 5575 50  0001 C CNN
F 4 "C29718" H 3800 5400 50  0001 C CNN "LCSC"
	4    3800 5400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PUMX1 Q2
U 2 1 5FF72C69
P 2500 4700
F 0 "Q2" H 2691 4746 50  0000 L CNN
F 1 "PMBT2222AYSX" H 2691 4655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2700 4800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PUMX1.pdf" H 2500 4700 50  0001 C CNN
F 4 "C99140" H 2500 4700 50  0001 C CNN "LCSC"
	2    2500 4700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PUMX1 Q2
U 1 1 5FF71814
P 2500 5350
F 0 "Q2" H 2691 5304 50  0000 L CNN
F 1 "PMBT2222AYSX" H 2691 5395 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2700 5450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PUMX1.pdf" H 2500 5350 50  0001 C CNN
F 4 "C99140" H 2500 5350 50  0001 C CNN "LCSC"
	1    2500 5350
	1    0    0    1   
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R2
U 1 1 5FF7C3B8
P 3250 4200
F 0 "R2" H 3320 4246 50  0000 L CNN
F 1 "10k" H 3320 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 3375 3575 50  0001 C CNN
F 3 "" H 3150 4375 50  0001 C CNN
F 4 "C29718" H 3250 4200 50  0001 C CNN "LCSC"
	1    3250 4200
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R2
U 3 1 5FF7FA4D
P 1900 5350
F 0 "R2" V 2000 5350 50  0000 C CNN
F 1 "10k" V 2100 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 2025 4725 50  0001 C CNN
F 3 "" H 1800 5525 50  0001 C CNN
F 4 "C29718" H 1900 5350 50  0001 C CNN "LCSC"
	3    1900 5350
	0    1    1    0   
$EndComp
$Comp
L barn53-kicad:BL8565 U3
U 1 1 5FF86FB5
P 4850 6400
F 0 "U3" H 4850 6642 50  0000 C CNN
F 1 "BL8565" H 4850 6551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 5550 6100 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/szlcsc/1810172021_BL-Shanghai-Belling-BL8565CC3BTR33_C51826.pdf" H 4850 6350 50  0001 C CNN
F 4 "C51826" H 4850 6400 50  0001 C CNN "LCSC"
	1    4850 6400
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R1
U 4 1 5FF88661
P 9200 2800
F 0 "R1" H 9270 2846 50  0000 L CNN
F 1 "10k" H 9270 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 9325 2175 50  0001 C CNN
F 3 "" H 9100 2975 50  0001 C CNN
F 4 "C29718" H 9200 2800 50  0001 C CNN "LCSC"
	4    9200 2800
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R1
U 2 1 5FF88AC3
P 9650 1250
F 0 "R1" H 9720 1296 50  0000 L CNN
F 1 "10k" H 9720 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 9775 625 50  0001 C CNN
F 3 "" H 9550 1425 50  0001 C CNN
F 4 "C29718" H 9650 1250 50  0001 C CNN "LCSC"
	2    9650 1250
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R1
U 1 1 5FF890D7
P 5350 3000
F 0 "R1" H 5420 3046 50  0000 L CNN
F 1 "10k" H 5420 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 5475 2375 50  0001 C CNN
F 3 "" H 5250 3175 50  0001 C CNN
F 4 "C29718" H 5350 3000 50  0001 C CNN "LCSC"
	1    5350 3000
	0    -1   -1   0   
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R1
U 3 1 5FF893D8
P 6950 1250
F 0 "R1" H 7050 1200 50  0000 L CNN
F 1 "10k" H 7050 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 7075 625 50  0001 C CNN
F 3 "" H 6850 1425 50  0001 C CNN
F 4 "C29718" H 6950 1250 50  0001 C CNN "LCSC"
	3    6950 1250
	-1   0    0    1   
$EndComp
$Comp
L barn53-kicad:IPSDisplay_240x240 D1
U 1 1 5FF69BC9
P 9250 5250
F 0 "D1" H 9800 5300 50  0000 L CNN
F 1 "IPSDisplay_240x240" H 9850 6300 50  0000 L CNN
F 2 "barn53-kicad:IPSDisplay_240x240_FPC_80deg" H 10100 5050 50  0001 C CNN
F 3 "" H 9250 5250 50  0001 C CNN
	1    9250 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FF6C684
P 8300 5350
F 0 "#PWR017" H 8300 5100 50  0001 C CNN
F 1 "GND" H 8305 5177 50  0000 C CNN
F 2 "" H 8300 5350 50  0001 C CNN
F 3 "" H 8300 5350 50  0001 C CNN
	1    8300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5250 8300 5350
Wire Wire Line
	9250 4150 8300 4150
Wire Wire Line
	8300 4150 8300 4550
Connection ~ 8300 5250
Wire Wire Line
	9250 4750 9100 4750
Connection ~ 8300 4750
$Comp
L power:+3V3 #PWR014
U 1 1 5FF7C2D8
P 8500 4500
F 0 "#PWR014" H 8500 4350 50  0001 C CNN
F 1 "+3V3" H 8515 4673 50  0000 C CNN
F 2 "" H 8500 4500 50  0001 C CNN
F 3 "" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FF834B2
P 8500 5100
F 0 "C5" H 8615 5146 50  0000 L CNN
F 1 "100n" H 8615 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8538 4950 50  0001 C CNN
F 3 "~" H 8500 5100 50  0001 C CNN
F 4 "C49678" H 8500 5100 50  0001 C CNN "LCSC"
	1    8500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5050 9100 5050
Wire Wire Line
	9100 5050 9100 4950
Connection ~ 9100 4950
Wire Wire Line
	9100 4950 9250 4950
Wire Wire Line
	8300 4750 8300 5250
Wire Wire Line
	9250 4850 9100 4850
Wire Wire Line
	9100 4850 9100 4750
Connection ~ 9100 4750
Wire Wire Line
	9100 4750 8300 4750
Text Label 8900 5150 0    50   ~ 0
LEDK
Wire Wire Line
	8900 5150 9250 5150
Text Label 8800 4650 0    50   ~ 0
GPIO0
Wire Wire Line
	8800 4650 9250 4650
Text Label 8800 4450 0    50   ~ 0
TFT_SCL
Wire Wire Line
	8800 4450 9250 4450
Text Label 8800 4350 0    50   ~ 0
TFT_SDA
Wire Wire Line
	8800 4350 9250 4350
Text Label 8800 4250 0    50   ~ 0
~TFT_RES
Wire Wire Line
	8800 4250 9250 4250
Wire Wire Line
	8500 4500 8500 4950
Connection ~ 8500 4950
Connection ~ 8500 5250
Wire Wire Line
	8500 5250 8300 5250
Wire Wire Line
	8500 5250 9250 5250
Wire Wire Line
	8500 4950 9100 4950
Text Label 7450 1600 0    50   ~ 0
~Reset
Text Label 4000 4450 2    50   ~ 0
~Reset
Text Label 9500 1600 2    50   ~ 0
GPIO0
Wire Wire Line
	9000 1600 9500 1600
Text Label 4300 5600 2    50   ~ 0
GPIO0
Wire Wire Line
	3800 5600 4300 5600
Text Label 2400 6600 2    50   ~ 0
D+
Text Label 2400 6700 2    50   ~ 0
D-
Text Label 1350 4700 0    50   ~ 0
DTR
Wire Wire Line
	1350 4700 1650 4700
Wire Wire Line
	1350 5350 1650 5350
Text Label 1350 5350 0    50   ~ 0
RTS
Text Label 5300 2500 2    50   ~ 0
RxD
Text Label 5300 2400 2    50   ~ 0
TxD
Text Label 9500 1700 2    50   ~ 0
RxD
Text Label 9500 1900 2    50   ~ 0
TxD
Wire Wire Line
	9000 1900 9500 1900
Wire Wire Line
	8300 4550 9250 4550
Connection ~ 8300 4550
Wire Wire Line
	8300 4550 8300 4750
Wire Wire Line
	9000 1700 9500 1700
Text Label 9500 2300 2    50   ~ 0
TFT_SDA
Wire Wire Line
	9000 2300 9500 2300
Text Label 9500 2400 2    50   ~ 0
TFT_SCL
Wire Wire Line
	9000 2400 9500 2400
Text Label 9500 1800 2    50   ~ 0
~TFT_RES
NoConn ~ 7800 2000
Text Label 9500 2000 2    50   ~ 0
TFT_BL
Wire Wire Line
	9500 2000 9000 2000
Text Label 9500 2100 2    50   ~ 0
GPIO5
Wire Wire Line
	9500 2100 9000 2100
$Comp
L barn53-kicad:S8050_J3Y Q1
U 1 1 5FF8289B
P 6550 4900
F 0 "Q1" H 6741 4946 50  0000 L CNN
F 1 "S8050_J3Y" H 6741 4855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6750 4825 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/1910111742_MDD-Microdiode-Electronics-S8050-J3Y_C364312.pdf" H 6550 4900 50  0001 L CNN
F 4 "C2146" H 6950 4700 50  0001 C CNN "LCSC"
	1    6550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4600 6650 4600
Wire Wire Line
	6650 4600 6650 4700
Wire Wire Line
	7050 4600 7300 4600
Text Label 7300 4600 2    50   ~ 0
LEDK
$Comp
L power:GND #PWR013
U 1 1 6001FE05
P 6650 5200
F 0 "#PWR013" H 6650 4950 50  0001 C CNN
F 1 "GND" H 6655 5027 50  0000 C CNN
F 2 "" H 6650 5200 50  0001 C CNN
F 3 "" H 6650 5200 50  0001 C CNN
	1    6650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5100 6650 5200
Wire Wire Line
	6350 4900 6300 4900
Wire Wire Line
	5900 4900 5500 4900
Text Label 5500 4900 0    50   ~ 0
TFT_BL
Wire Wire Line
	6300 4800 6300 4900
Connection ~ 6300 4900
Wire Wire Line
	6300 4900 6200 4900
Wire Wire Line
	6300 4500 6300 4450
$Comp
L power:+3V3 #PWR011
U 1 1 6003E7F6
P 6300 4450
F 0 "#PWR011" H 6300 4300 50  0001 C CNN
F 1 "+3V3" H 6315 4623 50  0000 C CNN
F 2 "" H 6300 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FF816FC
P 6900 4600
F 0 "R3" V 6693 4600 50  0000 C CNN
F 1 "10" V 6784 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 4600 50  0001 C CNN
F 3 "~" H 6900 4600 50  0001 C CNN
F 4 "C17415" H 6900 4600 50  0001 C CNN "LCSC"
	1    6900 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60031526
P 6300 4650
F 0 "R4" H 6230 4604 50  0000 R CNN
F 1 "10k" H 6230 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 4650 50  0001 C CNN
F 3 "~" H 6300 4650 50  0001 C CNN
F 4 "C17414" H 6300 4650 50  0001 C CNN "LCSC"
	1    6300 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 6002480E
P 6050 4900
F 0 "R5" V 5843 4900 50  0000 C CNN
F 1 "1k" V 5934 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 4900 50  0001 C CNN
F 3 "~" H 6050 4900 50  0001 C CNN
F 4 "C17513" H 6050 4900 50  0001 C CNN "LCSC"
	1    6050 4900
	0    1    1    0   
$EndComp
$Comp
L barn53-kicad:Resistor_Array_4x R2
U 2 1 5FF7CE63
P 1900 4700
F 0 "R2" V 1693 4700 50  0000 C CNN
F 1 "10k" V 1784 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" H 2025 4075 50  0001 C CNN
F 3 "" H 1800 4875 50  0001 C CNN
F 4 "C29718" H 1900 4700 50  0001 C CNN "LCSC"
	2    1900 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2100 5300 2100
Wire Wire Line
	5000 2400 5300 2400
Wire Wire Line
	5300 2500 5000 2500
Wire Wire Line
	5000 2700 5300 2700
$Comp
L power:GND #PWR?
U 1 1 607C55A1
P 4300 3700
AR Path="/606B1780/607C55A1" Ref="#PWR?"  Part="1" 
AR Path="/607C55A1" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 4300 3450 50  0001 C CNN
F 1 "GND" H 4305 3527 50  0000 C CNN
F 2 "" H 4300 3700 50  0001 C CNN
F 3 "" H 4300 3700 50  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3500 4300 3600
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	4400 3600 4300 3600
Connection ~ 4300 3600
Wire Wire Line
	4300 3600 4300 3700
Wire Wire Line
	3250 2400 3600 2400
Wire Wire Line
	3600 2500 3250 2500
NoConn ~ 5000 1900
NoConn ~ 5000 2000
NoConn ~ 5000 2200
NoConn ~ 5000 2800
NoConn ~ 5000 3100
NoConn ~ 5000 3200
$Comp
L power:GND #PWR?
U 1 1 607C55BA
P 2850 1450
AR Path="/606B1780/607C55BA" Ref="#PWR?"  Part="1" 
AR Path="/607C55BA" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2850 1200 50  0001 C CNN
F 1 "GND" H 2855 1277 50  0000 C CNN
F 2 "" H 2850 1450 50  0001 C CNN
F 3 "" H 2850 1450 50  0001 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 900  3300 900 
Wire Wire Line
	4300 900  4300 1450
Wire Wire Line
	3600 1900 3500 1900
Wire Wire Line
	3500 1900 3500 2100
Wire Wire Line
	3500 2100 3600 2100
Connection ~ 3500 2100
$Comp
L power:GND #PWR?
U 1 1 607C55D2
P 2850 2600
AR Path="/606B1780/607C55D2" Ref="#PWR?"  Part="1" 
AR Path="/607C55D2" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2850 2350 50  0001 C CNN
F 1 "GND" H 2855 2427 50  0000 C CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2200 2850 2100
Wire Wire Line
	2850 2100 3500 2100
Wire Wire Line
	5000 3000 5200 3000
NoConn ~ 3600 2900
NoConn ~ 3600 3000
Wire Wire Line
	4100 1600 4100 1450
Wire Wire Line
	4100 1450 4300 1450
Connection ~ 4300 1450
Wire Wire Line
	4300 1450 4300 1600
Wire Wire Line
	2850 900  2850 1000
Wire Wire Line
	3300 1000 3300 900 
Connection ~ 3300 900 
Wire Wire Line
	3300 900  4300 900 
Wire Wire Line
	3300 1300 3300 1350
Wire Wire Line
	3300 1350 2850 1350
Wire Wire Line
	2850 1350 2850 1300
Wire Wire Line
	2850 1350 2850 1450
Connection ~ 2850 1350
Wire Wire Line
	2850 2500 2850 2600
NoConn ~ 4500 1600
Wire Wire Line
	5500 3000 5850 3000
Text Label 5850 3000 2    50   Italic 0
VDD
Text Label 4300 900  2    50   ~ 0
VDD
Text Label 3250 2400 0    50   ~ 0
D-
Text Label 3250 2500 0    50   ~ 0
D+
Text Label 5300 2700 2    50   ~ 0
RTS
Text Label 5300 2100 2    50   ~ 0
DTR
$Comp
L Interface_USB:CP2104 U?
U 1 1 607C55FB
P 4300 2500
AR Path="/606B1780/607C55FB" Ref="U?"  Part="1" 
AR Path="/607C55FB" Ref="U2"  Part="1" 
F 0 "U2" H 3750 3500 50  0000 C CNN
F 1 "CP2104" H 3850 3400 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 4450 1550 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 3750 3750 50  0001 C CNN
F 4 "C47742" H 4300 2500 50  0001 C CNN "LCSC"
	1    4300 2500
	1    0    0    -1  
$EndComp
Text Label 2850 2100 0    50   Italic 0
VBUS
NoConn ~ 3600 2700
NoConn ~ 3600 2800
NoConn ~ 3600 3200
$EndSCHEMATC
