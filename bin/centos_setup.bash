# VBoxGuestAdditions_6.0.4
dnf install elfutils-libelf-devel

# ssh-keygen, ~/.ssh/id_rsa.pub github.com/daniel-yl-fan

git clone https://github.com/daniel-yl-fan/centos    /home/centos

ln --force --symbolic /home/centos/config/.tmux.conf    ~/.tmux.conf
ln --force --symbolic /home/centos/config/.gitconfig    ~/.gitconfig

sed --in-place --expression="\$asource /home/centos/config/.bashrc"   ~/.bashrc
sed --in-place --expression="\$asource ~/local/centos/config/.vimrc"   ~/.vimrc

dnf --assumeyes install python36 python36-devel
ln --symbolic /usr/bin/python3.6 /usr/bin/python

####  z.sh
git clone https://github.com/rupa/z.git /home/z

####  ag
dnf --assumeyes install http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el6/en/x86_64/rpmforge/RPMS/lzma-libs-4.32.7-1.el6.rf.x86_64.rpm
dnf --assumeyes install http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el6/en/x86_64/rpmforge/RPMS/lzma-devel-4.32.7-1.el6.rf.x86_64.rpm
dnf --assumeyes install xz-devel
git clone https://github.com/ggreer/the_silver_searcher.git /home/the_silver_searcher-build
cd /home/the_silver_searcher-build  &&  ./autogen.sh  &&  ./configure &&  make --jobs=2  &&  make install

####  ninja
git clone https://github.com/ninja-build/ninja.git /home/ninja-build
cd /home/ninja-build
./configure.py --bootstrap
ln --symbolic --force /home/ninja-build/ninja /usr/bin/ninja

####  fzf
wget https://download-ib01.fedoraproject.org/pub/fedora/linux/updates/29/Everything/x86_64/Packages/f/fzf-0.18.0-1.fc29.x86_64.rpm -O /dafan/fzf-0.18.0-1.fc29.x86_64.rpm
cp /dafan/fzf-0.18.0-1.fc29.x86_64.rpm /tmp/fzf-0.18.0-1.fc29.x86_64.rpm
cd /tmp  &&  rm --force --recursive /tmp/usr  &&  rpm2cpio /tmp/fzf-0.18.0-1.fc29.x86_64.rpm | cpio -idm
cp --force --recursive /tmp/usr/* /usr/local/
rm --force --recursive /tmp/usr
rm --force --recursive /tmp/fzf-0.18.0-1.fc29.x86_64.rpm

####  sshfs
wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/f/fuse-sshfs-2.10-1.el7.x86_64.rpm -O /home/fuse-sshfs-2.10-1.el7.x86_64.rpm
cp /home/fuse-sshfs-2.10-1.el7.x86_64.rpm /tmp/fuse-sshfs-2.10-1.el7.x86_64.rpm
cd /tmp  &&  rm --force --recursive /tmp/usr  &&  rpm2cpio fuse-sshfs-2.10-1.el7.x86_64.rpm | cpio -idmv
cp --recursive /tmp/usr/* /usr/local/
rm --force --recursive /tmp/usr
rm --force --recursive /tmp/fuse-sshfs-2.10-1.el7.x86_64.rpm

####  ccat
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz -O /home/ccat-1.1.0.tar.gz
cp /home/ccat-1.1.0.tar.gz /tmp/ccat-1.1.0.tar.gz
cd /tmp  &&  tar -xzvf /tmp/ccat-1.1.0.tar.gz
mv --force /tmp/linux-amd64-1.1.0/ccat /usr/local/bin/ccat  &&  chmod 755 /usr/local/bin/ccat  &&  chown root:root /usr/local/bin/ccat
rm --force --recursive /tmp/linux-amd64-1.1.0
rm --force --recursive /tmp/ccat-1.1.0.tar.gz

####  cheatsheets
wget https://github.com/cheat/cheat/releases/download/3.2.1/cheat-linux-amd64 -O /usr/local/bin/cheat  &&  chmod 755 /usr/local/bin/cheat

####  universal ctags
git clone https://github.com/universal-ctags/ctags.git /home/ctags-build
cd /home/ctags-build  &&  ./autogen.sh  &&  ./configure  &&  make --jobs=2  &&  make install
hash -r    # disable system Exuberant ctags

####  gnu global
dnf install ncurses-devel
wget http://tamacom.com/global/global-6.6.4.tar.gz -O /home/global-6.6.4.tar.gz
cd /home  &&  tar -xzvf /home/global-6.6.4.tar.gz
cd /home/global-6.6.4  &&  ./configure  &&  make --jobs=2  &&  make install

####  icdiff
git clone https://github.com/jeffkaufman/icdiff.git  /home/icdiff
ln --force --symbolic /home/icdiff/icdiff /usr/local/bin/icdiff
ln --force --symbolic /home/icdiff/git-icdiff /usr/local/bin/git-icdiff

####  tig
git clone https://github.com/jonas/tig.git /home/tig-build
cd /home/tig-build  &&  ./autogen.sh  &&  ./configure  &&  make --jobs=2  &&  make install

####  cgdb
wget http://ftp.gnu.org/gnu/texinfo/texinfo-6.7.tar.xz -O /home/texinfo-6.7.tar.xz
tar -xJvf /home/texinfo-6.7.tar.xz
cd /home/texinfo-6.7  &&  ./configure  &&  make --jobs=2  &&  make install

wget http://ftp.gnu.org/gnu/readline/readline-8.0.tar.gz -O /home/readline-8.0.tar.gz
tar -xzvf /home/readline-8.0.tar.gz
cd /home/readline-8.0  &&  ./configure  &&  make --jobs=2  &&  make install
export LD_LIBRARY_PATH=/usr/local/lib

git clone https://github.com/cgdb/cgdb.git /home/cgdb-build
cd /home/cgdb-build  &&  ./autogen.sh  &&  ./configure  &&  make --jobs=2 &&  make install

# CMake
https://github.com/Kitware/CMake.git
yum install openssl-devel
./bootstrap  &&  make   &&   make install

# gcc  (GCC) 4.8.5 20150623 (Red Hat 4.8.5-39)
yum install glibc++-devel
git clone https://github.com/gcc-mirror/gcc.git
./contrib/download_prerequisites
./configure --disable-multilib
make

# docker
curl https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
yum install https://download.docker.com/linux/fedora/30/x86_64/stable/Packages/containerd.io-1.2.6-3.3.fc30.x86_64.rpm
yum install docker-ce
systemctl start docker
systemctl enable docker
docker run hello-world
