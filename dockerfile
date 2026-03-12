FROM n8nio/n8n:latest

# Configurações de ambiente básicas
ENV N8N_PORT=5678
ENV N8N_BLOCK_NODES=none
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Porta que o n8n utiliza
EXPOSE 5678

# Comando para iniciar o n8n (padrão da imagem oficial)
CMD ["n8n", "start"]
