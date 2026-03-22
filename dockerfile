Dockerfile
FROM n8nio/n8n:1.123.16

USER root

# Instala o FFmpeg (essencial para seus vídeos)
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Libera o nó de comando e permite nós da comunidade
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node

# Comando para garantir que o nó da comunidade seja instalado no build
RUN npm install n8n-nodes-google-cloud-text-to-speech
