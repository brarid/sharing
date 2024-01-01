username="$(whoami)"
su
apt install sudo curl 
ln /usr/sbin/usermod /usr/bin
usermod -aG sudo $username
newgrp sudo



