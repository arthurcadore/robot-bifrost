FROM mcr.microsoft.com/devcontainers/base:jammy

# Install robotframework-requests
RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install robotframework-requests
