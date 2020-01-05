mkdir build
cd build
cmake -G "Unix Makefiles" -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" -DLLVM_USE_LINKER=gold ../llvm
# -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra'
    # semicolon-separated list of the LLVM subprojects you'd like to additionally build. clangd is in clang-tools-extra.
# -DCMAKE_INSTALL_PREFIX=/usr/local  # LLVM tools and libraries to be installed (default /usr/local).
# -DCMAKE_BUILD_TYPE=Debug  # Debug, Release, RelWithDebInfo, and MinSizeRel. Default is Debug.

# Linking CXX executable bin/clang
# collect2: fatal error: ld terminated with signal 9 [Killed]
# This may be caused by the linking step using too much memory OOM. 
# 1, -DLLVM_PARALLEL_LINK_JOBS=1    # not work
# 2, -DLLVM_LINK_LLVM_DYLIB=true    # need re-compile, not good
# 3, -DCMAKE_BUILD_TYPE=Release     # need re-compile, not good
# 3, -DLLVM_USE_LINKER=gold         # need re-link
make 
make install

# uninstall
xargs rm < install_manifest.txt
