# Version
cmake_minimum_required(VERSION 3.29)
 
# Project
project(WizardEngine)
 
# Target
string(FIND "Linux Windows" ${CMAKE_SYSTEM_NAME} TARGET)
if (${TARGET} EQUAL -1)
    message(FATAL_ERROR "Unsupported OS, CMake will exit.")
endif()
 
# Standard 
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
 
# Sources
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp)
add_library(${PROJECT_NAME} SHARED ${SOURCES})
 
# Flags
set(CMAKE_CXX_FLAGS "-Ofast -Werror -Wall -Wextra -Wpedantic -Wdouble-promotion")

if (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    string(CONCAT CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} " -Wl,-rpath=.")
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
    string(CONCAT CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} " -mwindows")
endif()

# SDL2
if (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2-2.0.so.0.3000.3)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2_image-2.0.so.0.800.2)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2_mixer-2.0.so.0.800.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2_ttf-2.0.so.0.2200.0)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/SDL2.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/SDL2_image.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/SDL2_mixer.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/SDL2_ttf.dll)
endif()
 
# Libraries
file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/*)
file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})
 
# Test
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/test/*.cpp)
add_executable(test ${SOURCES})
target_link_libraries(test ${PROJECT_NAME})
file(COPY ${CMAKE_SOURCE_DIR}/assets ${CMAKE_SOURCE_DIR}/valgrind.sh DESTINATION ${CMAKE_BINARY_DIR})
