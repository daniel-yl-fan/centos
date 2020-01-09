yum --assumeyes install http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/t/tig-2.4.0-1.el7.x86_64.rpm
yum --assumeyes install http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/g/global-6.5.6-4.el7.x86_64.rpm

cd /tmp  ;  git clone https://github.com/universal-ctags/ctags.git
cd /tmp/ctags  ;  ./autogen.sh && ./configure && make && make install && hash -r
rm --force --recursive /tmp/ctags
# /usr/local/bin/ctags /usr/local/bin/readtags

cd /tmp  ;  git clone git://github.com/cgdb/cgdb.git
cd cgdb  ;  ./autogen.sh && ./configure && make && make install
rm --force --recursive /tmp/cgdb
# /usr/local/bin/cgdb /usr/local/share/cgdb/cgdb.txt /usr/local/share/info/cgdb.info 
