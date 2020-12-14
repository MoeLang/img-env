ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN pip install gdown

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    cuda-nvrtc-dev-11-1=11.1.105-1 \
    libcublas-dev-11-1=11.3.0.106-1 \
    libcudnn8-dev=8.0.5.39-1+cuda11.1 \
    libnvinfer-dev=7.2.1-1+cuda11.1 \
    libnvinfer-plugin-dev=7.2.1-1+cuda11.1 \
    libnvonnxparsers-dev=7.2.1-1+cuda11.1 \
    libnvparsers-dev=7.2.1-1+cuda11.1 \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    ros-${ROS_DISTRO}-test-msgs \
    && rm -rf /var/lib/apt/lists/*