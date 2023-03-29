COMPOSE = docker compose -f docker-compose.yml
EXEC?= $(COMPOSE) exec srt-relay-video
EXEC?= $(COMPOSE) exec srt-relay-audio

install: pull build start
dev: clean pull build start-attached

######################
# Docker management  #
######################

pull: ## pull docker images
	$(COMPOSE) pull --ignore-pull-failures

build-nc: ## build images from Dockerfiles
	$(COMPOSE) build --no-cache

build: ## build images from Dockerfiles
	$(COMPOSE) build

start: ## start docker containers
	$(COMPOSE) up -d --remove-orphans

start-attached: ## start docker containers
	$(COMPOSE) up --remove-orphans

stop: ## stop docker containers
	$(COMPOSE) stop

clean: ## Clean docker container with "exited" status
	$(COMPOSE) down -v

clean-all: ## Remove all unused Docker objetcs
	$(COMPOSE) down -v --rmi

bash-video:
	$(EXEC_VIDEO) bash

bash-audio:
	$(EXEC_AUDIO) bash

