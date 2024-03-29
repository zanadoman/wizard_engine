#!/bin/bash

gcc -m64 -std=gnu17 -O3 -c ./*.c
ar -rcs ../lib/linux/core.a
rm ./*.o

x86_64-w64-mingw32-gcc -m64 -std=gnu17 -O3 -c ./*.c
ar -rcs ../lib/windows/core.a
rm ./*.o
