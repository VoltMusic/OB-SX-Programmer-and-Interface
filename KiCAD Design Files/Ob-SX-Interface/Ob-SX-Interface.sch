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
L pspice:CAP C2
U 1 1 5F84C8A9
P 8050 2500
F 0 "C2" V 7735 2500 50  0000 C CNN
F 1 "CAP" V 7826 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8050 2500 50  0001 C CNN
F 3 "~" H 8050 2500 50  0001 C CNN
	1    8050 2500
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C3
U 1 1 5F84E4A0
P 8050 2850
F 0 "C3" V 7735 2850 50  0000 C CNN
F 1 "CAP" V 7826 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8050 2850 50  0001 C CNN
F 3 "~" H 8050 2850 50  0001 C CNN
	1    8050 2850
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5F8501B8
P 7300 2650
F 0 "Y1" V 7254 2781 50  0000 L CNN
F 1 "Crystal" V 7345 2781 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 7300 2650 50  0001 C CNN
F 3 "~" H 7300 2650 50  0001 C CNN
	1    7300 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2500 7300 2500
Wire Wire Line
	7300 2800 7300 2850
Wire Wire Line
	7300 2850 7800 2850
Wire Wire Line
	8300 2850 8400 2850
Wire Wire Line
	8400 2850 8400 2500
Wire Wire Line
	8400 2500 8300 2500
Wire Wire Line
	5250 1650 5850 1650
$Comp
L pspice:CAP C1
U 1 1 5F8539F0
P 4250 2800
F 0 "C1" H 4428 2846 50  0000 L CNN
F 1 "CAP" H 4428 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4250 2800 50  0001 C CNN
F 3 "~" H 4250 2800 50  0001 C CNN
	1    4250 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F8545E3
P 4250 3200
F 0 "#PWR0101" H 4250 2950 50  0001 C CNN
F 1 "GND" H 4255 3027 50  0000 C CNN
F 2 "" H 4250 3200 50  0001 C CNN
F 3 "" H 4250 3200 50  0001 C CNN
	1    4250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3200 4250 3050
$Comp
L power:+5V #PWR0102
U 1 1 5F854D9A
P 4250 2450
F 0 "#PWR0102" H 4250 2300 50  0001 C CNN
F 1 "+5V" H 4265 2623 50  0000 C CNN
F 2 "" H 4250 2450 50  0001 C CNN
F 3 "" H 4250 2450 50  0001 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F8554EB
P 5850 1550
F 0 "#PWR0103" H 5850 1400 50  0001 C CNN
F 1 "+5V" H 5865 1723 50  0000 C CNN
F 2 "" H 5850 1550 50  0001 C CNN
F 3 "" H 5850 1550 50  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2450 4250 2550
Wire Wire Line
	5850 1550 5850 1650
Wire Wire Line
	5250 1950 5250 1650
Connection ~ 5850 1650
$Comp
L MCU_Microchip_ATmega:ATmega328-AU U1
U 1 1 5F840B18
P 5850 3150
F 0 "U1" H 5850 1561 50  0000 C CNN
F 1 "ATmega328-AU" H 5850 1470 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5850 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5850 3150 50  0001 C CNN
	1    5850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F859BEB
P 8400 2850
F 0 "#PWR0104" H 8400 2600 50  0001 C CNN
F 1 "GND" H 8405 2677 50  0000 C CNN
F 2 "" H 8400 2850 50  0001 C CNN
F 3 "" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
Connection ~ 8400 2850
$Comp
L power:GND #PWR0105
U 1 1 5F85A443
P 5950 4650
F 0 "#PWR0105" H 5950 4400 50  0001 C CNN
F 1 "GND" H 5955 4477 50  0000 C CNN
F 2 "" H 5950 4650 50  0001 C CNN
F 3 "" H 5950 4650 50  0001 C CNN
	1    5950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4650 5950 4650
$Comp
L power:GND #PWR0106
U 1 1 5F86D97C
P 2050 1350
F 0 "#PWR0106" H 2050 1100 50  0001 C CNN
F 1 "GND" H 2055 1177 50  0000 C CNN
F 2 "" H 2050 1350 50  0001 C CNN
F 3 "" H 2050 1350 50  0001 C CNN
	1    2050 1350
	1    0    0    -1  
$EndComp
Text GLabel 6650 3250 2    50   Input ~ 0
SDA
Text GLabel 6650 3350 2    50   Input ~ 0
SCL
Wire Wire Line
	6650 3250 6450 3250
Wire Wire Line
	6650 3350 6450 3350
$Comp
L 74xx:74LS05 U2
U 1 1 5F87914C
P 1600 2500
F 0 "U2" H 1600 2817 50  0000 C CNN
F 1 "74LS05" H 1600 2726 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1600 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 2500 50  0001 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 2 1 5F87B861
P 1600 2800
F 0 "U2" H 1600 3117 50  0000 C CNN
F 1 "74LS05" H 1600 3026 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1600 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 2800 50  0001 C CNN
	2    1600 2800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 3 1 5F87C64B
P 1600 3100
F 0 "U2" H 1600 3417 50  0000 C CNN
F 1 "74LS05" H 1600 3326 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1600 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 3100 50  0001 C CNN
	3    1600 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 4 1 5F87D9E5
