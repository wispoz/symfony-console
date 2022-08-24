ifneq (,$(wildcard ./.env))
    include .env
    export
endif
no-command:
	@echo Usage: make [scenario]


nginx-reload:
	docker exec ${CONTAINER_PREFIX}_nginx nginx -s reload

nginx:
	docker exec -ti ${CONTAINER_PREFIX}_nginx /bin/sh

nginx-logs:
	docker logs ${CONTAINER_PREFIX}_nginx

app:
	docker exec -ti ${CONTAINER_PREFIX}_app /bin/sh

app-logs:
	docker logs ${CONTAINER_PREFIX}_app



composer:
	docker exec -ti ${CONTAINER_PREFIX}_app composer

php:
	docker exec -ti ${CONTAINER_PREFIX}_app php

php-version:
	docker exec -ti ${CONTAINER_PREFIX}_app php --version


frontend-dev:
	npm install && npm run dev

frontend-prod:
	npm run prod


docker-rebuild: docker-down docker-build docker-up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-build:
	docker-compose build

mysql:
	docker exec -ti ${CONTAINER_PREFIX}_db mysql -u root -p