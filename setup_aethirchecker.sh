#!/bin/bash

# Download the File
wget https://checker-mainet-s3.s3.ap-southeast-1.amazonaws.com/as/AethirCheckerCLI-linux-1.0.2.0-as.tar.gz

# Unpack the File
tar -xvf AethirCheckerCLI-linux-1.0.2.0-as.tar.gz

# Update package lists
sudo apt update

# Install Screen (if not already installed)
sudo apt install -y screen

# Enter the directory
cd AethirCheckerCLI-linux-as

# Install the dependencies
sudo ./install.sh

# Start a new screen session and attach to it
screen -S Ath -d -m bash -c "sudo ./AethirCheckerCLI"
screen -r Ath
