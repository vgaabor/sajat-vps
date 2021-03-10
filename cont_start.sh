!#/bin/bash

useradd -m $1 && echo "$1:$2" | chpasswd && adduser $1 sudo

apt update
apt install -y openssh-server

sed -i "s/#Port 22/Port $3/" /etc/ssh/sshd_config

service ssh start

chsh -s /bin/bash $1

