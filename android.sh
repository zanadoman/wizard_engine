#!/bin/sh

cmake -DCMAKE_TOOLCHAIN_FILE=./android.toolchain.cmake -S ./ -B ./build/ && cmake --build ./build/
