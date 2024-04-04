#
# Toolchain: ARM64 with Clang 18 (Apple Silicon)
# Installed: From Homebrew (brew install llvm@18)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /opt/homebrew/opt/llvm@18/bin/clang)
set(CMAKE_CXX_COMPILER              /opt/homebrew/opt/llvm@18/bin/clang++)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
