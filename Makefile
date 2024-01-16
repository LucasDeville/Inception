all : build

build : 
	@sudo hostsed add 127.0.0.1 ldeville.42.fr && echo "Added ldeville.42.fr to /etc/hosts"
	sudo docker compose -f ./srcs/docker-compose.yml up -d

down : 
	@sudo hostsed rm 127.0.0.1 ldeville.42.fr && echo "Removed ldeville.42.fr to /etc/hosts"
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

