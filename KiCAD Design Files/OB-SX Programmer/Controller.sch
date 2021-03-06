EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A0 46811 33110
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
L Controller-rescue:ATmega328-AU-MCU_Microchip_ATmega U1
U 1 1 5F8F7941
P 8900 5050
F 0 "U1" H 8900 3461 50  0000 C CNN
F 1 "ATmega328-AU" H 8900 3370 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 8900 5050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 8900 5050 50  0001 C CNN
	1    8900 5050
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW1
U 1 1 5F908981
P 15500 4150
F 0 "SW1" H 15500 4535 50  0000 C CNN
F 1 "SW_Push_LED" H 15500 4444 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 15500 4450 50  0001 C CNN
F 3 "~" H 15500 4450 50  0001 C CNN
	1    15500 4150
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:R_POT-Device RV1
U 1 1 5F90BADD
P 38500 3000
F 0 "RV1" H 38431 3046 50  0000 R CNN
F 1 "R_POT" H 38431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 38500 3000 50  0001 C CNN
F 3 "~" H 38500 3000 50  0001 C CNN
	1    38500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:4051-4xxx U4
U 1 1 5F84C922
P 3800 12800
F 0 "U4" H 4344 12846 50  0000 L CNN
F 1 "4051" H 4344 12755 50  0000 L CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 3800 12800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 3800 12800 50  0001 C CNN
	1    3800 12800
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:4051-4xxx U3
U 1 1 5F84E210
P 3800 10550
F 0 "U3" H 4344 10596 50  0000 L CNN
F 1 "4051" H 4344 10505 50  0000 L CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 3800 10550 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 3800 10550 50  0001 C CNN
	1    3800 10550
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:4051-4xxx U2
U 1 1 5F8503DF
P 3800 8200
F 0 "U2" H 4344 8246 50  0000 L CNN
F 1 "4051" H 4344 8155 50  0000 L CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 3800 8200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 3800 8200 50  0001 C CNN
	1    3800 8200
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:AudioJack2-Connector J4
U 1 1 5F85A862
P 2900 3900
F 0 "J4" H 2932 4225 50  0000 C CNN
F 1 "AudioJack2" H 2932 4134 50  0000 C CNN
F 2 "Custom_Footprints:Audio_Jack_3_Pin" H 2900 3900 50  0001 C CNN
F 3 "~" H 2900 3900 50  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
$Comp
L eurocad:HT16K33 J8
U 1 1 5F860B68
P 11450 9200
F 0 "J8" H 11450 10597 60  0000 C CNN
F 1 "HT16K33" H 11450 10491 60  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 11450 10350 60  0001 C CNN
F 3 "" H 11450 10350 60  0000 C CNN
	1    11450 9200
	1    0    0    -1  
$EndComp
Text GLabel 10700 8250 0    50   Input ~ 0
SCL
Text GLabel 10700 8350 0    50   Input ~ 0
SDA
Wire Wire Line
	10700 8350 10800 8350
Wire Wire Line
	10700 8250 10800 8250
Text GLabel 12200 9750 2    50   Input ~ 0
COM0
Text GLabel 12200 9850 2    50   Input ~ 0
COM1
Text GLabel 12200 9950 2    50   Input ~ 0
COM2
Text GLabel 12200 10050 2    50   Input ~ 0
COM3
Text GLabel 12200 10150 2    50   Input ~ 0
COM4
Text GLabel 12200 10250 2    50   Input ~ 0
COM5
Text GLabel 12200 10350 2    50   Input ~ 0
COM6
Text GLabel 12200 10450 2    50   Input ~ 0
COM7
Wire Wire Line
	12100 9750 12200 9750
Wire Wire Line
	12100 9850 12200 9850
Wire Wire Line
	12100 9950 12200 9950
Wire Wire Line
	12100 10050 12200 10050
Wire Wire Line
	12100 10150 12200 10150
Wire Wire Line
	12100 10250 12200 10250
Wire Wire Line
	12100 10350 12200 10350
Wire Wire Line
	12100 10450 12200 10450
Text GLabel 12200 8050 2    50   Input ~ 0
ROW0
Text GLabel 12200 8150 2    50   Input ~ 0
ROW1
Text GLabel 12200 8250 2    50   Input ~ 0
ROW2
Text GLabel 12200 8350 2    50   Input ~ 0
ROW3
Text GLabel 12200 8450 2    50   Input ~ 0
ROW4
Text GLabel 12200 8550 2    50   Input ~ 0
ROW5
Wire Wire Line
	12100 8350 12150 8350
Wire Wire Line
	12100 8450 12150 8450
Wire Wire Line
	12100 8550 12150 8550
$Comp
L Controller-rescue:Crystal-Device Y1
U 1 1 5F86AF31
P 10300 4500
F 0 "Y1" V 10254 4631 50  0000 L CNN
F 1 "Crystal" V 10345 4631 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 10300 4500 50  0001 C CNN
F 3 "~" H 10300 4500 50  0001 C CNN
	1    10300 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 4450 10000 4450
Wire Wire Line
	10000 4450 10000 4350
Wire Wire Line
	10000 4350 10300 4350
Wire Wire Line
	9500 4550 10000 4550
Wire Wire Line
	10000 4550 10000 4650
Wire Wire Line
	10000 4650 10300 4650
$Comp
L Controller-rescue:CAP-pspice C1
U 1 1 5F86CB7E
P 10950 4350
F 0 "C1" V 10635 4350 50  0000 C CNN
F 1 "CAP" V 10726 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10950 4350 50  0001 C CNN
F 3 "~" H 10950 4350 50  0001 C CNN
	1    10950 4350
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C2
U 1 1 5F86D5AF
P 10950 4650
F 0 "C2" V 10635 4650 50  0000 C CNN
F 1 "CAP" V 10726 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10950 4650 50  0001 C CNN
F 3 "~" H 10950 4650 50  0001 C CNN
	1    10950 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 4350 10300 4350
Connection ~ 10300 4350
Wire Wire Line
	10700 4650 10300 4650
Connection ~ 10300 4650
Wire Wire Line
	11200 4350 11300 4350
Wire Wire Line
	11300 4350 11300 4650
Wire Wire Line
	11300 4650 11200 4650
$Comp
L Controller-rescue:GND-power #PWR0101
U 1 1 5F86F948
P 11300 4650
F 0 "#PWR0101" H 11300 4400 50  0001 C CNN
F 1 "GND" H 11305 4477 50  0000 C CNN
F 2 "" H 11300 4650 50  0001 C CNN
F 3 "" H 11300 4650 50  0001 C CNN
	1    11300 4650
	1    0    0    -1  
$EndComp
Connection ~ 11300 4650
$Comp
L Controller-rescue:GND-power #PWR0102
U 1 1 5F870872
P 10700 10450
F 0 "#PWR0102" H 10700 10200 50  0001 C CNN
F 1 "GND" H 10705 10277 50  0000 C CNN
F 2 "" H 10700 10450 50  0001 C CNN
F 3 "" H 10700 10450 50  0001 C CNN
	1    10700 10450
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0103
U 1 1 5F870F60
P 10700 8050
F 0 "#PWR0103" H 10700 7900 50  0001 C CNN
F 1 "+5V" H 10715 8223 50  0000 C CNN
F 2 "" H 10700 8050 50  0001 C CNN
F 3 "" H 10700 8050 50  0001 C CNN
	1    10700 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 8050 10800 8050
Wire Wire Line
	10700 10450 10800 10450
Wire Wire Line
	9000 3550 8900 3550
Wire Wire Line
	8900 3550 8500 3550
Wire Wire Line
	8300 3550 8300 3850
Connection ~ 8900 3550
$Comp
L Controller-rescue:+5V-power #PWR0104
U 1 1 5F873BDE
P 8500 3550
F 0 "#PWR0104" H 8500 3400 50  0001 C CNN
F 1 "+5V" H 8515 3723 50  0000 C CNN
F 2 "" H 8500 3550 50  0001 C CNN
F 3 "" H 8500 3550 50  0001 C CNN
	1    8500 3550
	1    0    0    -1  
$EndComp
Connection ~ 8500 3550
Wire Wire Line
	8500 3550 8300 3550
$Comp
L Controller-rescue:GND-power #PWR0105
U 1 1 5F874493
P 9300 6550
F 0 "#PWR0105" H 9300 6300 50  0001 C CNN
F 1 "GND" H 9305 6377 50  0000 C CNN
F 2 "" H 9300 6550 50  0001 C CNN
F 3 "" H 9300 6550 50  0001 C CNN
	1    9300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 6550 9300 6550
Text GLabel 3200 7600 0    50   Input ~ 0
POT_PORTAMENTO
Text GLabel 3200 7700 0    50   Input ~ 0
POT_OSC2_DETUNE
Text GLabel 3200 7800 0    50   Input ~ 0
POT_LFO_RATE
Text GLabel 3200 7900 0    50   Input ~ 0
POT_FREQ_DEPTH
Text GLabel 3200 8000 0    50   Input ~ 0
POT_PULSEWIDTH_DEPTH
Text GLabel 3200 8100 0    50   Input ~ 0
POT_OSC1_FREQ
Text GLabel 3200 8200 0    50   Input ~ 0
POT_PULSEWIDTH
Text GLabel 3200 8300 0    50   Input ~ 0
POT_OSC2_FREQ
Wire Wire Line
	3200 7600 3300 7600
Wire Wire Line
	3200 7700 3300 7700
Wire Wire Line
	3200 7800 3300 7800
Wire Wire Line
	3200 7900 3300 7900
Wire Wire Line
	3200 8000 3300 8000
Wire Wire Line
	3200 8100 3300 8100
Wire Wire Line
	3200 8200 3300 8200
Wire Wire Line
	3200 8300 3300 8300
$Comp
L Controller-rescue:GND-power #PWR0106
U 1 1 5F882159
P 3200 8500
F 0 "#PWR0106" H 3200 8250 50  0001 C CNN
F 1 "GND" V 3205 8372 50  0000 R CNN
F 2 "" H 3200 8500 50  0001 C CNN
F 3 "" H 3200 8500 50  0001 C CNN
	1    3200 8500
	0    1    1    0   
$EndComp
Text GLabel 3200 8600 0    50   Input ~ 0
ADDRESS_A
Text GLabel 3200 8700 0    50   Input ~ 0
ADDRESS_B
Text GLabel 3200 8800 0    50   Input ~ 0
ADDRESS_C
Wire Wire Line
	3200 8500 3300 8500
Wire Wire Line
	3200 8600 3300 8600
Wire Wire Line
	3200 8700 3300 8700
Wire Wire Line
	3200 8800 3300 8800
Wire Wire Line
	3900 9100 3800 9100
$Comp
L Controller-rescue:GND-power #PWR0107
U 1 1 5F888ED7
P 3800 9200
F 0 "#PWR0107" H 3800 8950 50  0001 C CNN
F 1 "GND" H 3805 9027 50  0000 C CNN
F 2 "" H 3800 9200 50  0001 C CNN
F 3 "" H 3800 9200 50  0001 C CNN
	1    3800 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 9200 3800 9100
Connection ~ 3800 9100
$Comp
L Controller-rescue:+5V-power #PWR0108
U 1 1 5F88AAEB
P 3800 7200
F 0 "#PWR0108" H 3800 7050 50  0001 C CNN
F 1 "+5V" H 3815 7373 50  0000 C CNN
F 2 "" H 3800 7200 50  0001 C CNN
F 3 "" H 3800 7200 50  0001 C CNN
	1    3800 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7200 3800 7300
Text GLabel 4400 7600 2    50   Input ~ 0
ANALOG_IN_1
Wire Wire Line
	4400 7600 4300 7600
Text GLabel 4400 9950 2    50   Input ~ 0
ANALOG_IN_2
Text GLabel 4400 12200 2    50   Input ~ 0
ANALOG_IN_3
Wire Wire Line
	4300 12200 4400 12200
Wire Wire Line
	4300 9950 4400 9950
Wire Wire Line
	3800 11450 3900 11450
Wire Wire Line
	3800 13700 3900 13700
$Comp
L Controller-rescue:+5V-power #PWR0109
U 1 1 5F8947D0
P 3900 11900
F 0 "#PWR0109" H 3900 11750 50  0001 C CNN
F 1 "+5V" H 3915 12073 50  0000 C CNN
F 2 "" H 3900 11900 50  0001 C CNN
F 3 "" H 3900 11900 50  0001 C CNN
	1    3900 11900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0110
U 1 1 5F894F66
P 3900 9650
F 0 "#PWR0110" H 3900 9500 50  0001 C CNN
F 1 "+5V" H 3915 9823 50  0000 C CNN
F 2 "" H 3900 9650 50  0001 C CNN
F 3 "" H 3900 9650 50  0001 C CNN
	1    3900 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 9650 3900 9650
Wire Wire Line
	3800 11900 3900 11900
$Comp
L Controller-rescue:GND-power #PWR0111
U 1 1 5F89B597
P 3800 11550
F 0 "#PWR0111" H 3800 11300 50  0001 C CNN
F 1 "GND" H 3805 11377 50  0000 C CNN
F 2 "" H 3800 11550 50  0001 C CNN
F 3 "" H 3800 11550 50  0001 C CNN
	1    3800 11550
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0112
U 1 1 5F89B90D
P 3800 13800
F 0 "#PWR0112" H 3800 13550 50  0001 C CNN
F 1 "GND" H 3805 13627 50  0000 C CNN
F 2 "" H 3800 13800 50  0001 C CNN
F 3 "" H 3800 13800 50  0001 C CNN
	1    3800 13800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 13800 3800 13700
Connection ~ 3800 13700
Wire Wire Line
	3800 11550 3800 11450
Connection ~ 3800 11450
$Comp
L Controller-rescue:GND-power #PWR0113
U 1 1 5F89F6C6
P 3200 10850
F 0 "#PWR0113" H 3200 10600 50  0001 C CNN
F 1 "GND" V 3205 10722 50  0000 R CNN
F 2 "" H 3200 10850 50  0001 C CNN
F 3 "" H 3200 10850 50  0001 C CNN
	1    3200 10850
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0114
U 1 1 5F89FA6A
P 3200 13100
F 0 "#PWR0114" H 3200 12850 50  0001 C CNN
F 1 "GND" V 3205 12972 50  0000 R CNN
F 2 "" H 3200 13100 50  0001 C CNN
F 3 "" H 3200 13100 50  0001 C CNN
	1    3200 13100
	0    1    1    0   
$EndComp
Text GLabel 3200 10950 0    50   Input ~ 0
ADDRESS_A
Text GLabel 3200 11050 0    50   Input ~ 0
ADDRESS_B
Text GLabel 3200 11150 0    50   Input ~ 0
ADDRESS_C
Wire Wire Line
	3200 10950 3300 10950
Wire Wire Line
	3200 11050 3300 11050
Wire Wire Line
	3200 11150 3300 11150
Text GLabel 3200 13200 0    50   Input ~ 0
ADDRESS_A
Text GLabel 3200 13300 0    50   Input ~ 0
ADDRESS_B
Text GLabel 3200 13400 0    50   Input ~ 0
ADDRESS_C
Wire Wire Line
	3200 13200 3300 13200
Wire Wire Line
	3200 13300 3300 13300
Wire Wire Line
	3200 13400 3300 13400
Wire Wire Line
	3200 13100 3300 13100
Wire Wire Line
	3200 10850 3300 10850
Text GLabel 3200 9950 0    50   Input ~ 0
POT_FILTER_FREQ
Text GLabel 3200 10050 0    50   Input ~ 0
POT_FILTER_RESONANCE
Text GLabel 3200 10150 0    50   Input ~ 0
POT_FILTER_MODULATION
Text GLabel 3200 10250 0    50   Input ~ 0
POT_FILTER_ATTACK
Text GLabel 3200 10350 0    50   Input ~ 0
POT_FILTER_DECAY
Text GLabel 3200 10450 0    50   Input ~ 0
POT_FILTER_SUSTAIN
Text GLabel 3200 10550 0    50   Input ~ 0
POT_FILTER_RELEASE
Text GLabel 3200 10650 0    50   Input ~ 0
POT_LOUDNESS_ATTACK
Wire Wire Line
	3200 9950 3300 9950
Wire Wire Line
	3200 10050 3300 10050
Wire Wire Line
	3200 10150 3300 10150
Wire Wire Line
	3200 10250 3300 10250
Wire Wire Line
	3200 10350 3300 10350
Wire Wire Line
	3200 10450 3300 10450
Wire Wire Line
	3200 10550 3300 10550
Wire Wire Line
	3200 10650 3300 10650
Text GLabel 3200 12200 0    50   Input ~ 0
POT_LOUDNESS_DECAY
Text GLabel 3200 12300 0    50   Input ~ 0
POT_LOUDNESS_SUSTAIN
Text GLabel 3200 12400 0    50   Input ~ 0
POT_LOUDNESS_RELEASE
Text GLabel 3200 12500 0    50   Input ~ 0
POT_SPREAD
Text GLabel 3200 12600 0    50   Input ~ 0
EXPRESSION_PEDAL_1
Text GLabel 3200 12700 0    50   Input ~ 0
EXPRESSION_PEDAL_2
Text GLabel 3200 12800 0    50   Input ~ 0
CV1
Text GLabel 3200 12900 0    50   Input ~ 0
CV2
Wire Wire Line
	3200 12200 3300 12200
Wire Wire Line
	3200 12300 3300 12300
Wire Wire Line
	3200 12400 3300 12400
Wire Wire Line
	3200 12500 3300 12500
