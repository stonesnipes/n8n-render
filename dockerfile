FROM n8nio/n8n:latest

USER root

# Instala o FFmpeg usando o gerenciador de pacotes Debian
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Desbloqueia o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
