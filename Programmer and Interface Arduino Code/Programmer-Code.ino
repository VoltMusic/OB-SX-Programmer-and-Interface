#include <SPI.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiSoftSpi.h"
#include <Wire.h>
const int chipSelect = 10;
//#include <SdFat.h>
#include "PF.h"
#include "PetitSerial.h"


PetitSerial PS;
// Use PetitSerial instead of Serial.
#define Serial PS

FATFS fs;

// pin definitions
#define CS_PIN    6
#define RST_PIN   A2
#define DC_PIN    5
#define MOSI_PIN A1
#define CLK_PIN  A0
#define MUX_S0 2
#define MUX_S1 3
#define MUX_S2 4
#define MUX_IN_0 A3
#define MUX_IN_1 A6
#define MUX_IN_2 A7

SSD1306AsciiSoftSpi oled;

#define COMMAND_REFRESH       0xFF
#define COMMAND_READ_ALL      0xFE
#define COMMAND_MIDI_CHANNEL  0xFD
#define COMMAND_MIDI_IN       0xFC
#define COMMAND_MIDI_OUT      0xFB
#define COMMAND_VOICE_SPREAD  0xFA

#define COMMAND_VCF_ATTACK    0x66
#define COMMAND_VCA_ATTACK    0x67
#define COMMAND_VCF_DECAY     0x68
#define COMMAND_VCA_RELEASE   0x69
#define COMMAND_CUTOFF        0x6A
#define COMMAND_OSC2_DETUNE   0x6B
#define COMMAND_LFO_FREQ      0x6C
#define COMMAND_PORTAMENT     0x6D
#define COMMAND_VCA_DECAY     0x6E
#define COMMAND_VCF_SUSTAIN   0x6F
#define COMMAND_VCA_SUSTAIN   0x70
#define COMMAND_VCF_RELEASE   0x71
#define COMMAND_RESONANCE     0x72
#define COMMAND_VCF_MOD       0x73
#define COMMAND_PWM_AMOUNT    0x74
#define COMMAND_Freq_MOD      0x75
#define COMMAND_PWM_MOD       0x76
#define COMMAND_OSC2_FREQ     0x77
#define COMMAND_OSC1_FREQ     0x78
#define COMMAND_SWITCH_1      0x79

#define SWITCH_WAVE_OSC1      B00000100
#define SWITCH_WAVE_OSC2      B00001000
#define SWITCH_FREQ_FILTER    B00000010
#define SWITCH_FREQ_OSC2      B00000001
#define SWITCH_FREQ_OSC1      B00100000
#define SWITCH_LFO_WAVE       B00010000

#define COMMAND_SWITCH_2      0x7A

#define SWITCH_SYNC           B00001000
#define SWITCH_CMOD           B00000100
#define SWITCH_TRACK          B00100000
#define SWITCH_PWM_OSC1       B10000000
#define SWITCH_PWM_OSC2       B01000000
#define SWITCH_OSC2_LOUD      B00010000
#define SWITCH_UNISON         B00000001

#define SWITCH_SYNC           B00010000
#define SWITCH_CMOD           B00100000
#define SWITCH_TRACK          B00000100
#define SWITCH_PWM_OSC1       B00000001
#define SWITCH_PWM_OSC2       B00000010
#define SWITCH_OSC2_LOUD      B00001000
#define SWITCH_UNISON         B01000000


#define POT_OBSX_START_ADDRESS 0x66
#define POT_OBSX_BYTE_LENGTH 18
#define INTERFACE_WRITE_ADDRESS 9
#define CONTROLLER_ADDRESS 8
#define LED_BUTTON_CONTROLLER 0x70

