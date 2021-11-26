FROM ubuntu:20.04 AS builder

WORKDIR /tmp

ARG T_REX_VERSION="0.24.7"
ARG T_REX_FILENAME="t-rex-0.24.7-linux.tar.gz"

RUN mkdir t-rex && \
    apt update && apt install tar wget -y

RUN wget https://github.com/trexminer/T-Rex/releases/download/${T_REX_VERSION}/${T_REX_FILENAME} && \
    tar xf ${T_REX_FILENAME} -C t-rex


FROM nvidia/cuda:10.2-base

LABEL maintainer="Dockminer"

LABEL org.opencontainers.image.source https://github.com/dockminer/T-Rex

# Create config foler
RUN mkdir -p /etc/config

# Fix Driver bug
RUN ln -s /usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1 /usr/lib/x86_64-linux-gnu/libnvidia-ml.so

COPY --from=builder /tmp/t-rex/t-rex /usr/local/bin/t-rex

EXPOSE 4067 4068

ENTRYPOINT [ "t-rex" ]