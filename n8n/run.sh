docker run -d \
  --name n8n-container \
  -p 5678:5678 \
  -e N8N_BASIC_AUTH_ACTIVE=true \
  -e N8N_BASIC_AUTH_USER=admin \
  -e N8N_BASIC_AUTH_PASSWORD=admin123 \
  -e N8N_HOST=localhost \
  -e N8N_PORT=5678 \
  -e N8N_PROTOCOL=http \
  -v "$(pwd)/n8n-data":/home/node/.n8n \
  n8nio/n8n
