#
# Toolchain: x86-64 with GCC 10
# Installed: From Homebrew (brew install gcc@10)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/bin/gcc-10)
set(CMAKE_CXX_COMPILER              /usr/local/bin/g++-10)
set(GCOV                            /usr/local/bin/gcov-10)

set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -stdlib=libc++")

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
