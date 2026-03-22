FROM n8nio/n8n:latest

USER root

# Instala FFmpeg (compatível com Debian)
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node

# Configs essenciais
ENV N8N_PORT=5678
ENV N8N_BLOCK_COMMANDS_NODE=false
ENV N8N_NODES_EXCLUDE=[]
ENV N8N_RUNNERS_ENABLED=true

EXPOSE 5678

CMD ["n8n"]
  

 
