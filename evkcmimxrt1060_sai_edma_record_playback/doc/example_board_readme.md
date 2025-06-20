Hardware requirements
=====================
- Mini/micro USB cable
- MIMXRT1060-EVKC board
- Personal Computer
- Headphone(OMTP standard)
- CS42448 Audio board(Not necessary if use on board codec)

Board settings
============
For Audio board:
1.Insert AUDIO board into J23 if on board codec is not used
2.Uninstall J41
For on board codec:
2.Make sure J41 is installed

Prepare the Demo
===============
Note: As the EVKCMIMXRT1060 support two codecs, a default on board WM8962 codec and another codec CS42448 on audio board, so to support both of the codecs, the example provide options to switch between the two codecs,
- DEMO_CODEC_WM8962, set to 1 if wm8962 used
- DEMO_CODEC_CS42448, set to 1 if cs42448 used
Please do not set above macros to 1 together, as the demo support one codec only.

1.  Connect a USB cable between the host PC and the OpenSDA USB port on the target board.
2.  Open a serial terminal with the following settings:
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
3.  Download the program to the target board.
Steps for WM8962:
4. Insert the headphones into the headphone jack on MIMXRT1060-EVKC board (J101).
Steps for CS42448:
4. Insert the headphones into the headphone jack J6 and line in line into J12 on the audio board.
5. Either press the reset button on your board or launch the debugger in your IDE to begin running the demo.

Running the demo
===============
Note: This demo uses both headphone mic and board main mic(P2) as input source of WM8962. The headphone mic provides left
channel data, and main mic (P2) provides right channel data. If users found there is noise while do record operation,
most probably it is the headphone standard issue (OMTP and CTIA standard difference). You should use the OMTP
standard headphone. You can disable the left channel by using an headphone without microphone feature.
This demo uses codec master mode(external mclk mode).

When the demo runs successfully, you can hear the tone and the log would be seen on the OpenSDA terminal like:

~~~~~~~~~~~~~~~~~~~
SAI example started!
~~~~~~~~~~~~~~~~~~~

Note:
Examples can't be downloaded again after dowmloading this case by MCUXpresso IDE. Please erase flash by serial download mode(SW7:0001b). This issue will be fixed in later release.
