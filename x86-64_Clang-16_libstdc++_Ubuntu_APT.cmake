#
# Toolchain: x86-64 with Clang 16
# Installed: From APT
# Host Mach: Ubuntu
#
set(CMAKE_C_COMPILER                /usr/bin/clang-16)
set(CMAKE_CXX_COMPILER              /usr/bin/clang++-16)

set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")

set(LLVM_PROFDATA                   /usr/bin/llvm-profdata-16)
set(LLVM_COV                        /usr/bin/llvm-cov-16)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
