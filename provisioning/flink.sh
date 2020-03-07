#!/bin/bash

# Update package database
sudo apt-get -q -y update

# Update ca-certificates
sudo update-ca-certificates

# Install microk8s, snap, and add user permissions
sudo snap install openjdk-11-jdk