uint8_t PATCH_POT_VALUES[48] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
uint8_t POT_VALUES[24] =       {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
uint8_t Clipboard[21] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
uint8_t POT_VALUES_OLD[24] =   {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

uint8_t Selected_pot_value = 0;

boolean trigger = false;

uint8_t Random_Mode = B00011110;

uint8_t Bus_A = 0;
uint8_t CV1_Bus_A = 0;
uint8_t CV2_Bus_A = 0;
uint8_t CV3_Bus_A = 0;

uint8_t Bus_A_Range = 63;
uint8_t CV1_Bus_A_Range = 63;
uint8_t CV2_Bus_A_Range = 63;
uint8_t CV3_Bus_A_Range = 63;

uint8_t Bus_B = 0;
uint8_t CV1_Bus_B = 0;
uint8_t CV2_Bus_B = 0;
uint8_t CV3_Bus_B = 0;

byte KeyScan[5]={0,0,0,0,0};
//byte KeysDown[5]={B00010000,0,0,0,B00000010};
byte KeysDown[5]={0,0,0,0,0};
byte Shift_KeysDown[2] = {0x01, 0x00};
String Current_Preset = "1";

uint8_t Int_Patch_Data[21] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x02,0x20};
uint8_t Brightness = 15;

uint8_t MIDI_IN = 0;
uint8_t MIDI_OUT = 0;

const uint16_t margin PROGMEM = 12;   //  +/- 1
const uint16_t numberOfLevelsOutput PROGMEM = 64 ;  // 0..9

boolean Button_Flag = false;
int button_delay = 0;

byte STATE = 10;

String Selected_pot = "";
int Old_Pot_Address = 100;

const char Preset_Array[6] = {'A','B','C','D','E','F'};

void setup() {
  oled.begin(&SH1106_128x64, CS_PIN, DC_PIN, CLK_PIN, MOSI_PIN, RST_PIN);
  oled.setFont(System5x7);
  oled.displayRemap(true);
  oled.clear();

  pinMode(MUX_S0, OUTPUT);
  pinMode(MUX_S1, OUTPUT);
  pinMode(MUX_S2, OUTPUT);
  pinMode(MUX_IN_0, INPUT);
  pinMode(MUX_IN_1, INPUT);
  pinMode(MUX_IN_2, INPUT);

  delay(100);
  
  Wire.begin();
  Wire.beginTransmission(LED_BUTTON_CONTROLLER);
  Wire.write(0x20); // turn on oscillator
  Wire.write(0x21); // turn on oscillator
  Wire.write(0x81); // turn on display and blink rate
  Wire.write(0xE4); // set brighness
  Wire.endTransmission();

  CLEAR_LEDS();

  Serial.begin(9600);

  oled.clear();
  oled.println(F("Can't find SD"));
    
  // Initialize SD and file system.
  while(PF.begin(&fs)){   
  }

  oled.clear();
  oled.println(F("OB-SX"));
  oled.println(F("Programmer"));
  delay(200);
  STATE = 1;
  READ_POT(true);
}

void loop() {
  switch(STATE) {
    case 1: // Main display
      oled.clear(0, 127, 0, 1);
      oled.print(F("Select patch"));
      STATE = 4;
      break;
    case 2: // IDLE
      if ((Shift_KeysDown[0] & B00010000) > 0) {
        oled.clear(0, 127, 1, 2);
        oled.print(F("Saveing patch.. "));
        Save_Patch_To_SD(Current_Preset, false);    
        STATE = 3;
      }
      if ((Shift_KeysDown[0] & B00100000) > 0) {
        for (uint8_t pot_count = 0; pot_count < 19; pot_count++) {
          PATCH_POT_VALUES[pot_count] = Int_Patch_Data[pot_count];
          Update_OB_SX_Pot(pot_count);
        }
        KeysDown[2] = Int_Patch_Data[19];
        KeysDown[3] = B00001111 & Int_Patch_Data[20];
        KeysDown[4] = (B01110000 & Int_Patch_Data[20]) >> 4;
        oled.clear(0, 127, 1, 2);
        oled.print(F("Initialising patch.. "));
        Update_OB_Switches();
        STATE = 3;
      }
      if ((Shift_KeysDown[0] & B01000000) > 0) {
        for (uint8_t pot_count = 0; pot_count < 19; pot_count++) {
          Clipboard[pot_count] = PATCH_POT_VALUES[pot_count];
        }
        Clipboard[19] = KeysDown[2];
        Clipboard[20] = B00001111 & KeysDown[3];
        Clipboard[20] = Clipboard[20] | ((KeysDown[4] << 4) & B01110000);
        oled.clear(0, 127, 1, 2);
        oled.print(F("Copyed to clipboard.. ")); 
        STATE = 3;
      }
      if ((Shift_KeysDown[0] & B10000000) > 0) {
        oled.clear(0, 127, 1, 2);
        for (uint8_t pot_count = 0; pot_count < 19; pot_count++) {
          PATCH_POT_VALUES[pot_count] = Clipboard[pot_count];
          Update_OB_SX_Pot(pot_count);
        }
        KeysDown[2] = Clipboard[19];
        KeysDown[3] = B00001111 & Clipboard[20];
        KeysDown[4] = (B01110000 & Clipboard[20]) >> 4;
        
        oled.print(F("Pasted from clipboard.. "));
        Update_OB_Switches();
        STATE = 3;
      }
      if ((Shift_KeysDown[1] & B00000001) > 0) {
        oled.clear(0, 127, 1, 2);
        oled.print(F("Randomising patch.. "));
        Randomise_Patch();
        Update_OB_Switches();
        STATE = 3;
      }
      if ((Shift_KeysDown[1] & B00000010) > 0) {
        oled.clear(0, 127, 1, 2);
        oled.print(F("Applying Panel.. "));
        for (uint8_t pot_count = 0; pot_count < 19; pot_count++) {
          POT_VALUES_OLD[pot_count] = B10000000;
        }
        Update_OB_Switches();
        STATE = 3;
      }
      if ((Shift_KeysDown[1] & B00000100) > 0) {
        oled.clear(0, 127, 1, 2);
        oled.println(F("Setting MIDI Channels"));
        Update_OB_Memory(COMMAND_MIDI_IN, MIDI_IN);
        Update_OB_Memory(COMMAND_MIDI_OUT, MIDI_OUT);
        STATE = 3;
      }
      if ((Shift_KeysDown[1] & B00001000) > 0) {
        oled.clear(0, 127, 1, 2);
        oled.println(F("Autotune"));
        STATE = 3;
      }
      break;
    case 3: // Clear Screen
      Shift_KeysDown[0] = B00000001 | (Shift_KeysDown[0] & B00001110);
      Shift_KeysDown[1] = B00000000;
      delay(250);
      oled.clear(0, 127, 1, 2);
      //Exit_Shift();
      STATE = 4;
      break;
    case 4:
      UPDATE_LEDS();
      STATE = 2;
      break;
  }
  READ_POT(false);
  READ_BUTTONS();
}

uint16_t Pot_Convert( uint16_t inputLevel, int currentOutputLevel ) {
  const  uint16_t initialOutputLevel = 0 ;
  //static uint16_t currentOutputLevel = initialOutputLevel ;
  uint16_t lb = 16*currentOutputLevel;
  if ( currentOutputLevel > 0 ) lb -= margin  ;   // subtract margin
  uint16_t ub = 16*(currentOutputLevel+1);
  if ( currentOutputLevel < numberOfLevelsOutput ) ub +=  margin  ;  // add margin
  if ( inputLevel < lb || inputLevel > ub ) {
    // determine new output level by scanning endPointInput array
    uint16_t i;
    for ( i = 0 ; i < numberOfLevelsOutput ; i++ ) {
      if ( inputLevel >= 16*i && inputLevel <= 16*(i+1) ) break ;
    }
    currentOutputLevel = i ;
  }
  return currentOutputLevel ;
}

void BUTTON_LOGIC() {
  KeysDown[3] = KeysDown[3] xor KeyScan[3];

  if ((KeyScan[2] & B00000110) > 0) { // LFO OSC WAVE
    KeysDown[2] = KeyScan[2] | (B11111001 & KeysDown[2]);
  } else if ((KeyScan[2] & B11111001) > 0) {
    KeysDown[2] = KeysDown[2] ^ (KeyScan[2] & B11111001);
  }

  if ((KeysDown[0] & B00000001) and not (KeyScan[0] == B00000001)) {
    if (((KeyScan[0] & B11110000) > 0) or (KeyScan[1] > 0)) { //Preset Shift
      Shift_KeysDown[0] = KeyScan[0] | (B00001111 & Shift_KeysDown[0]);
      Shift_KeysDown[1] = KeyScan[1];
    } else if ((KeyScan[0] & B00001111) > 0) {
      Shift_KeysDown[0] = Shift_KeysDown[0] ^ (KeyScan[0] & B00001111);
    } 
  } else {
    if (((KeyScan[0] & B11110000) > 0) or (KeyScan[1] > 0)) { //Preset
      KeysDown[0] = KeyScan[0] | (B00001111 & KeysDown[0]);
      KeysDown[1] = KeyScan[1];
    } else if ((KeyScan[0] & B00001111) > 0) {
      KeysDown[0] = KeysDown[0] ^ (KeyScan[0] & B00001111);
    }    
  }

  if ((KeyScan[4] & B00000011) > 0) { //OSC2 HALF & FULL
    KeysDown[4] = KeyScan[4] | (B11111100 & KeysDown[4]);
  } else if ((KeyScan[4] & B11111100) > 0) {
    KeysDown[4] = KeysDown[4] ^ (KeyScan[4] & B11111100);
  }
}

void CLEAR_LEDS(){
  Wire.beginTransmission(LED_BUTTON_CONTROLLER);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.endTransmission(LED_BUTTON_CONTROLLER);
  Wire.beginTransmission(LED_BUTTON_CONTROLLER);
  Wire.write(0x81);
  Wire.endTransmission(LED_BUTTON_CONTROLLER);
}

void UPDATE_LEDS(){
  Wire.beginTransmission(LED_BUTTON_CONTROLLER);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  if (KeysDown[0] & B00000001) {
    Wire.write(Shift_KeysDown[0]); // 0x02: Num4, Num3, Num2, Num1, C, B, A, Shift
    Wire.write(Shift_KeysDown[1]); // 0x03: NA,NA,NA,NA, Num8, Num7, Num6, Num5      
  } else {
    Wire.write(KeysDown[0]); // 0x02: Num4, Num3, Num2, Num1, C, B, A, Shift
    Wire.write(KeysDown[1]); // 0x03: NA,NA,NA,NA, Num8, Num7, Num6, Num5
  }
  Wire.write(KeysDown[2]); // 0x04: PWM OSC2, PWM OSC1, Frq Filter, Frq_OSC2, Frq_OSC1, LFO_Squ, LFO_TRI, UNISON 
  Wire.write(KeysDown[3]); // 0x05: NA,NA,NA,NA, OSC2 WAVE, SYNC, X-MOD, OSC1 WAVE
  Wire.write(KeysDown[4]); // 0x06: NA,NA,NA,NA,NA, KBD, FULL, HALF
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.write(0x00);
  Wire.endTransmission(LED_BUTTON_CONTROLLER);
  Wire.beginTransmission(LED_BUTTON_CONTROLLER);
  Wire.write(0x81);
  Wire.endTransmission(LED_BUTTON_CONTROLLER);
}

void READ_BUTTONS(){
  byte but_int = 0x00;
  Wire.beginTransmission(LED_BUTTON_CONTROLLER);
  Wire.write(0x60);
  Wire.endTransmission();
  Wire.requestFrom(LED_BUTTON_CONTROLLER, 1);
  but_int = Wire.read();
  Wire.endTransmission();
   
  if (but_int == 0xFF){
    Wire.beginTransmission(LED_BUTTON_CONTROLLER);
    Wire.write(0x40);
    Wire.endTransmission();
    Wire.requestFrom(LED_BUTTON_CONTROLLER, 6);
    Wire.readBytes(KeyScan, 6);
    Wire.endTransmission();
    if ((KeyScan[0] == 0x00) and 
    (KeyScan[1] == 0x00) and 
    (KeyScan[2] == 0x00) and 
    (KeyScan[3] == 0x00) and 
    (KeyScan[4] == 0x00)) {
      trigger = false;
    } else if (trigger == false) {
      trigger = true;
      BUTTON_LOGIC();
      Update_Preset();    
    }
  }
}

void READ_POT(bool first_pass){
  for (int MUX_ADDRESS = 0; MUX_ADDRESS <= 7; MUX_ADDRESS++) {
    digitalWrite(MUX_S0, bitRead(MUX_ADDRESS, 0));
    digitalWrite(MUX_S1, bitRead(MUX_ADDRESS, 1));
    digitalWrite(MUX_S2, bitRead(MUX_ADDRESS, 2));
    POT_VALUES[MUX_ADDRESS] = Pot_Convert(analogRead(MUX_IN_0), POT_VALUES_OLD[MUX_ADDRESS]);
    if (POT_VALUES[MUX_ADDRESS] != POT_VALUES_OLD[MUX_ADDRESS]) {
      POT_VALUES_OLD[MUX_ADDRESS] = POT_VALUES[MUX_ADDRESS];
      if(!first_pass){
        if ((KeysDown[0] & B00000001 > 0) and (Shift_KeysDown[0] == B00000001) and ((Shift_KeysDown[1] & B00001111) == 0)) {
          PATCH_POT_VALUES[MUX_ADDRESS + 24] = POT_VALUES[MUX_ADDRESS];
          Update_OB_SX_Pot(MUX_ADDRESS + 24);
        } else {
          PATCH_POT_VALUES[MUX_ADDRESS] = POT_VALUES[MUX_ADDRESS];
          Update_OB_SX_Pot(MUX_ADDRESS);
        }
      }
    }
    POT_VALUES[MUX_ADDRESS + 8] = Pot_Convert(analogRead(MUX_IN_1), POT_VALUES_OLD[MUX_ADDRESS + 8]);
    if (POT_VALUES[MUX_ADDRESS + 8] != POT_VALUES_OLD[MUX_ADDRESS + 8]) {
      POT_VALUES_OLD[MUX_ADDRESS + 8] = POT_VALUES[MUX_ADDRESS + 8];
      if(!first_pass){
        if ((KeysDown[0] & B00000001 > 0) and (Shift_KeysDown[0] == B00000001) and ((Shift_KeysDown[1] & B00001111) == 0)) {
          PATCH_POT_VALUES[MUX_ADDRESS + 8 + 24] = POT_VALUES[MUX_ADDRESS + 8];
          Update_OB_SX_Pot(MUX_ADDRESS + 8 + 24);
        } else {
          PATCH_POT_VALUES[MUX_ADDRESS + 8] = POT_VALUES[MUX_ADDRESS + 8];
          Update_OB_SX_Pot(MUX_ADDRESS + 8);
        }
      }
    }
    POT_VALUES[MUX_ADDRESS + 16] = Pot_Convert(analogRead(MUX_IN_2), POT_VALUES_OLD[MUX_ADDRESS + 16]);
    if (POT_VALUES[MUX_ADDRESS + 16] != POT_VALUES_OLD[MUX_ADDRESS + 16]) {
      POT_VALUES_OLD[MUX_ADDRESS + 16] = POT_VALUES[MUX_ADDRESS + 16];
      PATCH_POT_VALUES[MUX_ADDRESS + 16] = POT_VALUES[MUX_ADDRESS + 16];
      if(!first_pass){
        if ((KeysDown[0] & B00000001 > 0) and (Shift_KeysDown[0] == B00000001) and ((Shift_KeysDown[1] & B00001111) == 0)) {
          PATCH_POT_VALUES[MUX_ADDRESS + 16 + 24] = POT_VALUES[MUX_ADDRESS + 16];
          Update_OB_SX_Pot(MUX_ADDRESS + 16 + 24);
        } else {
          PATCH_POT_VALUES[MUX_ADDRESS + 16] = POT_VALUES[MUX_ADDRESS + 16];
          Update_OB_SX_Pot(MUX_ADDRESS + 16);
        }
      }        
    }
  }
}

void Update_OB_SX_Pot(int Pot_Address) {
  Selected_pot_value = PATCH_POT_VALUES[Pot_Address];
  uint8_t Selected_BUS_Value = 0;
//  if ((KeysDown[0] == B00000001) and ((KeysDown[1] & B00001111) == 0)) {
//    switch(Pot_Address) {
//      case 0:
//        Selected_pot = F("TUNE RANDOM");
//        Pot_Address = 19;
//        break;
//      case 1:
//        Selected_pot = F("TUNE SPREAD");
//        Pot_Address = 20;
//        break;
//      case 2:
//        Selected_pot = F("MIDI CHANNEL IN");
//        Pot_Address = 21;
//        break;
//      case 3:
//        Selected_pot = F("MIDI CHANNEL OUT");
//        Pot_Address = 22;
//        break;
//    }

  //} else {
    switch(Pot_Address) {
      case 0:
        Selected_pot = F("PORTAMENTO");
        Update_OB_Memory(COMMAND_PORTAMENT, Selected_pot_value);
        break;
      case 1:
        Selected_pot = F("OSC2 DETUNE");
        Update_OB_Memory(COMMAND_OSC2_DETUNE, Selected_pot_value);
        break;
      case 2:
        Selected_pot = F("LFO RATE");
        Update_OB_Memory(COMMAND_LFO_FREQ, Selected_pot_value);
        break;
      case 3:
        Selected_pot = F("FREQ DEPTH");
        Update_OB_Memory(COMMAND_Freq_MOD, Selected_pot_value);
        break;
      case 4:
        Selected_pot = F("PWM DEPTH");
        Update_OB_Memory(COMMAND_PWM_MOD, Selected_pot_value);
        break;
      case 5:
        Selected_pot = F("OSC1 FREQ");
        Update_OB_Memory(COMMAND_OSC1_FREQ, Selected_pot_value);
        break;
      case 6:
        Selected_pot = F("PULSEWIDTH");
        Update_OB_Memory(COMMAND_PWM_AMOUNT, Selected_pot_value);
        break;
      case 7:
        Selected_pot = F("OSC2 FREQ");
        Update_OB_Memory(COMMAND_OSC2_FREQ, Selected_pot_value);
        break;
      case 8:
        Selected_pot = F("FILTER CUTOFF");
        Update_OB_Memory(COMMAND_CUTOFF, Selected_pot_value);
        break;
      case 9:
        Selected_pot = F("FILTER RESONANCE");
        Update_OB_Memory(COMMAND_RESONANCE, (63 - Selected_pot_value));
        break;
      case 10:
        Selected_pot = F("FILTER MOD");
        Update_OB_Memory(COMMAND_VCF_MOD, Selected_pot_value);
        break;
      case 11:
        Selected_pot = F("FILTER ATTACK");
        Update_OB_Memory(COMMAND_VCF_ATTACK, Selected_pot_value);
        break;
      case 12:
        Selected_pot = F("FILTER DECAY");
        Update_OB_Memory(COMMAND_VCF_DECAY, Selected_pot_value);
        break;
      case 13:
        Selected_pot = F("FILTER SUSTAIN");
        Update_OB_Memory(COMMAND_VCF_SUSTAIN, Selected_pot_value);
        break;
      case 14:
        Selected_pot = F("FILTER RELEASE");
        Update_OB_Memory(COMMAND_VCF_RELEASE, Selected_pot_value);
        break;
      case 15:
        Selected_pot = F("LOUDNESS ATTACK");
        Update_OB_Memory(COMMAND_VCA_ATTACK, Selected_pot_value);
        break;
      case 16:
        Selected_pot = F("LOUDNESS DECAY");
        Update_OB_Memory(COMMAND_VCA_DECAY, Selected_pot_value);
        break;
      case 17:
        Selected_pot = F("LOUDNESS SUSTAIN");
        Update_OB_Memory(COMMAND_VCA_SUSTAIN, Selected_pot_value);
        break;
      case 18:
        Selected_pot = F("LOUDNESS RELEASE");
        Update_OB_Memory(COMMAND_VCA_RELEASE, Selected_pot_value);
        break;
      case 19:
        Selected_pot = F("EXTERNAL 1");
        break;
      case 20: case 44:
        Selected_pot = F("EXPRESSION");
        if (Bus_A > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + Bus_A - 1), round((Selected_pot_value*Bus_A_Range)/63));
        }
        if (Bus_B > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + Bus_B - 1), Selected_pot_value);
        }
        break;
      case 21: case 45:
        Selected_pot = F("CV 2");
        if (CV2_Bus_A > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + CV2_Bus_A - 1), round((Selected_pot_value*CV2_Bus_A_Range)/63));
        }
        if (CV2_Bus_B > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + CV2_Bus_B - 1), Selected_pot_value);
        }
        break;
      case 22: case 46:
        Selected_pot = F("CV 1");
        if (CV1_Bus_A > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + CV1_Bus_A - 1), round((Selected_pot_value*CV1_Bus_A_Range)/63));
        }
        if (CV1_Bus_B > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + CV1_Bus_B - 1), Selected_pot_value);
        }
        break;
      case 23: case 47:
        Selected_pot = F("CV 3");
        if (CV3_Bus_A > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + CV3_Bus_A - 1), round((Selected_pot_value*CV3_Bus_A_Range)/63));
        }
        if (CV3_Bus_B > 0) {
          Update_OB_Memory((POT_OBSX_START_ADDRESS + CV3_Bus_B - 1), Selected_pot_value);
        }
        break;
      case 24:
        Selected_pot = F("TUNE RANDOM");
        break;
      case 25:
        Selected_pot = F("TUNE SPREAD");
        Update_OB_Memory(COMMAND_VOICE_SPREAD, Selected_pot_value);
        break;
      case 26:
        Selected_pot = F("RANDOM MODE");
        Random_Mode = Selected_pot_value/2;
        break;
      case 27:
        Selected_pot = F("MIDI CHANNEL IN");
        MIDI_IN = round((float(Selected_pot_value)/4.2));
        break;
      case 28:
        Selected_pot = F("MIDI CHANNEL OUT");
        MIDI_OUT = round((float(Selected_pot_value)/4.2));
        break;
      case 29:
        Selected_pot = F("BRIGHTNESS");
        Brightness = Selected_pot_value/4;
        Wire.beginTransmission(LED_BUTTON_CONTROLLER);
        Wire.write(0xE0 + Brightness); // set brighness
        Wire.endTransmission();
        break;
      case 30:
        Selected_pot = F("30");
        break;
      case 31:
        Selected_pot = F("CV1 MOD RANGE A");
        break;
      case 32:
        Selected_pot = F("CV2 MOD RANGE A");
        break;
      case 33:
        Selected_pot = F("CV3 MOD RANGE A");
        break;
      case 34:
        Selected_pot = F("EXP MOD RANGE A");
        Bus_A_Range = Selected_pot_value;
        break;
      case 35:
        Selected_pot = F("CV1 MOD DEST A");
        CV1_Bus_A = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = CV1_Bus_A;
        break;
      case 36:
        Selected_pot = F("CV2 MOD DEST A");
        CV2_Bus_A = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = CV2_Bus_A;
        break;
      case 37:
        Selected_pot = F("CV3 MOD DEST A");
        CV3_Bus_A = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = CV3_Bus_A;
        break;
      case 38:
        Selected_pot = F("EXP MOD DEST A");
        Bus_A = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = Bus_A;
        break;
      case 39:
        Selected_pot = F("CV1 MOD DEST B");
        CV1_Bus_B = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = CV1_Bus_B;
        break;
      case 40:
        Selected_pot = F("CV2 MOD DEST B");
        CV2_Bus_B = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = CV2_Bus_B;
        break;
      case 41:
        Selected_pot = F("CV3 MOD DEST B");
        CV3_Bus_B = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = CV3_Bus_B;
        break;
      case 42:
        Selected_pot = F("EXP MOD DEST B");
        Bus_B = round((float(Selected_pot_value)/3.37));
        Selected_BUS_Value = Bus_B;
        break;
      case 43:
        Selected_pot = F("NC");
        break;
