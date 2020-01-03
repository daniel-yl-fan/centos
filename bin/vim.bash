#git clone https://github.com/vim/vim.git
#cd vim/src
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
