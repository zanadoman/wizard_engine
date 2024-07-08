#!/bin/sh

cmake -G "Unix Makefiles" -S ./ -B ./build/ -DTEST=$1 && cmake --build ./build/
