aria2c https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz -d /tmp -o ccat.tar.gz
cd /tmp
tar -xzvf ccat.tar.gz 
mv /tmp/linux-amd64-1.1.0/ccat /usr/local/bin/ccat
