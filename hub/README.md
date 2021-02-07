# Quick reference

**Maintained by**: [The Dockminer Team](https://github.com/dockminer/T-Rex)

**Where to get help**: [Dockminer miniZ issues](https://github.com/dockminer/T-Rex/issues), or [T-Rex GitHub Repository](https://github.com/trexminer/T-Rex)

# Supported tags and respective `Dockerfile` links

- [`0.19.10`, `latest`](https://github.com/dockminer/miniZ/blob/a69f01e4c91acb2a3e2b28ffdc2c9cda187ea0cc/Dockerfile)

# What is T-Rex?

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
- [T-Rex](https://github.com/trexminer/T-Rex) v0.19.10
