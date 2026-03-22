FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg

ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
