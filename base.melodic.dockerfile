ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS_DISTRO melodic