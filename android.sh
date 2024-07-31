#!/bin/sh

cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk/build/cmake/android.toolchain.cmake -DANDROID_NDK=/opt/android-ndk -S ./ -B ./build/ && cmake --build ./build/
