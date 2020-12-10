ARG FROM_IMAGE
FROM ${FROM_IMAGE}

LABEL org.opencontainers.image.source https://github.com/autocore-ats/img-env

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libcudnn7-dev=7.6.5.32-1+cuda10.2 \
    libnvinfer-dev=7.0.0-1+cuda10.2 \
    libnvinfer-plugin-dev=7.0.0-1+cuda10.2 \
    libnvonnxparsers-dev=7.0.0-1+cuda10.2 \
    libnvparsers-dev=7.0.0-1+cuda10.2 \
    && rm -rf /var/lib/apt/lists/*