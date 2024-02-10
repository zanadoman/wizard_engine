# Wizard Engine ![Wizard Engine](https://github.com/zanadoman/Wizard-Engine/blob/main/Build/engine/wizard.png)

2D game engine for Linux and Windows, written in C/C++ over SDL2. \
Relies on NeoTypes++ library. (https://github.com/zanadoman/NeoTypesPP) \
Demo assets made by ansimuz. (https://ansimuz.itch.io/sunny-land-pixel-game-art)

# Wiki

## How to use the Keys subclass?

The keys subclass appears to be empty, but hold on \
it has a [] operator overload and you can get the \
state of every key that is present in the "key" enum.

## How to load Assets?

Use the Assets inner class of your Engine instance. \
The load functions will return the ID of the loaded stuff, \
and it is your responsibility to store them in integer variables.

## How to get Actors?

You can request new Actors from the Actors subclass. \
You should store the new Actor's ID in an integer variable \
as well.

## How to use Actors?

You can set the properties of an Actor by using the [] operator \
overload of the Actors subclass. \
Also with this method you can request Colors, Textures, Flipbooks, \
Texts and Overlapboxes for your new actor. (Remember to store their IDs as well!)

## Actors and Layers

Layer 0 means the screen, in every other case (when Layer is more than 0) it means an \
"in-game" parallax layer. (Less: further, More: hither)

## More about the ID system

In every case ID 0 means an empty object which should not be used, \
it can not be deleted or accessed, but you can use it in some cases, \
for example to give an empty TextureID to a Texture object of an Actor. \
(In this case the renderer will skip the Texture object.) \
Just to mention another useful example of using ID 0, if you don't want \
your Actor to have collision, you need to set its CollisionLayer to 0. \
(No collisions occur in CollisionLayer 0)

## A tip to make your life easier

If you become tired of using the ID system every time you want to manage \
stuff in the engine, you can use the predefined reference types from the engine. \
(engine::actor, engine::color, engine::texture, engine::flipbook, engine::text, engine::overlapbox)

## Example main function

#include \<WizardEngine.hpp\> \
\
int main() \
{\
&emsp;&emsp;wze::engine\* Engine = new wze::engine(NULL, NULL, 1920, 1080, 1000 / 60); \
\
&emsp;&emsp;while (Engine->Update()) \
&emsp;&emsp;{ \
&emsp;&emsp;&emsp;&emsp;//Do \
&emsp;&emsp;&emsp;&emsp;//Some \
&emsp;&emsp;&emsp;&emsp;//Work \
&emsp;&emsp;} \
\
&emsp;&emsp;delete Engine; \
\
&emsp;&emsp;return 0; \
}