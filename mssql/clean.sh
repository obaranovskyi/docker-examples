docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
rm -rf mssql-data
