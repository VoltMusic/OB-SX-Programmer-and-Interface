#include <Wire.h>
#include <FastGPIO.h>

#define MIDI_NOTE_ON 144
#define MIDI_NOTE_OFF 128

#define STATE_NONE 0
#define STATE_NOTE 1
#define STATE_END 2

#define HINT   2
#define BUSAKA 13

#define WRITE_PIN  A0
#define BUSRQ A1
#define READ_VECTOR A2
#define READ_PIN A3
//#define MEMORY_REQUEST A4

#define ADDRESS_RESET 3
#define ADDRESS_CLOCK 12

#define DATA_0 8
#define DATA_1 9
#define DATA_2 10
#define DATA_3 11
#define DATA_4 7
#define DATA_5 6
#define DATA_6 5
#define DATA_7 4

uint8_t Last_Address_Write = 0x00;

uint8_t MEMORY_MAP[0xFF] = {0x00};
uint8_t MEMORY_READ_MAP[0xFF] = {0x00};
boolean MEMORY_WRITE[0xFF] = {false};
boolean MEMORY_READ[0xFF] = {false};
boolean MEMORY_WRITE_FLAG = false;
boolean MEMORY_READ_FLAG = false;
uint8_t Address = 0;
uint8_t Data = 0;
uint8_t Read1 = 0;
uint8_t Read2 = 0;
boolean MIDI_DATA_FLAG = false;
uint8_t Address_Read_Data = 0;
uint8_t Read_Start_Address = 0;
uint8_t Read_End_Address = 0;

byte midiByte;
byte midiChannel;
byte midiCommand;
byte midiNote;
byte midiVelocity;
int state;

const int filterChannel = 0; // MIDI channel 1

int Voice_Notes[6] = {0,0,0,0,0,0};
int Voice_Active[6] = {0,0,0,0,0,0};

void setup() {
  Serial.begin(9600);
  pinMode(HINT, INPUT_PULLUP); // Active low
  pinMode(BUSRQ, OUTPUT);
  pinMode(READ_PIN, OUTPUT);
  pinMode(READ_VECTOR, OUTPUT);
  pinMode(WRITE_PIN, OUTPUT);
  //pinMode(MEMORY_REQUEST, OUTPUT);
  pinMode(BUSAKA, INPUT_PULLUP); // Active low

  pinMode(DATA_0, INPUT_PULLUP);
  pinMode(DATA_1, INPUT_PULLUP);
  pinMode(DATA_2, INPUT_PULLUP);
  pinMode(DATA_3, INPUT_PULLUP);
  pinMode(DATA_4, INPUT_PULLUP);
  pinMode(DATA_5, INPUT_PULLUP);
  pinMode(DATA_6, INPUT_PULLUP);
  pinMode(DATA_7, INPUT_PULLUP);
  //DATA_SET_IN();
  //pinMode(13, OUTPUT);

  FastGPIO::Pin<WRITE_PIN>::setOutputLow();
  FastGPIO::Pin<BUSRQ>::setOutputLow();
  FastGPIO::Pin<READ_VECTOR>::setOutputLow();
  FastGPIO::Pin<READ_PIN>::setOutputLow();
  Wire.begin(9);                // join i2c bus with address #9
  Wire.onReceive(SET_WRITE); // register event
  Wire.onRequest(SET_READ);
  //Serial.begin(9600);           // start serial for output
  attachInterrupt(digitalPinToInterrupt(HINT), HINT_CALL, RISING);
}

void loop () {
  //MIDI_CHECK();
  Serial.println("In main loop, WRITE_PIN: " + String(digitalRead(WRITE_PIN)) + " BUSRQ: " + String(digitalRead(BUSRQ)) + " READ_VECTOR: " + String(digitalRead(READ_VECTOR)) + " READ_PIN: " + String(digitalRead(READ_PIN)) + " HINT: " + String(digitalRead(HINT)) + " BUSAKA: " + String(digitalRead(BUSAKA)));
  if(digitalRead(HINT)) {HINT_CALL();}
}

void SET_READ(int address) {
  //MEMORY_READ_FLAG = true;
  //Read_Address = address;
  //Wire.write(Read_Start_Address);
  //Wire.write(Read_End_Address);
  for (int Map_Address = 0; Map_Address < Read_End_Address; Map_Address++) {
    if (Read_Start_Address <= Map_Address) {
      Wire.write(MEMORY_READ_MAP[Map_Address]);
    }
  }
}

