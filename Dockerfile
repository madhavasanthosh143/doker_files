# Generic Dockerfile template — customize the sections below for your app.

# Base image: pick a version-pinned tag, avoid ":latest" for reproducible builds
FROM ubuntu:22.04

# Metadata
LABEL maintainer="vishnu.rm@hotfoot.co.in"

# Avoid interactive prompts during package installs
ENV DEBIAN_FRONTEND=noninteractive

# Install OS packages here (replace with what your app needs)
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Working directory inside the container
WORKDIR /app

# Copy dependency manifests first to leverage Docker layer caching
# COPY package.json ./
# RUN npm install

# Copy application source
COPY . .

# Container listens on this port (change to match your app)
EXPOSE 8080

# Default command — replace with your app's start command
CMD ["bash"]
