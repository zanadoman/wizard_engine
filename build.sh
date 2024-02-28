#!/bin/bash

g++ -m64 -std=gnu++23 -O3 -c -fPIC $(find src -name "*.cpp")
g++ -shared -o "build/lib/linux/libWizardEngine.so" ./*.o -Lsrc/lib/linux -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf -lSDL2_net
rm ./*.o

x86_64-w64-mingw32-g++ -m64 -std=gnu++23 -O3 -c $(find src -name "*.cpp")
x86_64-w64-mingw32-g++ -shared -o "build/lib/windows/libWizardEngine.dll" ./*.o -Lsrc/lib/windows -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf -lSDL2_net
rm ./*.o

cp src/*.hpp build/inc
