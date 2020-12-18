ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update \
    && rosdep init \
    && rosdep update \
    && apt-get install -q -y --no-install-recommends \
    ros-${ROS_DISTRO}-ros-core \
    && rm -rf /var/lib/apt/lists/*