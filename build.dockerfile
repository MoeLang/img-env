ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    build-essential \
    python3-colcon-common-extensions \
    python3-colcon-mixin \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    ros-${ROS_DISTRO}-test-msgs \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libpcl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN ${PIP} install gdown