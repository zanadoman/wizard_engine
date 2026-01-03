set(ANDROID_ABI x86_64)
include(/opt/android-ndk/build/cmake/android.toolchain.cmake)
set(CMAKE_FIND_ROOT_PATH /opt/android-libs/x86-64)
set(CMAKE_INSTALL_PREFIX /opt/android-libs/x86-64 CACHE PATH "" FORCE)
