#!/bin/bash

# Update package list
sudo apt-get update

# Install required packages
sudo apt-get install -y ansible

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker vagrant

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Python development dependencies for psycopg2
sudo apt-get install -y libpq-dev python-dev curl python3-pip

# Install psycopg2 dependencies
sudo apt-get install -y python3-pip

# Install psycopg2
sudo apt-get install -y python3-psycopg2


# Add PostgreSQL repository
echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update package list
sudo apt-get update

# Install PostgreSQL 15 client
sudo apt-get install -y postgresql-client-15

sudo apt-get install -y python3-docker
