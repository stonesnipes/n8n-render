FROM n8nio/n8n:latest

USER root

# Instala FFmpeg (pra vídeo + áudio)
RUN apk add --no-cache ffmpeg

# Volta pro usuário padrão do n8n
USER node

# Variáveis essenciais
ENV N8N_PORT=5678
ENV N8N_BLOCK_COMMANDS_NODE=false
ENV N8N_NODES_EXCLUDE=[]
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_DIAGNOSTICS_ENABLED=false

# (Opcional mas recomendado)
ENV NODE_FUNCTION_ALLOW_EXTERNAL=*

# Porta padrão do n8n
EXPOSE 5678

# Start correto
CMD ["n8n"]
  

 