Wire Wire Line
	3200 12600 3300 12600
Wire Wire Line
	3200 12700 3300 12700
Wire Wire Line
	3200 12800 3300 12800
Wire Wire Line
	3200 12900 3300 12900
Text GLabel 8200 4050 0    50   Input ~ 0
ANALOG_IN_2
Text GLabel 8200 4150 0    50   Input ~ 0
ANALOG_IN_3
Wire Wire Line
	8200 4050 8300 4050
Wire Wire Line
	8200 4150 8300 4150
$Comp
L Controller-rescue:SW_MEC_5E-Switch SW2
U 1 1 5F8E8CE2
P 10950 5450
F 0 "SW2" H 10950 5835 50  0000 C CNN
F 1 "SW_MEC_5E" H 10950 5744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 10950 5750 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 10950 5750 50  0001 C CNN
	1    10950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 5350 10500 5350
$Comp
L Controller-rescue:GND-power #PWR0115
U 1 1 5F8EDFB6
P 11400 5450
F 0 "#PWR0115" H 11400 5200 50  0001 C CNN
F 1 "GND" H 11405 5277 50  0000 C CNN
F 2 "" H 11400 5450 50  0001 C CNN
F 3 "" H 11400 5450 50  0001 C CNN
	1    11400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 5450 11400 5450
$Comp
L Controller-rescue:R-Device R1
U 1 1 5F8F2F56
P 10500 5150
F 0 "R1" H 10570 5196 50  0000 L CNN
F 1 "R" H 10570 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10430 5150 50  0001 C CNN
F 3 "~" H 10500 5150 50  0001 C CNN
	1    10500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5300 10500 5350
Connection ~ 10500 5350
Wire Wire Line
	10500 5350 9500 5350
$Comp
L Controller-rescue:+5V-power #PWR0116
U 1 1 5F8F78FD
P 10500 4950
F 0 "#PWR0116" H 10500 4800 50  0001 C CNN
F 1 "+5V" H 10515 5123 50  0000 C CNN
F 2 "" H 10500 4950 50  0001 C CNN
F 3 "" H 10500 4950 50  0001 C CNN
	1    10500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4950 10500 5000
Text GLabel 9600 5250 2    50   Input ~ 0
SCL
Text GLabel 9600 5150 2    50   Input ~ 0
SDA
Wire Wire Line
	9600 5150 9500 5150
Wire Wire Line
	9600 5250 9500 5250
Text GLabel 9600 5050 2    50   Input ~ 0
ANALOG_IN_1
Wire Wire Line
	9600 5050 9500 5050
$Comp
L Controller-rescue:GND-power #PWR0117
U 1 1 5F9164FC
P 38500 3250
F 0 "#PWR0117" H 38500 3000 50  0001 C CNN
F 1 "GND" H 38505 3077 50  0000 C CNN
F 2 "" H 38500 3250 50  0001 C CNN
F 3 "" H 38500 3250 50  0001 C CNN
	1    38500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0118
U 1 1 5F916A02
P 38500 2750
F 0 "#PWR0118" H 38500 2600 50  0001 C CNN
F 1 "+5V" H 38515 2923 50  0000 C CNN
F 2 "" H 38500 2750 50  0001 C CNN
F 3 "" H 38500 2750 50  0001 C CNN
	1    38500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	38500 2750 38500 2850
Wire Wire Line
	38500 3150 38500 3200
$Comp
L Controller-rescue:R_POT-Device RV20
U 1 1 5F9299C4
P 38500 4000
F 0 "RV20" H 38431 4046 50  0000 R CNN
F 1 "R_POT" H 38431 3955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 38500 4000 50  0001 C CNN
F 3 "~" H 38500 4000 50  0001 C CNN
	1    38500 4000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0119
U 1 1 5F9299CA
P 38500 4250
F 0 "#PWR0119" H 38500 4000 50  0001 C CNN
F 1 "GND" H 38505 4077 50  0000 C CNN
F 2 "" H 38500 4250 50  0001 C CNN
F 3 "" H 38500 4250 50  0001 C CNN
	1    38500 4250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0120
U 1 1 5F9299D0
P 38500 3750
F 0 "#PWR0120" H 38500 3600 50  0001 C CNN
F 1 "+5V" H 38515 3923 50  0000 C CNN
F 2 "" H 38500 3750 50  0001 C CNN
F 3 "" H 38500 3750 50  0001 C CNN
	1    38500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	38500 3750 38500 3850
Wire Wire Line
	38500 4150 38500 4200
$Comp
L Controller-rescue:R_POT-Device RV18
U 1 1 5F92E1EC
P 37000 3000
F 0 "RV18" H 36931 3046 50  0000 R CNN
F 1 "R_POT" H 36931 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 37000 3000 50  0001 C CNN
F 3 "~" H 37000 3000 50  0001 C CNN
	1    37000 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0121
U 1 1 5F92E1F2
P 37000 3250
F 0 "#PWR0121" H 37000 3000 50  0001 C CNN
F 1 "GND" H 37005 3077 50  0000 C CNN
F 2 "" H 37000 3250 50  0001 C CNN
F 3 "" H 37000 3250 50  0001 C CNN
	1    37000 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0122
U 1 1 5F92E1F8
P 37000 2750
F 0 "#PWR0122" H 37000 2600 50  0001 C CNN
F 1 "+5V" H 37015 2923 50  0000 C CNN
F 2 "" H 37000 2750 50  0001 C CNN
F 3 "" H 37000 2750 50  0001 C CNN
	1    37000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	37000 2750 37000 2850
Wire Wire Line
	37000 3150 37000 3200
$Comp
L Controller-rescue:R_POT-Device RV16
U 1 1 5F938464
P 35500 3000
F 0 "RV16" H 35431 3046 50  0000 R CNN
F 1 "R_POT" H 35431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 35500 3000 50  0001 C CNN
F 3 "~" H 35500 3000 50  0001 C CNN
	1    35500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0123
U 1 1 5F93846A
P 35500 3250
F 0 "#PWR0123" H 35500 3000 50  0001 C CNN
F 1 "GND" H 35505 3077 50  0000 C CNN
F 2 "" H 35500 3250 50  0001 C CNN
F 3 "" H 35500 3250 50  0001 C CNN
	1    35500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0124
U 1 1 5F938470
P 35500 2750
F 0 "#PWR0124" H 35500 2600 50  0001 C CNN
F 1 "+5V" H 35515 2923 50  0000 C CNN
F 2 "" H 35500 2750 50  0001 C CNN
F 3 "" H 35500 2750 50  0001 C CNN
	1    35500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	35500 2750 35500 2850
Wire Wire Line
	35500 3150 35500 3200
$Comp
L Controller-rescue:R_POT-Device RV14
U 1 1 5F93CC2A
P 34000 3000
F 0 "RV14" H 33931 3046 50  0000 R CNN
F 1 "R_POT" H 33931 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 34000 3000 50  0001 C CNN
F 3 "~" H 34000 3000 50  0001 C CNN
	1    34000 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0125
U 1 1 5F93CC30
P 34000 3250
F 0 "#PWR0125" H 34000 3000 50  0001 C CNN
F 1 "GND" H 34005 3077 50  0000 C CNN
F 2 "" H 34000 3250 50  0001 C CNN
F 3 "" H 34000 3250 50  0001 C CNN
	1    34000 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0126
U 1 1 5F93CC36
P 34000 2750
F 0 "#PWR0126" H 34000 2600 50  0001 C CNN
F 1 "+5V" H 34015 2923 50  0000 C CNN
F 2 "" H 34000 2750 50  0001 C CNN
F 3 "" H 34000 2750 50  0001 C CNN
	1    34000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	34000 2750 34000 2850
Wire Wire Line
	34000 3150 34000 3200
$Comp
L Controller-rescue:R_POT-Device RV19
U 1 1 5F941597
P 37000 4000
F 0 "RV19" H 36931 4046 50  0000 R CNN
F 1 "R_POT" H 36931 3955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 37000 4000 50  0001 C CNN
F 3 "~" H 37000 4000 50  0001 C CNN
	1    37000 4000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0127
U 1 1 5F94159D
P 37000 4250
F 0 "#PWR0127" H 37000 4000 50  0001 C CNN
F 1 "GND" H 37005 4077 50  0000 C CNN
F 2 "" H 37000 4250 50  0001 C CNN
F 3 "" H 37000 4250 50  0001 C CNN
	1    37000 4250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0128
U 1 1 5F9415A3
P 37000 3750
F 0 "#PWR0128" H 37000 3600 50  0001 C CNN
F 1 "+5V" H 37015 3923 50  0000 C CNN
F 2 "" H 37000 3750 50  0001 C CNN
F 3 "" H 37000 3750 50  0001 C CNN
	1    37000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	37000 3750 37000 3850
Wire Wire Line
	37000 4150 37000 4200
$Comp
L Controller-rescue:R_POT-Device RV17
U 1 1 5F945C42
P 35500 4000
F 0 "RV17" H 35431 4046 50  0000 R CNN
F 1 "R_POT" H 35431 3955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 35500 4000 50  0001 C CNN
F 3 "~" H 35500 4000 50  0001 C CNN
	1    35500 4000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0129
U 1 1 5F945C48
P 35500 4250
F 0 "#PWR0129" H 35500 4000 50  0001 C CNN
F 1 "GND" H 35505 4077 50  0000 C CNN
F 2 "" H 35500 4250 50  0001 C CNN
F 3 "" H 35500 4250 50  0001 C CNN
	1    35500 4250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0130
U 1 1 5F945C4E
P 35500 3750
F 0 "#PWR0130" H 35500 3600 50  0001 C CNN
F 1 "+5V" H 35515 3923 50  0000 C CNN
F 2 "" H 35500 3750 50  0001 C CNN
F 3 "" H 35500 3750 50  0001 C CNN
	1    35500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	35500 3750 35500 3850
Wire Wire Line
	35500 4150 35500 4200
$Comp
L Controller-rescue:R_POT-Device RV15
U 1 1 5F94A332
P 34000 4000
F 0 "RV15" H 33931 4046 50  0000 R CNN
F 1 "R_POT" H 33931 3955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 34000 4000 50  0001 C CNN
F 3 "~" H 34000 4000 50  0001 C CNN
	1    34000 4000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0131
U 1 1 5F94A338
P 34000 4250
F 0 "#PWR0131" H 34000 4000 50  0001 C CNN
F 1 "GND" H 34005 4077 50  0000 C CNN
F 2 "" H 34000 4250 50  0001 C CNN
F 3 "" H 34000 4250 50  0001 C CNN
	1    34000 4250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0132
U 1 1 5F94A33E
P 34000 3750
F 0 "#PWR0132" H 34000 3600 50  0001 C CNN
F 1 "+5V" H 34015 3923 50  0000 C CNN
F 2 "" H 34000 3750 50  0001 C CNN
F 3 "" H 34000 3750 50  0001 C CNN
	1    34000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	34000 3750 34000 3850
Wire Wire Line
	34000 4150 34000 4200
Text GLabel 38750 3000 2    50   Input ~ 0
POT_FILTER_RELEASE
Text GLabel 37250 3000 2    50   Input ~ 0
POT_FILTER_SUSTAIN
Text GLabel 35750 3000 2    50   Input ~ 0
POT_FILTER_DECAY
Text GLabel 34250 3000 2    50   Input ~ 0
POT_FILTER_ATTACK
Text GLabel 34250 4000 2    50   Input ~ 0
POT_LOUDNESS_ATTACK
Text GLabel 35750 4000 2    50   Input ~ 0
POT_LOUDNESS_DECAY
Text GLabel 37250 4000 2    50   Input ~ 0
POT_LOUDNESS_SUSTAIN
Text GLabel 38750 4000 2    50   Input ~ 0
POT_LOUDNESS_RELEASE
Wire Wire Line
	38750 3000 38700 3000
Wire Wire Line
	37250 3000 37200 3000
Wire Wire Line
	35750 3000 35700 3000
Wire Wire Line
	34250 3000 34200 3000
Wire Wire Line
	34250 4000 34200 4000
Wire Wire Line
	35750 4000 35700 4000
Wire Wire Line
	37250 4000 37200 4000
Wire Wire Line
	38750 4000 38700 4000
Wire Notes Line
	33500 2000 33500 5000
Wire Notes Line
	33500 5000 40000 5000
Wire Notes Line
	40000 5000 40000 2000
Wire Notes Line
	40000 2000 33500 2000
$Comp
L Controller-rescue:R_POT-Device RV13
U 1 1 5F9A48C2
P 31500 3000
F 0 "RV13" H 31431 3046 50  0000 R CNN
F 1 "R_POT" H 31431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 31500 3000 50  0001 C CNN
F 3 "~" H 31500 3000 50  0001 C CNN
	1    31500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0133
U 1 1 5F9A48C8
P 31500 3250
F 0 "#PWR0133" H 31500 3000 50  0001 C CNN
F 1 "GND" H 31505 3077 50  0000 C CNN
F 2 "" H 31500 3250 50  0001 C CNN
F 3 "" H 31500 3250 50  0001 C CNN
	1    31500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0134
U 1 1 5F9A48CE
P 31500 2750
F 0 "#PWR0134" H 31500 2600 50  0001 C CNN
F 1 "+5V" H 31515 2923 50  0000 C CNN
F 2 "" H 31500 2750 50  0001 C CNN
F 3 "" H 31500 2750 50  0001 C CNN
	1    31500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	31500 2750 31500 2850
Wire Wire Line
	31500 3150 31500 3200
$Comp
L Controller-rescue:R_POT-Device RV12
U 1 1 5F9B54AE
P 30000 3000
F 0 "RV12" H 29931 3046 50  0000 R CNN
F 1 "R_POT" H 29931 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 30000 3000 50  0001 C CNN
F 3 "~" H 30000 3000 50  0001 C CNN
	1    30000 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0135
U 1 1 5F9B54B4
P 30000 3250
F 0 "#PWR0135" H 30000 3000 50  0001 C CNN
F 1 "GND" H 30005 3077 50  0000 C CNN
F 2 "" H 30000 3250 50  0001 C CNN
F 3 "" H 30000 3250 50  0001 C CNN
	1    30000 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0136
U 1 1 5F9B54BA
P 30000 2750
F 0 "#PWR0136" H 30000 2600 50  0001 C CNN
F 1 "+5V" H 30015 2923 50  0000 C CNN
F 2 "" H 30000 2750 50  0001 C CNN
F 3 "" H 30000 2750 50  0001 C CNN
	1    30000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	30000 2750 30000 2850
Wire Wire Line
	30000 3150 30000 3200
$Comp
L Controller-rescue:R_POT-Device RV11
U 1 1 5F9BA7C1
P 28500 3000
F 0 "RV11" H 28431 3046 50  0000 R CNN
F 1 "R_POT" H 28431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 28500 3000 50  0001 C CNN
F 3 "~" H 28500 3000 50  0001 C CNN
	1    28500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0137
U 1 1 5F9BA7C7
P 28500 3250
F 0 "#PWR0137" H 28500 3000 50  0001 C CNN
F 1 "GND" H 28505 3077 50  0000 C CNN
F 2 "" H 28500 3250 50  0001 C CNN
F 3 "" H 28500 3250 50  0001 C CNN
	1    28500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0138
U 1 1 5F9BA7CD
P 28500 2750
F 0 "#PWR0138" H 28500 2600 50  0001 C CNN
F 1 "+5V" H 28515 2923 50  0000 C CNN
F 2 "" H 28500 2750 50  0001 C CNN
F 3 "" H 28500 2750 50  0001 C CNN
	1    28500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	28500 2750 28500 2850
Wire Wire Line
	28500 3150 28500 3200
Text GLabel 31750 3000 2    50   Input ~ 0
POT_FILTER_MODULATION
Text GLabel 30250 3000 2    50   Input ~ 0
POT_FILTER_RESONANCE
Text GLabel 28750 3000 2    50   Input ~ 0
POT_FILTER_FREQ
Wire Notes Line
	33000 2000 33000 5000
Wire Notes Line
	33000 5000 28000 5000
Wire Notes Line
	28000 5000 28000 2000
Wire Notes Line
	28000 2000 33000 2000
$Comp
L Controller-rescue:R_POT-Device RV10
U 1 1 5F9F9BC5
P 26000 3000
F 0 "RV10" H 25931 3046 50  0000 R CNN
F 1 "R_POT" H 25931 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 26000 3000 50  0001 C CNN
F 3 "~" H 26000 3000 50  0001 C CNN
	1    26000 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0139
U 1 1 5F9F9BCB
P 26000 3250
F 0 "#PWR0139" H 26000 3000 50  0001 C CNN
F 1 "GND" H 26005 3077 50  0000 C CNN
F 2 "" H 26000 3250 50  0001 C CNN
F 3 "" H 26000 3250 50  0001 C CNN
	1    26000 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0140
U 1 1 5F9F9BD1
P 26000 2750
F 0 "#PWR0140" H 26000 2600 50  0001 C CNN
F 1 "+5V" H 26015 2923 50  0000 C CNN
F 2 "" H 26000 2750 50  0001 C CNN
F 3 "" H 26000 2750 50  0001 C CNN
	1    26000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	26000 2750 26000 2850
Wire Wire Line
	26000 3150 26000 3200
$Comp
L Controller-rescue:R_POT-Device RV9
U 1 1 5F9F9BD9
P 24500 3000
F 0 "RV9" H 24431 3046 50  0000 R CNN
F 1 "R_POT" H 24431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 24500 3000 50  0001 C CNN
F 3 "~" H 24500 3000 50  0001 C CNN
	1    24500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0141
