#!bin/bash/

# Remove bloat
sudo apt purge -y libreoffice* thingy rhythmbox thunderbird hexchat
sudo apt purge -y openvpn redshift timeshift pidgin transmission celluloid
sudo apt purge -y warpinator mintwelcome mintupgrade mintbackup webapps-manager
sudo apt purge -y xfce4-dict hypnotix drawing simple-scan sticky evolution
sudo apt purge -y onboard

# Finish removal
sudo apt-get autopurge -y && sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Install basics
sudo apt-get install git firefox make

# Update
sudo apt-get update && sudo apt-get upgrade -y
