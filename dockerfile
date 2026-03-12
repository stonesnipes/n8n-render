FROM n8nio/n8n:1.123.16

# Variáveis de ambiente integradas para evitar bloqueios
ENV N8N_PORT=5678



# Porta padrão
EXPOSE 5678

# Comando direto para garantir o início
ENTRYPOINT ["n8n"]
CMD ["start"]
