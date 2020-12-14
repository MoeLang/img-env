ARG FROM_IMAGE
FROM ${FROM_IMAGE}

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libpcl-dev \
    && rm -rf /var/lib/apt/lists/*