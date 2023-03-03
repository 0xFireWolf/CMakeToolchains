#
# Toolchain: x86-64 with GCC 11
# Installed: From APT
# Host Mach: Ubuntu
#
set(CMAKE_C_COMPILER                /usr/bin/gcc-11)
set(CMAKE_CXX_COMPILER              /usr/bin/g++-11)
set(GCOV                            /usr/bin/gcov-11)

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
