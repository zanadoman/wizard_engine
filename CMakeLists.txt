# CMake version
cmake_minimum_required(VERSION 3.5)

# Project
project(WizardEngine)

# Compile flags
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(CMAKE_CXX_FLAGS
        "-O3 -Werror -Wall -Wextra -Wpedantic -Wdouble-promotion -Wl,-rpath=.")
elseif (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    set(CMAKE_CXX_FLAGS
        "-O3 -Werror -Wall -Wextra -Wpedantic -Wdouble-promotion -mwindows")
else()
    message(FATAL_ERROR "Unsupported OS, CMake will exit.")
endif()

# Sources
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# SDL2
find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(SDL2_ttf REQUIRED)
target_link_libraries(${PROJECT_NAME} SDL2::SDL2)
target_link_libraries(${PROJECT_NAME} SDL2_image::SDL2_image)
target_link_libraries(${PROJECT_NAME} SDL2_mixer::SDL2_mixer)
target_link_libraries(${PROJECT_NAME} SDL2_ttf::SDL2_ttf)

# Install
file(GLOB HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/include/WZE)
install(DIRECTORY ${HEADERS} DESTINATION include)
install(TARGETS ${PROJECT_NAME} DESTINATION lib)

# Test
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/test/*.cpp)
add_executable(test ${SOURCES})
target_link_libraries(test ${PROJECT_NAME})
file(COPY assets valgrind.sh DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    file(GLOB LIBS ${CMAKE_CURRENT_SOURCE_DIR}/lib/*.dll)
    file(COPY ${LIBS} DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
endif()
