#!bin/bash

# Download and install vs code .deb package
wget https://az764295.vo.msecnd.net/stable/e8a3071ea4344d9d48ef8a4df2c097372b0c5161/code_1.74.2-1671533413_amd64.deb -O code.deb
sudo apt-get install ./code.deb && rm -f code.deb

# Create my usual dir structure
mkdir -p ~/Programs/cpp ~/Programs/scripts ~/Programs/python
