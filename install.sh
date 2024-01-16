#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install make curl lsb-release ca-certificates apt-transport-https software-properties-common hostsed -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce -y
sudo apt-get update
sudo apt-get install docker-compose docker-compose-plugin -y
sudo apt-get update
sudo rm -rf /var/lib/apt/lists/*

if [ -d "/home//home/user/docker/data/wordpress" ]; then \
	echo "/home/user/docker/data/wordpress already exists"; else \
	mkdir /home/user/docker/data/wordpress; \
	echo "wordpress directory created successfully"; \
fi

if [ -d "/home/user/docker/data/mariadb" ]; then \
	echo "/home/user/docker/data/mariadb already exists"; else \
	mkdir /home/user/docker/data/mariadb; \
	echo "mariadb directory created successfully"; \
fi