#!/bin/bash

# Restart NGINX service
echo "Restarting NGINX service..."
if sudo systemctl restart nginx; then
  echo "NGINX restarted successfully."
else
  echo "Failed to restart NGINX. Check the service status for more details."
  # Output NGINX status for debugging
  sudo systemctl status nginx
  exit 1
fi

# Status nginx
sudo systemctl status nginx
