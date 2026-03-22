FROM n8n.io/n8nio/n8n:2.12.3

ENV N8N_PORT=5678

EXPOSE 5678
USER root

# Instala o FFmpeg e FFprobe (bibliotecas essenciais para áudio/vídeo)
RUN apk add --no-cache ffmpeg

# Garante que o usuário 'node' (padrão do n8n) tenha acesso aos binários
USER node
