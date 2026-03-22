FROM n8nio/n8n:1.123.16

USER root

RUN apk add --no-cache ffmpeg

USER node

EXPOSE 5678
