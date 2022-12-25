#!bin/bash/

# Remove bloat
sudo apt-get remove -y libreoffice* thingy rhythmbox thunderbird hexchat \
	 openvpn redshift timeshift pidgin transmission

# Finish removal
sudo apt-get autopurge && sudo apt-get autoremove && sudo apt-get autoclean

# Install basics
sudo apt-get install git firefox make

# Install gnome
sudo apt-get install gnome
sudo apt-get autopurge && sudo apt-get autoremove

# Update and reboot
sudo apt-get update && sudo apt-get upgrade -y
echo Done!
sleep 10
sudo reboot now
