- docker network create rahul-network
- docker run -d --name ironman --network rahul-network nginx
- docker run -d --name spiderman --network rahul-network nginx
- docker exec -it spiderman bash (ping ironman)
- docker network inspect rahul-network
- docker run -d --name thor -p 8080:80 nginx

## What I Learned
- Containers on same network talk to each other by name
- docker network inspect shows IPs of all containers
- -p 8080:80 maps your machine port to container port 
