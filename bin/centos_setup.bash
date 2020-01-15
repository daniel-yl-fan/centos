# ssh-keygen, ~/.ssh/id_rsa.pub github.com/daniel-yl-fan

# VBoxGuestAdditions_6.0.4
dnf install elfutils-libelf-devel

mkdir -p ~/local

git clone git@github.com:daniel-yl-fan/centos         ~/local/centos
git clone git@github.com:daniel-yl-fan/cheatsheets    ~/local/cheatsheets
git clone git@github.com:daniel-yl-fan/cpp            ~/local/cpp

sed --in-place --expression="\$asource ~/local/centos/config/.bashrc"   ~/.bashrc

ln --force --symbolic ~/local/centos/config/.tmux.conf    ~/.tmux.conf
ln --force --symbolic ~/local/centos/config/.vimrc        ~/.vimrc
ln --force --symbolic ~/local/centos/config/.gitconfig    ~/.gitconfig

yum --assumeyes install tmux
yum --assumeyes install python2-devel
yum --assumeyes install python36
yum --assumeyes install python36-devel
yum --assumeyes install https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/f/fuse-sshfs-2.10-1.el7.x86_64.rpm

yum --assumeyes install https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/t/the_silver_searcher-2.1.0-1.el7.x86_64.rpm
#wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/t/the_silver_searcher-2.1.0-1.el7.x86_64.rpm -O ~/local/the_silver_searcher-2.1.0-1.el7.x86_64.rpm
#cd ~/local/  &&  rpm2cpio ~/local/the_silver_searcher-2.1.0-1.el7.x86_64.rpm | cpio -idmv
#cp --force --recursive ~/local/usr/* ~/local
#rm --force --recursive ~/local/usr

yum --assumeyes install https://download-ib01.fedoraproject.org/pub/fedora/linux/updates/29/Everything/x86_64/Packages/f/fzf-0.18.0-1.fc29.x86_64.rpm
#cd ~/local  &&  wget https://download-ib01.fedoraproject.org/pub/fedora/linux/updates/29/Everything/x86_64/Packages/f/fzf-0.18.0-1.fc29.x86_64.rpm -O ~/local/fzf-0.18.0-1.fc29.x86_64.rpm
#rpm2cpio ~/local/fzf-0.18.0-1.fc29.x86_64.rpm | cpio -idm
#cp --force --recursive ~/local/usr/* ~/local
#rm --force --recursive ~/local/usr

####  z.sh
git clone https://github.com/rupa/z.git ~/local

####  ccat
cd ~/local  &&  wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz -O ~/local/ccat-1.1.0.tar.gz
tar -xzvf ~/local/ccat-1.1.0.tar.gz
mv --force ~/linux-amd64-1.1.0/ccat ~/local/bin/ccat  &&  chmod 555 ~/local/bin/ccat
rm --force --recursive ~/local/linux-amd64-1.1.0

####  cheatsheets
cd ~/local  &&  wget https://github.com/cheat/cheat/releases/download/3.2.1/cheat-linux-amd64 -O ~/local/bin/cheat  &&  chmod 555 ~/local/bin/cheat
