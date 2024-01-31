#!/bin/bash

SOURCES=$(find . -name '*.cpp')
LANGUAGE_VERSION="gnu++23"

LINUX_ASSEMBLY_FOLDER="Compiled"
LINUX_COMPILER="g++"
LINUX_WARNINGS="-Werror -Wall -Wextra"
LINUX_LIBRARIES="-LSlayEngine/Libraries/Linux -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
LINUX_EXTRA_FLAGS="-Wl,-rpath=."
LINUX_BUILD_NAME="bin.out"
LINUX_BUILD_FOLDER="Build"
LINUX_RUN_PREFIX=""
LINUX_RUN_SUFFIX=""

WINDOWS_ASSEBLY_FOLDER=""
WINDOWS_COMPILER="x86_64-w64-mingw32-g++"
WINDOWS_WARNINGS=""
WINDOWS_LIBRARIES="-LSlayEngine/Libraries/Windows -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
WINDOWS_EXTRA_FLAGS="-mwindows"
WINDOWS_BUILD_NAME="bin.exe"
WINDOWS_BUILD_FOLDER="Build"
WINDOWS_RUN_PREFIX="wine64"
WINDOWS_RUN_SUFFIX=""

GIT_FILTER="*.cpp"
GIT_ASSEMBLY_FOLDER="Compiled"
GIT_COMPILER="g++"
GIT_WARNINGS="-Werror -Wall -Wextra"
GIT_LIBRARIES="-LSlayEngine/Libraries/Linux -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
GIT_EXTRA_FLAGS="-Wl,-rpath=."
GIT_BUILD_NAME="bin.out"
GIT_BUILD_FOLDER="Build"
GIT_RUN_PREFIX=""
GIT_RUN_SUFFIX=""

GREEN="\e[92m"
RED="\e[91m"
YELLOW="\e[93m"
BLUE="\e[94m"
MAGENTA="\e[95m"
ENDCOLOR="\e[0m"

if [[ -n $1 && $1 == "-l" ]] || [[ -n $1 && $1 == "--linux" ]]
then
    ls ${LINUX_ASSEMBLY_FOLDER} &> /dev/null || mkdir ${LINUX_ASSEMBLY_FOLDER}
    ls ${LINUX_BUILD_FOLDER} &> /dev/null || mkdir ${LINUX_BUILD_FOLDER}

    if ${LINUX_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${LINUX_EXTRA_FLAGS} ${LINUX_WARNINGS} -S ${SOURCES}
    then
        echo -e "${YELLOW}Linux ${GREEN}compilation successful!${ENDCOLOR}"
        rm ${LINUX_ASSEMBLY_FOLDER}/*.s &> /dev/null & mv *.s ${LINUX_ASSEMBLY_FOLDER} &> /dev/null & rm *.s &> /dev/null
    else
        echo -e "${YELLOW}Linux ${RED}compilation failed!${ENDCOLOR}"
        exit 1
    fi

    if ${LINUX_COMPILER} -o ${LINUX_BUILD_FOLDER}/${LINUX_BUILD_NAME} ${LINUX_ASSEMBLY_FOLDER}/*.s ${LINUX_LIBRARIES} -lm
    then
        echo -e "${YELLOW}Linux ${GREEN}linking successful!${ENDCOLOR}"
    else
        echo -e "${YELLOW}Linux ${RED}linking failed!${ENDCOLOR}"
        exit 1
    fi

    if cd ${LINUX_BUILD_FOLDER} && ${LINUX_RUN_PREFIX} ./${LINUX_BUILD_NAME} ${LINUX_RUN_SUFFIX}
    then
        echo -e "${YELLOW}Linux ${GREEN}run successful!${ENDCOLOR}"
        exit 0
    else
        echo -e "${YELLOW}Linux ${RED}run failed!${ENDCOLOR}"
        exit 1
    fi
fi