//      case 44:
//        Selected_pot = F("44");
//        break;
//      case 45:
//        Selected_pot = F("CV 2");
//        break;
//      case 46:
//        Selected_pot = F("CV 1");
//        break;
//      case 47:
//        Selected_pot = F("CV 3");
//        break;
      default:
        break;
    }

  if (Pot_Address < 24) {
    if (Pot_Address != Old_Pot_Address) {
      oled.clear(0, 127, 5, 6);
      oled.println(("Pot: " + Selected_pot).c_str());
      //oled.println(("Value: " + (String(round((float(Selected_pot_value)/63)*100))) + "%").c_str());    
      oled.println(("Value: " + String(Selected_pot_value)).c_str());    
    } else {
      oled.clear(0, 127, 6, 6);
      oled.println(("Value: " + (String(round((float(Selected_pot_value)/63)*100))) + "%").c_str()); 
      oled.println(("Value: " + String(Selected_pot_value)).c_str());      
    }
  } else if (Pot_Address == 26) {
    oled.clear(0, 127, 5, 6);
    oled.println(("Pot: " + Selected_pot).c_str());
    oled.println(("Value: " + String(bitRead(Random_Mode, 0))+" "+String(bitRead(Random_Mode, 1))+" "+String(bitRead(Random_Mode, 2))+" "+String(bitRead(Random_Mode, 3))+" "+String(bitRead(Random_Mode, 4))).c_str());  
  } else if ((Pot_Address > 26) and (Pot_Address < 29)) { // MIDI
    oled.clear(0, 127, 5, 6);
    oled.println(("Pot: " + Selected_pot).c_str());
    oled.println(("Channel: " + (String(round((float(Selected_pot_value)/4.2) + 1))) + " ").c_str());
  } else if (Pot_Address == 29) {
    oled.clear(0, 127, 5, 6);
    oled.println(("Pot: " + Selected_pot).c_str());
    oled.println(("Value: " + String(Brightness)).c_str());
  } else if ((Pot_Address > 34) and (Pot_Address < 43)) { // MOD DEST A AND B
    oled.clear(0, 127, 5, 6);
    oled.println(("Pot: " + Selected_pot).c_str());
    oled.println(("Value: " + String(Selected_BUS_Value)).c_str());   
  } else {
    oled.clear(0, 127, 5, 6);
    oled.println(("Pot: " + Selected_pot).c_str());
    oled.println(("Value: " + String(Selected_pot_value)).c_str());   
  }
}

