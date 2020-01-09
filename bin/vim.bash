git clone https://github.com/vim/vim.git
cd vim/src
CFLAGS+=-fPIC ./configure --with-features=huge \
            --with-python-config-dir=/usr/lib64/python2.7/config \
            --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
            --enable-multibyte=yes \
            --enable-rubyinterp=dynamic \
            --enable-pythoninterp=dynamic \
            --enable-python3interp=dynamic \
            --enable-perlinterp=dynamic \
            --enable-luainterp=dynamic \
            --enable-cscope=yes \
            --prefix=/usr
git clone https://github.com/junegunn/vim-plug.git /tmp/vim-plug
cp /tmp/vim-plug/plug.vim /usr/share/vim/vim80/autoload/plug.vim
vim -c PlugInstall -c PlugStatus -c qall

mkdir /tmp/ycm-build
cd /tmp/ycm-build
# default compile using python2
cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/home/llvm-project/build/lib/libclang.so . /usr/share/vim/vim80/plugged/YouCompleteMe/third_party/ycmd/cpp
# using python3
cmake -G "Unix Makefiles" -DUSE_PYTHON2=OFF -DEXTERNAL_LIBCLANG_PATH=/home/llvm-project/build/lib/libclang.so . /usr/share/vim/vim80/plugged/YouCompleteMe/third_party/ycmd/cpp
make
