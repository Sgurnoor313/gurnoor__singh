# Use a compatible base image
FROM mcr.microsoft.com/devcontainers/universal:linux-arm64

# Install Node.js and Vue CLI
RUN apt-get update && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @vue/cli

# Install Python and Flask
RUN apt-get install -y python3 python3-pip \
    && pip3 install flask