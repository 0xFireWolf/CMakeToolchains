#
# Toolchain: x86-64 with Clang 17
# Installed: From PKG (pkg install llvm17)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/bin/clang17)
set(CMAKE_CXX_COMPILER              /usr/local/bin/clang++17)
set(LLVM_PROFDATA                   /usr/local/bin/llvm-profdata17)
set(LLVM_COV                        /usr/local/bin/llvm-cov17)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
