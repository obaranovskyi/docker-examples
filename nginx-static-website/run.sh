# Example with volume:
# docker run --name my-website -v ./:/usr/share/nginx/html:ro -d  -p 8080:80 nginx

docker build -t my-website-image:1.0.0 .
docker run --name my-website-container -d -p 8080:80 my-website-image:1.0.0
