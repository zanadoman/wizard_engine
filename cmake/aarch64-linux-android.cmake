set(ANDROID_ABI arm64-v8a)
include(/opt/android-ndk/build/cmake/android.toolchain.cmake)
set(CMAKE_FIND_ROOT_PATH /opt/android-libs/aarch64)
set(CMAKE_INSTALL_PREFIX /opt/android-libs/aarch64 CACHE PATH "" FORCE)
