git clone https://github.com/vim/vim.git ~/local/vim-build

cd ~/local/vim-build/src

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

make --jobs=2

make install

# cp vim /usr/bin
# cp vimtutor /usr/bin/vimtutor
# /usr/share/vim/vim82
# cp xxd/xxd /usr/bin
# cp gvimtutor /usr/bin/gvimtutor

#/usr/bin/perl -e 'unless ( $] >= 5.005 ) { for (qw(na defgv errgv)) { print "#define PL_$_ $_\n" }}' > auto/if_perl.c
#/usr/bin/perl  -prototypes -typemap \
#        /usr/share/perl5/ExtUtils/typemap if_perl.xs >> auto/if_perl.c
#Unrecognized switch: -rototypes  (-h will show valid options).
#make: *** [Makefile:3001: auto/if_perl.c] Error 29
#    dnf install perl-devel

#if_perl.xs:60:10: fatal error: EXTERN.h: No such file or directory
#    dnf install perl



git clone https://github.com/junegunn/vim-plug.git ~/local/share/vim/vim82/plugin/vim-plug
ln --force --symbolic ~/local/share/vim/vim82/plugin/vim-plug/plug.vim ~/local/share/vim/vim82/autoload/plug.vim

ln --force --symbolic ~/local/centos/config/vim-quickui.vim ~/local/share/vim/vim82/plugin/vim-quickui.vim

vim -c PlugInstall -c PlugStatus -c qall


mkdir ~/local/ycm-build  &&  cd ~/local/ycm-build

# default python2
#cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/home/dafan/local/llvm-project-llvmorg-9.0.1/build/lib/libclang.so .  /home/dafan/local/share/vim/vim82/plugged/YouCompleteMe/third_party/ycmd/cpp

# python3
cmake -G Ninja \
    -DUSE_PYTHON2=OFF \
    -DEXTERNAL_LIBCLANG_PATH=/home/dafan/local/llvm-project-build/build/lib/libclang.so \
    .  /home/dafan/local/share/vim/vim82/plugged/YouCompleteMe/third_party/ycmd/cpp

ninja -v -j 2

