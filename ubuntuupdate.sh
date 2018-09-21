#/bin/bash

echo "Update started at: "$(date)
echo "Upgrading system..."
sudo apt-get upgrade
echo "Checking for updates..."
sudo apt-get update
echo "Installing updates..."
sudo apt-get dist-upgrade -yy
echo "Removing orphaned packages..."
sudo apt-get autoremove -yy
echo "Clearing apt cache..."
sudo apt-get clean
echo "Complete!"
