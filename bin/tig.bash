yum install ncurses-devel ncurses
git clone git://github.com/jonas/tig.git /tmp/tig
cd /tmp/tig
make prefix=/usr/local
make install prefix=/usr/local
