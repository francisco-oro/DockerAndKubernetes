# Network creation
```shell
sudo docker network create app-net
```
# Run DB container

```shell
sudo docker run --name mongodb \
-v data:/data/db --rm -d --network app-net \
 -e MONGO_INITDB_ROOT_USERNAME=root \
 -e MONGO_INITDB_ROOT_PASSWORD=secret  \
 mongo
```

# Build Node API Image
```shell
docker build -t goals-backend .
```

# Run Node API Container
```shell
sudo docker run --name backend-node -p 80:80 \
--network app-net --rm -v logs:/backend/logs \ 
-v /backend/node_modules -v "$(pwd):/backend:ro" \ 
goals-backend

```

# Build React SPA Image

```shell
docker build -t goals-react . 
```

```shell
sudo docker run -v /frontend/node_modules  \ 
-v "$(pwd)/src:/frontend/src:ro" --name frontend-node \ 
--rm -p 3000:3000 -it goals-frontend

```