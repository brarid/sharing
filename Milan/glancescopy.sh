echo "Starting process"

sudo cp glances.service /etc/systemd/system -v -v
sudo systemctl start glances
sudo systemctl enable glances
sudo systemctl status glances

echo "Glances service Established Scuccesfully