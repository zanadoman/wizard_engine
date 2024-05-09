# CMAKE version
cmake_minimum_required(VERSION 3.0)

# Project name
project(WizardEngine)

# C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Source files
file(GLOB SOURCES src/*.cpp)
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Header files
include_directories(inc)

# Compile flags
set(CMAKE_CXX_FLAGS "-O3 -Werror -Wall -Wextra -Wpedantic -Wdouble-promotion")

# SDL2
find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(SDL2_ttf REQUIRED)
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2::SDL2)
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2_image::SDL2_image)
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2_mixer::SDL2_mixer)
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2_ttf::SDL2_ttf)

# Install library
install(TARGETS ${PROJECT_NAME} DESTINATION lib)

# Install headers
file(GLOB HEADERS inc/*.hpp)
install(FILES ${HEADERS} DESTINATION include/${PROJECT_NAME})