P 1600 3400
F 0 "U2" H 1600 3717 50  0000 C CNN
F 1 "74LS05" H 1600 3626 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1600 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 3400 50  0001 C CNN
	4    1600 3400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 5 1 5F87E473
P 1600 3700
F 0 "U2" H 1600 4017 50  0000 C CNN
F 1 "74LS05" H 1600 3926 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1600 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 3700 50  0001 C CNN
	5    1600 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 6 1 5F87F6BA
P 1600 4000
F 0 "U2" H 1600 4317 50  0000 C CNN
F 1 "74LS05" H 1600 4226 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1600 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 4000 50  0001 C CNN
	6    1600 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 7 1 5F882F67
P 1250 5150
F 0 "U2" H 1480 5196 50  0000 L CNN
F 1 "74LS05" H 1480 5105 50  0000 L CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 1250 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1250 5150 50  0001 C CNN
	7    1250 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F88483B
P 1250 5750
F 0 "#PWR0109" H 1250 5500 50  0001 C CNN
F 1 "GND" H 1255 5577 50  0000 C CNN
F 2 "" H 1250 5750 50  0001 C CNN
F 3 "" H 1250 5750 50  0001 C CNN
	1    1250 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5F885000
P 1250 4550
F 0 "#PWR0110" H 1250 4400 50  0001 C CNN
F 1 "+5V" H 1265 4723 50  0000 C CNN
F 2 "" H 1250 4550 50  0001 C CNN
F 3 "" H 1250 4550 50  0001 C CNN
	1    1250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4650 1250 4600
Wire Wire Line
	1250 5750 1250 5700
Text GLabel 6650 1950 2    50   Input ~ 0
DATA_0
Text GLabel 6650 2050 2    50   Input ~ 0
DATA_1
Text GLabel 6650 2150 2    50   Input ~ 0
DATA_2
Text GLabel 6650 2250 2    50   Input ~ 0
DATA_3
Wire Wire Line
	6650 1950 6450 1950
Wire Wire Line
	6450 2050 6650 2050
Wire Wire Line
	6650 2150 6450 2150
Wire Wire Line
	6450 2250 6650 2250
Text GLabel 6650 4350 2    50   Input ~ 0
DATA_4
Text GLabel 6650 4250 2    50   Input ~ 0
DATA_5
Text GLabel 6650 4150 2    50   Input ~ 0
DATA_6
Text GLabel 6650 4050 2    50   Input ~ 0
DATA_7
Wire Wire Line
	6650 4350 6450 4350
Wire Wire Line
	6450 4250 6650 4250
Wire Wire Line
	6650 4150 6450 4150
Wire Wire Line
	6450 4050 6650 4050
Text GLabel 1250 4000 0    50   Input ~ 0
BUSAKA
Wire Wire Line
	7150 2650 7150 2850
Wire Wire Line
	7150 2850 7300 2850
Connection ~ 7300 2850
Wire Wire Line
	7150 2550 7150 2500
Wire Wire Line
	7150 2500 7300 2500
Connection ~ 7300 2500
Wire Wire Line
	6450 2550 7150 2550
Wire Wire Line
	6450 2650 7150 2650
Text GLabel 6550 2850 2    50   Input ~ 0
WRITE_PIN
Wire Wire Line
	6550 2850 6450 2850
Text GLabel 6550 2950 2    50   Input ~ 0
BUSRQ
Wire Wire Line
	6550 2950 6450 2950
Text GLabel 6550 3050 2    50   Input ~ 0
READ_VECTOR
Text GLabel 6550 3150 2    50   Input ~ 0
READ_PIN
Wire Wire Line
	6550 3050 6450 3050
Wire Wire Line
	6550 3150 6450 3150
Text GLabel 6650 3950 2    50   Input ~ 0
ADDRESS_RESET
Wire Wire Line
	6650 3950 6450 3950
Text GLabel 6650 2350 2    50   Input ~ 0
ADDRESS_CLOCK
Wire Wire Line
	6650 2350 6450 2350
$Comp
L Isolator:4N25 U4
U 1 1 5F8A0F59
P 3100 6800
F 0 "U4" H 3100 7125 50  0000 C CNN
F 1 "4N25" H 3100 7034 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 2900 6600 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 3100 6800 50  0001 L CNN
	1    3100 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F8A1EC7
P 3400 7000
F 0 "#PWR0111" H 3400 6750 50  0001 C CNN
F 1 "GND" H 3405 6827 50  0000 C CNN
F 2 "" H 3400 7000 50  0001 C CNN
F 3 "" H 3400 7000 50  0001 C CNN
	1    3400 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5F8A2B9C
P 3400 6400
F 0 "#PWR0112" H 3400 6250 50  0001 C CNN
F 1 "+5V" H 3415 6573 50  0000 C CNN
F 2 "" H 3400 6400 50  0001 C CNN
F 3 "" H 3400 6400 50  0001 C CNN
	1    3400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6900 3400 7000
$Comp
L Device:R R11
U 1 1 5F8A62F1
P 3650 6650
F 0 "R11" H 3720 6696 50  0000 L CNN
F 1 "R" H 3720 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3580 6650 50  0001 C CNN
F 3 "~" H 3650 6650 50  0001 C CNN
	1    3650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6400 3400 6500
