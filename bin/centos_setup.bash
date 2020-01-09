yum --assumeyes install tmux
yum --assumeyes install python2-devel
yum --assumeyes install python36
yum --assumeyes install python36-devel
yum --assumeyes install https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/t/the_silver_searcher-2.1.0-1.el7.x86_64.rpm
yum --assumeyes install https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/f/fuse-sshfs-2.10-1.el7.x86_64.rpm
yum --assumeyes install https://download-ib01.fedoraproject.org/pub/fedora/linux/updates/29/Everything/x86_64/Packages/f/fzf-0.18.0-1.fc29.x86_64.rpm

####  z.sh
git clone https://github.com/rupa/z.git /tmp/z
mv --force /tmp/z/z.sh /home/bin/z.sh
rm --force --recursive /tmp/z
# in .bashrc    source /home/bin/z.sh

####  ccat
cd /tmp
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
tar -xzvf linux-amd64-1.1.0.tar.gz
mv --force /tmp/linux-amd64-1.1.0/ccat /home/bin/cat
rm --force --recursive /tmp/linux-amd64-1.1.0
rm --force --recursive /tmp/linux-amd64-1.1.0.tar.gz
