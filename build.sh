#!/bin/sh

RED="\e[91m"
GREEN="\e[92m"
BLUE="\e[94m"
ENDCOLOR="\e[0m"

if [[ ! -z $1 && $1 == "-w" ]] || [[ ! -z $1 && $1 == "--windows" ]]
then
    x86_64-w64-mingw32-g++ -Wall -o Build/bin.exe $(find . -name '*.cpp') -m64 -std=gnu++23 -mwindows -LSlayEngine/Libraries/Windows -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lm
    if [ $? == 0 ]
    then
        echo -e "${BLUE}Windows ${GREEN}build successful!${ENDCOLOR}"
        cd Build
        wine64 bin.exe
        if [ $? == 0 ]
        then
            echo -e "${BLUE}Windows ${GREEN}run successful!${ENDCOLOR}"
            exit 0
        else
            echo -e "${BLUE}Windows ${RED}run failed!${ENDCOLOR}"
            exit 1
        fi
    else
        echo -e "${BLUE}Windows ${RED}build failed!${ENDCOLOR}"
        exit 1
    fi
fi

if [[ ! -z $1 && $1 == "-a" ]] || [[ ! -z $1 && $1 == "--all" ]]
then
    g++ -Wall -Wextra -S $(find . -name '*.cpp') -m64 -std=gnu++23
    if [ $? == 0 ]
    then
        rm Compiled/*.s
        mv *.s Compiled
        echo -e "${GREEN}Re-compilation successful!${ENDCOLOR}"
    else
        echo -e "${RED}Re-compilation failed!${ENDCOLOR}"
        rm *.s
        exit 1
    fi
else
    git diff --name-only | grep "\.cpp" 1> /dev/null
    if [ $? == 0 ]
    then
        g++ -Wall -Wextra -S $(git diff --name-only | grep "\.cpp") -m64 -std=gnu++23
        if [ $? == 0 ]
        then
            mv *.s Compiled
            echo -e "${GREEN}Pre-compilation successful!${ENDCOLOR}"
        else
            echo -e "${RED}Pre-compilation failed!${ENDCOLOR}"
            rm *.s
            exit 1
        fi
    else
        echo -e "${GREEN}Pre-compilation skipped!${ENDCOLOR}"
    fi
fi

g++ -o Build/bin.out Compiled/*.s -Wl,-rpath=. -LSlayEngine/Libraries/Linux -lNeoTypes++ -lfreetype -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lm
if [ $? == 0 ]
then
    echo -e "${GREEN}Compilation successful!${ENDCOLOR}"
    cd Build
    ./bin.out
    if [ $? == 0 ]
    then
        echo -e "${GREEN}Run successful!${ENDCOLOR}"
        exit 0
    else
        echo -e "${RED}Run failed!${ENDCOLOR}"
        exit 1
    fi
else
    echo -e "${RED}Compilation failed!${ENDCOLOR}"
    exit 1
fi