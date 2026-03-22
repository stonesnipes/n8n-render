FROM n8nio/n8n:latest

USER root
# Instala o FFmpeg e dependências necessárias no Alpine
RUN apk add --no-cache ffmpeg

# Variável de ambiente para DESBLOQUEAR o nó de comando (Execute Command)
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
