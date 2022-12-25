#!bin/bash/

# Remove bloat
sudo apt-get purge -y libreoffice* rhythmbox thunderbird hexchat
sudo apt-get purge -y redshift timeshift pidgin transmission-gtk celluloid
sudo apt-get purge -y warpinator mintwelcome mintupgrade mintbackup webapp-manager
sudo apt-get purge -y xfce4-dict hypnotix drawing simple-scan sticky evolution
sudo apt-get purge -y onboard pix synaptic catfish

# Finish removal
sudo apt-get autopurge -y && sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Install basics
sudo apt-get install git firefox make clang

# Update
sudo apt-get update && sudo apt-get upgrade -y
