FROM n8nio/n8n:1.123.16

USER root

# Instala FFmpeg corretamente
RUN apt-get update && apt-get install -y ffmpeg

USER node

ENV N8N_BLOCK_COMMANDS_NODE=false

EXPOSE 5678

CMD ["n8n"]
  

 
