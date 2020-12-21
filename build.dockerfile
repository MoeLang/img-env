ARG FROM_SRC_IMAGE=ghcr.io/autocore-ats/src:latest
ARG FROM_IMAGE

FROM ${FROM_SRC_IMAGE} as src
FROM ${FROM_IMAGE} as tmp

COPY --from=src /AutowareArchitectureProposal /AutowareArchitectureProposal

WORKDIR /AutowareArchitectureProposal

RUN rosdep install --simulate --reinstall --ignore-src -y --from-paths src --skip-keys livox_ros2_driver | sort > ros-deps && cat ros-deps

FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    build-essential \
    python3-colcon-common-extensions \
    python3-colcon-mixin \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*

COPY --from=tmp /AutowareArchitectureProposal/ros-deps /tmp/ros-deps

RUN apt-get update \
    && cat /tmp/ros-deps \
    && sh /tmp/ros-deps \
    && rm -rf /var/lib/apt/lists/*

RUN ${PIP} install gdown