String Key_To_String(byte lower, byte upper, byte Shift_lower){
  String Preset_Name = "";
  byte Number_Buttons = ((B11110000 & lower) >> 4) | ((B00001111 & upper) << 4);
  byte Numbers_Converted = int(log(Number_Buttons)/log(2) + 1);
  byte Preset_Buttons = ((B00001110 & lower) >> 1) | ((B00001110 & Shift_lower) << 2);
  for (int Preset_bit = 0; Preset_bit < 8; Preset_bit ++) {
    if (bitRead(Preset_Buttons, Preset_bit) == 1) {
      Preset_Name = Preset_Name + Preset_Array[Preset_bit];
    }
  }
  return (Preset_Name + String(Numbers_Converted));
}

void errorHalt(char* msg) {
  oled.clear(0, 127, 3, 3);
  oled.print("Error: ");
  oled.println(msg);
  while(1);
}

void Save_Patch_To_SD(String Attempt, boolean init) {
  uint8_t Patch_Data[40];

  Patch_Data[0] = KeysDown[2];
  Patch_Data[1] = B00001111 & KeysDown[3];
  Patch_Data[1] = Patch_Data[1] | ((KeysDown[4] << 4) & B01110000);

  for (uint8_t pot_count = 0; pot_count < 19; pot_count++) {
    Patch_Data[2 + pot_count] = PATCH_POT_VALUES[pot_count]; // Preset Pots

    Patch_Data[21 + pot_count] = PATCH_POT_VALUES[pot_count + 24]; // Settings Pots
  }

  if (PF.open((Attempt+".TXT").c_str())) errorHalt("Save patch: Error Open");
    UINT w;
    if (init) {
      if (PF.writeFile(Int_Patch_Data, sizeof(Int_Patch_Data), &w)) errorHalt("Error SaveingI");
    } else {
      if (PF.writeFile(Patch_Data, sizeof(Patch_Data), &w)) errorHalt("Error Saveing");
    }
    PF.writeFile(0, 0, &w);
}

