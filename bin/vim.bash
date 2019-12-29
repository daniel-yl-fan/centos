git clone https://github.com/junegunn/vim-plug.git /tmp/vim-plug
cp /tmp/vim-plug/plug.vim /usr/share/vim/vim80/autoload/plug.vim
vim -c PlugInstall -c PlugStatus -c qall

