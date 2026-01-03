cmake_minimum_required(VERSION 3.25)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
file(READ ${CMAKE_SOURCE_DIR}/compile_flags.txt CMAKE_CXX_FLAGS)
string(REPLACE \n \  CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})
set(CMAKE_CXX_FLAGS_RELEASE -march=native)

find_program(CLANG_TIDY clang-tidy)
if(CLANG_TIDY)
	set(CMAKE_CXX_CLANG_TIDY ${CLANG_TIDY};-p;${CMAKE_BINARY_DIR})
endif()

file(REMOVE_RECURSE ${CMAKE_BINARY_DIR}/assets)
file(COPY ${CMAKE_SOURCE_DIR}/assets DESTINATION ${CMAKE_BINARY_DIR})

project(wizard_engine LANGUAGES CXX)
include_directories(${CMAKE_SOURCE_DIR}/include)
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp)
add_library(${PROJECT_NAME} ${SOURCES})

if(${WIN32})
	file(
		COPY
		${CMAKE_FIND_ROOT_PATH}/bin/libgcc_s_seh-1.dll
		${CMAKE_FIND_ROOT_PATH}/bin/libssp-0.dll
		${CMAKE_FIND_ROOT_PATH}/bin/libstdc++-6.dll
		${CMAKE_FIND_ROOT_PATH}/bin/libwinpthread-1.dll
		DESTINATION
		${CMAKE_BINARY_DIR}
	)
endif()

file(GLOB_RECURSE EXAMPLES ${CMAKE_SOURCE_DIR}/examples/*.cpp)
foreach(SOURCE ${EXAMPLES})
	get_filename_component(EXAMPLE ${SOURCE} NAME_WLE)
    add_executable(${EXAMPLE} WIN32 EXCLUDE_FROM_ALL ${SOURCE})
	target_link_libraries(${EXAMPLE} ${PROJECT_NAME})
	add_custom_command(
		TARGET ${EXAMPLE} POST_BUILD
		COMMAND ${CMAKE_COMMAND} -E copy -t $<TARGET_FILE_DIR:${EXAMPLE}> $<TARGET_RUNTIME_DLLS:${EXAMPLE}>
		COMMAND_EXPAND_LISTS
	)
endforeach()

include(GNUInstallDirs)
install(DIRECTORY ${CMAKE_SOURCE_DIR}/include/${PROJECT_NAME} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(TARGETS ${PROJECT_NAME})
install(FILES ${CMAKE_SOURCE_DIR}/LICENSE DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/licenses/${PROJECT_NAME})
