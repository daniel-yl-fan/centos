cd /tmp
wget https://github.com/cheat/cheat/releases/download/3.2.1/cheat-linux-amd64
mv /tmp/cheat-linux-amd64 /usr/local/bin/cheat
chmod 555 /usr/local/bin/cheat
mkdir /root/cheat
cd /root/cheat
cheat --init > /root/cheat/config.yaml

cd /tmp
git clone https://github.com/cheat/cheatsheets.git /root/cheat/community
sed --in-place --expression="s/.dotfiles\///" /root/cheat/config.yaml
sed --in-place --expression="\$aexport CHEAT_CONFIG_PATH="/root/cheat/config.yaml"" /root/.bashrc
