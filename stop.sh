echo "==> Stoping Chamilo"
docker container stop chamilo
#docker container rm chamilo -f

echo "==> Stoping database"
docker container stop chamilo_database
#docker container rm chamilo_database -f