void SET_WRITE(int howMany) {
  while(Wire.available()) {
    Read1 = Wire.read();
    Read2 = Wire.read();
    if (Read1 != 0xFF){
      Address = Read1;
      Data = Read2;
      MEMORY_MAP[Address] = Data;
      MEMORY_WRITE[Address] = true;
      MEMORY_WRITE_FLAG = true;
      if (Address > Last_Address_Write) {
        Last_Address_Write = Address;
      }
    } else {
      Read_Start_Address = Read2;
      Read_End_Address = Wire.read();
      MEMORY_READ_FLAG = true;
    }
  }
}

void WRITE_DATA() {
  uint8_t Write_Data = 0;
  FastGPIO::Pin<ADDRESS_RESET>::setOutputHigh(); // Reset counter
  FastGPIO::Pin<ADDRESS_RESET>::setOutputLow();
  DATA_SET_OUT();
  while(digitalRead(BUSAKA) == 0){
    //Wait for BUSAKA to go low
    Serial.println("WRITE_DATA: waiting for BUSAKA to go high");
  }
  for (uint8_t Current_Address = 0; Current_Address <= Last_Address_Write; Current_Address++) {
    if (MEMORY_WRITE[Current_Address] == true) {
      Write_Data = MEMORY_MAP[Current_Address];
      digitalWrite(DATA_0, bitRead(Write_Data, 0));
      digitalWrite(DATA_1, bitRead(Write_Data, 1));
      digitalWrite(DATA_2, bitRead(Write_Data, 2));
      digitalWrite(DATA_3, bitRead(Write_Data, 3));
      digitalWrite(DATA_4, bitRead(Write_Data, 4));
      digitalWrite(DATA_5, bitRead(Write_Data, 5));
      digitalWrite(DATA_6, bitRead(Write_Data, 6));
      digitalWrite(DATA_7, bitRead(Write_Data, 7));
      FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
      FastGPIO::Pin<WRITE_PIN>::setOutputLow();
      MEMORY_WRITE[Current_Address] = false;
    }
    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputLow(); // Move onto next address
    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputHigh();
  }
  FastGPIO::Pin<BUSRQ>::setOutputLow();
  Last_Address_Write = 0x00;
  MEMORY_WRITE_FLAG = false;
   Serial.println("WRITE_DATA Return");
}

void READ_DATA() {
  uint8_t Read_Data = 0;
  FastGPIO::Pin<ADDRESS_RESET>::setOutputHigh(); // Reset counter
  FastGPIO::Pin<ADDRESS_RESET>::setOutputLow();
  DATA_SET_IN();
  while(digitalRead(BUSAKA) == 0){
    //Wait for BUSAKA to go low
  }
  for (uint8_t Current_Address; Current_Address < Read_End_Address; Current_Address++) {
    if (Read_Start_Address <= Current_Address) {
      FastGPIO::Pin<READ_PIN>::setOutputHigh();
      bitWrite(Read_Data, 0, digitalRead(DATA_0));
      bitWrite(Read_Data, 1, digitalRead(DATA_1));
      bitWrite(Read_Data, 2, digitalRead(DATA_2));
      bitWrite(Read_Data, 3, digitalRead(DATA_3));
      bitWrite(Read_Data, 4, digitalRead(DATA_4));
      bitWrite(Read_Data, 5, digitalRead(DATA_5));
      bitWrite(Read_Data, 6, digitalRead(DATA_6));
      bitWrite(Read_Data, 7, digitalRead(DATA_7));
      FastGPIO::Pin<READ_PIN>::setOutputLow();
      MEMORY_READ_MAP[Current_Address] = Read_Data;
      MEMORY_READ[Current_Address] = false;
    }
    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputLow(); // Move onto next address
    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputHigh();
  }
  FastGPIO::Pin<BUSRQ>::setOutputLow();
  MEMORY_READ_FLAG = false;
}

