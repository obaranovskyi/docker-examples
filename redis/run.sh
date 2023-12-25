docker run \
  -d \
  -p 6379:6379 \
  --name local-redis-container \
  -v "$(pwd)/redis-db":/usr/local/etc/redis \
  redis
