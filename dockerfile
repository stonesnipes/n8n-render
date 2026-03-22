n8nio/n8n:latest-alpine

USER root

# Instala o FFmpeg de forma otimizada para Alpine
RUN apk add --no-cache ffmpeg

# Variável para liberar o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
