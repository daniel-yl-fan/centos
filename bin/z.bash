git clone https://github.com/rupa/z.git /tmp/z
mv --force /tmp/z/z.sh /usr/bin/z.sh
mv --force /tmp/z/z.1 /usr/share/man/man1/z.1
sed --in-place --expression="\$asource /usr/bin/z.sh" /root/.bashrc
