#!/bin/bash

# Update package index
sudo apt-get update

# Install NGINX
sudo apt-get install -y nginx

# Optional: Start NGINX service
sudo systemctl start nginx

# Optional: Enable NGINX to start on boot
sudo systemctl enable nginx

# Optional: Display NGINX status
sudo systemctl status nginx
