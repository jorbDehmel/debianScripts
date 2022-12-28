#!bin/bash/

# Remove bloat
sudo apt purge -y libreoffice* rhythmbox thunderbird hexchat
sudo apt purge -y redshift timeshift pidgin transmission-gtk celluloid
sudo apt purge -y warpinator mintwelcome mintupgrade mintbackup webapp-manager
sudo apt purge -y xfce4-dict hypnotix drawing simple-scan sticky evolution
sudo apt purge -y onboard pix synaptic catfish yelp mintreport

# Finish removal
sudo apt autopurge -y && sudo apt autoremove -y
sudo apt autoclean -y

# Install basics
sudo apt install git firefox make clang

# Update
sudo apt update && sudo apt upgrade -y
