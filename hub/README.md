# Quick reference

**Maintained by**: [The Dockminer Team](https://github.com/dockminer/T-Rex)

**Where to get help**: [Dockminer miniZ issues](https://github.com/dockminer/T-Rex/issues), or [T-Rex GitHub Repository](https://github.com/trexminer/T-Rex)

# Supported tags and respective `Dockerfile` links

- [`0.19.11`, `0.19`, `0`, `latest`](https://github.com/dockminer/T-Rex/blob/eb8537c3c0f67db2ab182ec04e9649f7d84bdb94/Dockerfile)
- [`0.19.10`](https://github.com/dockminer/T-Rex/blob/31943a3d3a19d26407c3f9304643dcfd06455bd7/Dockerfile)

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
- [T-Rex](https://github.com/trexminer/T-Rex) v0.19.12