void Load_Patch_From_SD(String Attempt) {
 uint8_t Patch_Data[40];

 boolean SD_Error = false;
 if (PF.open((Attempt+".TXT").c_str())) SD_Error = true;
  while (1) {
    UINT nr;
    if (PF.readFile(Patch_Data, sizeof(Patch_Data), &nr)) SD_Error = true;
    if (nr == 0) break;
  }
  if (SD_Error) {
    oled.clear(0, 127, 3, 7);
    oled.println(F("No patch found"));
    //Save_Patch_To_SD(Attempt, true);
    for(int i = 0; i < 21; i++) {
      Patch_Data[i] = Int_Patch_Data[i];
    }
  } else {
    oled.clear(0, 127, 3, 7);
    oled.println(F("Loaded patch"));

    KeysDown[2] = Patch_Data[0];
    KeysDown[3] = B00001111 & Patch_Data[1];
    KeysDown[4] = (B01110000 & Patch_Data[1]) >> 4;

    for (int pot_count = 0; pot_count < 19; pot_count++) {
      PATCH_POT_VALUES[pot_count] = Patch_Data[2 + pot_count]; // Preset Pots
      Update_OB_SX_Pot(pot_count);

      PATCH_POT_VALUES[pot_count + 24] = Patch_Data[21 + pot_count]; // Settings Pots
      Update_OB_SX_Pot(pot_count + 24);
    }
  }
}

