# OB-SX-Programmer-and-Interface
This contains the Arduino code and KiCAD project file for creating a OB-SX Programmer and Interface.

The Interface plugs into the D-sub connector at the back of the OB-SX. It accesses the OB-XA's RAM and overwrites data linked to the voice board parameters.
The Programmer allows the user to program each parameter of the voices by sending messages to the Interface over a IC2 bus.

The RAM layout file shows how the parameters, key and gate signals are stored in RAM memory (can't promise this is %100 correct). Thank you to Prehistoricman for helping reverse-engineer the ROM of the OB-SX to find these relevant address locations.

I may re-visit this project again but design the board around the more powerfull teensy microcontroller. I had many issues with the slowness and memory leakage of the arduino.

Problems:
- And extra diode is required on the programmer board, I will update the PCB with this correction soon
- As you can see in the interface code the MIDI part is commented out, this is because it has many issues currently.

To-do:
- Upload example SD card patch files

Disclaimer:
- By using the code and PCB design files included in this repository, you take responsibility of any damage that may occur to your OB-SX. I highly recommend using these materials as a starting point for you to add and improve upon, if you do not have a good understanding of electronics and (Arduino) programming I do not recommend this project. These designs are open-source and therefore can be used as you wish.

Thank you

- Nile (Volter, VoltMusic)
