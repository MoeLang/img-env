ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN pip install gdown

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    cuda-nvrtc-dev-10-2=10.2.89-1 \
    libcublas-dev=10.2.3.254-1 \
    libcudnn7-dev=7.6.5.32-1+cuda10.2 \
    libnvinfer-dev=7.0.0-1+cuda10.2 \
    libnvinfer-plugin-dev=7.0.0-1+cuda10.2 \
    libnvonnxparsers-dev=7.0.0-1+cuda10.2 \
    libnvparsers-dev=7.0.0-1+cuda10.2 \
    && rm -rf /var/lib/apt/lists/*