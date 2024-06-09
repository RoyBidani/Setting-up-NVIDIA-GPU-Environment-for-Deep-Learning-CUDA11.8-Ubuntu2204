#!/bin/bash

# Create and activate virtual environment
mkdir ~/test-gpu && cd ~/test-gpu
python3 -m venv venv
source venv/bin/activate

# Install TensorFlow 2.10.*
pip install --upgrade pip
pip install tensorflow==2.12.*

# Verify TensorFlow installation
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU')); print('TensorFlow version:', tf.__version__)"

# Ask user if they want to reboot
read -p "Do you want to reboot the system? (y/n): " reboot_choice
if [ "$reboot_choice" = "y" ]; then
  echo "Rebooting system..."
  sudo reboot
else
  echo "Completed. No reboot."
fi
