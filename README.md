# T-Rex

T-Rex is a versatile cryptocurrency mining software. It supports a variety of algorithms and we, as developers, are trying to do our best to make it as fast and as convenient to use as possible.

Developer fee is 1% (2% for Octopus).

For a detailed description of features read [here](https://github.com/trexminer/T-Rex).

## How to use this image

Run the following commands in your terminal:

`docker run --gpus all -d dockminer/t-rex:latest [t-rex arguments]`

The container should up and start mining.

In default, the docker expose the 4067 port for HTTP and 4068 port for telnet connection, you can connect http://localhost:4067 to see the web page.

## Image Information

This image is built on top of the following softwares:

- [Nvidia CUDA Container](https://gitlab.com/nvidia/container-images/cuda) v10.2
- [T-Rex](https://github.com/trexminer/T-Rex) v0.23.1
