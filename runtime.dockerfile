ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update \
    && rosdep init \
    && rosdep update \
    && apt-get install -q -y --no-install-recommends \
    ros-${ROS_DISTRO}-ros-core \
    ros-${ROS_DISTRO}-tf2-ros \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libnl-genl-3-200 \
    libgeographic19 \
    libpugixml1v5 \
    && rm -rf /var/lib/apt/lists/*