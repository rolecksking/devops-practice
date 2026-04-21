#!/bin/bash

# This script sets up the environment
echo "Downloading AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping..."
unzip -o awscliv2.zip

echo "Installing..."
sudo ./aws/install

echo "Cleaning up..."
rm awscliv2.zip
rm -rf aws

echo "AWS CLI installed successfully!"