Wire Wire Line
	3400 6500 3650 6500
Connection ~ 3400 6500
Wire Wire Line
	3400 6500 3400 6700
Wire Wire Line
	3650 6800 3400 6800
Text GLabel 6650 3650 2    50   Input ~ 0
MIDI_IN
Wire Wire Line
	6650 3650 6450 3650
$Comp
L Device:R R13
U 1 1 5F8B0307
P 7300 3300
F 0 "R13" H 7370 3346 50  0000 L CNN
F 1 "R" H 7370 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7230 3300 50  0001 C CNN
F 3 "~" H 7300 3300 50  0001 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3450 7300 3450
$Comp
L power:+5V #PWR0113
U 1 1 5F8B2684
P 7300 3100
F 0 "#PWR0113" H 7300 2950 50  0001 C CNN
F 1 "+5V" H 7315 3273 50  0000 C CNN
F 2 "" H 7300 3100 50  0001 C CNN
F 3 "" H 7300 3100 50  0001 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3150 7300 3100
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 5F8B577C
P 7800 3550
F 0 "SW1" H 7800 3935 50  0000 C CNN
F 1 "SW_MEC_5E" H 7800 3844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 7800 3850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 7800 3850 50  0001 C CNN
	1    7800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3450 7600 3450
Connection ~ 7300 3450
$Comp
L power:GND #PWR0114
U 1 1 5F8B7F22
P 8200 3450
F 0 "#PWR0114" H 8200 3200 50  0001 C CNN
F 1 "GND" H 8205 3277 50  0000 C CNN
F 2 "" H 8200 3450 50  0001 C CNN
F 3 "" H 8200 3450 50  0001 C CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3450 8200 3450
$Comp
L Device:R R4
U 1 1 5F8BAFC1
P 2500 1650
F 0 "R4" H 2570 1696 50  0000 L CNN
F 1 "R" H 2570 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2430 1650 50  0001 C CNN
F 3 "~" H 2500 1650 50  0001 C CNN
	1    2500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F8BCA97
P 2750 1650
F 0 "R5" H 2820 1696 50  0000 L CNN
F 1 "R" H 2820 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2680 1650 50  0001 C CNN
F 3 "~" H 2750 1650 50  0001 C CNN
	1    2750 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F8BDB61
P 3000 1650
F 0 "R6" H 3070 1696 50  0000 L CNN
F 1 "R" H 3070 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2930 1650 50  0001 C CNN
F 3 "~" H 3000 1650 50  0001 C CNN
	1    3000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F8BDF0C
P 3250 1650
F 0 "R8" H 3320 1696 50  0000 L CNN
F 1 "R" H 3320 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3180 1650 50  0001 C CNN
F 3 "~" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1500 2750 1500
Wire Wire Line
	3000 1500 2850 1500
Connection ~ 2750 1500
Wire Wire Line
	3250 1500 3000 1500
Connection ~ 3000 1500
$Comp
L power:+5V #PWR0115
U 1 1 5F8CE21D
P 2850 1500
F 0 "#PWR0115" H 2850 1350 50  0001 C CNN
F 1 "+5V" H 2865 1673 50  0000 C CNN
F 2 "" H 2850 1500 50  0001 C CNN
F 3 "" H 2850 1500 50  0001 C CNN
	1    2850 1500
	1    0    0    -1  
$EndComp
Connection ~ 2850 1500
Wire Wire Line
	2850 1500 2750 1500
Text GLabel 1250 2500 0    50   Input ~ 0
WRITE_PIN
Text GLabel 1250 2800 0    50   Input ~ 0
BUSRQ
Text GLabel 1250 3100 0    50   Input ~ 0
READ_VECTOR
Text GLabel 1250 3400 0    50   Input ~ 0
READ_PIN
Wire Wire Line
	1300 2500 1250 2500
Wire Wire Line
	1300 2800 1250 2800
Wire Wire Line
	1300 3100 1250 3100
Wire Wire Line
	1300 3400 1250 3400
Text GLabel 2000 2500 2    50   Input ~ 0
WRITE_PIN\
Text GLabel 2000 2800 2    50   Input ~ 0
BUSRQ\
Text GLabel 2000 3100 2    50   Input ~ 0
READ_VECTOR\
Text GLabel 2000 3400 2    50   Input ~ 0
READ_PIN\
Wire Wire Line
	2000 2500 1900 2500
Wire Wire Line
	1900 2800 2000 2800
Wire Wire Line
	1900 3100 2000 3100
Wire Wire Line
	1900 3400 2000 3400
Text GLabel 2500 1900 3    50   Input ~ 0
WRITE_PIN\
Text GLabel 2750 1900 3    50   Input ~ 0
BUSRQ\
Text GLabel 3000 1900 3    50   Input ~ 0
READ_VECTOR\
Text GLabel 3250 1900 3    50   Input ~ 0
READ_PIN\
Wire Wire Line
	2500 1900 2500 1800
Wire Wire Line
	2750 1900 2750 1800
Wire Wire Line
	3000 1900 3000 1800
Wire Wire Line
	3250 1900 3250 1800
