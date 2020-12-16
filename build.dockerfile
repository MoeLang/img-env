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
    ros-${ROS_DISTRO}-tf2-geometry-msgs \
    ros-${ROS_DISTRO}-pcl-msgs \
    ros-${ROS_DISTRO}-lanelet2-core \
    ros-${ROS_DISTRO}-lanelet2-io \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libpcl-dev \
    libnl-genl-3-dev \
    libfmt-dev \
    libgeographic-dev \
    libpugixml-dev \
    libtf2-eigen-dev \
    && rm -rf /var/lib/apt/lists/*

RUN ${PIP} install gdown