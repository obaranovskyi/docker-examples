docker run                          \
  --name my-website                 \
  -v ./:/usr/share/nginx/html:ro    \
  -d                                \
  -p 8080:80                        \
  nginx

