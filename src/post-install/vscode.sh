#!/bin/bash

# Update the packages index and install the dependencies
sudo apt update
sudo apt install software-properties-common apt-transport-https wget

# Import the Microsoft GPG key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# Enable the Visual Studio Code repository
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Install Vscode
sudo apt install code
