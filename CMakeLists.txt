# Version
cmake_minimum_required(VERSION 3.29.6)
 
# Project
project(wizard_engine)
 
# Host
string(FIND "Linux Windows" ${CMAKE_SYSTEM_NAME} HOST)
if (${HOST} EQUAL -1)
    message(FATAL_ERROR "Unsupported host, CMake will exit.")
endif()
 
# Standard 
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
 
# Headers
include_directories(${CMAKE_SOURCE_DIR}/include/)

# Sources
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*)
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Libraries
if (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2-2.0.so.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2_image-2.0.so.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2_mixer-2.0.so.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libSDL2_ttf-2.0.so.0)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/bin/SDL2.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/bin/SDL2_image.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/bin/SDL2_mixer.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/bin/SDL2_ttf.dll)
endif()
 
if (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/*)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/bin/*)
endif()

file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})

# Flags
file(READ ${CMAKE_SOURCE_DIR}/compile_flags.txt FLAGS)
string(REPLACE \n \  FLAGS ${FLAGS})

if (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    string(CONCAT FLAGS ${FLAGS} " -Wl,-rpath=./")
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
    string(CONCAT FLAGS ${FLAGS} " -mwindows")
endif()
 
set(CMAKE_CXX_FLAGS ${FLAGS})

# Test
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/test/*)
add_executable(test ${SOURCES})
target_link_libraries(test ${PROJECT_NAME})

# Assets
file(COPY ${CMAKE_SOURCE_DIR}/assets DESTINATION ${CMAKE_BINARY_DIR})
