#
# Toolchain: x86-64 with Clang 19
# Installed: From Homebrew (brew install llvm@19)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/opt/llvm@19/bin/clang)
set(CMAKE_CXX_COMPILER              /usr/local/opt/llvm@19/bin/clang++)
set(LLVM_PROFDATA                   /usr/local/opt/llvm@19/bin/llvm-profdata)
set(LLVM_COV                        /usr/local/opt/llvm@19/bin/llvm-cov)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()

if (DEFINED CHAOS_USE_BUNDLED_LIBCPP)
    message(STATUS "Updating the linker flags for executables to use the bundled libc++.")
    set(CMAKE_EXE_LINKER_FLAGS "-L/usr/local/opt/llvm@19/lib/c++ -L/usr/local/opt/llvm@19/lib/ -lunwind")
endif()
