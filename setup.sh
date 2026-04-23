#!/usr/bin/env bash

echo "Updating package list and installing tree..."
sudo apt-get update
sudo apt-get install -y tree

echo "Cleaning up old files..."
rm -rf aws awscliv2.zip

echo "Downloading AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping..."
unzip -o awscliv2.zip

echo "Installing AWS CLI..."
sudo ./aws/install

echo "Cleaning up..."
rm awscliv2.zip
rm -rf aws

# Add AWS Auto-Prompt to the bash configuration permanently
if ! grep -q "AWS_CLI_AUTO_PROMPT" ~/.bashrc; then
    echo 'export AWS_CLI_AUTO_PROMPT=on-partial' >> ~/.bashrc
fi
echo "installing fzf"
sudo apt-get update
sudo apt-get install -y fzf

echo "Installing Java..."
sudo apt-get update
sudo apt-get install -y default-jdk

echo "Installing Ruby and Bundler..."
sudo apt-get update
# 'ruby-full' installs Ruby, 'ruby-bundler' installs the bundle tool
sudo apt-get install -y ruby-full -y ruby-bundler

echo "AWS CLI ,fzf, juby and bundler, java, and tree installed successfully!"