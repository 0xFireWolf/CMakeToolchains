#
# Toolchain: x86-64 with Clang 14
# Installed: From APT
# Host Mach: Ubuntu
#
set(CMAKE_C_COMPILER                /usr/bin/clang-14)
set(CMAKE_CXX_COMPILER              /usr/bin/clang++-14)

set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -stdlib=libc++")