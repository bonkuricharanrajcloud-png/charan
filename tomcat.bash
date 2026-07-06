#!/bin/bash
# Purpose: Install Apache Tomcat on EC2 Server
# Modification Date: 07/05/2026

echo "Updating packages..."
sudo yum update -y

echo "Installing Java..."
sudo yum install java-11-amazon-corretto -y

echo "Downloading Apache Tomcat..."
cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.119/bin/apache-tomcat-9.0.119.tar.gz

echo "Extracting Tomcat..."
sudo tar -xvzf apache-tomcat-9.0.119.tar.gz

echo "Renaming Tomcat folder..."
sudo mv apache-tomcat-9.0.119 tomcat

echo "Giving execute permission..."
sudo chmod +x /opt/tomcat/bin/*.sh

echo "Starting Tomcat..."
sudo /opt/tomcat/bin/startup.sh

echo "Tomcat installed and started successfully."
