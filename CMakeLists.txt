# CMake
cmake_minimum_required(VERSION 3.30.1)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

if(NOT ${CMAKE_BINARY_DIR} STREQUAL ${CMAKE_SOURCE_DIR}/build)
    message(FATAL_ERROR "Unsupported directory, CMake will exit.")
endif()

# Project
project(wizard_engine LANGUAGES CXX)

# Host
if(NOT ${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows)
    message(FATAL_ERROR "Unsupported host, CMake will exit.")
endif()

# Compiler
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    find_program(COMPILER gcc)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    find_program(COMPILER x86_64-w64-mingw32-g++)
endif()

if(NOT COMPILER)
    message(FATAL_ERROR "Missing compiler, Cmake will exit.")
endif()

set(CMAKE_CXX_COMPILER ${COMPILER})

if(NOT ${CMAKE_CXX_COMPILER_ID} MATCHES GNU)
    message(FATAL_ERROR "Unsupported compiler, CMake will exit.")
endif()

if(${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 13.1)
    message(FATAL_ERROR "Outdated compiler, CMake will exit.")
endif()

# Headers
include_directories(${CMAKE_SOURCE_DIR}/include/)

# Sources
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*)
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Libraries
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/lib/libSDL2-2.0.so.0)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/lib/libSDL2_image-2.0.so.0)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/lib/libSDL2_mixer-2.0.so.0)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/lib/libSDL2_ttf-2.0.so.0)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/bin/SDL2.dll)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/bin/SDL2_image.dll)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/bin/SDL2_mixer.dll)
    target_link_libraries(${PROJECT_NAME}
                          ${CMAKE_SOURCE_DIR}/bin/SDL2_ttf.dll)
endif()

if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/*)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/bin/*)
endif()

file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})

# Flags
file(READ ${CMAKE_SOURCE_DIR}/compile_flags.txt FLAGS)
string(REPLACE \n \  FLAGS ${FLAGS})

if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
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