$Comp
L Diode:1N4148 D2
U 1 1 5F8F7577
P 2400 6800
F 0 "D2" V 2354 6880 50  0000 L CNN
F 1 "1N4148" V 2445 6880 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2400 6625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2400 6800 50  0001 C CNN
	1    2400 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 6650 2700 6650
Wire Wire Line
	2700 6650 2700 6700
Wire Wire Line
	2700 6700 2800 6700
Wire Wire Line
	2400 6950 2700 6950
Wire Wire Line
	2700 6950 2700 6900
Wire Wire Line
	2700 6900 2800 6900
$Comp
L Device:R R3
U 1 1 5F8FDF5B
P 2150 6650
F 0 "R3" V 1943 6650 50  0000 C CNN
F 1 "R" V 2034 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 6650 50  0001 C CNN
F 3 "~" H 2150 6650 50  0001 C CNN
	1    2150 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6650 2400 6650
Connection ~ 2400 6650
Connection ~ 2400 6950
$Comp
L pspice:CAP C5
U 1 1 5F9084C5
P 1950 5150
F 0 "C5" H 2128 5196 50  0000 L CNN
F 1 "CAP" H 2128 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1950 5150 50  0001 C CNN
F 3 "~" H 1950 5150 50  0001 C CNN
	1    1950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5400 1950 5700
Wire Wire Line
	1950 5700 1250 5700
Connection ~ 1250 5700
Wire Wire Line
	1250 5700 1250 5650
Wire Wire Line
	1950 4900 1950 4600
Wire Wire Line
	1950 4600 1250 4600
Connection ~ 1250 4600
Wire Wire Line
	1250 4600 1250 4550
Text GLabel 6650 3750 2    50   Input ~ 0
MIDI_OUT
Wire Wire Line
	6650 3750 6450 3750
Wire Wire Line
	5950 1650 5850 1650
$Comp
L power:GND #PWR0116
U 1 1 5F949674
P 9650 4700
F 0 "#PWR0116" H 9650 4450 50  0001 C CNN
F 1 "GND" V 9655 4572 50  0000 R CNN
F 2 "" H 9650 4700 50  0001 C CNN
F 3 "" H 9650 4700 50  0001 C CNN
	1    9650 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 4700 9700 4700
Wire Wire Line
	9700 4700 9700 4500
Wire Wire Line
	9700 4500 9750 4500
Connection ~ 9700 4700
Wire Wire Line
	9700 4700 9750 4700
Wire Wire Line
	9700 4500 9700 4300
Wire Wire Line
	9700 4300 9750 4300
Connection ~ 9700 4500
Wire Wire Line
	9700 4300 9700 4100
Wire Wire Line
	9700 4100 9750 4100
Connection ~ 9700 4300
Wire Wire Line
	9700 4100 9700 3900
Wire Wire Line
	9700 3900 9750 3900
Connection ~ 9700 4100
Text GLabel 9650 3700 0    50   Input ~ 0
OSC_MUX
Wire Wire Line
	9650 3700 9750 3700
Text GLabel 9650 3500 0    50   Input ~ 0
DATA_4
Text GLabel 9650 3300 0    50   Input ~ 0
DATA_5
Text GLabel 9650 3100 0    50   Input ~ 0
DATA_6
Text GLabel 9650 2900 0    50   Input ~ 0
DATA_7
Wire Wire Line
	9650 3500 9750 3500
Wire Wire Line
	9650 3300 9750 3300
Wire Wire Line
	9650 3100 9750 3100
Wire Wire Line
	9650 2900 9750 2900
Text GLabel 9650 3000 0    50   Input ~ 0
DATA_0
Text GLabel 9650 3200 0    50   Input ~ 0
DATA_1
Text GLabel 9650 3400 0    50   Input ~ 0
DATA_2
Text GLabel 9650 3600 0    50   Input ~ 0
DATA_3
Wire Wire Line
	9650 3000 9750 3000
Wire Wire Line
	9650 3200 9750 3200
Wire Wire Line
	9650 3400 9750 3400
Wire Wire Line
	9650 3600 9750 3600
Text GLabel 9650 2700 0    50   Input ~ 0
ADDRESS_0
Text GLabel 9650 2500 0    50   Input ~ 0
ADDRESS_2
Text GLabel 9650 2300 0    50   Input ~ 0
ADDRESS_4
Text GLabel 9650 2100 0    50   Input ~ 0
ADDRESS_6
Wire Wire Line
	9650 2700 9750 2700
Wire Wire Line
	9650 2500 9750 2500
Wire Wire Line
	9650 2300 9750 2300
Wire Wire Line
	9650 2100 9750 2100
Text GLabel 9650 2800 0    50   Input ~ 0
ADDRESS_1
Text GLabel 9650 2600 0    50   Input ~ 0
ADDRESS_3
Text GLabel 9650 2400 0    50   Input ~ 0
ADDRESS_5
Text GLabel 9650 2200 0    50   Input ~ 0
ADDRESS_7
Wire Wire Line
	9650 2800 9750 2800
Wire Wire Line
	9650 2600 9750 2600
Wire Wire Line
	9650 2400 9750 2400
Wire Wire Line
	9650 2200 9750 2200
Text GLabel 9650 4900 0    50   Input ~ 0
READ_PIN\
Wire Wire Line
	9650 4900 9750 4900