U 1 1 5F9F9BDF
P 24500 3250
F 0 "#PWR0141" H 24500 3000 50  0001 C CNN
F 1 "GND" H 24505 3077 50  0000 C CNN
F 2 "" H 24500 3250 50  0001 C CNN
F 3 "" H 24500 3250 50  0001 C CNN
	1    24500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0142
U 1 1 5F9F9BE5
P 24500 2750
F 0 "#PWR0142" H 24500 2600 50  0001 C CNN
F 1 "+5V" H 24515 2923 50  0000 C CNN
F 2 "" H 24500 2750 50  0001 C CNN
F 3 "" H 24500 2750 50  0001 C CNN
	1    24500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	24500 2750 24500 2850
Wire Wire Line
	24500 3150 24500 3200
$Comp
L Controller-rescue:R_POT-Device RV8
U 1 1 5F9F9BED
P 23000 3000
F 0 "RV8" H 22931 3046 50  0000 R CNN
F 1 "R_POT" H 22931 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 23000 3000 50  0001 C CNN
F 3 "~" H 23000 3000 50  0001 C CNN
	1    23000 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0143
U 1 1 5F9F9BF3
P 23000 3250
F 0 "#PWR0143" H 23000 3000 50  0001 C CNN
F 1 "GND" H 23005 3077 50  0000 C CNN
F 2 "" H 23000 3250 50  0001 C CNN
F 3 "" H 23000 3250 50  0001 C CNN
	1    23000 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0144
U 1 1 5F9F9BF9
P 23000 2750
F 0 "#PWR0144" H 23000 2600 50  0001 C CNN
F 1 "+5V" H 23015 2923 50  0000 C CNN
F 2 "" H 23000 2750 50  0001 C CNN
F 3 "" H 23000 2750 50  0001 C CNN
	1    23000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	23000 2750 23000 2850
Wire Wire Line
	23000 3150 23000 3200
Text GLabel 26250 3000 2    50   Input ~ 0
POT_OSC2_FREQ
Text GLabel 24750 3000 2    50   Input ~ 0
POT_PULSEWIDTH
Text GLabel 23250 3000 2    50   Input ~ 0
POT_OSC1_FREQ
Wire Notes Line
	27500 2000 27500 5000
Wire Notes Line
	27500 5000 22500 5000
Wire Notes Line
	22500 5000 22500 2000
Wire Notes Line
	22500 2000 27500 2000
$Comp
L Controller-rescue:R_POT-Device RV7
U 1 1 5FA0E901
P 20500 3000
F 0 "RV7" H 20431 3046 50  0000 R CNN
F 1 "R_POT" H 20431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 20500 3000 50  0001 C CNN
F 3 "~" H 20500 3000 50  0001 C CNN
	1    20500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0145
U 1 1 5FA0E907
P 20500 3250
F 0 "#PWR0145" H 20500 3000 50  0001 C CNN
F 1 "GND" H 20505 3077 50  0000 C CNN
F 2 "" H 20500 3250 50  0001 C CNN
F 3 "" H 20500 3250 50  0001 C CNN
	1    20500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0146
U 1 1 5FA0E90D
P 20500 2750
F 0 "#PWR0146" H 20500 2600 50  0001 C CNN
F 1 "+5V" H 20515 2923 50  0000 C CNN
F 2 "" H 20500 2750 50  0001 C CNN
F 3 "" H 20500 2750 50  0001 C CNN
	1    20500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	20500 2750 20500 2850
Wire Wire Line
	20500 3150 20500 3200
$Comp
L Controller-rescue:R_POT-Device RV6
U 1 1 5FA0E915
P 19000 3000
F 0 "RV6" H 18931 3046 50  0000 R CNN
F 1 "R_POT" H 18931 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 19000 3000 50  0001 C CNN
F 3 "~" H 19000 3000 50  0001 C CNN
	1    19000 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0147
U 1 1 5FA0E91B
P 19000 3250
F 0 "#PWR0147" H 19000 3000 50  0001 C CNN
F 1 "GND" H 19005 3077 50  0000 C CNN
F 2 "" H 19000 3250 50  0001 C CNN
F 3 "" H 19000 3250 50  0001 C CNN
	1    19000 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0148
U 1 1 5FA0E921
P 19000 2750
F 0 "#PWR0148" H 19000 2600 50  0001 C CNN
F 1 "+5V" H 19015 2923 50  0000 C CNN
F 2 "" H 19000 2750 50  0001 C CNN
F 3 "" H 19000 2750 50  0001 C CNN
	1    19000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	19000 2750 19000 2850
Wire Wire Line
	19000 3150 19000 3200
$Comp
L Controller-rescue:R_POT-Device RV5
U 1 1 5FA0E929
P 17500 3000
F 0 "RV5" H 17431 3046 50  0000 R CNN
F 1 "R_POT" H 17431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 17500 3000 50  0001 C CNN
F 3 "~" H 17500 3000 50  0001 C CNN
	1    17500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0149
U 1 1 5FA0E92F
P 17500 3250
F 0 "#PWR0149" H 17500 3000 50  0001 C CNN
F 1 "GND" H 17505 3077 50  0000 C CNN
F 2 "" H 17500 3250 50  0001 C CNN
F 3 "" H 17500 3250 50  0001 C CNN
	1    17500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0150
U 1 1 5FA0E935
P 17500 2750
F 0 "#PWR0150" H 17500 2600 50  0001 C CNN
F 1 "+5V" H 17515 2923 50  0000 C CNN
F 2 "" H 17500 2750 50  0001 C CNN
F 3 "" H 17500 2750 50  0001 C CNN
	1    17500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17500 2750 17500 2850
Wire Wire Line
	17500 3150 17500 3200
Text GLabel 20750 3000 2    50   Input ~ 0
POT_PULSEWIDTH_DEPTH
Text GLabel 19250 3000 2    50   Input ~ 0
POT_FREQ_DEPTH
Text GLabel 17750 3000 2    50   Input ~ 0
POT_LFO_RATE
Wire Notes Line
	22000 7000 17000 7000
Wire Notes Line
	17000 2000 22000 2000
$Comp
L Controller-rescue:SW_Push_LED-Switch SW4
U 1 1 5FA2B376
P 17850 4050
F 0 "SW4" H 17850 4435 50  0000 C CNN
F 1 "SW_Push_LED" H 17850 4344 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 17850 4350 50  0001 C CNN
F 3 "~" H 17850 4350 50  0001 C CNN
	1    17850 4050
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW5
U 1 1 5FA2BAE4
P 19350 4600
F 0 "SW5" H 19350 4985 50  0000 C CNN
F 1 "SW_Push_LED" H 19350 4894 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 19350 4900 50  0001 C CNN
F 3 "~" H 19350 4900 50  0001 C CNN
	1    19350 4600
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW8
U 1 1 5FA2C158
P 20850 4050
F 0 "SW8" H 20850 4435 50  0000 C CNN
F 1 "SW_Push_LED" H 20850 4344 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 20850 4350 50  0001 C CNN
F 3 "~" H 20850 4350 50  0001 C CNN
	1    20850 4050
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW6
U 1 1 5FA2CB02
P 19350 5600
F 0 "SW6" H 19350 5985 50  0000 C CNN
F 1 "SW_Push_LED" H 19350 5894 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 19350 5900 50  0001 C CNN
F 3 "~" H 19350 5900 50  0001 C CNN
	1    19350 5600
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW9
U 1 1 5FA2CF2D
P 20850 5050
F 0 "SW9" H 20850 5435 50  0000 C CNN
F 1 "SW_Push_LED" H 20850 5344 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 20850 5350 50  0001 C CNN
F 3 "~" H 20850 5350 50  0001 C CNN
	1    20850 5050
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW7
U 1 1 5FA41823
P 19350 6600
F 0 "SW7" H 19350 6985 50  0000 C CNN
F 1 "SW_Push_LED" H 19350 6894 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 19350 6900 50  0001 C CNN
F 3 "~" H 19350 6900 50  0001 C CNN
	1    19350 6600
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW11
U 1 1 5FA41D1A
P 23550 3950
F 0 "SW11" H 23550 4335 50  0000 C CNN
F 1 "SW_Push_LED" H 23550 4244 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 23550 4250 50  0001 C CNN
F 3 "~" H 23550 4250 50  0001 C CNN
	1    23550 3950
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW12
U 1 1 5FA427C1
P 24350 4600
F 0 "SW12" H 24350 4985 50  0000 C CNN
F 1 "SW_Push_LED" H 24350 4894 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 24350 4900 50  0001 C CNN
F 3 "~" H 24350 4900 50  0001 C CNN
	1    24350 4600
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW15
U 1 1 5FA4338A
P 25900 3950
F 0 "SW15" H 25900 4335 50  0000 C CNN
F 1 "SW_Push_LED" H 25900 4244 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 25900 4250 50  0001 C CNN
F 3 "~" H 25900 4250 50  0001 C CNN
	1    25900 3950
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW18
U 1 1 5FA4389B
P 28950 4250
F 0 "SW18" H 28950 4635 50  0000 C CNN
F 1 "SW_Push_LED" H 28950 4544 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 28950 4550 50  0001 C CNN
F 3 "~" H 28950 4550 50  0001 C CNN
	1    28950 4250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW22
U 1 1 5FA4EA0E
P 31450 4250
F 0 "SW22" H 31450 4635 50  0000 C CNN
F 1 "SW_Push_LED" H 31450 4544 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 31450 4550 50  0001 C CNN
F 3 "~" H 31450 4550 50  0001 C CNN
	1    31450 4250
	1    0    0    -1  
$EndComp
Wire Notes Line
	16500 2000 14500 2000
Wire Notes Line
	14500 7000 16500 7000
$Comp
L Controller-rescue:R_POT-Device RV2
U 1 1 5FA5B245
P 15500 3000
F 0 "RV2" H 15431 3046 50  0000 R CNN
F 1 "R_POT" H 15431 2955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 15500 3000 50  0001 C CNN
F 3 "~" H 15500 3000 50  0001 C CNN
	1    15500 3000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0151
U 1 1 5FA5B24B
P 15500 3250
F 0 "#PWR0151" H 15500 3000 50  0001 C CNN
F 1 "GND" H 15505 3077 50  0000 C CNN
F 2 "" H 15500 3250 50  0001 C CNN
F 3 "" H 15500 3250 50  0001 C CNN
	1    15500 3250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0152
U 1 1 5FA5B251
P 15500 2750
F 0 "#PWR0152" H 15500 2600 50  0001 C CNN
F 1 "+5V" H 15515 2923 50  0000 C CNN
F 2 "" H 15500 2750 50  0001 C CNN
F 3 "" H 15500 2750 50  0001 C CNN
	1    15500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 2750 15500 2850
Wire Wire Line
	15500 3150 15500 3200
Text GLabel 15750 3000 2    50   Input ~ 0
POT_PORTAMENTO
Wire Notes Line
	14500 2000 14500 7000
Wire Notes Line
	16500 2000 16500 7000
$Comp
L Controller-rescue:R_POT-Device RV4
U 1 1 5FA83F61
P 15500 6000
F 0 "RV4" H 15431 6046 50  0000 R CNN
F 1 "R_POT" H 15431 5955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 15500 6000 50  0001 C CNN
F 3 "~" H 15500 6000 50  0001 C CNN
	1    15500 6000
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0153
U 1 1 5FA83F67
P 15500 6250
F 0 "#PWR0153" H 15500 6000 50  0001 C CNN
F 1 "GND" H 15505 6077 50  0000 C CNN
F 2 "" H 15500 6250 50  0001 C CNN
F 3 "" H 15500 6250 50  0001 C CNN
	1    15500 6250
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0154
U 1 1 5FA83F6D
P 15500 5750
F 0 "#PWR0154" H 15500 5600 50  0001 C CNN
F 1 "+5V" H 15515 5923 50  0000 C CNN
F 2 "" H 15500 5750 50  0001 C CNN
F 3 "" H 15500 5750 50  0001 C CNN
	1    15500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 5750 15500 5850
Wire Wire Line
	15500 6150 15500 6200
Text GLabel 15750 6000 2    50   Input ~ 0
POT_OSC2_DETUNE
Wire Notes Line
	22000 2000 22000 7000
Wire Notes Line
	17000 2000 17000 7000
Wire Notes Line
	22500 5500 40000 5500
Wire Notes Line
	40000 7000 22500 7000
Wire Notes Line
	22500 7000 22500 5500
Wire Notes Line
	40000 5500 40000 7000
$Comp
L Controller-rescue:SW_Push_LED-Switch SW10
U 1 1 5FAC6F0F
P 23500 6000
F 0 "SW10" H 23500 6385 50  0000 C CNN
F 1 "SW_Push_LED" H 23500 6294 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 23500 6300 50  0001 C CNN
F 3 "~" H 23500 6300 50  0001 C CNN
	1    23500 6000
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW13
U 1 1 5FAC8C87
P 24500 6500
F 0 "SW13" H 24500 6885 50  0000 C CNN
F 1 "SW_Push_LED" H 24500 6794 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 24500 6800 50  0001 C CNN
F 3 "~" H 24500 6800 50  0001 C CNN
	1    24500 6500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW14
U 1 1 5FAC9891
P 25500 6000
F 0 "SW14" H 25500 6385 50  0000 C CNN
F 1 "SW_Push_LED" H 25500 6294 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 25500 6300 50  0001 C CNN
F 3 "~" H 25500 6300 50  0001 C CNN
	1    25500 6000
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW17
U 1 1 5FAC9CD5
P 26500 6500
F 0 "SW17" H 26500 6885 50  0000 C CNN
F 1 "SW_Push_LED" H 26500 6794 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 26500 6800 50  0001 C CNN
F 3 "~" H 26500 6800 50  0001 C CNN
	1    26500 6500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW19
U 1 1 5FACA39E
P 29500 6000
F 0 "SW19" H 29500 6385 50  0000 C CNN
F 1 "SW_Push_LED" H 29500 6294 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 29500 6300 50  0001 C CNN
F 3 "~" H 29500 6300 50  0001 C CNN
	1    29500 6000
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW21
U 1 1 5FACFCB5
P 30500 6500
F 0 "SW21" H 30500 6885 50  0000 C CNN
F 1 "SW_Push_LED" H 30500 6794 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 30500 6800 50  0001 C CNN
F 3 "~" H 30500 6800 50  0001 C CNN
	1    30500 6500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW23
U 1 1 5FAD0365
P 31500 6000
F 0 "SW23" H 31500 6385 50  0000 C CNN
F 1 "SW_Push_LED" H 31500 6294 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 31500 6300 50  0001 C CNN
F 3 "~" H 31500 6300 50  0001 C CNN
	1    31500 6000
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW24
U 1 1 5FAD0920
P 32500 6500
F 0 "SW24" H 32500 6885 50  0000 C CNN
F 1 "SW_Push_LED" H 32500 6794 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 32500 6800 50  0001 C CNN
F 3 "~" H 32500 6800 50  0001 C CNN
	1    32500 6500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW25
U 1 1 5FAD3D50
P 33500 6000
F 0 "SW25" H 33500 6385 50  0000 C CNN
F 1 "SW_Push_LED" H 33500 6294 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 33500 6300 50  0001 C CNN
F 3 "~" H 33500 6300 50  0001 C CNN
	1    33500 6000
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW26
U 1 1 5FAD3D56
P 34500 6500
F 0 "SW26" H 34500 6885 50  0000 C CNN
F 1 "SW_Push_LED" H 34500 6794 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 34500 6800 50  0001 C CNN
F 3 "~" H 34500 6800 50  0001 C CNN
	1    34500 6500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW27
U 1 1 5FAD3D5C
P 35500 6000
F 0 "SW27" H 35500 6385 50  0000 C CNN
F 1 "SW_Push_LED" H 35500 6294 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 35500 6300 50  0001 C CNN
F 3 "~" H 35500 6300 50  0001 C CNN
	1    35500 6000
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:SW_Push_LED-Switch SW28
U 1 1 5FAD3D62
P 36500 6500
F 0 "SW28" H 36500 6885 50  0000 C CNN
F 1 "SW_Push_LED" H 36500 6794 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 36500 6800 50  0001 C CNN
F 3 "~" H 36500 6800 50  0001 C CNN
	1    36500 6500
	1    0    0    -1  
$EndComp
Text GLabel 12200 8650 2    50   Input ~ 0
ROW6
Text GLabel 12200 8750 2    50   Input ~ 0
ROW7
Text GLabel 12200 8850 2    50   Input ~ 0
ROW8
Text GLabel 12200 8950 2    50   Input ~ 0
ROW9
Text GLabel 12200 9050 2    50   Input ~ 0
ROW10
Text GLabel 12200 9150 2    50   Input ~ 0
ROW11
Text GLabel 12200 9250 2    50   Input ~ 0
ROW12
Text GLabel 12200 9350 2    50   Input ~ 0
ROW13
Text GLabel 12200 9450 2    50   Input ~ 0
ROW14
Text GLabel 12200 9550 2    50   Input ~ 0
ROW15
Wire Wire Line
	12100 8650 12150 8650
Wire Wire Line
	12200 8750 12150 8750
Wire Wire Line
	12100 8850 12150 8850
Wire Wire Line
	12100 8950 12150 8950
Wire Wire Line
	12100 9050 12150 9050
Wire Wire Line
	12100 9150 12150 9150
Wire Wire Line
	12100 9250 12150 9250
Wire Wire Line
	12100 9350 12150 9350
Wire Wire Line
	12100 9450 12150 9450