void Update_Preset() {
  String Old_Preset = Current_Preset;
  Current_Preset = Key_To_String(KeysDown[0], KeysDown[1], Shift_KeysDown[0]);
  if ((((KeyScan[0] & B11111110) > 0) or (KeyScan[1] > 0)) and ((Shift_KeysDown[0] & B11110000) == 0) and ((Shift_KeysDown[1] & B00001111) == 0)) {
    Load_Patch_From_SD(Current_Preset);
    oled.clear(0, 127, 0, 0);
    oled.print(F("Preset: "));
    oled.print(Current_Preset.c_str());
    Update_OB_Switches();
  } else if ((KeyScan[0] == 0) and ((KeyScan[1] & B00001111) == 0)){
    Update_OB_Switches();
  }
  STATE = 4;
}

void Update_OB_Switches() {
  oled.clear(0, 127, 7, 7);
  byte SWITCH_DATA_1 = 0x00; // COMMAND_SWITCH_1
  byte SWITCH_DATA_2 = 0x00; // COMMAND_SWITCH_2
  if (B00000001 & KeysDown[2]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_UNISON; //UNISON
  if (B00000010 & KeysDown[2]); // LFO WAVE Bit OFF //LFO_TRI
  if (B00000100 & KeysDown[2]) SWITCH_DATA_1 = SWITCH_DATA_1 | SWITCH_LFO_WAVE; // LFO WAVE Bit ON //LFO_Squ
  if (B00001000 & KeysDown[2]) SWITCH_DATA_1 = SWITCH_DATA_1 | SWITCH_FREQ_OSC1; //Frq_OSC1
  if (B00010000 & KeysDown[2]) SWITCH_DATA_1 = SWITCH_DATA_1 | SWITCH_FREQ_OSC2; //Frq_OSC2
  if (B00100000 & KeysDown[2]) SWITCH_DATA_1 = SWITCH_DATA_1 | SWITCH_FREQ_FILTER; //Frq Filter
  if (B01000000 & KeysDown[2]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_PWM_OSC1; //PWM OSC1
  if (B10000000 & KeysDown[2]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_PWM_OSC2; //PWM OSC2

  if (B00000001 & KeysDown[3]) SWITCH_DATA_1 = SWITCH_DATA_1 | SWITCH_WAVE_OSC1; //OSC1 WAVE
  if (B00000010 & KeysDown[3]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_CMOD; //X-MOD
  if (B00000100 & KeysDown[3]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_SYNC; //SYNC
  if (B00001000 & KeysDown[3]) SWITCH_DATA_1 = SWITCH_DATA_1 | SWITCH_WAVE_OSC2; //OSC2 WAVE

  if (B00000001 & KeysDown[4]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_OSC2_LOUD; // LOUD BIT ON //HALF
  //if (B00000010 & KeysDown[4]); // LOUD BIT OFF //FULL
  if (B00000100 & KeysDown[4]) SWITCH_DATA_2 = SWITCH_DATA_2 | SWITCH_TRACK; //KBD

  oled.print(String(SWITCH_DATA_1).c_str());
  oled.print(" ");
  oled.print(String(SWITCH_DATA_2).c_str());
  Update_OB_Memory(COMMAND_SWITCH_1, SWITCH_DATA_1);
  Update_OB_Memory(COMMAND_SWITCH_2, SWITCH_DATA_2);
}

void Update_OB_Memory(byte COMMAND, byte DATA) {
  Wire.beginTransmission(9);
  Wire.write(COMMAND);
  Wire.write(DATA);
  Wire.endTransmission();
}

void Refresh_OB() {
  //Wire.beginTransmission(9);
  //Wire.write(COMMAND_REFRESH);
  //Wire.write(Patch_Data, 21);
  //Wire.endTransmission();
}

void Randomise_Patch() {
  if (bitRead(Random_Mode, 0)) { // CONTROL
    PATCH_POT_VALUES[0] = random(0, 64);
    PATCH_POT_VALUES[1] = random(0, 64);
    bitWrite(KeysDown[2], 0,  random(2));

    Update_OB_SX_Pot(0);
    Update_OB_SX_Pot(1);
  }
  if (bitRead(Random_Mode, 1)) { // MODULATION
    PATCH_POT_VALUES[2] = random(0, 64);
    PATCH_POT_VALUES[3] = random(0, 64);
    PATCH_POT_VALUES[4] = random(0, 64);
    bitWrite(KeysDown[2], 1,  random(2));
    bitWrite(KeysDown[2], 2, !bitRead(KeysDown[2], 1)); // LFO WAVE
    bitWrite(KeysDown[2], 3,  random(2));
    bitWrite(KeysDown[2], 4,  random(2));
    bitWrite(KeysDown[2], 5,  random(2));
    bitWrite(KeysDown[2], 6,  random(2));
    bitWrite(KeysDown[2], 7,  random(2));

    Update_OB_SX_Pot(2);
    Update_OB_SX_Pot(3);
    Update_OB_SX_Pot(4);
  }
  if (bitRead(Random_Mode, 2)) { // OSCILLATORS
    PATCH_POT_VALUES[5] = random(0, 64);
    PATCH_POT_VALUES[6] = random(0, 64);
    PATCH_POT_VALUES[7] = random(0, 64);
    KeysDown[3] = random(0, 16);

    Update_OB_SX_Pot(5);
    Update_OB_SX_Pot(6);
    Update_OB_SX_Pot(7);
  }
  if (bitRead(Random_Mode, 3)) { // FILTER
    PATCH_POT_VALUES[8] = random(0, 64);
    PATCH_POT_VALUES[9] = random(0, 64);
    PATCH_POT_VALUES[10] = random(0, 64);
    KeysDown[4] = random(0, 8);
    bitWrite(KeysDown[4], 1, !bitRead(KeysDown[4], 0)); // HALF/FULL

    Update_OB_SX_Pot(8);
    Update_OB_SX_Pot(9);
    Update_OB_SX_Pot(10);
  }
  if (bitRead(Random_Mode, 4)) { // ENVELOPES

    for (uint8_t pot_count = 11; pot_count < 19; pot_count++) {
      PATCH_POT_VALUES[pot_count] = random(0, 64);
      Update_OB_SX_Pot(pot_count);
    }
  }
}

