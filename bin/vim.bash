git clone https://github.com/vim/vim.git

cd vim/src

CFLAGS+=-fPIC \
./configure --with-features=huge \
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

make  &&  make install
# cp vim /usr/bin
# cp vimtutor /usr/bin/vimtutor
# /usr/share/vim/vim82
# cp xxd/xxd /usr/bin
# cp gvimtutor /usr/bin/gvimtutor


git clone https://github.com/brafales/vim-desert256.git /tmp/desert256
mv /tmp/desert256/colors/desert256.vim /usr/share/vim/vim82/colors/desert256.vim
rm --force --recursive /tmp/desert256


ln -s /home/centos/config/vim-quickui.vim /usr/share/vim/vim82/vim-quickui.vim

git clone https://github.com/kien/rainbow_parentheses.vim.git /tmp/rainbow_parentheses
mv /tmp/rainbow_parentheses/plugin/rainbow_parentheses.vim /usr/share/vim/vim82/plugin/rainbow_parentheses.vim
mv /tmp/rainbow_parentheses/autoload/rainbow_parentheses.vim /usr/share/vim/vim82/autoload/rainbow_parentheses.vim
rm --force --recursive /tmp/rainbow_parentheses


git clone https://github.com/junegunn/vim-plug.git /tmp/vim-plug
mv /tmp/vim-plug/plug.vim /usr/share/vim/vim82/autoload/plug.vim
rm --force --recursive /tmp/vim-plug
vim -c PlugInstall -c PlugStatus -c qall



mkdir /tmp/ycm-build  &&  cd /tmp/ycm-build

# default python2
#cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/home/llvm-project/build/lib/libclang.so . /usr/share/vim/vim80/plugged/YouCompleteMe/third_party/ycmd/cpp
# python3
cmake -G "Unix Makefiles" -DUSE_PYTHON2=OFF -DEXTERNAL_LIBCLANG_PATH=/home/llvm-project/build/lib/libclang.so . /home/vim/plugged/YouCompleteMe/third_party/ycmd/cpp
