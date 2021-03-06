#!/bin/bash
username='ubuntu'
sudo apt-get update
sudo apt-get install nano git apt-transport-https curl -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker | grep docker.service
sudo usermod -aG docker $username && echo 'dockerjog OK'
