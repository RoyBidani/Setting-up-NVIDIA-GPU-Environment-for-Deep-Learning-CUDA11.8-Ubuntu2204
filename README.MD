


# Guide to Setting up NVIDIA GPU Environment for Deep Learning

This guide provides step-by-step instructions to set up the NVIDIA GPU environment for deep learning using a set of pre-existing scripts.

## Prerequisites

- Ubuntu 22.04 installed on your system.
- NVIDIA GPU with CUDA support.
- Ensure that the provided scripts are available in your system.

## Step 1: CUDA and cuDNN Installation

To install CUDA and cuDNN, follow these steps:

1. Open a terminal.

2. Navigate to the directory where the `1_CUDAcuDNN.sh` script is located.

3. Make the script executable by running the following command:
   ```bash
   chmod +x 1_CUDAcuDNN.sh
   ```

4. Execute the script by running:
   ```bash
   ./1_CUDAcuDNN.sh
   ```

5. Follow the on-screen instructions to complete the installation. The script will guide you through the process of installing CUDA and cuDNN, setting up environment variables, and verifying the installation.

## Step 2: TensorFlow Installation

To install TensorFlow, follow these steps:

1. Open a terminal.

2. Navigate to the directory where the `@_install_tf.sh` script is located.

3. Make the script executable by running the following command:
   ```bash
   chmod +x @_install_tf.sh
   ```

4. Execute the script by running:
   ```bash
   ./@_install_tf.sh
   ```

5. Follow the on-screen instructions to complete the installation. The script will guide you through the process of creating a virtual environment, installing TensorFlow, and verifying the installation.

## Step 3: TensorRT Installation

To install TensorRT, follow these steps:

### Download TensorRT DEB Packages
- Visit the [NVIDIA TensorRT download page](https://developer.nvidia.com/nvidia-tensorrt-download).
- Choose the appropriate version for Ubuntu 22.04 and CUDA 11.8.
- Download the local repo DEB package, for example: `nv-tensorrt-local-repo-ubuntu2204-10.0.1-cuda-11.8_1.0-1_amd64.deb`.

1. Open a terminal.

2. Navigate to the directory containing the downloaded package and run `3_install_tensorrt.sh` script .

3. Make the script executable by running the following command:
   ```bash
   chmod +x 3_install_tensorrt.sh
   ```

4. Execute the script by running:
   ```bash
   ./3_install_tensorrt.sh
   ```

5. Follow the on-screen instructions to complete the installation. The script will guide you through the process of installing TensorRT, Python bindings, additional packages, setting environment variables, and verifying the installation.

## Cleanup

Here's how to use the cleanup script:

1. Open a terminal enter the following command:
   ```bash
   $ cd
   ```

2. Run the script `cleanUp.sh` 


This will remove unnecessary files and configurations to keep your system clean after setting up the NVIDIA GPU environment for deep learning.

