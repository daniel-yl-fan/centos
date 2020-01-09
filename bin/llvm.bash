git clone https://github.com/llvm/llvm-project.git
# wget https://github.com/llvm/llvm-project/archive/llvmorg-9.0.1.tar.gz

mkdir build  &&  cd build

cmake -G "Unix Makefiles" \
      -DLLVM_TARGETS_TO_BUILD=X86 \
      -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_PARALLEL_COMPILE_JOBS=1 \
      -DLLVM_PARALLEL_LINK_JOBS=1 \
      -DLLVM_ENABLE_LLD=ON \
      -DLLVM_INCLUDE_EXAMPLES=OFF \
      -DLLVM_INCLUDE_TESTS=OFF \
      -DLLVM_INCLUDE_BENCHMARKS=OFF \
      -DLLVM_APPEND_VC_REV=OFF \
      -DLLVM_ENABLE_UNWIND_TABLES=OFF \
      ../llvm

cmake --build . --target install

make --jobs=1

#make install

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