$Comp
L Controller-rescue:R-Device R8
U 1 1 5FBC9F49
P 13400 8400
F 0 "R8" V 13193 8400 50  0000 C CNN
F 1 "R" V 13284 8400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13330 8400 50  0001 C CNN
F 3 "~" H 13400 8400 50  0001 C CNN
	1    13400 8400
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R2
U 1 1 5FBCA270
P 12700 8500
F 0 "R2" V 12493 8500 50  0000 C CNN
F 1 "R" V 12584 8500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12630 8500 50  0001 C CNN
F 3 "~" H 12700 8500 50  0001 C CNN
	1    12700 8500
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R9
U 1 1 5FBCA552
P 13400 8600
F 0 "R9" V 13193 8600 50  0000 C CNN
F 1 "R" V 13284 8600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13330 8600 50  0001 C CNN
F 3 "~" H 13400 8600 50  0001 C CNN
	1    13400 8600
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R3
U 1 1 5FBCA778
P 12700 8700
F 0 "R3" V 12493 8700 50  0000 C CNN
F 1 "R" V 12584 8700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12630 8700 50  0001 C CNN
F 3 "~" H 12700 8700 50  0001 C CNN
	1    12700 8700
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R4
U 1 1 5FBCA921
P 12700 8900
F 0 "R4" V 12493 8900 50  0000 C CNN
F 1 "R" V 12584 8900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12630 8900 50  0001 C CNN
F 3 "~" H 12700 8900 50  0001 C CNN
	1    12700 8900
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R5
U 1 1 5FBCAB0A
P 12700 9100
F 0 "R5" V 12493 9100 50  0000 C CNN
F 1 "R" V 12584 9100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12630 9100 50  0001 C CNN
F 3 "~" H 12700 9100 50  0001 C CNN
	1    12700 9100
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R6
U 1 1 5FBCAD03
P 12700 9300
F 0 "R6" V 12493 9300 50  0000 C CNN
F 1 "R" V 12584 9300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12630 9300 50  0001 C CNN
F 3 "~" H 12700 9300 50  0001 C CNN
	1    12700 9300
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R7
U 1 1 5FBCAEFB
P 12700 9500
F 0 "R7" V 12493 9500 50  0000 C CNN
F 1 "R" V 12584 9500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12630 9500 50  0001 C CNN
F 3 "~" H 12700 9500 50  0001 C CNN
	1    12700 9500
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R10
U 1 1 5FBCB0FE
P 13400 8800
F 0 "R10" V 13193 8800 50  0000 C CNN
F 1 "R" V 13284 8800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13330 8800 50  0001 C CNN
F 3 "~" H 13400 8800 50  0001 C CNN
	1    13400 8800
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R11
U 1 1 5FBCB51F
P 13400 9000
F 0 "R11" V 13193 9000 50  0000 C CNN
F 1 "R" V 13284 9000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13330 9000 50  0001 C CNN
F 3 "~" H 13400 9000 50  0001 C CNN
	1    13400 9000
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R12
U 1 1 5FBCB6D8
P 13400 9200
F 0 "R12" V 13193 9200 50  0000 C CNN
F 1 "R" V 13284 9200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13330 9200 50  0001 C CNN
F 3 "~" H 13400 9200 50  0001 C CNN
	1    13400 9200
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R13
U 1 1 5FBCB8B7
P 13400 9400
F 0 "R13" V 13193 9400 50  0000 C CNN
F 1 "R" V 13284 9400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13330 9400 50  0001 C CNN
F 3 "~" H 13400 9400 50  0001 C CNN
	1    13400 9400
	0    1    1    0   
$EndComp
Wire Wire Line
	12550 9500 12150 9500
Wire Wire Line
	12150 9500 12150 9450
Connection ~ 12150 9450
Wire Wire Line
	12150 9450 12200 9450
Wire Wire Line
	13250 9400 12150 9400
Wire Wire Line
	12150 9400 12150 9350
Connection ~ 12150 9350
Wire Wire Line
	12150 9350 12200 9350
Wire Wire Line
	12550 9300 12150 9300
Wire Wire Line
	12150 9300 12150 9250
Connection ~ 12150 9250
Wire Wire Line
	12150 9250 12200 9250
Wire Wire Line
	12550 9100 12150 9100
Wire Wire Line
	12150 9100 12150 9050
Connection ~ 12150 9050
Wire Wire Line
	12150 9050 12200 9050
Wire Wire Line
	12550 8900 12150 8900
Wire Wire Line
	12150 8900 12150 8850
Connection ~ 12150 8850
Wire Wire Line
	12150 8850 12200 8850
Wire Wire Line
	12550 8700 12150 8700
Wire Wire Line
	12150 8700 12150 8650
Connection ~ 12150 8650
Wire Wire Line
	12150 8650 12200 8650
Wire Wire Line
	12550 8500 12150 8500
Wire Wire Line
	12150 8500 12150 8450
Connection ~ 12150 8450
Wire Wire Line
	12150 8450 12200 8450
Wire Wire Line
	13250 8400 12150 8400
Wire Wire Line
	12150 8400 12150 8350
Connection ~ 12150 8350
Wire Wire Line
	12150 8350 12200 8350
Wire Wire Line
	13250 8600 12150 8600
Wire Wire Line
	12150 8600 12150 8550
Connection ~ 12150 8550
Wire Wire Line
	12150 8550 12200 8550
Wire Wire Line
	13250 8800 12150 8800
Wire Wire Line
	12150 8800 12150 8750
Connection ~ 12150 8750
Wire Wire Line
	12150 8750 12100 8750
Wire Wire Line
	13250 9000 12150 9000
Wire Wire Line
	12150 9000 12150 8950
Connection ~ 12150 8950
Wire Wire Line
	12150 8950 12200 8950
Wire Wire Line
	13250 9200 12150 9200
Wire Wire Line
	12150 9200 12150 9150
Connection ~ 12150 9150
Wire Wire Line
	12150 9150 12200 9150
Wire Wire Line
	13550 8400 13650 8400
Wire Wire Line
	13650 8500 12850 8500
Wire Wire Line
	13550 8600 13650 8600
Wire Wire Line
	13650 8700 12850 8700
Wire Wire Line
	13550 8800 13650 8800
Wire Wire Line
	13650 8900 12850 8900
Wire Wire Line
	13550 9000 13650 9000
Wire Wire Line
	13650 9100 12850 9100
Wire Wire Line
	13550 9200 13650 9200
Wire Wire Line
	13650 9300 12850 9300
Wire Wire Line
	13550 9400 13650 9400
Wire Wire Line
	13650 9500 12850 9500
Text GLabel 13650 8400 2    50   Input ~ 0
BUTTON0
Text GLabel 13650 8500 2    50   Input ~ 0
BUTTON1
Text GLabel 13650 8600 2    50   Input ~ 0
BUTTON2
Text GLabel 13650 8700 2    50   Input ~ 0
BUTTON3
Text GLabel 13650 8800 2    50   Input ~ 0
BUTTON4
Text GLabel 13650 8900 2    50   Input ~ 0
BUTTON5
Text GLabel 13650 9000 2    50   Input ~ 0
BUTTON6
Text GLabel 13650 9100 2    50   Input ~ 0
BUTTON7
Text GLabel 13650 9200 2    50   Input ~ 0
BUTTON8
Text GLabel 13650 9300 2    50   Input ~ 0
BUTTON9
Text GLabel 13650 9400 2    50   Input ~ 0
BUTTON10
Text GLabel 13650 9500 2    50   Input ~ 0
BUTTON11
Text GLabel 23200 5900 0    50   Input ~ 0
BUTTON0
Text GLabel 24200 6400 0    50   Input ~ 0
BUTTON1
Text GLabel 25200 5900 0    50   Input ~ 0
BUTTON2
Text GLabel 26200 6400 0    50   Input ~ 0
BUTTON3
Text GLabel 29200 5900 0    50   Input ~ 0
BUTTON4
Text GLabel 30200 6400 0    50   Input ~ 0
BUTTON5
Text GLabel 31200 5900 0    50   Input ~ 0
BUTTON6
Text GLabel 32200 6400 0    50   Input ~ 0
BUTTON7
Text GLabel 33200 5900 0    50   Input ~ 0
BUTTON8
Text GLabel 34200 6400 0    50   Input ~ 0
BUTTON9
Text GLabel 36200 6400 0    50   Input ~ 0
BUTTON11
Wire Wire Line
	36200 6400 36300 6400
Wire Wire Line
	32200 6400 32300 6400
Wire Wire Line
	33200 5900 33300 5900
Wire Wire Line
	34200 6400 34300 6400
Wire Wire Line
	31300 5900 31200 5900
Wire Wire Line
	30200 6400 30300 6400
Wire Wire Line
	29300 5900 29200 5900
Wire Wire Line
	26300 6400 26200 6400
Wire Wire Line
	25300 5900 25200 5900
Wire Wire Line
	24300 6400 24200 6400
Wire Wire Line
	23300 5900 23200 5900
$Comp
L Controller-rescue:D-Device D9
U 1 1 5F87552D
P 23950 5900
F 0 "D9" H 23950 6117 50  0000 C CNN
F 1 "D" H 23950 6026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 23950 5900 50  0001 C CNN
F 3 "~" H 23950 5900 50  0001 C CNN
	1    23950 5900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D12
U 1 1 5F876CAB
P 24950 6400
F 0 "D12" H 24950 6617 50  0000 C CNN
F 1 "D" H 24950 6526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 24950 6400 50  0001 C CNN
F 3 "~" H 24950 6400 50  0001 C CNN
	1    24950 6400
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D13
U 1 1 5F8771D0
P 25950 5900
F 0 "D13" H 25950 6117 50  0000 C CNN
F 1 "D" H 25950 6026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 25950 5900 50  0001 C CNN
F 3 "~" H 25950 5900 50  0001 C CNN
	1    25950 5900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D16
U 1 1 5F8774F2
P 26950 6400
F 0 "D16" H 26950 6617 50  0000 C CNN
F 1 "D" H 26950 6526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 26950 6400 50  0001 C CNN
F 3 "~" H 26950 6400 50  0001 C CNN
	1    26950 6400
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D18
U 1 1 5F87782D
P 29950 5900
F 0 "D18" H 29950 6117 50  0000 C CNN
F 1 "D" H 29950 6026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 29950 5900 50  0001 C CNN
F 3 "~" H 29950 5900 50  0001 C CNN
	1    29950 5900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D20
U 1 1 5F877D1B
P 30950 6400
F 0 "D20" H 30950 6617 50  0000 C CNN
F 1 "D" H 30950 6526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 30950 6400 50  0001 C CNN
F 3 "~" H 30950 6400 50  0001 C CNN
	1    30950 6400
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D22
U 1 1 5F878074
P 31950 5900
F 0 "D22" H 31950 6117 50  0000 C CNN
F 1 "D" H 31950 6026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 31950 5900 50  0001 C CNN
F 3 "~" H 31950 5900 50  0001 C CNN
	1    31950 5900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D23
U 1 1 5F878300
P 32950 6400
F 0 "D23" H 32950 6617 50  0000 C CNN
F 1 "D" H 32950 6526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 32950 6400 50  0001 C CNN
F 3 "~" H 32950 6400 50  0001 C CNN
	1    32950 6400
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D24
U 1 1 5F8785A0
P 33950 5900
F 0 "D24" H 33950 6117 50  0000 C CNN
F 1 "D" H 33950 6026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 33950 5900 50  0001 C CNN
F 3 "~" H 33950 5900 50  0001 C CNN
	1    33950 5900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D25
U 1 1 5F8788A9
P 34950 6400
F 0 "D25" H 34950 6617 50  0000 C CNN
F 1 "D" H 34950 6526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 34950 6400 50  0001 C CNN
F 3 "~" H 34950 6400 50  0001 C CNN
	1    34950 6400
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D26
U 1 1 5F878B76
P 35950 5900
F 0 "D26" H 35950 6117 50  0000 C CNN
F 1 "D" H 35950 6026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 35950 5900 50  0001 C CNN
F 3 "~" H 35950 5900 50  0001 C CNN
	1    35950 5900
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D27
U 1 1 5F878ECF
P 36950 6400
F 0 "D27" H 36950 6617 50  0000 C CNN
F 1 "D" H 36950 6526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 36950 6400 50  0001 C CNN
F 3 "~" H 36950 6400 50  0001 C CNN
	1    36950 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	26700 6400 26800 6400
Wire Wire Line
	25700 5900 25800 5900
Wire Wire Line
	24700 6400 24800 6400
Wire Wire Line
	23700 5900 23800 5900
Wire Wire Line
	36700 6400 36800 6400
Wire Wire Line
	35700 5900 35800 5900
Wire Wire Line
	34700 6400 34800 6400
Wire Wire Line
	33700 5900 33800 5900
Wire Wire Line
	32700 6400 32800 6400
Wire Wire Line
	31700 5900 31800 5900
Wire Wire Line
	30700 6400 30800 6400
Wire Wire Line
	29700 5900 29800 5900
Text GLabel 24200 5900 2    50   Input ~ 0
COM1
Text GLabel 25200 6400 2    50   Input ~ 0
COM1
Text GLabel 26200 5900 2    50   Input ~ 0
COM1
Text GLabel 27200 6400 2    50   Input ~ 0
COM1
Text GLabel 30200 5900 2    50   Input ~ 0
COM1
Text GLabel 31200 6400 2    50   Input ~ 0
COM1
Text GLabel 32200 5900 2    50   Input ~ 0
COM1
Text GLabel 33200 6400 2    50   Input ~ 0
COM1
Text GLabel 34200 5900 2    50   Input ~ 0
COM1
Text GLabel 35200 6400 2    50   Input ~ 0
COM1
Text GLabel 36200 5900 2    50   Input ~ 0
COM1
Text GLabel 37200 6400 2    50   Input ~ 0
COM1
Wire Wire Line
	37200 6400 37150 6400
Wire Wire Line
	36200 5900 36150 5900
Wire Wire Line
	35200 6400 35150 6400
Wire Wire Line
	34200 5900 34150 5900
Wire Wire Line
	33200 6400 33150 6400
Wire Wire Line
	32200 5900 32150 5900
Wire Wire Line
	31200 6400 31150 6400
Wire Wire Line
	30200 5900 30150 5900
Wire Wire Line
	27200 6400 27150 6400
Wire Wire Line
	26200 5900 26150 5900
Wire Wire Line
	25200 6400 25150 6400
Wire Wire Line
	24200 5900 24150 5900
$Comp
L Controller-rescue:GND-power #PWR0159
U 1 1 5FB17355
P 3200 3150
F 0 "#PWR0159" H 3200 2900 50  0001 C CNN
F 1 "GND" V 3205 3022 50  0000 R CNN
F 2 "" H 3200 3150 50  0001 C CNN
F 3 "" H 3200 3150 50  0001 C CNN
	1    3200 3150
	0    -1   -1   0   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0160
U 1 1 5FB175C2
P 3200 3800
F 0 "#PWR0160" H 3200 3550 50  0001 C CNN
F 1 "GND" V 3205 3672 50  0000 R CNN
F 2 "" H 3200 3800 50  0001 C CNN
F 3 "" H 3200 3800 50  0001 C CNN
	1    3200 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 3800 3200 3800
Text GLabel 3200 3350 2    50   Input ~ 0
CV1
Text GLabel 3200 3900 2    50   Input ~ 0
CV2
Wire Wire Line
	3200 3900 3100 3900
$Comp
L Controller-rescue:AudioJack3-Connector J1
U 1 1 5FBC01BB
P 2900 1300
F 0 "J1" H 2882 1625 50  0000 C CNN
F 1 "AudioJack3" H 2882 1534 50  0000 C CNN
F 2 "Custom_Footprints:Audio_Jack_3_Pin" H 2900 1300 50  0001 C CNN
F 3 "~" H 2900 1300 50  0001 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0161
U 1 1 5FBC1571
P 3200 1200
F 0 "#PWR0161" H 3200 950 50  0001 C CNN
F 1 "GND" V 3205 1072 50  0000 R CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "" H 3200 1200 50  0001 C CNN
	1    3200 1200
	0    -1   -1   0   
$EndComp
$Comp
L Controller-rescue:+5V-power #PWR0164
U 1 1 5FBC38B4
P 3300 1400
F 0 "#PWR0164" H 3300 1250 50  0001 C CNN
F 1 "+5V" V 3315 1528 50  0000 L CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	0    1    1    0   
$EndComp
Text GLabel 3300 1300 2    50   Input ~ 0
EXPRESSION_PEDAL_1
Text GLabel 3200 2300 2    50   Input ~ 0
EXPRESSION_PEDAL_2
Wire Wire Line
	3100 1200 3200 1200
Wire Wire Line
	12100 8050 12200 8050
Wire Wire Line
	12100 8150 12200 8150
Wire Wire Line
	12100 8250 12200 8250
$Comp
L Controller-rescue:D-Device D21
U 1 1 5FD7505D
P 31900 4150
F 0 "D21" H 31900 4367 50  0000 C CNN
F 1 "D" H 31900 4276 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 31900 4150 50  0001 C CNN
F 3 "~" H 31900 4150 50  0001 C CNN
	1    31900 4150
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D17
U 1 1 5FD77115
P 29400 4150
F 0 "D17" H 29400 4367 50  0000 C CNN
F 1 "D" H 29400 4276 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 29400 4150 50  0001 C CNN
F 3 "~" H 29400 4150 50  0001 C CNN
	1    29400 4150
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D14
U 1 1 5FD7757C
P 26350 3850
F 0 "D14" H 26350 4067 50  0000 C CNN
F 1 "D" H 26350 3976 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 26350 3850 50  0001 C CNN
F 3 "~" H 26350 3850 50  0001 C CNN
	1    26350 3850
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D11
U 1 1 5FD77B78
P 24800 4500
F 0 "D11" H 24800 4717 50  0000 C CNN
F 1 "D" H 24800 4626 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 24800 4500 50  0001 C CNN
F 3 "~" H 24800 4500 50  0001 C CNN
	1    24800 4500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D10
