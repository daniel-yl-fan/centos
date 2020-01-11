yum --assumeyes install http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/t/tig-2.4.0-1.el7.x86_64.rpm
yum --assumeyes install http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/g/global-6.5.6-4.el7.x86_64.rpm

git clone https://github.com/jeffkaufman/icdiff.git  ~/local/icdiff
ln --force --symbolic ~/local/icdiff/icdiff ~/local/bin/icdiff
ln --force --symbolic ~/local/icdiff/git-icdiff ~/local/bin/git-icdiff

git clone https://github.com/universal-ctags/ctags.git ~/local/ctags
cd ~/local/ctags  &&  ./autogen.sh  &&  ./configure  &&  make  &&  make install
# /usr/local/bin/ctags /usr/local/bin/readtags
mv --force /usr/bin/ctags     /usr/bin/ctags.bak     &&  ln --force --symbolic /usr/local/bin/ctags    /usr/bin/ctags     &&  hash -r
mv --force /usr/bin/readtags  /usr/bin/readtags.bak  &&  ln --force --symbolic /usr/local/bin/readtags /usr/bin/readtags  &&  hash -r
#cd ~/local/ctags  &&  ./autogen.sh  &&  ./configure  &&  make
#ln --force --symbolic ~/local/ctags/ctags      ~/local/bin/ctags     &&  chmod 555  ~/local/bin/ctags
#ln --force --symbolic ~/local/ctags/readtags   ~/local/bin/readtags  &&  chmod 555  ~/local/bin/readtags

git clone git://github.com/cgdb/cgdb.git ~/local/cgdb
cd ~/local/cgdb  &&  ./autogen.sh  &&  ./configure  &&  make  &&  make install
# /usr/local/bin/cgdb /usr/local/share/cgdb/cgdb.txt /usr/local/share/info/cgdb.info 
#cd ~/local/cgdb  &&  ./autogen.sh  &&  ./configure  &&  make
#ln --force --symbolic ~/local/cgdb/cgdb/cgdb ~/local/bin/cgdb  &&  chmod 555  ~/local/bin/cgdb
