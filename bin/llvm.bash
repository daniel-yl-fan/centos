cd ~/local  &&  wget https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2.tar.gz -O ~/local/cmake-3.16.2.tar.gz
tar -xzvf ~/local/cmake-3.16.2.tar.gz
cd cmake-3.16.2  &&  ./configure --prefix=/home/dafan/local  &&  make  &&  make install

git clone https://github.com/llvm/llvm-project.git ~/local/llvm-project
#wget https://github.com/llvm/llvm-project/archive/llvmorg-9.0.1.tar.gz -O ~/local/llvmorg-9.0.1.tar.gz

mkdir build  &&  cd build

cmake -G "Unix Makefiles" \
      --prefix=/home/dafan/local \
      -DLLVM_TARGETS_TO_BUILD=X86 \
      -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_PARALLEL_COMPILE_JOBS=1 \
      -DLLVM_PARALLEL_LINK_JOBS=1 \
      -DLLVM_USE_LINKER=gold \
      -DLLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN=ON \
      -DLLVM_INCLUDE_EXAMPLES=OFF \
      -DLLVM_INCLUDE_TESTS=OFF \
      -DLLVM_INCLUDE_BENCHMARKS=OFF \
      -DLLVM_APPEND_VC_REV=OFF \
      -DLLVM_ENABLE_UNWIND_TABLES=OFF \
      ../llvm

make --jobs=1

make install

#cmake --build . --target install

#CMake Error at cmake/modules/CheckCompilerVersion.cmake:43 (message):
#Host GCC version should be at least 5.1 because LLVM will soon use new C++
#features which your toolchain version doesn't support.  Your version is 4.8.5.  You can temporarily opt out using
#LLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN, but very soon your toolchain won't be supported.
#-DLLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN=ON \


# -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra'
#     semicolon-separated list of the LLVM subprojects you'd like to additionally build. clangd is in clang-tools-extra.
# -DCMAKE_INSTALL_PREFIX=/usr/local  # LLVM tools and libraries to be installed (default /usr/local).
# -DCMAKE_BUILD_TYPE=Debug  # Debug, Release, RelWithDebInfo, and MinSizeRel. Default is Debug.

# Linking CXX executable bin/clang
# collect2: fatal error: ld terminated with signal 9 [Killed]
# This may be caused by the linking step using too much memory OOM.
# 1, -DLLVM_PARALLEL_LINK_JOBS=1
# 2, -DCMAKE_BUILD_TYPE=Release
# 3, -DLLVM_USE_LINKER=gold
# 4, -DLLVM_ENABLE_LLD=ON  # using lld much faster than bfd/gold
# 5, -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=lld   # the same as 4


# uninstall
# xargs rm < install_manifest.txt
