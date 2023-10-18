# hash:sha256:8e033a43a4fb9a0b496c64dc0dc8850593c331a250b01a89474bc964fa7fcef1
FROM registry.codeocean.com/codeocean/ubuntu:20.04.2

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
    && rm -rf /var/lib/apt/lists/*

COPY postInstall /
RUN /postInstall
