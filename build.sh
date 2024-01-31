#!/bin/bash

SOURCES=$(find . -name '*.cpp')
LANGUAGE_VERSION="gnu++23"

LINUX_COMPILER="g++"
LINUX_WARNINGS="-Werror -Wall -Wextra"
LINUX_LIBRARIES="-LSlayEngine/Libraries/Linux -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
LINUX_EXTRA_FLAGS="-Wl,-rpath=."
LINUX_BUILD_NAME="bin.out"
LINUX_BUILD_FOLDER="Build"
LINUX_RUN_PREFIX=""
LINUX_RUN_SUFFIX=""

WINDOWS_COMPILER="x86_64-w64-mingw32-g++"
WINDOWS_WARNINGS=""
WINDOWS_LIBRARIES="-LSlayEngine/Libraries/Windows -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
WINDOWS_EXTRA_FLAGS="-mwindows"
WINDOWS_BUILD_NAME="bin.exe"
WINDOWS_BUILD_FOLDER="Build"
WINDOWS_RUN_PREFIX="wine64"
WINDOWS_RUN_SUFFIX=""

GIT_FILTER="*.cpp"
GIT_FOLDER="Compiled"
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
    ls ${LINUX_BUILD_FOLDER} &> /dev/null || mkdir ${LINUX_BUILD_FOLDER}

    if ${LINUX_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${LINUX_EXTRA_FLAGS} ${LINUX_WARNINGS} -o ${LINUX_BUILD_FOLDER}/${LINUX_BUILD_NAME} ${SOURCES} ${LINUX_LIBRARIES} -lm
    then
        echo -e "${YELLOW}Linux ${GREEN}build successful!${ENDCOLOR}"
        cd ${LINUX_BUILD_FOLDER}
        if ${LINUX_RUN_PREFIX} ./${LINUX_BUILD_NAME} ${LINUX_RUN_SUFFIX}
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

if [[ -n $1 && $1 == "-w" ]] || [[ -n $1 && $1 == "--windows" ]]
then
    ls ${WINDOWS_BUILD_FOLDER} &> /dev/null || mkdir ${WINDOWS_BUILD_FOLDER}

    if ${WINDOWS_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${WINDOWS_EXTRA_FLAGS} ${WINDOWS_WARNINGS} -o ${WINDOWS_BUILD_FOLDER}/${WINDOWS_BUILD_NAME} ${SOURCES} ${WINDOWS_LIBRARIES} -lm
    then
        echo -e "${BLUE}Windows ${GREEN}build successful!${ENDCOLOR}"
        cd ${WINDOWS_BUILD_FOLDER}
        if ${WINDOWS_RUN_PREFIX} ./${WINDOWS_BUILD_NAME} ${WINDOWS_RUN_SUFFIX}
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

if [[ -n $1 && $1 == "-g" ]] || [[ -n $1 && $1 == "--git" ]]
then
    ls ${GIT_FOLDER} &> /dev/null || mkdir ${GIT_FOLDER}
    ls ${GIT_BUILD_FOLDER} &> /dev/null || mkdir ${GIT_BUILD_FOLDER}

    if ! -n $(find $(git diff --name-only) -name ${GIT_FILTER})
    then
        if ${GIT_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${GIT_EXTRA_FLAGS} ${GIT_WARNINGS} -S $(find $(git diff --name-only) -name ${GIT_FILTER})
        then
            echo -e "${MAGENTA}Git ${GREEN}compilation successful!${ENDCOLOR}"
            rm ${GIT_FOLDER} &> /dev/null
            mv *.s ${GIT_FOLDER} &> /dev/null
            rm *.s &> /dev/null
        else
            echo -e "${MAGENTA}Git ${RED}compilation failed!${ENDCOLOR}"
            exit 1
        fi
    else
        echo -e "${MAGENTA}Git ${GREEN}compilation skipped!${ENDCOLOR}"
    fi

    if ${GIT_COMPILER} -o ${GIT_BUILD_FOLDER}/${GIT_BUILD_NAME} $(find ${GIT_FOLDER} -name "*.s") ${GIT_LIBRARIES} -lm
    then
        echo -e "${MAGENTA}Git ${GREEN}linking successful!${ENDCOLOR}"
        cd ${GIT_BUILD_FOLDER} || exit 1
        if ${GIT_RUN_PREFIX} ./${GIT_BUILD_NAME} ${GIT_RUN_SUFFIX}
        then
            echo -e "${MAGENTA}Git ${GREEN}run successful!${ENDCOLOR}"
            exit 0
        else
            echo -e "${MAGENTA}Git ${RED}run failed!${ENDCOLOR}"
            exit 1
        fi
    else
        echo -e "${MAGENTA}Git ${RED}linking failed!${ENDCOLOR}"
        exit 1
    fi
fi