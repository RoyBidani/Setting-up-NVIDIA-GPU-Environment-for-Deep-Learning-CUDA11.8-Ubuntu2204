#!/bin/bash

#Navigate to the directory containing the downloaded package and run this script.


# Install the local repository package
sudo dpkg -i nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8_1.0-1_amd64.deb

# Add the repository key
sudo apt-key add /var/nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8/2C63AABB.pub

# Update the APT repository
sudo apt-get update

# Install TensorRT and Python bindings
sudo apt-get install -y tensorrt python3-libnvinfer-dev

# Install additional packages
sudo apt-get install -y uff-converter-tf onnx-graphsurgeon onnx-runtime

# Set environment variables
echo 'export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc

# Verify installation
dpkg -l | grep nvinfer



