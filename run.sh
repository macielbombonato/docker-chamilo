echo "==> Starting database"
#docker container stop chamilo_database
#docker container rm chamilo_database -f
docker container start chamilo_database 

echo "==> Starting Chamilo"
#docker container stop chamilo
#docker container rm chamilo -f
docker container start chamilo 
docker logs -f chamilo