Text GLabel 9650 3800 0    50   Input ~ 0
READ_VECTOR\
Wire Wire Line
	9650 3800 9750 3800
Text GLabel 9650 4000 0    50   Input ~ 0
BUSRQ\
Text GLabel 9650 4200 0    50   Input ~ 0
BUSAKA
Text GLabel 9650 4400 0    50   Input ~ 0
HINT
Text GLabel 9650 4600 0    50   Input ~ 0
WRITE_PIN\
Wire Wire Line
	9750 4800 9700 4800
Wire Wire Line
	9700 4800 9700 4700
Wire Wire Line
	9650 4600 9750 4600
Wire Wire Line
	9650 4400 9750 4400
Wire Wire Line
	9650 4200 9750 4200
Wire Wire Line
	9650 4000 9750 4000
$Comp
L power:+5V #PWR0117
U 1 1 5F9D8458
P 8850 1700
F 0 "#PWR0117" H 8850 1550 50  0001 C CNN
F 1 "+5V" V 8865 1828 50  0000 L CNN
F 2 "" H 8850 1700 50  0001 C CNN
F 3 "" H 8850 1700 50  0001 C CNN
	1    8850 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 1300 9700 1300
Wire Wire Line
	9700 1500 9750 1500
Connection ~ 9700 1300
Wire Wire Line
	9700 1300 9750 1300
Wire Wire Line
	9700 1900 9750 1900
Connection ~ 9700 1500
$Comp
L 4xxx:4040 U5
U 1 1 5FA0CD62
P 7350 5450
F 0 "U5" H 7350 6431 50  0000 C CNN
F 1 "4040" H 7350 6340 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 7350 5450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4020bms-24bms-40bms.pdf" H 7350 5450 50  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5FA0DCA1
P 7450 6350
F 0 "#PWR0118" H 7450 6100 50  0001 C CNN
F 1 "GND" H 7455 6177 50  0000 C CNN
F 2 "" H 7450 6350 50  0001 C CNN
F 3 "" H 7450 6350 50  0001 C CNN
	1    7450 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 6350 7350 6350
$Comp
L power:+5V #PWR0119
U 1 1 5FA1552F
P 7550 4650
F 0 "#PWR0119" H 7550 4500 50  0001 C CNN
F 1 "+5V" H 7565 4823 50  0000 C CNN
F 2 "" H 7550 4650 50  0001 C CNN
F 3 "" H 7550 4650 50  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4650 7350 4650
Text GLabel 6750 5250 0    50   Input ~ 0
ADDRESS_RESET
Text GLabel 6750 4950 0    50   Input ~ 0
ADDRESS_CLOCK
Wire Wire Line
	6750 4950 6850 4950
Wire Wire Line
	6750 5250 6850 5250
Text GLabel 7950 4950 2    50   Input ~ 0
ADDRESS_0
Text GLabel 7950 5050 2    50   Input ~ 0
ADDRESS_1
Text GLabel 7950 5150 2    50   Input ~ 0
ADDRESS_2
Text GLabel 7950 5250 2    50   Input ~ 0
ADDRESS_3
Text GLabel 7950 5350 2    50   Input ~ 0
ADDRESS_4
Text GLabel 7950 5450 2    50   Input ~ 0
ADDRESS_5
Text GLabel 7950 5550 2    50   Input ~ 0
ADDRESS_6
Text GLabel 7950 5650 2    50   Input ~ 0
ADDRESS_7
Text GLabel 7950 5750 2    50   Input ~ 0
ADDRESS_8
Text GLabel 7950 5850 2    50   Input ~ 0
ADDRESS_9
Text GLabel 7950 5950 2    50   Input ~ 0
ADDRESS_10
Text GLabel 7950 6050 2    50   Input ~ 0
ADDRESS_11
Wire Wire Line
	7850 4950 7950 4950
Wire Wire Line
	7950 5050 7850 5050
Wire Wire Line
	7850 5150 7950 5150
Wire Wire Line
	7950 5250 7850 5250
Wire Wire Line
	7850 5350 7950 5350
Wire Wire Line
	7950 5450 7850 5450
Wire Wire Line
	7850 5550 7950 5550
Wire Wire Line
	7950 5650 7850 5650
Wire Wire Line
	7850 5750 7950 5750
Wire Wire Line
	7950 5850 7850 5850
Wire Wire Line
	7850 5950 7950 5950
Wire Wire Line
	7950 6050 7850 6050
$Comp
L Device:R R7
U 1 1 5FA8F5DC
P 3100 4450
F 0 "R7" H 3170 4496 50  0000 L CNN
F 1 "R" H 3170 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3030 4450 50  0001 C CNN
F 3 "~" H 3100 4450 50  0001 C CNN
	1    3100 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5FA8F5E2
P 3350 4450
F 0 "R9" H 3420 4496 50  0000 L CNN
F 1 "R" H 3420 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3280 4450 50  0001 C CNN
F 3 "~" H 3350 4450 50  0001 C CNN
	1    3350 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5FA8F5E8
P 3600 4450
F 0 "R10" H 3670 4496 50  0000 L CNN
F 1 "R" H 3670 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 4450 50  0001 C CNN
F 3 "~" H 3600 4450 50  0001 C CNN
	1    3600 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5FA8F5EE
