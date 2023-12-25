docker run -d \
  --name mysql-container \
  -p 3307:3306 \
  -e MYSQL_ROOT_PASSWORD=mysecretpassword \
  -e MYSQL_DATABASE=bookstore \
  -e MYSQL_USER=myuser \
  -e MYSQL_PASSWORD=mypassword \
	-v "$(pwd)/mysql-db":/var/lib/mysql \
  mysql
