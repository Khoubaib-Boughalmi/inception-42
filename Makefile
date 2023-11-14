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

clear_all: clear_volumes
	docker system prune -a