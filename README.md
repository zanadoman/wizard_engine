# Wizard Engine ![Wizard Engine](https://github.com/zanadoman/Wizard-Engine/blob/main/Build/engine/wizard.png)

2D game engine for Linux and Windows, written in C/C++ over SDL2\
Relies on NeoTypes++ (https://github.com/zanadoman/NeoTypesPP) library\
Demo assets made by ansimuz (https://ansimuz.itch.io/sunny-land-pixel-game-art)

# Wiki

## How to load assets?

Use Assets inner class of your Engine instance\
The load functions will return the id of the loaded stuff,\
and it is your responsibility to store them in integer variables

## How to get actors?

You can request new Actors from the Actors subclass\
and you should store the new Actor's ID in an integer variable\
as before

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