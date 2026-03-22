FROM n8nio/n8n:1.25.1

USER root

# Instala o FFmpeg (imagem base é Debian)
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Libera o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
