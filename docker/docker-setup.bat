docker network create --driver overlay test

docker service create --name registry --publish published=5000,target=5000 registry:2  
docker service ls
curl http://localhost:5000/v2/

docker stack deploy --compose-file=docker-compose-swarm.yml test

GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost' IDENTIFIED BY 'password';

docker service rm #

docker exec -it b2ece90f2926 mysql -u root -p
   
docker run -d -p 3131:3131 service:latest

docker build --build-arg app=service --build-arg version=2020.2.12-SNAPSHOT -f Dockerfile -t service:latest .