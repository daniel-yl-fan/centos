git clone https://github.com/aria2/aria2.git
# for https support
yum install gnutls-devel
autoreconf -i
./configure
make
make install
