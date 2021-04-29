cd pakketservice
docker-compose up -d --build
cd ..

cd api-gateway
docker-compose up -d --build
cd ..

cd locatieservice
docker-compose up -d --build
cd ..

cd personeel-service
docker-compose up -d --build
cd ..