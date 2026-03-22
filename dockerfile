FROM n8nio/n8n:1.123.16

USER root

# No Alpine, o comando é apk e não apt-get
RUN apk add --no-cache ffmpeg

# Libera o nó de comando
ENV N8N_BLOCK_COMMANDS_NODE=false

USER node
