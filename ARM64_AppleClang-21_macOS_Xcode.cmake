#
# Toolchain: ARM64 with Apple Clang (Apple Silicon)
# Installed: Xcode / Command Line Developer Tools
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/bin/clang)
set(CMAKE_CXX_COMPILER              /usr/bin/clang++)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
