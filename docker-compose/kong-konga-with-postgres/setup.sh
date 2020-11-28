docker network create kong-network
docker-compose up --build -d kong-database kong-migrations
sleep 10
docker-compose up --build -d kong konga