.PHONY: init start down php-cli composer

# Docker Compose File Path
DOCKER_COMPOSE_FILE = -f ./docker/docker-compose.yml

# Docker Compose Commands
DC_CMD = docker-compose $(DOCKER_COMPOSE_FILE)

# Main Commands
init: 
	@$(DC_CMD) up -d --build
start:
	@$(DC_CMD) up -d
down:
	@$(DC_CMD) down
php-cli:
	@$(DC_CMD) exec php bash

# Composer Command with Arguments
composer:
	@$(DC_CMD) exec php composer $(filter-out $@,$(MAKECMDGOALS))

# Prevents Make from treating arguments as separate targets
%:
	@:
