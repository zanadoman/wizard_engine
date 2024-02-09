# Wizard Engine ![Wizard Engine](https://github.com/zanadoman/Wizard-Engine/blob/main/Build/engine/wizard.png)
2D game engine for Linux and Windows, written in C/C++ over SDL2\
Relies on NeoTypes++ (https://github.com/zanadoman/NeoTypesPP) library\
Demo assets made by ansimuz (https://ansimuz.itch.io/sunny-land-pixel-game-art)

# Wiki

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
&emsp;&emsp;delete Engine;
\
&emsp;&emsp;return 0;\
}