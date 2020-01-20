# VBoxGuestAdditions_6.0.4
dnf install elfutils-libelf-devel

yum install perl gcc dkms kernel-devel kernel-headers make bzip2
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm



# ssh-keygen, ~/.ssh/id_rsa.pub github.com/daniel-yl-fan

mkdir -p ~/local

git clone git@github.com:daniel-yl-fan/centos         ~/local/centos
git clone git@github.com:daniel-yl-fan/cheatsheets    ~/local/cheatsheets

ln --force --symbolic ~/local/centos/config/.tmux.conf    ~/.tmux.conf
ln --force --symbolic ~/local/centos/config/.gitconfig    ~/.gitconfig

sed --in-place --expression="\$asource ~/local/centos/config/.bashrc"   ~/.bashrc
sed --in-place --expression="\$asource ~/local/centos/config/.vimrc"   ~/.vimrc

dnf --assumeyes install python2-devel
dnf --assumeyes install python36-devel

####  ninja
git clone https://github.com/ninja-build/ninja.git ~/local/ninja-build
cd ~/local/ninja-build
./configure.py --bootstrap
ln --symbolic --force ~/local/ninja-build/ninja ~/local/bin/ninja

####  tmux
dnf install libevent-devel
dnf install ncurses-devel
git clone https://github.com/tmux/tmux.git ~/local/tmux-build
cd ~/local/tmux-build
./autogen.sh  &&  ./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install
hash -r    # disable system tmux

####  sshfs
cd ~/local
wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/f/fuse-sshfs-2.10-1.el7.x86_64.rpm -O ~/local/fuse-sshfs-2.10-1.el7.x86_64.rpm
rpm2cpio fuse-sshfs-2.10-1.el7.x86_64.rpm | cpio -idmv
cp --force --recursive ~/local/usr/* ~/local
rm --force --recursive ~/local/usr

####  ag
dns --assumeyes install http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el6/en/x86_64/rpmforge/RPMS/lzma-libs-4.32.7-1.el6.rf.x86_64.rpm
dnf --assumeyes install http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el6/en/x86_64/rpmforge/RPMS/lzma-devel-4.32.7-1.el6.rf.x86_64.rpm
dnf --assumeyes install xz-devel
git clone https://github.com/ggreer/the_silver_searcher.git ~/local/the_silver_searcher-build
cd  ~/local/the_silver_searcher-build  &&  ./autogen.sh  &&  ./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install

####  fzf
cd ~/local
wget https://download-ib01.fedoraproject.org/pub/fedora/linux/updates/29/Everything/x86_64/Packages/f/fzf-0.18.0-1.fc29.x86_64.rpm -O ~/local/fzf-0.18.0-1.fc29.x86_64.rpm
rpm2cpio ~/local/fzf-0.18.0-1.fc29.x86_64.rpm | cpio -idm
cp --force --recursive ~/local/usr/* ~/local
rm --force --recursive ~/local/usr

####  z.sh
git clone https://github.com/rupa/z.git ~/local/z

####  ccat
cd ~/local
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz -O ~/local/ccat-1.1.0.tar.gz
tar -xzvf ~/local/ccat-1.1.0.tar.gz
mv --force ~/local/linux-amd64-1.1.0/ccat ~/local/bin/ccat  &&  chmod 555 ~/local/bin/ccat
rm --force --recursive ~/local/linux-amd64-1.1.0

####  cheatsheets
cd ~/local
wget https://github.com/cheat/cheat/releases/download/3.2.1/cheat-linux-amd64 -O ~/local/bin/cheat  &&  chmod 555 ~/local/bin/cheat




####  universal ctags
git clone https://github.com/universal-ctags/ctags.git ~/local/ctags-build
cd ~/local/ctags-build
./autogen.sh  &&  ./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install
hash -r    # disable system Exuberant ctags

####  gnu global
wget http://tamacom.com/global/global-6.6.4.tar.gz -O ~/local/global-6.6.4.tar.gz
tar -xzvf global-6.6.4.tar.gz
./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install

####  icdiff
git clone https://github.com/jeffkaufman/icdiff.git  ~/local/icdiff
ln --force --symbolic ~/local/icdiff/icdiff ~/local/bin/icdiff
ln --force --symbolic ~/local/icdiff/git-icdiff ~/local/bin/git-icdiff

####  tig
git clone https://github.com/jonas/tig.git ~/local/tig-build
cd ~/local/tig-build
./autogen.sh  &&  ./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install

####  cgdb
wget http://ftp.gnu.org/gnu/texinfo/texinfo-6.7.tar.xz -O ~/local/texinfo-6.7.tar.xz
tar -xJvf texinfo-6.7.tar.xz
cd ~/local/texinfo-6.7
./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install

wget http://ftp.gnu.org/gnu/readline/readline-8.0.tar.gz -O ~/local/readline-8.0.tar.gz
tar -xzvf readline-8.0.tar.gz
cd ~/local/readline-8.0
./configure --prefix=/home/dafan/local  &&  make --jobs=2  &&  make install
ldconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dafan/local/lib

git clone https://github.com/cgdb/cgdb.git ~/local/cgdb-build
cd ~/local/cgdb-build
./autogen.sh  &&  ./configure --prefix=/home/dafan/local --with-readline=/home/dafan/local  &&  make --jobs=2 &&  make install
