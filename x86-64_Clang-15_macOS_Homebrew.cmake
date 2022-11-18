#
# Toolchain: x86-64 with Clang 15
# Installed: From Homebrew (brew install llvm@14)
# Host Mach: macOS
#
set(CMAKE_C_COMPILER                /usr/local/opt/llvm@15/bin/clang)
set(CMAKE_CXX_COMPILER              /usr/local/opt/llvm@15/bin/clang++)
set(LLVM_PROFDATA                   /usr/local/opt/llvm@15/bin/llvm-profdata)
set(LLVM_COV                        /usr/local/opt/llvm@15/bin/llvm-cov)