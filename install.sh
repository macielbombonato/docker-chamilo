echo "==> Installing database"
docker container stop chamilo_database
docker container rm chamilo_database -f
mkdir -p ~/files/chamilo/database

docker volume create --driver local \
    --opt type=none \
    --opt device=~/files/chamilo/database \
    --opt o=bind \
    chamilo_database

docker container run \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_USER=chamilo \
    -e MYSQL_PASSWORD=chamilo \
    -e MYSQL_DATABASE=chamilo \
    -d \
    --name chamilo_database \
    -v chamilo_database:/var/lib/mysql \
    mariadb

echo "==> Installing Chamilo"
docker container stop chamilo
docker container rm chamilo -f
mkdir -p ~/files/chamilo/www
chmod -R 777 ~/files/chamilo/www

#docker volume create --driver local \
#    --opt type=none \
#    --opt device=~/files/chamilo/www \
#    --opt o=bind \
#    chamilo_www

docker container run \
    --name chamilo \
    -h chamilo.local \
    -p 8080:80 \
    --link chamilo_database:db \
    -d \
    macielbombonato/docker-chamilo

docker container stop chamilo_database
docker container stop chamilo