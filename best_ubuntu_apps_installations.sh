#!/bin/bash

# Update package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install Snap package manager
sudo apt install -y snapd

# Install Spotify
sudo snap install spotify

# Install Synaptic Package Manager
sudo apt install -y synaptic

# Development Tools
# Git - Version control system
sudo apt install -y git

# Docker - Container platform
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Docker Compose - Define and run multi-container Docker applications
sudo apt install -y docker-compose

# Kubernetes - Container orchestration platform
sudo snap install kubectl --classic
sudo snap install helm --classic

# VirtualBox - Virtualization software
sudo apt install -y virtualbox

# Vagrant - Development environments made easy
sudo apt install -y vagrant

# Build Essentials - Required for compiling software
sudo apt install -y build-essential

# Python and pip - Programming language and package installer
sudo apt install -y python3 python3-pip

# Node.js and npm - JavaScript runtime and package manager
sudo apt install -y nodejs npm

# Ansible - Automation tool
sudo apt install -y ansible

# System Monitoring Tools
# htop - Interactive process viewer
sudo apt install -y htop

# net-tools - Network utilities
sudo apt install -y net-tools

# iftop - Network bandwidth monitoring
sudo apt install -y iftop

# nmap - Network scanner
sudo apt install -y nmap

# traceroute - Network diagnostic tool
sudo apt install -y traceroute

# Monitoring and Visualization Tools
# Prometheus - Monitoring system and time series database
sudo snap install prometheus

# Grafana - Analytics and monitoring
sudo snap install grafana

# Database Tools
# MySQL Server
sudo apt install -y mysql-server

# PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# Redis - In-memory data structure store
sudo apt install -y redis-server

# Development Editors and IDEs
# Visual Studio Code
sudo snap install code --classic

# Sublime Text
sudo snap install sublime-text --classic

# JetBrains Toolbox (for IntelliJ IDEA, PyCharm, etc.)
sudo snap install intellij-idea-community --classic

# Other Useful Utilities
# Curl - Command line tool for transferring data
sudo apt install -y curl

# Wget - Network downloader
sudo apt install -y wget

# Tree - Directory listing in tree format
sudo apt install -y tree

# jq - Command-line JSON processor
sudo apt install -y jq

# tmux - Terminal multiplexer
sudo apt install -y tmux

# Vim - Advanced text editor
sudo apt install -y vim

# Zsh - Powerful shell
sudo apt install -y zsh
# Oh My Zsh - Framework for managing Zsh configuration
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Productivity Tools
# Slack - Collaboration tool
sudo snap install slack --classic

# Zoom - Video conferencing
sudo snap install zoom-client

# Gnome Tweaks - Customization tool for Gnome
sudo apt install -y gnome-tweaks

# Install PyCharm
sudo snap install pycharm-community --classic

# Install Python 10.3
sudo apt install -y python3.10 python3.10-venv python3.10-dev

# Install GlobalProtect VPN
wget -O globalprotect.tgz "https://gentexmi.sharepoint.com/sites/IT/SiteAssets/Forms/AllItems.aspx?id=%2Fsites%2FIT%2FSiteAssets%2FSitePages%2FInstalling%2DGlobalProtect%2DVPN%2DClient%2FPanGPLinux%2D6%2E1%2E2%2Etgz&parent=%2Fsites%2FIT%2FSiteAssets%2FSitePages%2FInstalling%2DGlobalProtect%2DVPN%2DClient"
tar -xzf globalprotect.tgz
cd PanGPLinux-6.1.2
sudo dpkg -i GlobalProtect_UI_deb-6.1.2.0-82.deb

# Concluding message
echo "Installation of essential tools and applications is complete!"

# Clean up
sudo apt autoremove -y
sudo apt clean