U 1 1 5FD7A304
P 24000 3850
F 0 "D10" H 24000 4067 50  0000 C CNN
F 1 "D" H 24000 3976 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 24000 3850 50  0001 C CNN
F 3 "~" H 24000 3850 50  0001 C CNN
	1    24000 3850
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D3
U 1 1 5FD7A577
P 18300 3950
F 0 "D3" H 18300 4167 50  0000 C CNN
F 1 "D" H 18300 4076 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 18300 3950 50  0001 C CNN
F 3 "~" H 18300 3950 50  0001 C CNN
	1    18300 3950
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D4
U 1 1 5FD7B41C
P 19800 4500
F 0 "D4" H 19800 4717 50  0000 C CNN
F 1 "D" H 19800 4626 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 19800 4500 50  0001 C CNN
F 3 "~" H 19800 4500 50  0001 C CNN
	1    19800 4500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D5
U 1 1 5FD7B919
P 19800 5500
F 0 "D5" H 19800 5717 50  0000 C CNN
F 1 "D" H 19800 5626 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 19800 5500 50  0001 C CNN
F 3 "~" H 19800 5500 50  0001 C CNN
	1    19800 5500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D6
U 1 1 5FD7CF29
P 19800 6500
F 0 "D6" H 19800 6717 50  0000 C CNN
F 1 "D" H 19800 6626 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 19800 6500 50  0001 C CNN
F 3 "~" H 19800 6500 50  0001 C CNN
	1    19800 6500
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D8
U 1 1 5FD7D2DC
P 21300 4950
F 0 "D8" H 21300 5167 50  0000 C CNN
F 1 "D" H 21300 5076 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 21300 4950 50  0001 C CNN
F 3 "~" H 21300 4950 50  0001 C CNN
	1    21300 4950
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D7
U 1 1 5FD7D76B
P 21300 3950
F 0 "D7" H 21300 4167 50  0000 C CNN
F 1 "D" H 21300 4076 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 21300 3950 50  0001 C CNN
F 3 "~" H 21300 3950 50  0001 C CNN
	1    21300 3950
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D1
U 1 1 5FD7DB0F
P 15950 4050
F 0 "D1" H 15950 4267 50  0000 C CNN
F 1 "D" H 15950 4176 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 15950 4050 50  0001 C CNN
F 3 "~" H 15950 4050 50  0001 C CNN
	1    15950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	15700 4050 15800 4050
Wire Wire Line
	18050 3950 18150 3950
Wire Wire Line
	19550 6500 19650 6500
Wire Wire Line
	19550 5500 19650 5500
Wire Wire Line
	19550 4500 19650 4500
Wire Wire Line
	21050 3950 21150 3950
Wire Wire Line
	21050 4950 21150 4950
Wire Wire Line
	23750 3850 23850 3850
Wire Wire Line
	24550 4500 24650 4500
Wire Wire Line
	26100 3850 26200 3850
Wire Wire Line
	29150 4150 29250 4150
Wire Wire Line
	31650 4150 31750 4150
Text GLabel 16200 4050 2    50   Input ~ 0
COM2
Text GLabel 18550 3950 2    50   Input ~ 0
COM2
Text GLabel 20050 4500 2    50   Input ~ 0
COM2
Text GLabel 20050 5500 2    50   Input ~ 0
COM2
Text GLabel 20050 6500 2    50   Input ~ 0
COM2
Text GLabel 21550 4950 2    50   Input ~ 0
COM2
Text GLabel 21550 3950 2    50   Input ~ 0
COM2
Wire Wire Line
	21550 3950 21500 3950
Wire Wire Line
	21550 4950 21500 4950
Wire Wire Line
	20050 4500 20000 4500
Wire Wire Line
	19950 5500 20000 5500
Wire Wire Line
	19950 6500 20000 6500
Wire Wire Line
	18450 3950 18500 3950
$Comp
L Controller-rescue:SW_Push_LED-Switch SW16
U 1 1 5FFF9314
P 26400 4600
F 0 "SW16" H 26400 4985 50  0000 C CNN
F 1 "SW_Push_LED" H 26400 4894 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 26400 4900 50  0001 C CNN
F 3 "~" H 26400 4900 50  0001 C CNN
	1    26400 4600
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D15
U 1 1 5FFF931A
P 26850 4500
F 0 "D15" H 26850 4717 50  0000 C CNN
F 1 "D" H 26850 4626 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 26850 4500 50  0001 C CNN
F 3 "~" H 26850 4500 50  0001 C CNN
	1    26850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	26600 4500 26700 4500
Wire Wire Line
	16100 4050 16150 4050
Text GLabel 24250 3850 2    50   Input ~ 0
COM2
Text GLabel 25050 4500 2    50   Input ~ 0
COM2
Text GLabel 26600 3850 2    50   Input ~ 0
COM2
Text GLabel 27100 4500 2    50   Input ~ 0
COM2
Wire Wire Line
	27100 4500 27050 4500
Wire Wire Line
	26600 3850 26550 3850
Wire Wire Line
	25050 4500 25000 4500
Wire Wire Line
	24250 3850 24200 3850
Text GLabel 29650 4150 2    50   Input ~ 0
COM3
Text GLabel 32150 4150 2    50   Input ~ 0
COM3
Wire Wire Line
	32150 4150 32100 4150
Wire Wire Line
	29650 4150 29600 4150
$Comp
L Controller-rescue:SW_Push_LED-Switch SW20
U 1 1 6028BACD
P 30350 4750
F 0 "SW20" H 30350 5135 50  0000 C CNN
F 1 "SW_Push_LED" H 30350 5044 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 30350 5050 50  0001 C CNN
F 3 "~" H 30350 5050 50  0001 C CNN
	1    30350 4750
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D19
U 1 1 6028BAD3
P 30800 4650
F 0 "D19" H 30800 4867 50  0000 C CNN
F 1 "D" H 30800 4776 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 30800 4650 50  0001 C CNN
F 3 "~" H 30800 4650 50  0001 C CNN
	1    30800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	30550 4650 30650 4650
Text GLabel 31050 4650 2    50   Input ~ 0
COM3
Wire Wire Line
	31050 4650 31000 4650
$Comp
L Controller-rescue:SW_Push_LED-Switch SW3
U 1 1 602AABD0
P 17750 5150
F 0 "SW3" H 17750 5535 50  0000 C CNN
F 1 "SW_Push_LED" H 17750 5444 50  0000 C CNN
F 2 "Custom_Footprints:Synth_Button" H 17750 5450 50  0001 C CNN
F 3 "~" H 17750 5450 50  0001 C CNN
	1    17750 5150
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:D-Device D2
U 1 1 602AABD6
P 18200 5050
F 0 "D2" H 18200 5267 50  0000 C CNN
F 1 "D" H 18200 5176 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 18200 5050 50  0001 C CNN
F 3 "~" H 18200 5050 50  0001 C CNN
	1    18200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	17950 5050 18050 5050
Text GLabel 18450 5050 2    50   Input ~ 0
COM2
Wire Wire Line
	18450 5050 18400 5050
Text GLabel 15200 4050 0    50   Input ~ 0
BUTTON0
Text GLabel 17550 3950 0    50   Input ~ 0
BUTTON1
Text GLabel 17450 5050 0    50   Input ~ 0
BUTTON2
Text GLabel 19050 4500 0    50   Input ~ 0
BUTTON3
Text GLabel 19050 5500 0    50   Input ~ 0
BUTTON4
Text GLabel 19050 6500 0    50   Input ~ 0
BUTTON5
Text GLabel 20550 3950 0    50   Input ~ 0
BUTTON6
Text GLabel 20550 4950 0    50   Input ~ 0
BUTTON7
Text GLabel 23250 3850 0    50   Input ~ 0
BUTTON8
Text GLabel 24050 4500 0    50   Input ~ 0
BUTTON9
Text GLabel 25600 3850 0    50   Input ~ 0
BUTTON10
Text GLabel 26100 4500 0    50   Input ~ 0
BUTTON11
Text GLabel 28650 4150 0    50   Input ~ 0
BUTTON0
Text GLabel 30050 4650 0    50   Input ~ 0
BUTTON1
Text GLabel 31150 4150 0    50   Input ~ 0
BUTTON2
Wire Wire Line
	31150 4150 31250 4150
Wire Wire Line
	30050 4650 30150 4650
Wire Wire Line
	28650 4150 28750 4150
Wire Wire Line
	23250 3850 23350 3850
Wire Wire Line
	24050 4500 24150 4500
Wire Wire Line
	25600 3850 25700 3850
Wire Wire Line
	26100 4500 26200 4500
Wire Wire Line
	20550 3950 20650 3950
Wire Wire Line
	20550 4950 20650 4950
Wire Wire Line
	19050 6500 19150 6500
Wire Wire Line
	19050 5500 19150 5500
Wire Wire Line
	19050 4500 19150 4500
Wire Wire Line
	17450 5050 17550 5050
Wire Wire Line
	17550 3950 17650 3950
Wire Wire Line
	15200 4050 15300 4050
Text GLabel 9600 5750 2    50   Input ~ 0
ADDRESS_A
Text GLabel 9600 5850 2    50   Input ~ 0
ADDRESS_B
Text GLabel 9600 5950 2    50   Input ~ 0
ADDRESS_C
Wire Wire Line
	9500 5750 9600 5750
Wire Wire Line
	9600 5850 9500 5850
Wire Wire Line
	9500 5950 9600 5950
$Comp
L Controller-rescue:Conn_01x06_Female-Connector J7
U 1 1 605CD93E
P 9000 13200
F 0 "J7" H 9028 13176 50  0000 L CNN
F 1 "Conn_01x06_Female" H 9028 13085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9000 13200 50  0001 C CNN
F 3 "~" H 9000 13200 50  0001 C CNN
	1    9000 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	17650 4050 17650 4000
Wire Wire Line
	17650 4000 18500 4000
Wire Wire Line
	18500 4000 18500 3950
Connection ~ 18500 3950
Wire Wire Line
	18500 3950 18550 3950
Wire Wire Line
	19150 4600 19150 4550
Wire Wire Line
	19150 4550 20000 4550
Wire Wire Line
	20000 4550 20000 4500
Connection ~ 20000 4500
Wire Wire Line
	20000 4500 19950 4500
Wire Wire Line
	20650 4050 20650 4000
Wire Wire Line
	20650 4000 21500 4000
Wire Wire Line
	21500 4000 21500 3950
Connection ~ 21500 3950
Wire Wire Line
	21500 3950 21450 3950
Wire Wire Line
	17550 5150 17550 5100
Wire Wire Line
	17550 5100 18400 5100
Wire Wire Line
	18400 5100 18400 5050
Connection ~ 18400 5050
Wire Wire Line
	18400 5050 18350 5050
Wire Wire Line
	19150 5600 19150 5550
Wire Wire Line
	19150 5550 20000 5550
Wire Wire Line
	20000 5550 20000 5500
Connection ~ 20000 5500
Wire Wire Line
	20000 5500 20050 5500
Wire Wire Line
	20650 5050 20650 5000
Wire Wire Line
	20650 5000 21500 5000
Wire Wire Line
	21500 5000 21500 4950
Connection ~ 21500 4950
Wire Wire Line
	21500 4950 21450 4950
Wire Wire Line
	19150 6600 19150 6550
Wire Wire Line
	19150 6550 20000 6550
Wire Wire Line
	20000 6550 20000 6500
Connection ~ 20000 6500
Wire Wire Line
	20000 6500 20050 6500
Wire Wire Line
	15300 4150 15300 4100
Wire Wire Line
	15300 4100 16150 4100
Wire Wire Line
	16150 4100 16150 4050
Connection ~ 16150 4050
Wire Wire Line
	16150 4050 16200 4050
Wire Wire Line
	23350 3950 23350 3900
Wire Wire Line
	23350 3900 24200 3900
Wire Wire Line
	24200 3900 24200 3850
Connection ~ 24200 3850
Wire Wire Line
	24200 3850 24150 3850
Wire Wire Line
	24150 4600 24150 4550
Wire Wire Line
	24150 4550 25000 4550
Wire Wire Line
	25000 4550 25000 4500
Connection ~ 25000 4500
Wire Wire Line
	25000 4500 24950 4500
Wire Wire Line
	25700 3950 25700 3900
Wire Wire Line
	25700 3900 26550 3900
Wire Wire Line
	26550 3900 26550 3850
Connection ~ 26550 3850
Wire Wire Line
	26550 3850 26500 3850
Wire Wire Line
	26200 4600 26200 4550
Wire Wire Line
	26200 4550 27050 4550
Wire Wire Line
	27050 4550 27050 4500
Connection ~ 27050 4500
Wire Wire Line
	27050 4500 27000 4500
Wire Wire Line
	28750 4250 28750 4200
Wire Wire Line
	28750 4200 29600 4200
Wire Wire Line
	29600 4200 29600 4150
Connection ~ 29600 4150
Wire Wire Line
	29600 4150 29550 4150
Wire Wire Line
	30150 4750 30150 4700
Wire Wire Line
	30150 4700 31000 4700
Wire Wire Line
	31000 4700 31000 4650
Connection ~ 31000 4650
Wire Wire Line
	31000 4650 30950 4650
Wire Wire Line
	31250 4250 31250 4200
Wire Wire Line
	31250 4200 32100 4200
Wire Wire Line
	32100 4200 32100 4150
Connection ~ 32100 4150
Wire Wire Line
	32100 4150 32050 4150
Wire Wire Line
	23300 6000 23300 5950
Wire Wire Line
	23300 5950 24150 5950
Wire Wire Line
	24150 5950 24150 5900
Connection ~ 24150 5900
Wire Wire Line
	24150 5900 24100 5900
Wire Wire Line
	24300 6500 24300 6450
Wire Wire Line
	24300 6450 25150 6450
Wire Wire Line
	25150 6450 25150 6400
Connection ~ 25150 6400
Wire Wire Line
	25150 6400 25100 6400
Wire Wire Line
	25300 6000 25300 5950
Wire Wire Line
	25300 5950 26150 5950
Wire Wire Line
	26150 5950 26150 5900
Connection ~ 26150 5900
Wire Wire Line
	26150 5900 26100 5900
Wire Wire Line
	26300 6500 26300 6450
Wire Wire Line
	26300 6450 27150 6450
Wire Wire Line
	27150 6450 27150 6400
Connection ~ 27150 6400
Wire Wire Line
	27150 6400 27100 6400
Wire Wire Line
	29300 6000 29300 5950
Wire Wire Line
	29300 5950 30150 5950
Wire Wire Line
	30150 5950 30150 5900
Connection ~ 30150 5900
Wire Wire Line
	30150 5900 30100 5900
Wire Wire Line
	30300 6500 30300 6450
Wire Wire Line
	30300 6450 31150 6450
Wire Wire Line
	31150 6450 31150 6400
Connection ~ 31150 6400
Wire Wire Line
	31150 6400 31100 6400
Wire Wire Line
	31300 6000 31300 5950
Wire Wire Line
	31300 5950 32150 5950
Wire Wire Line
	32150 5950 32150 5900
Connection ~ 32150 5900
Wire Wire Line
	32150 5900 32100 5900
Wire Wire Line
	32300 6500 32300 6450
Wire Wire Line
	32300 6450 33150 6450
Wire Wire Line
	33150 6450 33150 6400
Connection ~ 33150 6400
Wire Wire Line
	33150 6400 33100 6400
Wire Wire Line
	33300 6000 33300 5950
Wire Wire Line
	33300 5950 34150 5950
Wire Wire Line
	34150 5950 34150 5900
Connection ~ 34150 5900
Wire Wire Line
	34150 5900 34100 5900
Wire Wire Line
	34300 6500 34300 6450
Wire Wire Line
	34300 6450 35150 6450
Wire Wire Line
	35150 6450 35150 6400
Connection ~ 35150 6400
Wire Wire Line
	35150 6400 35100 6400
Text GLabel 35200 5900 0    50   Input ~ 0
BUTTON10
Wire Wire Line
	35200 5900 35300 5900
Wire Wire Line
	35300 6000 35300 5950
Wire Wire Line
	35300 5950 36150 5950
Wire Wire Line
	36150 5950 36150 5900
Connection ~ 36150 5900
Wire Wire Line
	36150 5900 36100 5900
Wire Wire Line
	36300 6500 36300 6450
Wire Wire Line
	36300 6450 37150 6450
Wire Wire Line
	37150 6450 37150 6400
Connection ~ 37150 6400
Wire Wire Line
	37150 6400 37100 6400
Text GLabel 23800 6000 2    50   Input ~ 0
ROW0
Text GLabel 24800 6500 2    50   Input ~ 0
ROW1
Text GLabel 25800 6000 2    50   Input ~ 0
ROW2
Text GLabel 26800 6500 2    50   Input ~ 0
ROW3
Text GLabel 29800 6000 2    50   Input ~ 0
ROW4
Text GLabel 30800 6500 2    50   Input ~ 0
ROW5
Text GLabel 31800 6000 2    50   Input ~ 0
ROW6
Text GLabel 32800 6500 2    50   Input ~ 0
ROW7
Text GLabel 33800 6000 2    50   Input ~ 0
ROW8
Text GLabel 34800 6500 2    50   Input ~ 0
ROW9
Text GLabel 35800 6000 2    50   Input ~ 0
ROW10
Text GLabel 36800 6500 2    50   Input ~ 0
ROW11
Wire Wire Line
	36700 6500 36800 6500
