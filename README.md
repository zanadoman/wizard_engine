# Wizard Engine ![Wizard Engine](https://github.com/zanadoman/Wizard-Engine/blob/main/Build/engine/wizard.png)
2D game engine for Linux and Windows, written in C/C++ over SDL2\
Relies on NeoTypes++ (https://github.com/zanadoman/NeoTypesPP) library\
Demo assets made by ansimuz (https://ansimuz.itch.io/sunny-land-pixel-game-art)

# Wiki

## Example main function

#include \<WizardEngine.hpp\>\
\
#undef main\
\
int main(int argc, char* *argv)\
{\
&emsp;wze::engine* Engine = new wze::engine(NULL, NULL, 1920, 1080, 1000 / 60);\
\
&emsp;while (Engine->Update())\
&emsp;{\
&emsp;&emsp;//Do\
&emsp;&emsp;//Some\
&emsp;&emsp;//Work\
&emsp;}\
\
&emsp;return 0;\
}