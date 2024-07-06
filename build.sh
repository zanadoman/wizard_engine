#!/bin/sh
mkdir ./build/ & cd ./build && cmake -G "Unix Makefiles" ../ && cmake --build ./ && ./test
