FROM n8nio/n8n:1.25.1-alpine

USER root

# Instala o FFmpeg de forma direta
RUN apk add --no-cache ffmpeg

# Libera o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
