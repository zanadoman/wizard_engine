# CMake
cmake_minimum_required(VERSION 3.25.1)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_CLANG_TIDY clang-tidy;-p;${CMAKE_BINARY_DIR})
if(NOT ${CMAKE_BINARY_DIR} STREQUAL ${CMAKE_SOURCE_DIR}/build)
  message(FATAL_ERROR "Incorrect build directory, CMake will exit.")
endif()

# Project
project(wizard_engine LANGUAGES CXX)

# Host
if(NOT ${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows)
  message(FATAL_ERROR "Unsupported host, CMake will exit.")
endif()

# Architecture
if(NOT ${CMAKE_SYSTEM_PROCESSOR} MATCHES x86_64|AMD64)
  message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
endif()

# Compiler
if(NOT ${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
  message(FATAL_ERROR "Unsupported compiler, CMake will exit.")
endif()
if(${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 18.0.1)
  message(FATAL_ERROR "Outdated compiler, CMake will exit.")
endif()

# Headers
include_directories(${CMAKE_SOURCE_DIR}/include/)

# Sources
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp)
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Flags
file(READ ${CMAKE_SOURCE_DIR}/compile_flags.txt CMAKE_CXX_FLAGS)
string(REPLACE \n \  CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})

# Libraries
target_link_libraries(${PROJECT_NAME} SDL3 SDL3_image SDL3_mixer SDL3_net SDL3_ttf)

# Examples
file(GLOB_RECURSE EXAMPLES ${CMAKE_SOURCE_DIR}/examples/*.cpp)
foreach(SOURCE ${EXAMPLES})
  get_filename_component(NAME ${SOURCE} NAME_WLE)
  add_executable(${NAME} ${SOURCE})
  target_link_libraries(${NAME} ${PROJECT_NAME})
  if(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    target_link_options(${NAME} PRIVATE -lmingw32)
  endif()
endforeach()

# Assets
file(REMOVE_RECURSE ${CMAKE_BINARY_DIR}/assets/)
file(COPY ${CMAKE_SOURCE_DIR}/assets DESTINATION ${CMAKE_BINARY_DIR}/)
