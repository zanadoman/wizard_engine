#!/bin/bash

SOURCES=$(find . -name '*.cpp')
LANGUAGE_VERSION="gnu++23"
BUILD_NAME="bin"
BUILD_FOLDER="Build"

LINUX_COMPILER="g++"
LINUX_WARNINGS="-Werror -Wall -Wextra"
LINUX_LIBRARIES="-LSlayEngine/Libraries/Linux -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
LINUX_EXTRA_FLAGS="-Wl,-rpath=."

WINDOWS_COMPILER="x86_64-w64-mingw32-g++"
WINDOWS_WARNINGS=""
WINDOWS_LIBRARIES="-LSlayEngine/Libraries/Windows -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
WINDOWS_EXTRA_FLAGS="-mwindows"

GREEN="\e[92m"
RED="\e[91m"
YELLOW="\e[93m"
BLUE="\e[94m"
ENDCOLOR="\e[0m"

ls ${BUILD_FOLDER} &> /dev/null || mkdir ${BUILD_FOLDER}

if [[ -n $1 && $1 == "-w" ]] || [[ -n $1 && $1 == "--windows" ]]
then
    if ${WINDOWS_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${WINDOWS_EXTRA_FLAGS} ${WINDOWS_WARNINGS} -o ${BUILD_FOLDER}/${BUILD_NAME}.exe ${SOURCES} ${WINDOWS_LIBRARIES} -lm
    then
        echo -e "${BLUE}Windows ${GREEN}build successful!${ENDCOLOR}"
        cd ${BUILD_FOLDER} || exit 1
        if wine64 ${BUILD_NAME}.exe
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

if [[ -n $1 && $1 == "-l" ]] || [[ -n $1 && $1 == "--linux" ]]
then
    if ${LINUX_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${LINUX_EXTRA_FLAGS} ${LINUX_WARNINGS} -o ${BUILD_FOLDER}/${BUILD_NAME}.out ${SOURCES} ${LINUX_LIBRARIES} -lm
    then
        echo -e "${YELLOW}Linux ${GREEN}build successful!${ENDCOLOR}"
        cd ${BUILD_FOLDER} || exit 1
        if ./${BUILD_NAME}.out
        then
            echo -e "${YELLOW}Linux ${GREEN}run successful!${ENDCOLOR}"
            exit 0
        else
            echo -e "${YELLOW}Linux ${RED}run failed!${ENDCOLOR}"
            exit 1
        fi
    else
        echo -e "${YELLOW}Linux ${RED}build failed!${ENDCOLOR}"
        exit 1
    fi
fi