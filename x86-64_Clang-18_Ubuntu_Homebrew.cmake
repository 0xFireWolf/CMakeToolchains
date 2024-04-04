#
# Toolchain: x86-64 with Clang 18
# Installed: From Homebrew (brew install llvm@18)
# Host Mach: Ubuntu
#
set(CMAKE_C_COMPILER                /home/linuxbrew/.linuxbrew/opt/llvm@18/bin/clang)
set(CMAKE_CXX_COMPILER              /home/linuxbrew/.linuxbrew/opt/llvm@18/bin/clang++)
set(LLVM_PROFDATA                   /home/linuxbrew/.linuxbrew/opt/llvm@18/bin/llvm-profdata)
set(LLVM_COV                        /home/linuxbrew/.linuxbrew/opt/llvm@18/bin/llvm-cov)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
