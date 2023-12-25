docker run \
  -p 5433:5432 \
  -d \
	--name my-db-container \
	-e POSTGRES_PASSWORD="root" \
	-e POSTGRES_USER="root" \
	-e POSTGRES_DB=bookstore \
	-v "$(pwd)/pg":/var/lib/postgresql/data \
	postgres
