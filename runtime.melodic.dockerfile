ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    cuda-nvrtc-10-2=10.2.89-1 \
    libcublas10=10.2.3.254-1 \
    libcudnn7=7.6.5.32-1+cuda10.2 \
    libnvinfer-plugin7=7.0.0-1+cuda10.2 \
    libnvinfer7=7.0.0-1+cuda10.2 \
    libnvonnxparsers7=7.0.0-1+cuda10.2 \
    libnvparsers7=7.0.0-1+cuda10.2 \
    && rm -rf /var/lib/apt/lists/*