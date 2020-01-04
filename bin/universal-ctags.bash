git clone https://github.com/universal-ctags/ctags.git
autogent.sh
configure
make
make install
# uninstall system Exterbulent ctags
yum erase ctags 
# remove all has to let bash find /usr/local/bin/ctags instead of /usr/bin/ctags
hash -r
