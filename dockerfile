FROM n8nio/n8n:latest

USER root

# Instala o FFmpeg garantindo que o repositório esteja atualizado
RUN apk update && apk add --no-cache ffmpeg

# Desbloqueia o nó de comando para a versão nova
ENV N8N_BLOCK_COMMANDS_NODE=false

# Retorna para o usuário padrão do n8n por segurança
USER node
