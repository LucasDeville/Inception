all : up

up : 
	@docker-compose -f ./srcs/docker-compose.yml up -d

down : 
	@docker-compose -f ./srcs/docker-compose.yml down

stop : 
	@docker-compose -f ./srcs/docker-compose.yml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yml start

status : 
	@docker ps

delete : down
	@docker image rm srcs_wordpress -f
	@docker image rm srcs_mariadb -f
	@docker image rm srcs_nginx -f
	@docker volume rm mariadb
	@docker volume rm wordpress

prune :
	@docker system prune -af
	@docker volume rm mariadb
	@docker volume rm wordpress

