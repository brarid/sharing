username="$(whoami)"
su
apt install sudo curl 
echo "Meg fog nyílni a sudoers file oda írd be az alábbit [$username ALL=(ALL:ALL) ALL]"
sleep 15
nano /etc/sudoers
exit