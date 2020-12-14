ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    build-essential \
    git \
    nano \
    net-tools \
    openssh-client \
    proxychains4 \
    python3-colcon-common-extensions \
    python3-colcon-mixin \
    python3-rosdep \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*