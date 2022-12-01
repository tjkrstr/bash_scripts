#!/bin/bash

# -----------------------
# Docker install script
# -----------------------

tools="ca-certificates, curl, gnupg, lsb-release"

echo "System update and upgrade:"
#sudo apt-get update && apt upgrade -y

echo "install: "$tools""
sudo apt-get install "$tools"

echo "Make dir keyrings"
sudo mkdir -p /etc/apt/keyrings

echo "Download and install docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null



