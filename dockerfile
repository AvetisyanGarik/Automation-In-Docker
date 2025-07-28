FROM ubuntu:22.04

# Install system tools and libraries
RUN apt-get update && apt-get install -y \
    python3-pip python3-venv python3-dev \
    build-essential libssl-dev libffi-dev \
    git curl sudo sshpass iproute2 iputils-ping jq unzip \
    gcc g++ make ca-certificates docker.io openssh-client \
    libonig-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Python libraries
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --upgrade pip \
    && pip3 install -r /tmp/requirements.txt

# Set working directory
WORKDIR /workspace

# Default command
CMD ["/bin/bash"]
