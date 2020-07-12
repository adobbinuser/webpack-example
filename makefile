docker_name = webpack-cli
docker_image = my.webpack-cli

help: #prints list of commands
	@cat ./makefile | grep : | grep -v "grep"

start: #start docker container #
	@sudo docker-compose -f ./docker/docker-compose.yml up -d

stop: #stop docker container
	@sudo docker-compose -f ./docker/docker-compose.yml down

remove: #remove docker image
	@sudo docker-compose  -f ./docker/docker-compose.yml down; sudo docker rmi -f $(docker_image)

connect: #connect to container bash
	@sudo docker exec -it $(docker_name) bash
