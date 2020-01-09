git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls  &&  mkdir build  &&  cd build
cmake -G "Unix Makefiles" \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_FLAGS=-fno-gnu-unique \
      -DCMAKE_EXE_LINKER_FLAGS='-fuse-ld=gold -Wl,--no-gnu-unique' \
      -DCMAKE_EXE_LINKER_FLAGS=-lpthread \
      -DCMAKE_PREFIX_PATH="/home/llvm-project/llvm;/home/llvm-project/llvm/tools/clang;/home/llvm-project/build;/home/llvm-project/build/lib" \
      ../
make
make install
# llvm will install libLLVM-10git.so to /usr/local/lib which can not be found by x86_64, should be in /usr/lib64
ln -s /usr/local/lib/libLLVM-10git.so /usr/lib64/libLLVM-10git.so

#CMakeFiles/CMakeError.log
#9:ld.lld: error: undefined symbol: pthread_create
#12:clang-10: error: linker command failed with exit code 1 (use -v to see invocation)
#    -DCMAKE_EXE_LINKER_FLAGS=-lpthread

# compile ccls with GCC 8.2.1, add
# -DCMAKE_CXX_FLAGS=-fno-gnu-unique
# or
# -DCMAKE_CXX_COMPILER=/usr/bin/clang++
# or
# -DCMAKE_EXE_LINKER_FLAGS='-fuse-ld=gold -Wl,--no-gnu-unique'

# cmake -H. -BRelease    # -H : source dir;  -B : target dir
# ninja -C Release
# cmake --build Release

# -DCMAKE_PREFIX_PATH="$LLVM/Release;$LLVM/llvm;$LLVM/clang"
# llvm: llvm source
# llvm/tools/clang: clang source
# llvm/Release: build directory. include/ contains generated llvm header files, e.g. include/llvm/Config/config.h
# llvm/Release/tools/clang: build directory. include/ contains generated clang header files, e.g. include/clang/Config/config.h

# generated clang+llvm header files
# ~/llvm/Release/include/llvm/Config/config.h
# ~/llvm/Release/tools/clang/include/clang/Config/config.h
# libclangIndex.so
# ~/llvm/Release/lib/libclangIndex.so or libclangIndex.a
# -resource-dir
# ~/llvm/Release/lib/clang/7.0.0
# clang+llvm libraries
# ~/llvm/Release/lib/libclangDriver.so
# ~/llvm/Release/lib/libLLVMSupport.so or libLLVMSupport.a
