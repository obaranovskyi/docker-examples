docker run \
  --platform linux/amd64 \
  -e "ACCEPT_EULA=Y" \
  -e "SA_PASSWORD=YourStrong!Passw0rd" \
  -p 1433:1433 \
  --name my-mssql \
  -v "$(pwd)/mssql-data":/var/opt/mssql \
  -d mcr.microsoft.com/mssql/server:2022-latest
