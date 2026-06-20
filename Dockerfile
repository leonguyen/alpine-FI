FROM alpine:latest

RUN apk add --no-cache \
    chromium \
    xvfb \
    x11vnc \
    fluxbox \
    python3 \
    py3-websockify \
    git \
    bash

RUN git clone https://github.com/novnc/noVNC.git /opt/noVNC

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080

CMD ["/start.sh"]