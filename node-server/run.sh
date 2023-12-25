docker build -t node-example-image:1.0.0 .

docker run --name node-example-container -d -p 3000:8080 node-example-image:1.0.0
