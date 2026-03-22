docker run -d \
  --name n8n \
  -p 5678:5678 \
  -e NODES_EXCLUDE="[]" \
  docker.n8n.io/n8nio/n8n:latest
