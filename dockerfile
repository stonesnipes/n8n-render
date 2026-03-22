FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y ffmpeg

USER node
# Libera o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

