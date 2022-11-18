#
# Toolchain: x86-64 with Clang 13
# Installed: From Homebrew (brew install llvm@13)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/opt/llvm@13/bin/clang)
set(CMAKE_CXX_COMPILER              /usr/local/opt/llvm@13/bin/clang++)
set(LLVM_PROFDATA                   /usr/local/opt/llvm@13/bin/llvm-profdata)
set(LLVM_COV                        /usr/local/opt/llvm@13/bin/llvm-cov)