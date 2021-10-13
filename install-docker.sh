#!/bin/bash

echo "### Uninstalling old version of Docker"
sudo apt-get -yq remove docker docker-engine docker.io containerd runc

echo "### Set up repository for DOCKER"
sudo apt-get -yq update
sudo apt-get -yq install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null


echo "### Installing DOCKER ###"
sudo apt-get -yq update
sudo apt-get -yq install docker-ce docker-ce-cli containerd.io


echo "### Manage Docker as a non-root user"
echo "> Make a docker group"
sudo groupadd docker
echo "> Adding user to docker group"
sudo usermod -aG docker vagrant
echo "> Log out and log in again to refresh"
newgrp docker
echo "> Verify that docker can be run without sudo"
docker run hello-world

echo "### Configuring Docker to start on boot"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service




