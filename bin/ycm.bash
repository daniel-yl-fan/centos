mkdir /tmp/ycm-build
cd /tmp/ycm-build
# default compile using python2
cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/home/llvm-project/build/lib/libclang.so.10 . /usr/share/vim/vim80/plugged/YouCompleteMe/third_party/ycmd/cpp
# using python3
yum install python36
yum install python36-devel
cmake -G "Unix Makefiles" -DUSE_PYTHON2=OFF -DEXTERNAL_LIBCLANG_PATH=/home/llvm-project/build/lib/libclang.so . /usr/share/vim/vim80/plugged/YouCompleteMe/third_party/ycmd/cpp
make
ln -s  /home/work/cnfg/.ycm_extra_conf.py /usr/share/vim/vim80/plugged/YouCompleteMe/
