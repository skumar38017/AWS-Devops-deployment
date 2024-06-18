# #!/bin/bash 
# # This installs the CodeDeploy agent and its prerequisites on Ubuntu 22.04.  
# sudo apt-get update 
# sudo apt-get install ruby-full ruby-webrick wget -y 
# cd /tmp 
# wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/releases/codedeploy-agent_1.3.2-1902_all.deb 
# mkdir codedeploy-agent_1.3.2-1902_ubuntu22 
# dpkg-deb -R codedeploy-agent_1.3.2-1902_all.deb codedeploy-agent_1.3.2-1902_ubuntu22 
# sed 's/Depends:.*/Depends:ruby3.0/' -i ./codedeploy-agent_1.3.2-1902_ubuntu22/DEBIAN/control 
# dpkg-deb -b codedeploy-agent_1.3.2-1902_ubuntu22/ 
# sudo dpkg -i codedeploy-agent_1.3.2-1902_ubuntu22.deb 
# systemctl list-units --type=service | grep codedeploy 
# sudo service codedeploy-agent status





#!/bin/bash
# This installs the CodeDeploy agent and its prerequisites on Ubuntu 22.04.

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists
sudo apt-get update

# Install necessary packages
sudo apt-get install -y ruby-full ruby-webrick wget

# Change to /tmp directory
cd /tmp

# Download the CodeDeploy agent package
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/releases/codedeploy-agent_1.3.2-1902_all.deb

# Create a directory to unpack the .deb package
mkdir -p codedeploy-agent_1.3.2-1902_ubuntu22

# Unpack the .deb package
dpkg-deb -R codedeploy-agent_1.3.2-1902_all.deb codedeploy-agent_1.3.2-1902_ubuntu22

# Modify the control file to change the dependency to ruby3.0
sed 's/Depends:.*/Depends: ruby3.0/' -i ./codedeploy-agent_1.3.2-1902_ubuntu22/DEBIAN/control

# Repack the .deb package
dpkg-deb -b codedeploy-agent_1.3.2-1902_ubuntu22/

# Install the repacked .deb package
sudo dpkg -i codedeploy-agent_1.3.2-1902_ubuntu22.deb

# Start the CodeDeploy agent service
sudo service codedeploy-agent start

# Check the status of the CodeDeploy agent service
sudo service codedeploy-agent status

# List the CodeDeploy agent service to verify it's running
systemctl list-units --type=service | grep codedeploy
