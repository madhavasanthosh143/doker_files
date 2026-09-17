# Generic Dockerfile template — customize the sections below for your app.

# Base image: pick a version-pinned tag, avoid ":latest" for reproducible builds
FROM amazonlinux:2023

# Metadata
LABEL maintainer="vishnu.rm@hotfoot.co.in"

# Install OS packages here (replace with what your app needs)
RUN dnf install -y \
    ca-certificates \
    curl \
    && dnf clean all

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
