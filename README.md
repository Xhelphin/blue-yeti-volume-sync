# Blue Yeti Volume Sync
If you're anything like me, you have a Blue Yeti microphone but use headphones or speakers that are not attached through the microphone.  
Well, what if you wanted to use the volume knob on the microphone to control the volume of you headphones anyway?  
This is what this program does.
## Setting up the program
This program includes a `Find Audio Cards.exe` file that you can use to find the ID of your audio interfaces.  
Here is how you can do it:  
1. In the windows audio manager, set the volume of your headphones to 30 and the volume of the microphone output to 70.
2. Open the `Find Audio Cards.exe` file and find the two audio interfaces with the volumes 30 and 70 that you set earlier.
3. Open the `sync_config.ini` file that is placed by default in `C:\Program Files (x86)\Blue Yeti Volume Sync`, or elsewhere if you changed the installation location during the installation.
4. Change the `MicID` value to the value in the Mixer column for the device with the value of 70.
5. Change the `HeadID` value to the value in the Mixer column for the device with the value of 30.
6. Save and close the `sync_config.ini` file and the `Find Audio Cards.exe` window.
7. Launch the main program!
## Modifiying the program!
The source code for this program can be found in this repo. It is written for AutoHotKey.
## Please note
This program has only been testeds with a Blue Yeti Nano but should work with any other Yeti microphone, and _might_ work with other microphones. However, this is not guaranteed!  
This program will only work on Windows!