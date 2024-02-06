#!/bin/bash

VERSION="Beta 0.0.0"

rm -r "Release/Linux (x86_64)"
mkdir "Release/Linux (x86_64)"
g++ -m64 -std=gnu++23 -O3 -c $(find WizardEngine -name "*.cpp")
ar rcs "Release/Linux (x86_64)/libWizardEngine.a" ./*.o
cp WizardEngine/*.hpp "Release/Linux (x86_64)"
mkdir "Release/Linux (x86_64)/Includes"
cp WizardEngine/Includes/NeoTypes++.hpp "Release/Linux (x86_64)/Includes"
mkdir "Release/Linux (x86_64)/Libraries"
cp WizardEngine/Libraries/Linux/*.a "Release/Linux (x86_64)/Libraries"
rm ./*.o

rm -r "Release/Windows (x86_64)"
mkdir "Release/Windows (x86_64)"
x86_64-w64-mingw32-g++ -m64 -std=gnu++23 -O3 -c $(find WizardEngine -name "*.cpp")
ar rcs "Release/Windows (x86_64)/libWizardEngine.a" ./*.o
cp WizardEngine/*.hpp "Release/Windows (x86_64)"
mkdir "Release/Windows (x86_64)/Includes"
cp WizardEngine/Includes/* "Release/Windows (x86_64)/Includes"
mkdir "Release/Windows (x86_64)/Libraries"
cp WizardEngine/Libraries/Windows/*.a "Release/Windows (x86_64)/Libraries"
cp Build/*.dll "Release/Windows (x86_64)"
rm ./*.o