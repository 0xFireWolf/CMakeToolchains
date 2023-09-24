#
# Toolchain: ARM64 with Clang 17 (Apple Silicon)
# Installed: From Homebrew (brew install llvm@17)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /opt/homebrew/opt/llvm@17/bin/clang)
set(CMAKE_CXX_COMPILER              /opt/homebrew/opt/llvm@17/bin/clang++)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
