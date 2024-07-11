#!/bin/bash

echo "# Iniciando start #####"
DOCKER_COMPOSE="$(command -v docker-compose || command -v "docker compose")"

function cleanup_and_exit() {
    echo "# Removendo containers"
    $DOCKER_COMPOSE down && $DOCKER_COMPOSE rm -f
    echo "# Finalizando start #####"
    exit 0
}

monitor_terminal() {
    while true; do
        sleep 2
        # Check if the terminal is still running
        if ! kill -0 $$ 2>/dev/null; then
            cleanup_and_exit
        fi
    done
}

trap 'cleanup_and_exit' SIGINT
{
    cd infra ;
    docker build -f Dockerfile.base . -t n8n-base ;
}

$DOCKER_COMPOSE build --no-cache
$DOCKER_COMPOSE up -d
$DOCKER_COMPOSE logs -f

monitor_terminal