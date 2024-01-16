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

if [ -d "/docker" ]; then \
	echo "/docker already exists"; else \
	mkdir /docker; \
	echo "docker directory created successfully"; \
fi

if [ -d "/docker/wordpress" ]; then \
	echo "/docker/wordpress already exists"; else \
	mkdir /docker/wordpress; \
	echo "wordpress directory created successfully"; \
fi

if [ -d "/docker/mariadb" ]; then \
	echo "/docker/mariadb already exists"; else \
	mkdir /docker/mariadb; \
	echo "mariadb directory created successfully"; \
fi