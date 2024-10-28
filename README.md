# Symfony Docker Boilerplate

This is an empty Symfony project with Docker integration

## Installation

### Preparation

Containers are managed with docker-compose

In case you don't have it, you can find setup instructions for your OS distribution here: https://docs.docker.com/compose/install/

If you use Windows, it's better to install WSL: https://documentation.ubuntu.com/wsl/en/latest/guides/install-ubuntu-wsl2/

### Run local build

Initialize a local container using (First initialization)
```bash
make init
```

To start a local container run
```bash
make start
```

### Application commands
`make init` - initialise Docker build

`make start` - run Docker build

`make down` - stop Docker build

`make php-cli`- run PHP Bash

`make composer install` - install Composer dependencies

`make composer [your_command]` - execute Composer command
