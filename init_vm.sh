#!/bin/bash
# This script will configure the lightsail instance 
# With tools needed for penetration testing

# Install docker
curl -fsSL https://get.docker.com | sh

# Install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

