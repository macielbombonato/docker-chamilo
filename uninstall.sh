echo "==> Uninstalling Chamilo"
docker container stop chamilo
docker container rm chamilo -f
docker volume rm chamilo_www -f

echo "==> Uninstalling database"
docker container stop chamilo_database
docker container rm chamilo_database -f
docker volume rm chamilo_database -f