Wire Wire Line
	35700 6000 35800 6000
Wire Wire Line
	34700 6500 34800 6500
Wire Wire Line
	33700 6000 33800 6000
Wire Wire Line
	32700 6500 32800 6500
Wire Wire Line
	31700 6000 31800 6000
Wire Wire Line
	30700 6500 30800 6500
Wire Wire Line
	29700 6000 29800 6000
Wire Wire Line
	26700 6500 26800 6500
Wire Wire Line
	25700 6000 25800 6000
Wire Wire Line
	24700 6500 24800 6500
Wire Wire Line
	23700 6000 23800 6000
Text GLabel 15800 4150 2    50   Input ~ 0
ROW0
Text GLabel 18150 4050 2    50   Input ~ 0
ROW1
Text GLabel 18050 5150 2    50   Input ~ 0
ROW2
Text GLabel 19650 4600 2    50   Input ~ 0
ROW3
Text GLabel 19650 5600 2    50   Input ~ 0
ROW4
Text GLabel 21150 4050 2    50   Input ~ 0
ROW6
Text GLabel 21150 5050 2    50   Input ~ 0
ROW7
Text GLabel 19650 6600 2    50   Input ~ 0
ROW5
Text GLabel 23850 3950 2    50   Input ~ 0
ROW8
Text GLabel 24650 4600 2    50   Input ~ 0
ROW9
Text GLabel 26200 3950 2    50   Input ~ 0
ROW10
Text GLabel 26700 4600 2    50   Input ~ 0
ROW11
Wire Wire Line
	15700 4150 15800 4150
Wire Wire Line
	18050 4050 18150 4050
Wire Wire Line
	17950 5150 18050 5150
Wire Wire Line
	19550 4600 19650 4600
Wire Wire Line
	19550 5600 19650 5600
Wire Wire Line
	19550 6600 19650 6600
Wire Wire Line
	21050 5050 21150 5050
Wire Wire Line
	21050 4050 21150 4050
Wire Wire Line
	23750 3950 23850 3950
Wire Wire Line
	24550 4600 24650 4600
Wire Wire Line
	26100 3950 26200 3950
Wire Wire Line
	26600 4600 26700 4600
Text GLabel 29250 4250 2    50   Input ~ 0
ROW0
Text GLabel 30650 4750 2    50   Input ~ 0
ROW1
Text GLabel 31750 4250 2    50   Input ~ 0
ROW2
Wire Wire Line
	29150 4250 29250 4250
Wire Wire Line
	30550 4750 30650 4750
Wire Wire Line
	31650 4250 31750 4250
$Comp
L Controller-rescue:CAP-pspice C3
U 1 1 605D1222
P 4050 4500
F 0 "C3" V 3735 4500 50  0000 C CNN
F 1 "CAP" V 3826 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 4500 50  0001 C CNN
F 3 "~" H 4050 4500 50  0001 C CNN
	1    4050 4500
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C4
U 1 1 6060DB1B
P 4050 5000
F 0 "C4" V 3735 5000 50  0000 C CNN
F 1 "CAP" V 3826 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 5000 50  0001 C CNN
F 3 "~" H 4050 5000 50  0001 C CNN
	1    4050 5000
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C5
U 1 1 6064A2E1
P 4050 5500
F 0 "C5" V 3735 5500 50  0000 C CNN
F 1 "CAP" V 3826 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 5500 50  0001 C CNN
F 3 "~" H 4050 5500 50  0001 C CNN
	1    4050 5500
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C6
U 1 1 60686ADF
P 4050 6000
F 0 "C6" V 3735 6000 50  0000 C CNN
F 1 "CAP" V 3826 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 6000 50  0001 C CNN
F 3 "~" H 4050 6000 50  0001 C CNN
	1    4050 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 6000 3800 5500
Wire Wire Line
	3800 5500 3800 5250
Connection ~ 3800 5500
Wire Wire Line
	3800 4500 3800 5000
Connection ~ 3800 5000
Wire Wire Line
	4300 4500 4300 5000
Wire Wire Line
	4300 5000 4300 5250
Connection ~ 4300 5000
Wire Wire Line
	4300 5500 4300 6000
Connection ~ 4300 5500
$Comp
L Controller-rescue:GND-power #PWR0167
U 1 1 608394C0
P 3800 5250
F 0 "#PWR0167" H 3800 5000 50  0001 C CNN
F 1 "GND-power" V 3805 5123 50  0000 R CNN
F 2 "" H 3800 5250 50  0001 C CNN
F 3 "" H 3800 5250 50  0001 C CNN
	1    3800 5250
	0    1    1    0   
$EndComp
Connection ~ 3800 5250
Wire Wire Line
	3800 5250 3800 5000
$Comp
L Controller-rescue:+5V-power #PWR0168
U 1 1 6083A99C
P 4300 5250
F 0 "#PWR0168" H 4300 5100 50  0001 C CNN
F 1 "+5V-power" V 4315 5378 50  0000 L CNN
F 2 "" H 4300 5250 50  0001 C CNN
F 3 "" H 4300 5250 50  0001 C CNN
	1    4300 5250
	0    1    1    0   
$EndComp
Connection ~ 4300 5250
Wire Wire Line
	4300 5250 4300 5500
$Comp
L Controller-rescue:CAP-pspice C7
U 1 1 5F983000
P 4050 6350
F 0 "C7" V 3735 6350 50  0000 C CNN
F 1 "CAP" V 3826 6350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 6350 50  0001 C CNN
F 3 "~" H 4050 6350 50  0001 C CNN
	1    4050 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 6350 4300 6000
Connection ~ 4300 6000
Wire Wire Line
	3800 6350 3800 6000
Connection ~ 3800 6000
$Comp
L Controller-rescue:CAP-pspice C8
U 1 1 5FA47B6E
P 4050 4050
F 0 "C8" V 3735 4050 50  0000 C CNN
F 1 "CAP" V 3826 4050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 4050 50  0001 C CNN
F 3 "~" H 4050 4050 50  0001 C CNN
	1    4050 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4500 4300 4050
Connection ~ 4300 4500
Wire Wire Line
	3800 4050 3800 4500
Connection ~ 3800 4500
$Comp
L power:GND #PWR0155
U 1 1 5F9B6329
P 6800 2400
F 0 "#PWR0155" H 6800 2150 50  0001 C CNN
F 1 "GND" V 6805 2272 50  0000 R CNN
F 2 "" H 6800 2400 50  0001 C CNN
F 3 "" H 6800 2400 50  0001 C CNN
	1    6800 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0156
U 1 1 5F9B745B
P 6800 2700
F 0 "#PWR0156" H 6800 2550 50  0001 C CNN
F 1 "+5V" V 6815 2828 50  0000 L CNN
F 2 "" H 6800 2700 50  0001 C CNN
F 3 "" H 6800 2700 50  0001 C CNN
	1    6800 2700
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R15
U 1 1 5FAFB1CA
P 7050 2500
F 0 "R15" V 6843 2500 50  0000 C CNN
F 1 "R" V 6934 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6980 2500 50  0001 C CNN
F 3 "~" H 7050 2500 50  0001 C CNN
	1    7050 2500
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R16
U 1 1 5FBF6A9C
P 7050 2600
F 0 "R16" V 6843 2600 50  0000 C CNN
F 1 "R" V 6934 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6980 2600 50  0001 C CNN
F 3 "~" H 7050 2600 50  0001 C CNN
	1    7050 2600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5FD5333F
P 6300 2500
F 0 "J5" H 6408 2781 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6408 2690 50  0000 C CNN
F 2 "Custom_Footprints:PJ320D_3.5mm_Jack" H 6300 2500 50  0001 C CNN
F 3 "~" H 6300 2500 50  0001 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2500 7300 2500
Wire Wire Line
	7200 2600 7300 2600
Text GLabel 7300 2600 2    50   Input ~ 0
SCL
Text GLabel 7300 2500 2    50   Input ~ 0
SDA
Wire Wire Line
	6500 2600 6600 2600
Wire Wire Line
	6600 2600 6600 2400
Wire Wire Line
	6600 2400 6800 2400
Wire Wire Line
	6500 2500 6900 2500
Wire Wire Line
	6500 2400 6550 2400
Wire Wire Line
	6550 2400 6550 2550
Wire Wire Line
	6550 2550 6650 2550
Wire Wire Line
	6650 2550 6650 2600
Wire Wire Line
	6650 2600 6900 2600
Wire Wire Line
	6500 2700 6800 2700
$Comp
L power:GND #PWR0157
U 1 1 600948C7
P 8700 13000
F 0 "#PWR0157" H 8700 12750 50  0001 C CNN
F 1 "GND" V 8705 12872 50  0000 R CNN
F 2 "" H 8700 13000 50  0001 C CNN
F 3 "" H 8700 13000 50  0001 C CNN
	1    8700 13000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0158
U 1 1 60095982
P 8700 13100
F 0 "#PWR0158" H 8700 12950 50  0001 C CNN
F 1 "+5V" V 8715 13228 50  0000 L CNN
F 2 "" H 8700 13100 50  0001 C CNN
F 3 "" H 8700 13100 50  0001 C CNN
	1    8700 13100
	0    -1   -1   0   
$EndComp
Text GLabel 8700 13200 0    50   Input ~ 0
MISO
Text GLabel 8700 13300 0    50   Input ~ 0
MOSI
Text GLabel 8700 13400 0    50   Input ~ 0
SCK
Text GLabel 8700 13500 0    50   Input ~ 0
CS
Wire Wire Line
	8700 13000 8800 13000
Wire Wire Line
	8700 13100 8800 13100
Wire Wire Line
	8700 13200 8800 13200
Wire Wire Line
	8700 13300 8800 13300
Wire Wire Line
	8700 13400 8800 13400
Wire Wire Line
	8700 13500 8800 13500
$Comp
L Connector:Micro_SD_Card J9
U 1 1 5FA0A8C8
P 20900 9800
F 0 "J9" H 20850 10517 50  0000 C CNN
F 1 "Micro_SD_Card" H 20850 10426 50  0000 C CNN
F 2 "Custom_Footprints:Conn_uSDcard" H 22050 10100 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 20900 9800 50  0001 C CNN
	1    20900 9800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5FA0C3C9
P 17200 8350
F 0 "JP1" H 17200 8555 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 17200 8464 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 17200 8350 50  0001 C CNN
F 3 "~" H 17200 8350 50  0001 C CNN
	1    17200 8350
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74126 U5
U 1 1 5FAA5CC2
P 17800 9250
F 0 "U5" H 17800 9716 50  0000 C CNN
F 1 "74126" H 17800 9625 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 17800 9250 50  0001 C CNN
F 3 "" H 17800 9250 50  0001 C CNN
	1    17800 9250
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74126 U5
U 3 1 5FAAA661
P 17800 10450
F 0 "U5" H 17800 10916 50  0000 C CNN
F 1 "74126" H 17800 10825 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 17800 10450 50  0001 C CNN
F 3 "" H 17800 10450 50  0001 C CNN
	3    17800 10450
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74126 U5
U 4 1 5FAAB08B
P 17800 11050
F 0 "U5" H 17800 11516 50  0000 C CNN
F 1 "74126" H 17800 11425 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 17800 11050 50  0001 C CNN
F 3 "" H 17800 11050 50  0001 C CNN
	4    17800 11050
	1    0    0    -1  
$EndComp
Wire Wire Line
	17300 10950 17200 10950
Wire Wire Line
	17200 10950 17200 10350
Wire Wire Line
	17200 10350 17300 10350
Wire Wire Line
	17200 10350 17200 9750
Wire Wire Line
	17200 9750 17300 9750
Connection ~ 17200 10350
Wire Wire Line
	17200 9150 17300 9150
Connection ~ 17200 9750
Wire Wire Line
	17200 8500 17200 9150
Connection ~ 17200 9150
$Comp
L power:GND #PWR0169
U 1 1 5FBCBA82
P 17500 8350
F 0 "#PWR0169" H 17500 8100 50  0001 C CNN
F 1 "GND" V 17505 8222 50  0000 R CNN
F 2 "" H 17500 8350 50  0001 C CNN
F 3 "" H 17500 8350 50  0001 C CNN
	1    17500 8350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0170
U 1 1 5FBCCD26
P 16900 8350
F 0 "#PWR0170" H 16900 8200 50  0001 C CNN
F 1 "+3.3V" V 16915 8478 50  0000 L CNN
F 2 "" H 16900 8350 50  0001 C CNN
F 3 "" H 16900 8350 50  0001 C CNN
	1    16900 8350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	17400 8350 17500 8350
Wire Wire Line
	17000 8350 16900 8350
Wire Wire Line
	20000 9700 19050 9700
Wire Wire Line
	19050 9700 19050 9250
Wire Wire Line
	19050 9250 18300 9250
Wire Wire Line
	19050 9850 19050 9900
Wire Wire Line
	19050 9900 20000 9900
Wire Wire Line
	18300 9850 19050 9850
Wire Wire Line
	18300 10450 19100 10450
Wire Wire Line
	19100 10450 19100 9600
Wire Wire Line
	19100 9600 20000 9600
$Comp
L Controller-rescue:R-Device R20
U 1 1 5FD3A33C
P 16950 11150
F 0 "R20" V 16743 11150 50  0000 C CNN
F 1 "R" V 16834 11150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 16880 11150 50  0001 C CNN
F 3 "~" H 16950 11150 50  0001 C CNN
	1    16950 11150
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R19
U 1 1 5FD84665
P 16950 10550
F 0 "R19" V 16743 10550 50  0000 C CNN
F 1 "R" V 16834 10550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 16880 10550 50  0001 C CNN
F 3 "~" H 16950 10550 50  0001 C CNN
	1    16950 10550
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R18
U 1 1 5FDCEC32
P 16950 9950
F 0 "R18" V 16743 9950 50  0000 C CNN
F 1 "R" V 16834 9950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 16880 9950 50  0001 C CNN
F 3 "~" H 16950 9950 50  0001 C CNN
	1    16950 9950
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:R-Device R17
U 1 1 5FE1920C
P 16950 9350
F 0 "R17" V 16743 9350 50  0000 C CNN
F 1 "R" V 16834 9350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 16880 9350 50  0001 C CNN
F 3 "~" H 16950 9350 50  0001 C CNN
	1    16950 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	17100 9350 17300 9350
Wire Wire Line
	17100 9950 17300 9950
Wire Wire Line
	17100 10550 17300 10550
Wire Wire Line
	17100 11150 17300 11150
Wire Wire Line
	16800 11150 16700 11150
Wire Wire Line
	16700 11150 16700 11400
Wire Wire Line
	16700 11400 19200 11400
Wire Wire Line
	19200 11400 19200 10100
Wire Wire Line
	19200 10100 20000 10100
Wire Wire Line
	17800 10800 17550 10800
Wire Wire Line
	17550 10800 17550 10200
Wire Wire Line
	17550 10200 17800 10200
Wire Wire Line
	17550 10200 17550 9600
Wire Wire Line
	17550 9600 17800 9600
Connection ~ 17550 10200
Wire Wire Line
	17550 9600 17550 9550
Wire Wire Line
	17550 9000 17800 9000
Connection ~ 17550 9600
$Comp
L power:+3.3V #PWR0171
U 1 1 600CAB9D
P 17550 8900
F 0 "#PWR0171" H 17550 8750 50  0001 C CNN
F 1 "+3.3V" H 17565 9073 50  0000 C CNN
F 2 "" H 17550 8900 50  0001 C CNN
F 3 "" H 17550 8900 50  0001 C CNN
	1    17550 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	17550 8900 17550 9000
Connection ~ 17550 9000
Wire Wire Line
	17800 11300 18050 11300
Wire Wire Line
	18050 11300 18050 10700
Wire Wire Line
	18050 10700 17800 10700
Wire Wire Line
	18050 10700 18050 10100
Wire Wire Line
	18050 10100 17800 10100
Connection ~ 18050 10700
Wire Wire Line
	18050 10100 18050 10000
Wire Wire Line
	18050 9500 17800 9500
Connection ~ 18050 10100
$Comp
L power:GND #PWR0172
U 1 1 6021071B
P 18050 8900
F 0 "#PWR0172" H 18050 8650 50  0001 C CNN
F 1 "GND" H 18055 8727 50  0000 C CNN
F 2 "" H 18050 8900 50  0001 C CNN
F 3 "" H 18050 8900 50  0001 C CNN
	1    18050 8900
	-1   0    0    1   
$EndComp
Wire Wire Line
	18050 9500 18050 8900
Connection ~ 18050 9500
Wire Wire Line
	20000 9800 18350 9800
Wire Wire Line
	21700 10400 21700 10550
Wire Wire Line
	21700 10550 19900 10550
Wire Wire Line
	19900 10550 19900 10000
Wire Wire Line
	19900 10000 20000 10000
Wire Wire Line
	19900 10000 18050 10000
Connection ~ 19900 10000
Connection ~ 18050 10000
Wire Wire Line
	18050 10000 18050 9500