//void READ_DATA() {
//  FastGPIO::Pin<ADDRESS_RESET>::setOutputHigh(); // Reset counter
//  FastGPIO::Pin<ADDRESS_RESET>::setOutputLow();
//  DATA_SET_IN();
//  while(digitalRead(BUSAKA)){
//    //Wait for BUSAKA to go low
//  }
//  for (uint8_t Current_Address = 0; Current_Address < Read_Address; Current_Address++) {
//    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputLow(); // Move onto next address
//    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputHigh();
//  }
//  FastGPIO::Pin<READ_PIN>::setOutputHigh();
//  bitWrite(Address_Read_Data, 0, digitalRead(DATA_0));
//  bitWrite(Address_Read_Data, 1, digitalRead(DATA_1));
//  bitWrite(Address_Read_Data, 2, digitalRead(DATA_2));
//  bitWrite(Address_Read_Data, 3, digitalRead(DATA_3));
//  bitWrite(Address_Read_Data, 4, digitalRead(DATA_4));
//  bitWrite(Address_Read_Data, 5, digitalRead(DATA_5));
//  bitWrite(Address_Read_Data, 6, digitalRead(DATA_6));
//  bitWrite(Address_Read_Data, 7, digitalRead(DATA_7));
//  FastGPIO::Pin<READ_PIN>::setOutputLow();
//  
//  FastGPIO::Pin<BUSRQ>::setOutputLow();
//  MEMORY_READ_FLAG = false;
//}

boolean VECTOR_READ() {
  boolean Vector_bit = false;
  FastGPIO::Pin<WRITE_PIN>::setOutputLow();
  FastGPIO::Pin<READ_PIN>::setOutputLow();
  //FastGPIO::Pin<MEMORY_REQUEST>::setOutputLow();
  DATA_SET_IN();
  FastGPIO::Pin<READ_VECTOR>::setOutputHigh();
  Vector_bit = !digitalRead(DATA_2);
  FastGPIO::Pin<READ_VECTOR>::setOutputLow();
  return Vector_bit;
}

void HINT_CALL() {
  boolean Vector = false; //False: Write parm True: keyboard scan
  delayMicroseconds(4);
  FastGPIO::Pin<BUSRQ>::setOutputHigh();
  Vector = VECTOR_READ();
  if (MEMORY_WRITE_FLAG and !Vector) {
    WRITE_DATA();
    //INSERT_NOTES(); 
  } else if (MEMORY_READ_FLAG and !Vector) {
    READ_DATA();
  } else if (!Vector) {
    //INSERT_NOTES();
    FastGPIO::Pin<BUSRQ>::setOutputLow();
  } else {
    FastGPIO::Pin<BUSRQ>::setOutputLow();
  }
}

void DATA_SET_OUT() {
  pinMode(DATA_0, OUTPUT);
  pinMode(DATA_1, OUTPUT);
  pinMode(DATA_2, OUTPUT);
  pinMode(DATA_3, OUTPUT);
  pinMode(DATA_4, OUTPUT);
  pinMode(DATA_5, OUTPUT);
  pinMode(DATA_6, OUTPUT);
  pinMode(DATA_7, OUTPUT);
}

void DATA_SET_IN() {
  pinMode(DATA_0, INPUT_PULLUP);
  pinMode(DATA_1, INPUT_PULLUP);
  pinMode(DATA_2, INPUT_PULLUP);
  pinMode(DATA_3, INPUT_PULLUP);
  pinMode(DATA_4, INPUT_PULLUP);
  pinMode(DATA_5, INPUT_PULLUP);
  pinMode(DATA_6, INPUT_PULLUP);
  pinMode(DATA_7, INPUT_PULLUP);
}

