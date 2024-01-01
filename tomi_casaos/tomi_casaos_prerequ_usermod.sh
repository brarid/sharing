username="$(whoami)"
apt install sudo curl 
ln /usr/sbin/usermod /usr/bin
usermod -aG sudo linuxshout
newgrp sudo



