FROM n8nio/n8n:latest

USER root

# Atualiza a lista de pacotes e instala o FFmpeg (usando apt-get para Debian)
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Desbloqueia o nó de comando (Execute Command)
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