$Comp
L Controller-rescue:CAP-pspice C9
U 1 1 603632A3
P 20450 11200
F 0 "C9" V 20135 11200 50  0000 C CNN
F 1 "CAP" V 20226 11200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 20450 11200 50  0001 C CNN
F 3 "~" H 20450 11200 50  0001 C CNN
	1    20450 11200
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C10
U 1 1 603B6E43
P 21150 11200
F 0 "C10" V 20835 11200 50  0000 C CNN
F 1 "CAP" V 20926 11200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 21150 11200 50  0001 C CNN
F 3 "~" H 21150 11200 50  0001 C CNN
	1    21150 11200
	0    1    1    0   
$EndComp
Wire Wire Line
	20900 11200 20800 11200
$Comp
L power:+3.3V #PWR0173
U 1 1 60462F10
P 21500 11200
F 0 "#PWR0173" H 21500 11050 50  0001 C CNN
F 1 "+3.3V" H 21515 11373 50  0000 C CNN
F 2 "" H 21500 11200 50  0001 C CNN
F 3 "" H 21500 11200 50  0001 C CNN
	1    21500 11200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0174
U 1 1 60464278
P 20100 11200
F 0 "#PWR0174" H 20100 11050 50  0001 C CNN
F 1 "+5V" H 20115 11373 50  0000 C CNN
F 2 "" H 20100 11200 50  0001 C CNN
F 3 "" H 20100 11200 50  0001 C CNN
	1    20100 11200
	1    0    0    -1  
$EndComp
Wire Wire Line
	21500 11200 21400 11200
Wire Wire Line
	20100 11200 20200 11200
$Comp
L power:GND #PWR0175
U 1 1 60510F98
P 20800 11200
F 0 "#PWR0175" H 20800 10950 50  0001 C CNN
F 1 "GND" H 20805 11027 50  0000 C CNN
F 2 "" H 20800 11200 50  0001 C CNN
F 3 "" H 20800 11200 50  0001 C CNN
	1    20800 11200
	1    0    0    -1  
$EndComp
Connection ~ 20800 11200
Wire Wire Line
	20800 11200 20700 11200
$Comp
L Regulator_Linear:AMS1117-3.3 U6
U 1 1 6051254A
P 20800 10750
F 0 "U6" H 20800 10992 50  0000 C CNN
F 1 "AMS1117-3.3" H 20800 10901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 20800 10950 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 20900 10500 50  0001 C CNN
	1    20800 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	20500 10750 20200 10750
Wire Wire Line
	20200 10750 20200 11200
Connection ~ 20200 11200
Wire Wire Line
	21100 10750 21400 10750
Wire Wire Line
	21400 10750 21400 11200
Connection ~ 21400 11200
Wire Wire Line
	20800 11200 20800 11050
$Comp
L 74xx_IEEE:74126 U5
U 2 1 5FAA78A4
P 17800 9850
F 0 "U5" H 17800 10316 50  0000 C CNN
F 1 "74126" H 17800 10225 50  0000 C CNN
F 2 "Package_SO:SO-14_3.9x8.65mm_P1.27mm" H 17800 9850 50  0001 C CNN
F 3 "" H 17800 9850 50  0001 C CNN
	2    17800 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17200 9150 17200 9750
Wire Wire Line
	18350 9800 18350 9550
Wire Wire Line
	18350 9550 17550 9550
Connection ~ 17550 9550
Wire Wire Line
	17550 9550 17550 9000
Text GLabel 18400 11050 2    50   Input ~ 0
MISO
Wire Wire Line
	18400 11050 18300 11050
Text GLabel 16700 9950 0    50   Input ~ 0
SCK
Wire Wire Line
	16700 9950 16800 9950
Text GLabel 16700 10550 0    50   Input ~ 0
CS
Text GLabel 16700 9350 0    50   Input ~ 0
MOSI
Wire Wire Line
	16700 10550 16800 10550
Wire Wire Line
	16700 9350 16800 9350
Text GLabel 9600 4350 2    50   Input ~ 0
SCK
Wire Wire Line
	9600 4350 9500 4350
Text GLabel 9600 4250 2    50   Input ~ 0
MISO
Wire Wire Line
	9600 4250 9500 4250
Text GLabel 9600 4150 2    50   Input ~ 0
MOSI
Wire Wire Line
	9600 4150 9500 4150
Text GLabel 9600 4050 2    50   Input ~ 0
CS
Wire Wire Line
	9600 4050 9500 4050
Text GLabel 9600 4750 2    50   Input ~ 0
D0
Text GLabel 9600 4850 2    50   Input ~ 0
D1
Text GLabel 9600 4950 2    50   Input ~ 0
RES
Wire Wire Line
	9600 4750 9500 4750
Wire Wire Line
	9500 4850 9600 4850
Wire Wire Line
	9600 4950 9500 4950
Text GLabel 9600 6150 2    50   Input ~ 0
OLED_CS
Wire Wire Line
	9500 6150 9600 6150
Text GLabel 9600 6050 2    50   Input ~ 0
OLED_DC
Wire Wire Line
	9600 6050 9500 6050
$Comp
L Controller-rescue:CAP-pspice C11
U 1 1 5FA4E46F
P 4050 3150
F 0 "C11" V 3735 3150 50  0000 C CNN
F 1 "CAP" V 3826 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 3150 50  0001 C CNN
F 3 "~" H 4050 3150 50  0001 C CNN
	1    4050 3150
	0    1    1    0   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C12
U 1 1 5FA4E475
P 4050 3500
F 0 "C12" V 3735 3500 50  0000 C CNN
F 1 "CAP" V 3826 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4050 3500 50  0001 C CNN
F 3 "~" H 4050 3500 50  0001 C CNN
	1    4050 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3500 3800 4050
Connection ~ 3800 4050
Wire Wire Line
	3800 3150 3800 3500
Connection ~ 3800 3500
Wire Wire Line
	4300 3500 4300 4050
Connection ~ 4300 4050
Wire Wire Line
	4300 3150 4300 3500
Connection ~ 4300 3500
$Comp
L Regulator_Linear:AMS1117-5.0 U7
U 1 1 5FB39FF9
P 20800 12650
F 0 "U7" H 20800 12892 50  0000 C CNN
F 1 "AMS1117-5.0" H 20800 12801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 20800 12850 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 20900 12400 50  0001 C CNN
	1    20800 12650
	1    0    0    -1  
$EndComp
Wire Wire Line
	20500 12650 20200 12650
Wire Wire Line
	20200 12650 20200 13100
Wire Wire Line
	20800 12950 20800 13100
Connection ~ 20800 13100
Wire Wire Line
	21100 12650 21400 12650
Wire Wire Line
	21400 12650 21400 13100
$Comp
L power:+5V #PWR0176
U 1 1 5FD1F9C8
P 21400 12650
F 0 "#PWR0176" H 21400 12500 50  0001 C CNN
F 1 "+5V" H 21415 12823 50  0000 C CNN
F 2 "" H 21400 12650 50  0001 C CNN
F 3 "" H 21400 12650 50  0001 C CNN
	1    21400 12650
	1    0    0    -1  
$EndComp
Connection ~ 21400 12650
Wire Wire Line
	20800 13300 20800 13100
$Comp
L Device:D D28
U 1 1 5FF9A4CB
P 20000 13100
F 0 "D28" H 20000 12883 50  0000 C CNN
F 1 "D" H 20000 12974 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 20000 13100 50  0001 C CNN
F 3 "~" H 20000 13100 50  0001 C CNN
	1    20000 13100
	-1   0    0    1   
$EndComp
Wire Wire Line
	20150 13100 20200 13100
Wire Wire Line
	20800 13300 19800 13300
Wire Wire Line
	19800 13100 19850 13100
$Comp
L Connector:Barrel_Jack_Switch J10
U 1 1 6022D2E1
P 19500 13200
F 0 "J10" H 19557 13517 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 19557 13426 50  0000 C CNN
F 2 "Custom_Footprints:CUI_PJ-002A" H 19550 13160 50  0001 C CNN
F 3 "~" H 19550 13160 50  0001 C CNN
	1    19500 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	19800 13200 19800 13300
Connection ~ 19800 13300
$Comp
L Device:CP C15
U 1 1 6034CB9F
P 20450 13100
F 0 "C15" V 20705 13100 50  0000 C CNN
F 1 "CP" V 20614 13100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 20488 12950 50  0001 C CNN
F 3 "~" H 20450 13100 50  0001 C CNN
	1    20450 13100
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C16
U 1 1 60474B6D
P 21150 13100
F 0 "C16" V 21405 13100 50  0000 C CNN
F 1 "CP" V 21314 13100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 21188 12950 50  0001 C CNN
F 3 "~" H 21150 13100 50  0001 C CNN
	1    21150 13100
	0    1    1    0   
$EndComp
Wire Wire Line
	21400 13100 21300 13100
Wire Wire Line
	20800 13100 21000 13100
Wire Wire Line
	20600 13100 20800 13100
Wire Wire Line
	20300 13100 20200 13100
Connection ~ 20200 13100
$Comp
L power:GND #PWR0177
U 1 1 606E7BD6
P 20800 13300
F 0 "#PWR0177" H 20800 13050 50  0001 C CNN
F 1 "GND" H 20805 13127 50  0000 C CNN
F 2 "" H 20800 13300 50  0001 C CNN
F 3 "" H 20800 13300 50  0001 C CNN
	1    20800 13300
	1    0    0    -1  
$EndComp
Connection ~ 20800 13300
$Comp
L Controller-rescue:AudioJack3-Connector J2
U 1 1 5FCD7CC1
P 2800 3250
F 0 "J2" H 2782 3575 50  0000 C CNN
F 1 "AudioJack3" H 2782 3484 50  0000 C CNN
F 2 "Custom_Footprints:Audio_Jack_3_Pin" H 2800 3250 50  0001 C CNN
F 3 "~" H 2800 3250 50  0001 C CNN
	1    2800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3350 3200 3350
Wire Wire Line
	3000 3150 3200 3150
Wire Wire Line
	3000 3250 3100 3250
Wire Wire Line
	3100 3250 3100 2300
Wire Wire Line
	3100 2300 3200 2300
$Comp
L Controller-rescue:R-Device R21
U 1 1 6018D17D
P 1650 4650
F 0 "R21" V 1443 4650 50  0000 C CNN
F 1 "R" V 1534 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1580 4650 50  0001 C CNN
F 3 "~" H 1650 4650 50  0001 C CNN
	1    1650 4650
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:R-Device R22
U 1 1 601EFF7B
P 2450 4650
F 0 "R22" V 2243 4650 50  0000 C CNN
F 1 "R" V 2334 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2380 4650 50  0001 C CNN
F 3 "~" H 2450 4650 50  0001 C CNN
	1    2450 4650
	1    0    0    -1  
$EndComp
$Comp
L Controller-rescue:R-Device R23
U 1 1 60252C42
P 2650 4650
F 0 "R23" V 2443 4650 50  0000 C CNN
F 1 "R" V 2534 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2580 4650 50  0001 C CNN
F 3 "~" H 2650 4650 50  0001 C CNN
	1    2650 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4800 2550 4800
Connection ~ 2650 4800
$Comp
L power:GND #PWR0162
U 1 1 60448902
P 2550 4800
F 0 "#PWR0162" H 2550 4550 50  0001 C CNN
F 1 "GND" H 2555 4627 50  0000 C CNN
F 2 "" H 2550 4800 50  0001 C CNN
F 3 "" H 2550 4800 50  0001 C CNN
	1    2550 4800
	1    0    0    -1  
$EndComp
Connection ~ 2550 4800
Wire Wire Line
	2550 4800 2650 4800
Text GLabel 1650 4400 1    50   Input ~ 0
CV1
Text GLabel 2450 4400 1    50   Input ~ 0
CV2
Text GLabel 2650 4200 2    50   Input ~ 0
EXPRESSION_PEDAL_1
Wire Wire Line
	1650 4500 1650 4450
Wire Wire Line
	2450 4400 2450 4450
Wire Wire Line
	12100 9550 12200 9550
$Comp
L Controller-rescue:CAP-pspice C14
U 1 1 5FBD6917
P 15900 6350
F 0 "C14" V 15585 6350 50  0000 C CNN
F 1 "CAP" V 15676 6350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 15900 6350 50  0001 C CNN
F 3 "~" H 15900 6350 50  0001 C CNN
	1    15900 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	15900 6100 15700 6100
Wire Wire Line
	15700 6100 15700 6000
Connection ~ 15700 6000
Wire Wire Line
	15700 6000 15750 6000
Wire Wire Line
	15900 6600 15650 6600
Wire Wire Line
	15650 6600 15650 6200
Wire Wire Line
	15650 6200 15500 6200
Connection ~ 15500 6200
Wire Wire Line
	15500 6200 15500 6250
$Comp
L Controller-rescue:CAP-pspice C13
U 1 1 5FD0C2D0
P 15900 3350
F 0 "C13" V 15585 3350 50  0000 C CNN
F 1 "CAP" V 15676 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 15900 3350 50  0001 C CNN
F 3 "~" H 15900 3350 50  0001 C CNN
	1    15900 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C17
U 1 1 5FD73F26
P 17850 3350
F 0 "C17" V 17535 3350 50  0000 C CNN
F 1 "CAP" V 17626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 17850 3350 50  0001 C CNN
F 3 "~" H 17850 3350 50  0001 C CNN
	1    17850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C18
U 1 1 5FDDB8E7
P 19350 3350
F 0 "C18" V 19035 3350 50  0000 C CNN
F 1 "CAP" V 19126 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 19350 3350 50  0001 C CNN
F 3 "~" H 19350 3350 50  0001 C CNN
	1    19350 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C19
U 1 1 5FE43134
P 20850 3350
F 0 "C19" V 20535 3350 50  0000 C CNN
F 1 "CAP" V 20626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 20850 3350 50  0001 C CNN
F 3 "~" H 20850 3350 50  0001 C CNN
	1    20850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C20
U 1 1 5FEAA9BE
P 23350 3350
F 0 "C20" V 23035 3350 50  0000 C CNN
F 1 "CAP" V 23126 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 23350 3350 50  0001 C CNN
F 3 "~" H 23350 3350 50  0001 C CNN
	1    23350 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C21
U 1 1 5FF12181
P 24850 3350
F 0 "C21" V 24535 3350 50  0000 C CNN
F 1 "CAP" V 24626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 24850 3350 50  0001 C CNN
F 3 "~" H 24850 3350 50  0001 C CNN
	1    24850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C22
U 1 1 5FF799F7
P 26350 3350
F 0 "C22" V 26035 3350 50  0000 C CNN
F 1 "CAP" V 26126 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 26350 3350 50  0001 C CNN
F 3 "~" H 26350 3350 50  0001 C CNN
	1    26350 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C23
U 1 1 5FFE12AA
P 28850 3350
F 0 "C23" V 28535 3350 50  0000 C CNN
F 1 "CAP" V 28626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 28850 3350 50  0001 C CNN
F 3 "~" H 28850 3350 50  0001 C CNN
	1    28850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C24
U 1 1 60048AF7
P 30350 3350
F 0 "C24" V 30035 3350 50  0000 C CNN
F 1 "CAP" V 30126 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 30350 3350 50  0001 C CNN
F 3 "~" H 30350 3350 50  0001 C CNN
	1    30350 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C25
U 1 1 600B02DE
P 31850 3350
F 0 "C25" V 31535 3350 50  0000 C CNN
F 1 "CAP" V 31626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 31850 3350 50  0001 C CNN
F 3 "~" H 31850 3350 50  0001 C CNN
	1    31850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C26
U 1 1 60117A5F
P 34350 3350
F 0 "C26" V 34035 3350 50  0000 C CNN
F 1 "CAP" V 34126 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 34350 3350 50  0001 C CNN
F 3 "~" H 34350 3350 50  0001 C CNN
	1    34350 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C28
U 1 1 6017F276
P 35850 3350
F 0 "C28" V 35535 3350 50  0000 C CNN
F 1 "CAP" V 35626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 35850 3350 50  0001 C CNN
F 3 "~" H 35850 3350 50  0001 C CNN
	1    35850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C30
U 1 1 601E6A01
P 37350 3350
F 0 "C30" V 37035 3350 50  0000 C CNN
F 1 "CAP" V 37126 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 37350 3350 50  0001 C CNN
F 3 "~" H 37350 3350 50  0001 C CNN
	1    37350 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C32
U 1 1 6024E1AD
P 38850 3350
F 0 "C32" V 38535 3350 50  0000 C CNN
F 1 "CAP" V 38626 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 38850 3350 50  0001 C CNN
F 3 "~" H 38850 3350 50  0001 C CNN
	1    38850 3350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C33
U 1 1 602B5AEA
P 38850 4350
F 0 "C33" V 38535 4350 50  0000 C CNN
F 1 "CAP" V 38626 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 38850 4350 50  0001 C CNN
F 3 "~" H 38850 4350 50  0001 C CNN
	1    38850 4350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C31
U 1 1 6031D3B6
P 37350 4350
F 0 "C31" V 37035 4350 50  0000 C CNN
F 1 "CAP" V 37126 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 37350 4350 50  0001 C CNN
F 3 "~" H 37350 4350 50  0001 C CNN
	1    37350 4350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C29
U 1 1 60384C42
P 35850 4350
F 0 "C29" V 35535 4350 50  0000 C CNN
F 1 "CAP" V 35626 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 35850 4350 50  0001 C CNN
F 3 "~" H 35850 4350 50  0001 C CNN
	1    35850 4350
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C27
U 1 1 603EC4DE
P 34350 4350
F 0 "C27" V 34035 4350 50  0000 C CNN
F 1 "CAP" V 34126 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 34350 4350 50  0001 C CNN
F 3 "~" H 34350 4350 50  0001 C CNN
	1    34350 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	15900 3600 15650 3600
