#
# Toolchain: x86-64 with GCC 12
# Installed: From Homebrew (brew install gcc@12)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/bin/gcc-12)
set(CMAKE_CXX_COMPILER              /usr/local/bin/g++-12)
set(GCOV                            /usr/local/bin/gcov-12)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
