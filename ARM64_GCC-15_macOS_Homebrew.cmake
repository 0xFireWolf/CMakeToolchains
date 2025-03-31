#
# Toolchain: ARM64 with GCC 15 (Apple Silicon)
# Installed: From Homebrew (brew install gcc@15)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /opt/homebrew/bin/gcc-15)
set(CMAKE_CXX_COMPILER              /opt/homebrew/bin/g++-15)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
