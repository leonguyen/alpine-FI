FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    chromium \
    xvfb \
    x11vnc \
    fluxbox \
    novnc \
    websockify \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*