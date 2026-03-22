FROM n8nio/n8n:1.123.16

USER root

# Instala o FFmpeg de forma mais rápida e limpa
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg && rm -rf /var/lib/apt/lists/*

# Libera o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