P 3850 4450
F 0 "R12" H 3920 4496 50  0000 L CNN
F 1 "R" H 3920 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3780 4450 50  0001 C CNN
F 3 "~" H 3850 4450 50  0001 C CNN
	1    3850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4600 3350 4600
Wire Wire Line
	3600 4600 3450 4600
Connection ~ 3350 4600
Wire Wire Line
	3850 4600 3600 4600
Connection ~ 3600 4600
$Comp
L power:GND #PWR0120
U 1 1 5FAB1588
P 3450 4600
F 0 "#PWR0120" H 3450 4350 50  0001 C CNN
F 1 "GND" H 3455 4427 50  0000 C CNN
F 2 "" H 3450 4600 50  0001 C CNN
F 3 "" H 3450 4600 50  0001 C CNN
	1    3450 4600
	1    0    0    -1  
$EndComp
Connection ~ 3450 4600
Wire Wire Line
	3450 4600 3350 4600
Text GLabel 3100 4200 1    50   Input ~ 0
WRITE_PIN
Text GLabel 3350 4200 1    50   Input ~ 0
BUSRQ
Text GLabel 3600 4200 1    50   Input ~ 0
READ_VECTOR
Text GLabel 3850 4200 1    50   Input ~ 0
READ_PIN
Wire Wire Line
	3100 4200 3100 4300
Wire Wire Line
	3350 4200 3350 4300
Wire Wire Line
	3600 4200 3600 4300
Wire Wire Line
	3850 4200 3850 4300
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FB17A63
P 4600 6800
F 0 "JP1" H 4600 7005 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4600 6914 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4600 6800 50  0001 C CNN
F 3 "~" H 4600 6800 50  0001 C CNN
	1    4600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6800 3650 6800
Connection ~ 3650 6800
Text GLabel 5100 6800 2    50   Input ~ 0
MIDI_IN
Wire Wire Line
	5100 6800 4750 6800
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 5FB5E59B
P 4750 5500
F 0 "J4" H 4778 5476 50  0000 L CNN
F 1 "Conn_01x06_Female" H 4778 5385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4750 5500 50  0001 C CNN
F 3 "~" H 4750 5500 50  0001 C CNN
	1    4750 5500
	1    0    0    -1  
$EndComp
Text GLabel 4450 5400 0    50   Input ~ 0
MIDI_OUT
Text GLabel 4450 5500 0    50   Input ~ 0
MIDI_IN
$Comp
L power:+5V #PWR0122
U 1 1 5FB62C02
P 4450 5600
F 0 "#PWR0122" H 4450 5450 50  0001 C CNN
F 1 "+5V" V 4465 5728 50  0000 L CNN
F 2 "" H 4450 5600 50  0001 C CNN
F 3 "" H 4450 5600 50  0001 C CNN
	1    4450 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5FB638D0
P 4450 5700
F 0 "#PWR0123" H 4450 5450 50  0001 C CNN
F 1 "GND" V 4455 5572 50  0000 R CNN
F 2 "" H 4450 5700 50  0001 C CNN
F 3 "" H 4450 5700 50  0001 C CNN
	1    4450 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 5400 4550 5400
Wire Wire Line
	4450 5500 4550 5500
Wire Wire Line
	4450 5600 4550 5600
Wire Wire Line
	4450 5700 4550 5700
$Comp
L pspice:CAP C7
U 1 1 5FB912D6
P 4100 5050
F 0 "C7" V 3785 5050 50  0000 C CNN
F 1 "CAP" V 3876 5050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4100 5050 50  0001 C CNN
F 3 "~" H 4100 5050 50  0001 C CNN
	1    4100 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 5050 4450 5050
Wire Wire Line
	4450 5050 4450 5300
Wire Wire Line
	4450 5300 4550 5300
Text GLabel 7300 3450 3    50   Input ~ 0
RESET
Text GLabel 3750 5050 0    50   Input ~ 0
RESET
Wire Wire Line
	3750 5050 3850 5050
Text GLabel 9650 2000 0    50   Input ~ 0
ADDRESS_8
Text GLabel 9650 1800 0    50   Input ~ 0
ADDRESS_9
Text GLabel 9650 1600 0    50   Input ~ 0
ADDRESS_10
$Comp
L power:GND #PWR0124
U 1 1 5FBB00EC
P 9400 1300
F 0 "#PWR0124" H 9400 1050 50  0001 C CNN
F 1 "GND" V 9405 1172 50  0000 R CNN
F 2 "" H 9400 1300 50  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
	1    9400 1300
	0    1    1    0   
$EndComp
Text GLabel 9650 1400 0    50   Input ~ 0
ADDRESS_11
$Comp
L Connector:DB37_Male_MountingHoles J1
U 1 1 5F841E86
P 10050 3100
F 0 "J1" H 10230 3114 50  0000 L CNN
F 1 "DB37_Male_MountingHoles" H 10230 3023 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-37_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 10050 3100 50  0001 C CNN
F 3 " ~" H 10050 3100 50  0001 C CNN
	1    10050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1300 9700 1500
Wire Wire Line
	9700 1500 9700 1900
Wire Wire Line
	9650 1800 9750 1800
Wire Wire Line
	9650 1600 9750 1600
Wire Wire Line
	9650 1400 9750 1400
