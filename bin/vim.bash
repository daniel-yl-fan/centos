git clone https://github.com/vim/vim.git ~/local/vim-build

cd vim-build/src

CFLAGS+=-fPIC \
./configure \
--prefix=/home/dafan/local \
--with-features=huge \
--with-python-config-dir=/usr/lib64/python2.7/config \
--with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
--enable-multibyte=yes \
--enable-rubyinterp=dynamic \
--enable-pythoninterp=dynamic \
--enable-python3interp=dynamic \
--enable-perlinterp=dynamic \
--enable-luainterp=dynamic \
--enable-cscope=yes

make  &&  make install
# cp vim /usr/bin
# cp vimtutor /usr/bin/vimtutor
# /usr/share/vim/vim82
# cp xxd/xxd /usr/bin
# cp gvimtutor /usr/bin/gvimtutor



git clone https://github.com/junegunn/vim-plug.git ~/local/share/vim/vim82/plugin/vim-plug
ln --force --symbolic ~/local/share/vim/vim82/plugin/vim-plug/plug.vim ~/local/share/vim/vim82/autoload/plug.vim

ln --force --symbolic ~/local/centos/config/vim-quickui.vim ~/local/share/vim/vim82/plugin/vim-quickui.vim

vim -c PlugInstall -c PlugStatus -c qall



mkdir /tmp/ycm-build  &&  cd /tmp/ycm-build

# default python2
cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/home/dafan/local/llvm-project-llvmorg-9.0.1/build/lib/libclang.so .  /home/dafan/local/share/vim/vim82/plugged/YouCompleteMe/third_party/ycmd/cpp
# python3
#cmake -G "Unix Makefiles" -DUSE_PYTHON2=OFF -DEXTERNAL_LIBCLANG_PATH=/home/dafan/local/llvm-project-llvmorg-9.0.1/build/lib/libclang.so .  /home/dafan/local/share/vim/vim82/plugged/YouCompleteMe/third_party/ycmd/cpp
make
