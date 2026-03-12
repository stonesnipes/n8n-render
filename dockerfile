FROM n8nio/n8n:2.11.3

# Variáveis de ambiente integradas para evitar bloqueios
ENV N8N_PORT=5678
ENV N8N_BLOCK_NODES=none
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Porta padrão
EXPOSE 5678

# Comando direto para garantir o início
ENTRYPOINT ["n8n"]
CMD ["start"]
