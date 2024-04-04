#
# Toolchain: x86-64 with Clang 16
# Installed: From PKG (pkg install llvm16)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/bin/clang16)
set(CMAKE_CXX_COMPILER              /usr/local/bin/clang++16)
set(LLVM_PROFDATA                   /usr/local/bin/llvm-profdata16)
set(LLVM_COV                        /usr/local/bin/llvm-cov16)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
