#!/bin/sh

export DISPLAY=:99

# Virtual Display
Xvfb :99 \
  -screen 0 1366x768x24 \
  -ac &

sleep 2

# Window Manager
fluxbox &

# Browser
chromium \
  --no-sandbox \
  --disable-dev-shm-usage \
  --disable-gpu \
  https://google.com &

# VNC
x11vnc \
  -display :99 \
  -forever \
  -shared \
  -nopw \
  -listen 0.0.0.0 &

# noVNC
/opt/noVNC/utils/novnc_proxy \
  --vnc localhost:5900 \
  --listen 8080