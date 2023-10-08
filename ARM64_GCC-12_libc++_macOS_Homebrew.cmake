#
# Toolchain: ARM64 with GCC 12 (Apple Silicon)
# Installed: From Homebrew (brew install gcc@12)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /opt/homebrew/bin/gcc-12)
set(CMAKE_CXX_COMPILER              /opt/homebrew/bin/g++-12)

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
