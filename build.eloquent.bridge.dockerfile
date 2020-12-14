ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    ros-eloquent-ros1-bridge \
    && rm -rf /var/lib/apt/lists/*