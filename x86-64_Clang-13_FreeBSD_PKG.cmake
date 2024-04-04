#
# Toolchain: x86-64 with Clang 13
# Installed: From PKG (pkg install llvm13)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/bin/clang13)
set(CMAKE_CXX_COMPILER              /usr/local/bin/clang++13)
set(LLVM_PROFDATA                   /usr/local/bin/llvm-profdata13)
set(LLVM_COV                        /usr/local/bin/llvm-cov13)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
