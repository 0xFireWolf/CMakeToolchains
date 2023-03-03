#
# Toolchain: x86-64 with MSVC 16.x
# Installed: From Visual Studio 2019
# Host Mach: Windows
#     Usage: Developer Powershell/Command Prompt for VS 2019
# Note that CMAKE_C_COMPILER and CMAKE_CXX_COMPILER are computed automatically from the toolset variable.
# 
set(CMAKE_GENERATOR_TOOLSET "v142")
set(CMAKE_GENERATOR_PLATFORM "x64")

# Chainload Toolchain File Support
if (DEFINED CHAOS_CHAINLOAD_TOOLCHAIN_FILE)
    if (EXISTS ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
        message(STATUS "Including additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE}...")
        include(${CHAOS_CHAINLOAD_TOOLCHAIN_FILE})
    else()
        message(WARNING "Specified additional CMake toolchain file ${CHAOS_CHAINLOAD_TOOLCHAIN_FILE} does not exist.")
    endif()
endif()
