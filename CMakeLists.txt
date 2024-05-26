# Version
cmake_minimum_required(VERSION 3.29)
 
# Project
project(WizardEngine)
 
# Target
if (NOT ${CMAKE_SYSTEM_NAME} STREQUAL "Linux" AND NOT ${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
    message(FATAL_ERROR "Unsupported OS, CMake will exit.")
endif()
 
# Standard 
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
 
# Sources
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp)
add_library(${PROJECT_NAME} SHARED ${SOURCES})
 
# Flags
set(CMAKE_CXX_FLAGS "-O3 -Werror -Wall -Wextra -Wpedantic -Wdouble-promotion")
 
if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    string(CONCAT CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} " -Wl,-rpath=.")
else()
    string(CONCAT CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} " -mwindows")
endif()
 
# SDL2
if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/libSDL2-2.0.so.0.3000.3)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/libSDL2_image-2.0.so.0.800.2)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/libSDL2_mixer-2.0.so.0.800.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/libSDL2_ttf-2.0.so.0.2200.0)
else()
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/SDL2.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/SDL2_image.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/SDL2_mixer.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/libs/SDL2_ttf.dll)
endif()
 
# Libs
file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/libs/*)
file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})
 
# Test
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/test/*.cpp)
add_executable(test ${SOURCES})
target_link_libraries(test ${PROJECT_NAME})
file(COPY assets valgrind.sh DESTINATION ${CMAKE_BINARY_DIR})
