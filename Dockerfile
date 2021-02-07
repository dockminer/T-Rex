FROM ubuntu:20.04 AS builder

WORKDIR /tmp

RUN mkdir t-rex && \
    apt update && apt install tar wget -y

RUN wget https://github.com/trexminer/T-Rex/releases/download/0.19.10/t-rex-0.19.10-linux-cuda11.1.tar.gz && \
    tar xf t-rex-0.19.10-linux-cuda11.1.tar.gz -C t-rex


FROM nvidia/cuda:11.1-base

LABEL maintainer="Dockminer"

LABEL org.opencontainers.image.source https://github.com/dockminer/T-Rex

# Fix Driver bug
RUN ln -s /usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1 /usr/lib/x86_64-linux-gnu/libnvidia-ml.so

COPY --from=builder /tmp/t-rex/t-rex /usr/local/bin/t-rex

EXPOSE 4067 4068

ENTRYPOINT [ "t-rex" ]