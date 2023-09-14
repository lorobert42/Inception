SRC	:=	srcs/docker-compose.yml

all: up

up:
	mkdir -p /home/lorobert/data/mariadb
	mkdir -p /home/lorobert/data/wordpress
	docker compose -f $(SRC) up --build -d

down:
	docker compose -f $(SRC) down

clean:
	docker compose -f $(SRC) down --rmi all -v

fclean: clean
	sudo rm -rf /home/lorobert/data

prune: fclean
	sudo docker system prune -f --all --volumes

.PHONY: all up down clean fclean prune