Wire Wire Line
	15650 3600 15650 3200
Wire Wire Line
	15650 3200 15500 3200
Connection ~ 15500 3200
Wire Wire Line
	15500 3200 15500 3250
Wire Wire Line
	15900 3100 15700 3100
Wire Wire Line
	15700 3100 15700 3000
Connection ~ 15700 3000
Wire Wire Line
	15700 3000 15750 3000
Wire Wire Line
	17850 3100 17700 3100
Wire Wire Line
	17700 3100 17700 3000
Connection ~ 17700 3000
Wire Wire Line
	17700 3000 17750 3000
Wire Wire Line
	17850 3600 17600 3600
Wire Wire Line
	17600 3600 17600 3200
Wire Wire Line
	17600 3200 17500 3200
Connection ~ 17500 3200
Wire Wire Line
	17500 3200 17500 3250
Wire Wire Line
	19350 3600 19100 3600
Wire Wire Line
	19100 3600 19100 3200
Wire Wire Line
	19100 3200 19000 3200
Connection ~ 19000 3200
Wire Wire Line
	19000 3200 19000 3250
Wire Wire Line
	19350 3100 19200 3100
Wire Wire Line
	19200 3100 19200 3000
Connection ~ 19200 3000
Wire Wire Line
	19200 3000 19250 3000
Wire Wire Line
	20850 3600 20600 3600
Wire Wire Line
	20600 3600 20600 3200
Wire Wire Line
	20600 3200 20500 3200
Connection ~ 20500 3200
Wire Wire Line
	20500 3200 20500 3250
Wire Wire Line
	20850 3100 20700 3100
Wire Wire Line
	20700 3100 20700 3000
Connection ~ 20700 3000
Wire Wire Line
	20700 3000 20750 3000
Wire Wire Line
	23350 3100 23200 3100
Wire Wire Line
	23200 3100 23200 3000
Connection ~ 23200 3000
Wire Wire Line
	23200 3000 23250 3000
Wire Wire Line
	23350 3600 23100 3600
Wire Wire Line
	23100 3600 23100 3200
Wire Wire Line
	23100 3200 23000 3200
Connection ~ 23000 3200
Wire Wire Line
	23000 3200 23000 3250
Wire Wire Line
	24850 3600 24600 3600
Wire Wire Line
	24600 3600 24600 3200
Wire Wire Line
	24600 3200 24500 3200
Connection ~ 24500 3200
Wire Wire Line
	24500 3200 24500 3250
Wire Wire Line
	24850 3100 24700 3100
Wire Wire Line
	24700 3100 24700 3000
Connection ~ 24700 3000
Wire Wire Line
	24700 3000 24750 3000
Wire Wire Line
	26350 3600 26100 3600
Wire Wire Line
	26100 3600 26100 3200
Wire Wire Line
	26100 3200 26000 3200
Connection ~ 26000 3200
Wire Wire Line
	26000 3200 26000 3250
Wire Wire Line
	26350 3100 26200 3100
Wire Wire Line
	26200 3100 26200 3000
Connection ~ 26200 3000
Wire Wire Line
	26200 3000 26250 3000
Wire Wire Line
	28850 3100 28700 3100
Wire Wire Line
	28700 3100 28700 3000
Connection ~ 28700 3000
Wire Wire Line
	28700 3000 28750 3000
Wire Wire Line
	28850 3600 28600 3600
Wire Wire Line
	28600 3600 28600 3200
Wire Wire Line
	28600 3200 28500 3200
Connection ~ 28500 3200
Wire Wire Line
	28500 3200 28500 3250
Wire Wire Line
	30350 3600 30100 3600
Wire Wire Line
	30100 3600 30100 3200
Wire Wire Line
	30100 3200 30000 3200
Connection ~ 30000 3200
Wire Wire Line
	30000 3200 30000 3250
Wire Wire Line
	30350 3100 30200 3100
Wire Wire Line
	30200 3100 30200 3000
Connection ~ 30200 3000
Wire Wire Line
	30200 3000 30250 3000
Wire Wire Line
	31850 3600 31600 3600
Wire Wire Line
	31600 3600 31600 3200
Wire Wire Line
	31600 3200 31500 3200
Connection ~ 31500 3200
Wire Wire Line
	31500 3200 31500 3250
Wire Wire Line
	31850 3100 31700 3100
Wire Wire Line
	31700 3100 31700 3000
Connection ~ 31700 3000
Wire Wire Line
	31700 3000 31750 3000
Wire Wire Line
	34350 3600 34100 3600
Wire Wire Line
	34100 3600 34100 3200
Wire Wire Line
	34100 3200 34000 3200
Connection ~ 34000 3200
Wire Wire Line
	34000 3200 34000 3250
Wire Wire Line
	34350 3100 34200 3100
Wire Wire Line
	34200 3100 34200 3000
Connection ~ 34200 3000
Wire Wire Line
	35850 3600 35600 3600
Wire Wire Line
	35600 3600 35600 3200
Wire Wire Line
	35600 3200 35500 3200
Connection ~ 35500 3200
Wire Wire Line
	35500 3200 35500 3250
Wire Wire Line
	35850 3100 35700 3100
Wire Wire Line
	35700 3100 35700 3000
Connection ~ 35700 3000
Wire Wire Line
	37350 3600 37100 3600
Wire Wire Line
	37100 3600 37100 3200
Wire Wire Line
	37100 3200 37000 3200
Connection ~ 37000 3200
Wire Wire Line
	37000 3200 37000 3250
Wire Wire Line
	37350 3100 37200 3100
Wire Wire Line
	37200 3100 37200 3000
Connection ~ 37200 3000
Wire Wire Line
	38850 3600 38600 3600
Wire Wire Line
	38600 3600 38600 3200
Wire Wire Line
	38600 3200 38500 3200
Connection ~ 38500 3200
Wire Wire Line
	38500 3200 38500 3250
Wire Wire Line
	38850 3100 38700 3100
Wire Wire Line
	38700 3100 38700 3000
Connection ~ 38700 3000
Wire Wire Line
	38850 4600 38600 4600
Wire Wire Line
	38600 4600 38600 4200
Wire Wire Line
	38600 4200 38500 4200
Connection ~ 38500 4200
Wire Wire Line
	38500 4200 38500 4250
Wire Wire Line
	38850 4100 38700 4100
Wire Wire Line
	38700 4100 38700 4000
Connection ~ 38700 4000
Wire Wire Line
	37350 4600 37100 4600
Wire Wire Line
	37100 4600 37100 4200
Wire Wire Line
	37100 4200 37000 4200
Connection ~ 37000 4200
Wire Wire Line
	37000 4200 37000 4250
Wire Wire Line
	37350 4100 37200 4100
Wire Wire Line
	37200 4100 37200 4000
Connection ~ 37200 4000
Wire Wire Line
	35850 4600 35600 4600
Wire Wire Line
	35600 4600 35600 4200
Wire Wire Line
	35600 4200 35500 4200
Connection ~ 35500 4200
Wire Wire Line
	35500 4200 35500 4250
Wire Wire Line
	35850 4100 35700 4100
Wire Wire Line
	35700 4100 35700 4000
Connection ~ 35700 4000
Wire Wire Line
	34350 4600 34100 4600
Wire Wire Line
	34100 4600 34100 4200
Wire Wire Line
	34100 4200 34000 4200
Connection ~ 34000 4200
Wire Wire Line
	34000 4200 34000 4250
Wire Wire Line
	34350 4100 34200 4100
Wire Wire Line
	34200 4100 34200 4000
Connection ~ 34200 4000
$Comp
L Regulator_Linear:L7805 U8
U 1 1 5FC3792B
P 20800 12050
F 0 "U8" H 20800 12292 50  0000 C CNN
F 1 "L7805" H 20800 12201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 20825 11900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 20800 12000 50  0001 C CNN
	1    20800 12050
	1    0    0    -1  
$EndComp
Wire Wire Line
	20800 12350 20800 12950
Connection ~ 20800 12950
Wire Wire Line
	20500 12050 20500 12650
Connection ~ 20500 12650
Wire Wire Line
	21100 12050 21100 12650
Connection ~ 21100 12650
$Comp
L Controller-rescue:R-Device R24
U 1 1 602B58DB
P 3200 4650
F 0 "R24" V 2993 4650 50  0000 C CNN
F 1 "R" V 3084 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3130 4650 50  0001 C CNN
F 3 "~" H 3200 4650 50  0001 C CNN
	1    3200 4650
	1    0    0    -1  
$EndComp
Text GLabel 3200 4350 2    50   Input ~ 0
EXPRESSION_PEDAL_2
$Comp
L Controller-rescue:CAP-pspice C34
U 1 1 5FF688CD
P 2900 4550
F 0 "C34" V 2585 4550 50  0000 C CNN
F 1 "CAP" V 2676 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2900 4550 50  0001 C CNN
F 3 "~" H 2900 4550 50  0001 C CNN
	1    2900 4550
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C35
U 1 1 5FFF620A
P 3450 4700
F 0 "C35" V 3135 4700 50  0000 C CNN
F 1 "CAP" V 3226 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3450 4700 50  0001 C CNN
F 3 "~" H 3450 4700 50  0001 C CNN
	1    3450 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 4300 2650 4300
Wire Wire Line
	2650 4500 2650 4300
Wire Wire Line
	2650 4300 2650 4200
Connection ~ 2650 4300
Wire Wire Line
	3450 4450 3200 4450
Wire Wire Line
	3200 4350 3200 4450
Wire Wire Line
	3200 4450 3200 4500
Connection ~ 3200 4450
Wire Wire Line
	3450 4950 3200 4950
Wire Wire Line
	3200 4950 3200 4800
Connection ~ 3200 4800
Wire Wire Line
	2650 4800 2900 4800
Wire Wire Line
	2900 4800 3200 4800
Connection ~ 2900 4800
Wire Wire Line
	2450 4800 2050 4800
Connection ~ 2450 4800
$Comp
L Controller-rescue:CAP-pspice C37
U 1 1 60435A09
P 2050 4550
F 0 "C37" V 1735 4550 50  0000 C CNN
F 1 "CAP" V 1826 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2050 4550 50  0001 C CNN
F 3 "~" H 2050 4550 50  0001 C CNN
	1    2050 4550
	-1   0    0    1   
$EndComp
$Comp
L Controller-rescue:CAP-pspice C36
U 1 1 604C727F
P 1200 4550
F 0 "C36" V 885 4550 50  0000 C CNN
F 1 "CAP" V 976 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1200 4550 50  0001 C CNN
F 3 "~" H 1200 4550 50  0001 C CNN
	1    1200 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 4800 1200 4800
Connection ~ 1650 4800
Wire Wire Line
	1200 4300 1500 4300
Wire Wire Line
	1500 4300 1500 4450
Wire Wire Line
	1500 4450 1650 4450
Connection ~ 1650 4450
Wire Wire Line
	1650 4450 1650 4400
Wire Wire Line
	2050 4300 2300 4300
Wire Wire Line
	2300 4300 2300 4450
Wire Wire Line
	2300 4450 2450 4450
Connection ~ 2450 4450
Wire Wire Line
	2450 4450 2450 4500
Connection ~ 2050 4800
Wire Wire Line
	2050 4800 1650 4800
$Comp
L Controller-rescue:Conn_01x06_Female-Connector J3
U 1 1 5FCEDD16
P 12000 12200
F 0 "J3" H 12028 12176 50  0000 L CNN
F 1 "Conn_01x06_Female" H 12028 12085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 12000 12200 50  0001 C CNN
F 3 "~" H 12000 12200 50  0001 C CNN
	1    12000 12200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 5FD8790B
P 11500 12400
F 0 "#PWR0163" H 11500 12150 50  0001 C CNN
F 1 "GND" V 11505 12272 50  0000 R CNN
F 2 "" H 11500 12400 50  0001 C CNN
F 3 "" H 11500 12400 50  0001 C CNN
	1    11500 12400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0178
U 1 1 5FD8817C
P 11500 12300
F 0 "#PWR0178" H 11500 12150 50  0001 C CNN
F 1 "+5V" V 11515 12428 50  0000 L CNN
F 2 "" H 11500 12300 50  0001 C CNN
F 3 "" H 11500 12300 50  0001 C CNN
	1    11500 12300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11500 12400 11800 12400
Wire Wire Line
	11800 12300 11500 12300
Text GLabel 11500 12200 0    50   Input ~ 0
RXD
Text GLabel 11500 12100 0    50   Input ~ 0
TXD
Wire Wire Line
	11500 12100 11800 12100
Wire Wire Line
	11800 12200 11500 12200
$Comp
L Controller-rescue:CAP-pspice C38
U 1 1 5FFF51CC
P 11350 11850
F 0 "C38" V 11035 11850 50  0000 C CNN
F 1 "CAP" V 11126 11850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11350 11850 50  0001 C CNN
F 3 "~" H 11350 11850 50  0001 C CNN
	1    11350 11850
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 11850 11700 11850
Wire Wire Line
	11700 11850 11700 12000
Wire Wire Line
	11700 12000 11800 12000
Text GLabel 11000 11850 0    50   Input ~ 0
RESET
Wire Wire Line
	11100 11850 11000 11850
Text GLabel 10500 5350 3    50   Input ~ 0
RESET
Text GLabel 9600 5550 2    50   Input ~ 0
RXD
Text GLabel 9600 5650 2    50   Input ~ 0
TXD
Wire Wire Line
	9600 5550 9500 5550
Wire Wire Line
	9500 5650 9600 5650
Wire Wire Line
	3300 1300 3250 1300
Wire Wire Line
	3250 1300 3250 1400
Wire Wire Line
	3250 1400 3100 1400
Wire Wire Line
	3300 1400 3300 1450
Wire Wire Line
	3300 1450 3150 1450
Wire Wire Line
	3150 1450 3150 1300
Wire Wire Line
	3150 1300 3100 1300
$Comp
L Connector:Conn_01x07_Female J11
U 1 1 610A4734
P 7200 12300
F 0 "J11" H 7228 12326 50  0000 L CNN
F 1 "Conn_01x07_Female" H 7228 12235 50  0000 L CNN
F 2 "Custom_Footprints:1.3Inch_OLED_SPI" H 7200 12300 50  0001 C CNN
F 3 "~" H 7200 12300 50  0001 C CNN
	1    7200 12300
	1    0    0    -1  
$EndComp
Text GLabel 6900 12400 0    50   Input ~ 0
RES
Text GLabel 6900 12300 0    50   Input ~ 0
D1
Text GLabel 6900 12200 0    50   Input ~ 0
D0
$Comp
L Controller-rescue:+5V-power #PWR0179
U 1 1 610B83C3
P 6900 12100
F 0 "#PWR0179" H 6900 11950 50  0001 C CNN
F 1 "+5V" V 6915 12228 50  0000 L CNN
F 2 "" H 6900 12100 50  0001 C CNN
F 3 "" H 6900 12100 50  0001 C CNN
	1    6900 12100
	0    -1   -1   0   
$EndComp
$Comp
L Controller-rescue:GND-power #PWR0180
U 1 1 610B83C9
P 6900 12000
F 0 "#PWR0180" H 6900 11750 50  0001 C CNN
F 1 "GND" V 6905 11872 50  0000 R CNN
F 2 "" H 6900 12000 50  0001 C CNN
F 3 "" H 6900 12000 50  0001 C CNN
	1    6900 12000
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 12000 7000 12000
Wire Wire Line
	6900 12100 7000 12100
Wire Wire Line
	6900 12200 7000 12200
Wire Wire Line
	6900 12300 7000 12300
Wire Wire Line
	6900 12400 7000 12400
Text GLabel 6900 12500 0    50   Input ~ 0
OLED_DC
Wire Wire Line
	6900 12500 7000 12500
Wire Wire Line
	6500 12600 7000 12600
Text GLabel 6500 12600 0    50   Input ~ 0
OLED_CS
$Comp
L Controller-rescue:R-Device R14
U 1 1 6254CABD
P 800 4650
F 0 "R14" V 593 4650 50  0000 C CNN
F 1 "R" V 684 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 730 4650 50  0001 C CNN
F 3 "~" H 800 4650 50  0001 C CNN
	1    800  4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4800 800  4800
Connection ~ 1200 4800
Text GLabel 800  4400 1    50   Input ~ 0
POT_SPREAD
Wire Wire Line
	800  4400 800  4500
Wire Wire Line
	15350 6000 15700 6000
Wire Wire Line
	15350 3000 15700 3000
Wire Wire Line
	17350 3000 17700 3000
Wire Wire Line
	18850 3000 19200 3000
Wire Wire Line
	20350 3000 20700 3000
Wire Wire Line
	22850 3000 23200 3000
Wire Wire Line
	24350 3000 24700 3000
Wire Wire Line
	25850 3000 26200 3000
Wire Wire Line
	28350 3000 28700 3000
Wire Wire Line
	29850 3000 30200 3000
Wire Wire Line
	31350 3000 31700 3000
Wire Wire Line
	33850 3000 34200 3000
Wire Wire Line
	35350 3000 35700 3000
Wire Wire Line
	36850 3000 37200 3000
Wire Wire Line
	38350 3000 38700 3000
Wire Wire Line
	33850 4000 34200 4000
Wire Wire Line
	35350 4000 35700 4000
Wire Wire Line
	36850 4000 37200 4000
Wire Wire Line
	38350 4000 38700 4000
$EndSCHEMATC