Wire Wire Line
	9650 2000 9750 2000
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5F846541
P 1050 6800
F 0 "J3" H 1050 6525 50  0000 C CNN
F 1 "DIN-5_180degree" H 1050 6434 50  0000 C CNN
F 2 "w_conn_av:din-5" H 1050 6800 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 1050 6800 50  0001 C CNN
	1    1050 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  6700 750  6400
Wire Wire Line
	750  6400 1700 6400
Wire Wire Line
	1700 6400 1700 6650
Wire Wire Line
	1700 6650 2000 6650
Wire Wire Line
	1350 6700 1600 6700
Wire Wire Line
	1600 6700 1600 6950
Wire Wire Line
	1600 6950 2400 6950
$Comp
L Diode:1N4148 D1
U 1 1 5F8AFC2E
P 1400 850
F 0 "D1" H 1400 633 50  0000 C CNN
F 1 "1N4148" H 1400 724 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1400 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1400 850 50  0001 C CNN
	1    1400 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 1100 1150 1100
Wire Wire Line
	1150 1100 1150 850 
Wire Wire Line
	1150 850  1250 850 
Wire Wire Line
	1050 1300 1150 1300
Wire Wire Line
	1150 1300 1150 1350
$Comp
L pspice:CAP C6
U 1 1 5F8DA750
P 2750 1100
F 0 "C6" H 2928 1146 50  0000 L CNN
F 1 "CAP" H 2928 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2750 1100 50  0001 C CNN
F 3 "~" H 2750 1100 50  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1350 2250 1350
Connection ~ 2050 1350
Wire Wire Line
	1150 1350 1650 1350
Connection ~ 1650 1350
Wire Wire Line
	1550 850  1650 850 
Connection ~ 1650 850 
$Comp
L pspice:CAP C4
U 1 1 5F862C15
P 1650 1100
F 0 "C4" H 1828 1146 50  0000 L CNN
F 1 "CAP" H 1828 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1650 1100 50  0001 C CNN
F 3 "~" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1350 2050 1350
Connection ~ 2250 1350
Wire Wire Line
	2250 1350 2050 1350
Wire Wire Line
	2550 850  2750 850 
Wire Wire Line
	1650 850  1950 850 
Wire Wire Line
	2250 1150 2250 1350
$Comp
L power:+5V #PWR0125
U 1 1 5F957DB1
P 2750 750
F 0 "#PWR0125" H 2750 600 50  0001 C CNN
F 1 "+5V" H 2765 923 50  0000 C CNN
F 2 "" H 2750 750 50  0001 C CNN
F 3 "" H 2750 750 50  0001 C CNN
	1    2750 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 850  2750 750 
Connection ~ 2750 850 
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5F97FCFF
P 6500 1000
F 0 "J5" H 6608 1281 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6608 1190 50  0000 C CNN
F 2 "Custom_Footprints:PJ320D_3.5mm_Jack" H 6500 1000 50  0001 C CNN
F 3 "~" H 6500 1000 50  0001 C CNN
	1    6500 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F97EE8B
P 7000 900
F 0 "#PWR0107" H 7000 650 50  0001 C CNN
F 1 "GND" V 7005 772 50  0000 R CNN
F 2 "" H 7000 900 50  0001 C CNN
F 3 "" H 7000 900 50  0001 C CNN
	1    7000 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5F97F55E
P 7000 1200
F 0 "#PWR0108" H 7000 1050 50  0001 C CNN
F 1 "+5V" V 7015 1328 50  0000 L CNN
F 2 "" H 7000 1200 50  0001 C CNN
F 3 "" H 7000 1200 50  0001 C CNN
	1    7000 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1200 7000 1200
$Comp
L Device:R R15
U 1 1 5F98E627
P 7100 1100
F 0 "R15" V 6893 1100 50  0000 C CNN
F 1 "R" V 6984 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7030 1100 50  0001 C CNN
F 3 "~" H 7100 1100 50  0001 C CNN
	1    7100 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F99C291
P 7100 1000
F 0 "R14" V 6893 1000 50  0000 C CNN
F 1 "R" V 6984 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7030 1000 50  0001 C CNN
F 3 "~" H 7100 1000 50  0001 C CNN
	1    7100 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1000 6950 1000
Wire Wire Line
	6700 900  6850 900 
Wire Wire Line
	6850 900  6850 1100
Wire Wire Line
	6850 1100 6950 1100
Wire Wire Line
	6700 1100 6800 1100
Wire Wire Line
	6800 1100 6800 950 
Wire Wire Line
	6800 950  6900 950 
Wire Wire Line
	6900 950  6900 900 
Wire Wire Line
	6900 900  7000 900 
Text GLabel 7350 1000 2    50   Input ~ 0
SDA
Text GLabel 7350 1100 2    50   Input ~ 0
SCL
Wire Wire Line
	7250 1000 7350 1000
Wire Wire Line
	7250 1100 7350 1100
$Comp
L Connector:DIN-5_180degree J6
U 1 1 5FA73AE9
P 6000 7300
F 0 "J6" H 6000 7025 50  0000 C CNN
F 1 "DIN-5_180degree" H 6000 6934 50  0000 C CNN
F 2 "w_conn_av:din-5" H 6000 7300 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 6000 7300 50  0001 C CNN
	1    6000 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5FA90296