//void MIDI_CHECK() {
//    if (Serial.available() > 0) {
//        midiByte = Serial.read();
//        switch (state) {
//          case STATE_NONE:
//              midiChannel = midiByte & B00001111;
//              midiCommand = midiByte & B11110000;
//              if (midiChannel == filterChannel) {
//                  if ((midiCommand == MIDI_NOTE_ON) or (midiCommand == MIDI_NOTE_OFF)) {
//                      state = STATE_NOTE;
//                  }
//              }
//              break;
//          case STATE_NOTE:
//              midiNote = midiByte;
//              state = STATE_END;
//              break;
//
//          case STATE_END:
//              midiVelocity = midiByte;
//              state = STATE_NONE;
//              if (midiCommand == MIDI_NOTE_ON) { // Note On
//                MyHandleNoteOn(midiNote);
//              } else { // Note Off
//                MyHandleNoteOff(midiNote);
//              }
//              break; 
//        }
//    }
//}
//
//void MyHandleNoteOn(byte pitch) {
//  int j = 0;
//  boolean Voice_Found = false;
//  while( (j < 6) and (Voice_Found == false)) {
//    if (Voice_Active[j] == 0){ //if voice is free
//      Voice_Notes[j] = pitch - 21;
//      Voice_Active[j] = 1;
//      Voice_Found = true;
//    } else {
//      j = j + 1;
//    }
//  }
//  FastGPIO::Pin<13>::setOutputHigh();
//}
//void MyHandleNoteOff(byte pitch) {
//  for (int i = 0; i <= 5; i++) {
//    if (Voice_Notes[i] == pitch - 21) {
//      Voice_Active[i] = 0;
//    }
//  }
//  FastGPIO::Pin<13>::setOutputLow();
//}
//
//void Note_On(byte note){
//  digitalWrite(DATA_0, bitRead(note, 0)); //note bit 1
//  digitalWrite(DATA_1, bitRead(note, 1)); //note bit 2
//  digitalWrite(DATA_2, bitRead(note, 2)); //note bit 3
//  digitalWrite(DATA_3, bitRead(note, 3)); //note bit 4
//  digitalWrite(DATA_4, bitRead(note, 4)); //note bit 5
//  digitalWrite(DATA_5, bitRead(note, 5)); //note bit 6
//  FastGPIO::Pin<DATA_6>::setOutputLow(); //HOLD
//  FastGPIO::Pin<DATA_7>::setOutputHigh(); //Gate
//}
//
//void Note_Off(byte note){
//  digitalWrite(DATA_0, bitRead(note, 0)); //note bit 1
//  digitalWrite(DATA_1, bitRead(note, 1)); //note bit 2
//  digitalWrite(DATA_2, bitRead(note, 2)); //note bit 3
//  digitalWrite(DATA_3, bitRead(note, 3)); //note bit 4
//  digitalWrite(DATA_4, bitRead(note, 4)); //note bit 5
//  digitalWrite(DATA_5, bitRead(note, 5)); //note bit 6
//  FastGPIO::Pin<DATA_6>::setOutputLow(); //HOLD
//  FastGPIO::Pin<DATA_7>::setOutputLow(); //Gate
//}
//
//void INSERT_NOTES(){
//  FastGPIO::Pin<ADDRESS_RESET>::setOutputHigh(); // Reset counter
//  FastGPIO::Pin<ADDRESS_RESET>::setOutputLow();
//  DATA_SET_OUT();
//  while(digitalRead(BUSAKA) == 1){
//    //Wait for BUSAKA to go low
//  }
//  for (int ADDRESS_NUMBER = 0; ADDRESS_NUMBER <= 0x15; ADDRESS_NUMBER++) {
//    switch (ADDRESS_NUMBER){
//      case 0x10:
//        if (Voice_Active[0] == 1) {
//          Note_On(Voice_Notes[0]);
//          FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
//        }
//        break;
//      case 0x11:
//        if (Voice_Active[1] == 1) {
//          Note_On(Voice_Notes[1]);
//          FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
//        }
//        break;
//      case 0x12:
//        if (Voice_Active[2] == 1) {
//          Note_On(Voice_Notes[2]);
//          FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
//        }
//        break;
//      case 0x13:
//        if (Voice_Active[3] == 1) {
//          Note_On(Voice_Notes[3]);
//          FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
//        }
//        break;
//      case 0x14:
//        if (Voice_Active[4] == 1) {
//          Note_On(Voice_Notes[4]);
//          FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
//        }
//        break;
//      case 0x15:
//        if (Voice_Active[5] == 1) {
//          Note_On(Voice_Notes[5]);
//          FastGPIO::Pin<WRITE_PIN>::setOutputHigh();
//        }
//        break;
//    }
//    FastGPIO::Pin<WRITE_PIN>::setOutputLow();
//    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputLow(); // Move onto next address
//    FastGPIO::Pin<ADDRESS_CLOCK>::setOutputHigh();
//  }
//  FastGPIO::Pin<BUSRQ>::setOutputLow();
//}

