# Makefile for Ansible Lab Container

IMAGE_NAME = ansible_lab
CONTAINER_NAME = ansible_lab

.PHONY: build up down restart logs shell

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	make down
	make up

logs:
	docker-compose logs -f

shell:
	docker exec -it $(CONTAINER_NAME) /bin/bash
