git clone https://github.com/mfaerevaag/wd-c.git /tmp/wd-c
cd /tmp/wd-c
make
make install
ln -s /usr/share/wd/wd.sh /usr/local/bin/wd.sh
echo "source /usr/local/bin/wd.sh" >> /root/.bashrc
echo "" >> /root/.bashrc