P 5700 6950
F 0 "R16" H 5770 6996 50  0000 L CNN
F 1 "R" H 5770 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5630 6950 50  0001 C CNN
F 3 "~" H 5700 6950 50  0001 C CNN
	1    5700 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5FA9DFAE
P 6300 6950
F 0 "R17" H 6370 6996 50  0000 L CNN
F 1 "R" H 6370 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6230 6950 50  0001 C CNN
F 3 "~" H 6300 6950 50  0001 C CNN
	1    6300 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7100 6300 7200
Wire Wire Line
	5700 7100 5700 7200
$Comp
L power:+5V #PWR0126
U 1 1 5FAC9F86
P 5700 6700
F 0 "#PWR0126" H 5700 6550 50  0001 C CNN
F 1 "+5V" H 5715 6873 50  0000 C CNN
F 2 "" H 5700 6700 50  0001 C CNN
F 3 "" H 5700 6700 50  0001 C CNN
	1    5700 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5FACA902
P 6000 6700
F 0 "#PWR0127" H 6000 6450 50  0001 C CNN
F 1 "GND" H 6005 6527 50  0000 C CNN
F 2 "" H 6000 6700 50  0001 C CNN
F 3 "" H 6000 6700 50  0001 C CNN
	1    6000 6700
	-1   0    0    1   
$EndComp
Text GLabel 6300 6700 1    50   Input ~ 0
MIDI_OUT
Wire Wire Line
	5700 6700 5700 6800
Wire Wire Line
	6000 6700 6000 7000
Wire Wire Line
	6300 6700 6300 6800
Text GLabel 1250 3700 0    50   Input ~ 0
HINT
Text GLabel 2000 3700 2    50   Input ~ 0
HINT\
Wire Wire Line
	1250 3700 1300 3700
Wire Wire Line
	2000 3700 1900 3700
Text GLabel 6650 3850 2    50   Input ~ 0
HINT\
Wire Wire Line
	6450 3850 6650 3850
$Comp
L Device:R R1
U 1 1 5F9DDFBD
P 3500 1650
F 0 "R1" H 3570 1696 50  0000 L CNN
F 1 "R" H 3570 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3430 1650 50  0001 C CNN
F 3 "~" H 3500 1650 50  0001 C CNN
	1    3500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3500 1800
Wire Wire Line
	3250 1500 3500 1500
Connection ~ 3250 1500
Text GLabel 3500 1900 3    50   Input ~ 0
HINT\
Text GLabel 6650 2450 2    50   Input ~ 0
BUSAKA\
Wire Wire Line
	6650 2450 6450 2450
Text GLabel 2000 4000 2    50   Input ~ 0
BUSAKA\
Wire Wire Line
	1900 4000 2000 4000
Wire Wire Line
	1300 4000 1250 4000
$Comp
L Device:R R2
U 1 1 5FA0EB24
P 3750 1650
F 0 "R2" H 3820 1696 50  0000 L CNN
F 1 "R" H 3820 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3680 1650 50  0001 C CNN
F 3 "~" H 3750 1650 50  0001 C CNN
	1    3750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1500 3750 1500
Connection ~ 3500 1500
Text GLabel 3750 1900 3    50   Input ~ 0
BUSAKA\
Wire Wire Line
	3750 1900 3750 1800
$Comp
L pspice:CAP C9
U 1 1 5FA75DEC
P 4750 2800
F 0 "C9" H 4928 2846 50  0000 L CNN
F 1 "CAP" H 4928 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4750 2800 50  0001 C CNN
F 3 "~" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C8
U 1 1 5FA84A2E
P 3750 2800
F 0 "C8" H 3928 2846 50  0000 L CNN
F 1 "CAP" H 3928 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3750 2800 50  0001 C CNN
F 3 "~" H 3750 2800 50  0001 C CNN
	1    3750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2550 4250 2550
Connection ~ 4250 2550
Wire Wire Line
	3750 2550 4250 2550
Wire Wire Line
	3750 3050 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	4750 3050 4250 3050
$Comp
L Regulator_Linear:AMS1117-5.0 U6
U 1 1 5FA1294A
P 2250 850
F 0 "U6" H 2250 1092 50  0000 C CNN
F 1 "AMS1117-5.0" H 2250 1001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2250 1050 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2350 600 50  0001 C CNN
	1    2250 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5FA7C697
P 9050 1700
F 0 "R18" V 8843 1700 50  0000 C CNN
F 1 "R" V 8934 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8980 1700 50  0001 C CNN
F 3 "~" H 9050 1700 50  0001 C CNN
	1    9050 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1700 9750 1700
Wire Wire Line
	8900 1700 8850 1700
$Comp
L Connector:Barrel_Jack_Switch_Pin3Ring J9
U 1 1 5FAE102B
P 750 1200
F 0 "J9" H 807 1517 50  0000 C CNN
F 1 "Barrel_Jack_Switch_Pin3Ring" H 807 1426 50  0000 C CNN
F 2 "Random:CUI_PJ-002A" H 800 1160 50  0001 C CNN
F 3 "~" H 800 1160 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1200 1050 1300
Connection ~ 1050 1300
$EndSCHEMATC
