#
# Toolchain: x86-64 with Clang 13
# Installed: From APT
# Host Mach: Ubuntu
#
set(CMAKE_C_COMPILER                /usr/bin/clang-13)
set(CMAKE_CXX_COMPILER              /usr/bin/clang++-13)

set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -stdlib=libc++")