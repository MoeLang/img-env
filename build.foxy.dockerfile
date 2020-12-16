ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    cuda-nvrtc-dev-11-1=11.1.105-1 \
    libcublas-dev-11-1=11.3.0.106-1 \
    libcudnn8-dev=8.0.5.39-1+cuda11.1 \
    && rm -rf /var/lib/apt/lists/*