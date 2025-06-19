#!/bin/bash

echo "# Iniciando start #####"
if command -v docker-compose &>/dev/null; then
    DOCKER_COMPOSE="docker-compose"
elif command -v docker &>/dev/null && docker compose version &>/dev/null; then
    DOCKER_COMPOSE="docker compose"
else
    echo "Error: docker-compose or 'docker compose' not found."
    exit 1
fi

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
    cd infra
    docker build -f Dockerfile.base . -t n8n-base
}

$DOCKER_COMPOSE build
$DOCKER_COMPOSE up -d
$DOCKER_COMPOSE logs -f

monitor_terminal
