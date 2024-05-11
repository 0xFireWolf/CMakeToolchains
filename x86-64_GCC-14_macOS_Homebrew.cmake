#
# Toolchain: x86-64 with GCC 14
# Installed: From Homebrew (brew install gcc@14)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/bin/gcc-14)
set(CMAKE_CXX_COMPILER              /usr/local/bin/g++-14)
set(GCOV                            /usr/local/bin/gcov-14)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
