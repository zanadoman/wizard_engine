# CMake
cmake_minimum_required(VERSION 3.18.4)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

if(NOT ${CMAKE_BINARY_DIR} STREQUAL ${CMAKE_SOURCE_DIR}/build)
    message(FATAL_ERROR "Unsupported directory, CMake will exit.")
endif()

# Project
project(wizard_engine LANGUAGES CXX)

# Host
if(NOT ${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows|Android)
    message(FATAL_ERROR "Unsupported host, CMake will exit.")
endif()

# Architecture
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} MATCHES x86_64|aarch64)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} STREQUAL x86_64)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} STREQUAL aarch64)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
endif()

# Compiler
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    find_program(CXX_COMPILER ${CMAKE_SYSTEM_PROCESSOR}-linux-gnu-g++)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    find_program(CXX_COMPILER x86_64-w64-mingw32-g++)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    find_program(CXX_COMPILER
                 ${CMAKE_ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++)
endif()

if(NOT CXX_COMPILER)
    message(FATAL_ERROR "Missing compiler, Cmake will exit.")
endif()

set(CMAKE_CXX_COMPILER ${CXX_COMPILER})

if(${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows)
    if(NOT ${CMAKE_CXX_COMPILER_ID} MATCHES GNU)
        message(FATAL_ERROR "Unsupported compiler, CMake will exit.")
    endif()
    if(${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 10.2.1)
        message(FATAL_ERROR "Outdated compiler, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    if(NOT ${CMAKE_CXX_COMPILER_ID} MATCHES Clang)
        message(FATAL_ERROR "Unsupported compiler, CMake will exit.")
    endif()
    if(${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 17.0.2)
        message(FATAL_ERROR "Outdated compiler, CMake will exit.")
    endif()
endif()

# Headers
include_directories(${CMAKE_SOURCE_DIR}/include/)

# Sources
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*)
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Libraries
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    set(CMAKE_LIBRARY_PATH ${CMAKE_SOURCE_DIR}/lib/${CMAKE_SYSTEM_PROCESSOR}-linux/)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2-2.0.so.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2_image-2.0.so.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2_mixer-2.0.so.0)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2_ttf-2.0.so.0)
    if(${CMAKE_SYSTEM_PROCESSOR} STREQUAL aarch64)
        target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libfreetype.so.6)
        target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libpng16.so.16)
        target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libz.so.1)
        target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libbrotlidec.so.1)
        target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libbrotlicommon.so.1)
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    set(CMAKE_LIBRARY_PATH ${CMAKE_SOURCE_DIR}/lib/x86_64-windows/)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/SDL2.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/SDL2_image.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/SDL2_mixer.dll)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/SDL2_ttf.dll)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    set(CMAKE_LIBRARY_PATH ${CMAKE_SOURCE_DIR}/lib/aarch64-android/)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2.so)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2_image.so)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2_mixer.so)
    target_link_libraries(${PROJECT_NAME} ${CMAKE_LIBRARY_PATH}/libSDL2_ttf.so)
endif()

file(GLOB LIBRARIES ${CMAKE_LIBRARY_PATH}/*)
file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})

# Flags
file(READ ${CMAKE_SOURCE_DIR}/compile_flags.txt FLAGS)
string(REPLACE \n \  FLAGS ${FLAGS})

if(${CMAKE_SYSTEM_NAME} MATCHES Linux|Android)
    set(CMAKE_CXX_FLAGS "${FLAGS} -Wl,-rpath=./")
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    set(CMAKE_CXX_FLAGS "${FLAGS} -mwindows")
endif()

# Tests
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/tests/*)

foreach(SOURCE ${SOURCES})
    get_filename_component(NAME ${SOURCE} NAME_WE)
    add_executable(${NAME} ${SOURCE})
    target_link_libraries(${NAME} ${PROJECT_NAME})
endforeach()

# Assets
file(COPY ${CMAKE_SOURCE_DIR}/assets DESTINATION ${CMAKE_BINARY_DIR})

# Test
if(DEFINED TEST AND NOT ${TEST} STREQUAL \ )
    add_custom_command(TARGET ${TEST} POST_BUILD
                       COMMAND ${CMAKE_BINARY_DIR}/${TEST}
                       WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
                       COMMENT "Running test ${TEST}")
else()
    message(AUTHOR_WARNING "TEST not defined, skipping test.")
endif()
