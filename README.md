# Wizard Engine ![Wizard Engine](https://github.com/zanadoman/Wizard-Engine/blob/main/Build/engine/wizard.png)

2D game engine for Linux and Windows, written in C/C++ over SDL2\
Relies on NeoTypes++ (https://github.com/zanadoman/NeoTypesPP) library\
Demo assets made by ansimuz (https://ansimuz.itch.io/sunny-land-pixel-game-art)

# Wiki

## How to load Assets?

Use Assets inner class of your Engine instance.\
The load functions will return the ID of the loaded stuff,\
and it is your responsibility to store them in integer variables.

## How to get Actors?

You can request new Actors from the Actors subclass.\
You should store the new Actor's ID in an integer variable\
as before.

## How to use Actors?

You can set the properties of an Actor by using the [] operator\
overload of the Actors subclass.\
Also with this method you can request Colors, Textures, Flipbooks,\
Texts and Overlapboxes for your new actor. (Remember to store their ID as well!)

## Example main function

#include \<WizardEngine.hpp\>\
\
int main(int argc, char\* \*argv)\
{\
&emsp;&emsp;wze::engine\* Engine = new wze::engine(NULL, NULL, 1920, 1080, 1000 / 60);\
\
&emsp;&emsp;while (Engine->Update())\
&emsp;&emsp;{\
&emsp;&emsp;&emsp;&emsp;//Do\
&emsp;&emsp;&emsp;&emsp;//Some\
&emsp;&emsp;&emsp;&emsp;//Work\
&emsp;&emsp;}\
\
&emsp;&emsp;delete Engine;\
\
&emsp;&emsp;return 0;\
}