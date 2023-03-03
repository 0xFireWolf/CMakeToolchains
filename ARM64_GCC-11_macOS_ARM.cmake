#
# Toolchain: ARM32 Bare-Metal with GCC 11.2.0
# Installed: ARM GNU Toolchains (https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain)
# Host Mach: macOS
# Reference: https://kubasejdak.com/how-to-cross-compile-for-embedded-with-cmake-like-a-champ
#
set(CMAKE_SYSTEM_NAME               Generic)
set(CMAKE_SYSTEM_PROCESSOR          aarch64)

# Without that flag CMake is not able to pass test compilation check
set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY)

set(CMAKE_C_COMPILER                /Applications/ARM/bin/aarch64-none-elf-gcc)
set(CMAKE_CXX_COMPILER              /Applications/ARM/bin/aarch64-none-elf-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
