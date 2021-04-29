cd pakketservice
docker-compose up -d
cd ..

cd api-gateway
docker-compose up -d
cd ..

cd locatieservice
docker-compose up -d
cd ..

cd personeel-service
docker-compose up -d
cd ..

cd ui
docker build -t ui --no-cache .
docker run -d -p 8080:80 --name ui-app ui 
cd ..