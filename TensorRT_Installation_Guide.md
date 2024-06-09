# TensorRT 10.0.1 Installation Guide for Ubuntu 22.04 with CUDA 11.8

## Step-by-Step Installation Guide

### Download TensorRT DEB Packages
- Visit the [NVIDIA TensorRT download page](https://developer.nvidia.com/nvidia-tensorrt-download).
- Choose the appropriate version for Ubuntu 22.04 and CUDA 11.8.
- Download the local repo DEB package, for example: `nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8_1.0-1_amd64.deb`.

### Verify CUDA Toolkit
- Ensure that CUDA 11.8 is installed on your system.

### Install the TensorRT Local Repository Package
- Open a terminal and navigate to the directory containing the downloaded package.
- Run the following commands to install the local repository package and add the repository key:

    ```bash
    sudo dpkg -i nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8_1.0-1_amd64.deb
    sudo apt-key add /var/nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8/2C63AABB.pub
    sudo dpkg -i nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8_1.0-1_amd64.deb
    ```

### Update the APT Repository

    ```bash
    sudo apt-get update
    ```

### Install TensorRT

    ```bash
    sudo apt-get install tensorrt
    sudo apt-get install python3-libnvinfer-dev
    ```

### Install Additional Packages

    ```bash
    sudo apt-get install uff-converter-tf
    sudo apt-get install onnx-graphsurgeon
    sudo apt-get install onnx-runtime
    ```
    
### Set Environment Variables
- Add the TensorRT library path to `LD_LIBRARY_PATH`:

    ```bash
    echo 'export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH' >> ~/.bashrc
    echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
    source ~/.bashrc
    ```
    
### Verify Installation

    ```bash
    dpkg -l | grep nvinfer
    ```


## TensorFlow Script Integration

After installing TensorRT, you can use it with TensorFlow to optimize your models for inference on NVIDIA GPUs. This is a script to verify TensorRT with TensorFlow:

```python
import tensorflow as tf

# Check if TensorRT is available
try:
    from tensorflow.python.compiler.tensorrt import trt_convert as trt
    print("TensorRT is available.")
except ImportError:
    print("TensorRT is not available.")

# Verify TensorFlow installation and GPU
print("TensorFlow version:", tf.__version__)
print("Available GPUs:", tf.config.list_physical_devices('GPU'))
```

## Troubleshooting
- **Missing Dependencies:** If you encounter dependency issues, ensure that you have added the NVIDIA package repository correctly and updated the package lists.
- **CUDA Compatibility:** Make sure the CUDA version installed matches the version required by TensorRT. TensorRT 10.0.1 GA is compatible with CUDA 11.8, so ensure CUDA 11.8 is installed.
```

### Shell Script: `install_tensorrt.sh`

```bash
#!/bin/bash

# Install the local repository package
sudo dpkg -i nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8_1.0-1_amd64.deb

# Add the repository key
sudo apt-key add /var/nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8/7fa2af80.pub

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
```

# Verify installation
dpkg -l | grep nvinfer



### Python Script: `test.py`

```python
import tensorflow as tf

# Check TensorRT availability
try:
    from tensorflow.python.compiler.tensorrt import trt_convert as trt
    print("TensorRT is available.")
except ImportError:
    print("TensorRT is not available.")

# Verify TensorFlow installation and GPU
print("TensorFlow version:", tf.__version__)
print("Available GPUs:", tf.config.list_physical_devices('GPU'))

# Check TensorRT libraries
import ctypes
try:
    ctypes.CDLL("libnvinfer.so")
    print("Successfully loaded TensorRT library.")
except OSError as e:
    print("Error loading TensorRT library:", e)
```

### Instructions

1. **Create the Shell script:**
    - Save the content of the `install_tensorrt.sh` file.
    - Make the script executable:

    ```bash
    chmod +x install_tensorrt.sh
    ```

3. **Create the Python test script:**
    - Save the content of the `test.py` file.

4. **Run the installation script:**
    - Execute the shell script to install TensorRT:

    ```bash
    ./install_tensorrt.sh
    ```

5. **Run the test script:**
    - Verify the TensorRT installation with TensorFlow:

    ```bash
    python3 test.py
    ```

By following these steps and using the provided files, you should be able to install TensorRT and verify its integration with TensorFlow.
