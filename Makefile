start:
	mkdir -p /home/kboughal/data/mariadb2 
	mkdir -p /home/kboughal/data/wordpress2
	cd srcs/ && docker compose down --volumes --remove-orphans --rmi all && docker compose up --force-recreate --build

start_no_build:
	mkdir -p /home/kboughal/data/mariadb2 
	mkdir -p /home/kboughal/data/wordpress2
	cd srcs/ && docker compose up

clear_volumes:
	cd srcs/ && docker compose down --volumes --remove-orphans --rmi all 

# stop:
# 	docker stop $$(docker ps -qa); \
# 	docker rm $$(docker ps -qa); \
# 	docker rmi -f $$(docker images -qa); \
# 	docker volume rm $$(docker volume ls -q); \
# 	docker network rm $$(docker network ls -q) 2>/dev/null

clear_all: clear_volumes
	rm -rf /home/kboughal/data
	docker system prune -a
