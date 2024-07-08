@echo off

cmake -G "MinGW Makefiles" -S .\ -B .\build\ -DTEST=%1 && cmake --build .\build\
