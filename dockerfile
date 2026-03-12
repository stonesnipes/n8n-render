FROM n8nio/n8n:latest

# Mantém as configurações de porta que você já tem
ENV N8N_PORT=5678
EXPOSE 5678

# Adiciona as liberações de segurança para o Node aparecer
ENV N8N_BLOCK_NODES=none
ENV NODES_INCLUDE=n8n-nodes-base.executeCommand

# Muda para root temporariamente para garantir permissões de sistema
USER root

# Instala o bash (ajuda o n8n a reconhecer o ambiente de comando)
RUN apk add --no-cache bash

# Volta para o usuário padrão do n8n por segurança
USER node
