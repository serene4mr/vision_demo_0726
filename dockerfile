FROM ghcr.io/serene4mr/mowbot:devel-jetson-l4t-r36.4-latest

# Allow overriding the ROS distribution at build time, defaulting to the base image's ROS_DISTRO
ARG ROS_DISTRO

# Install system dependencies and the ROS Foxglove bridge
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    ros-${ROS_DISTRO}-foxglove-bridge \
    && rm -rf /var/lib/apt/lists/*