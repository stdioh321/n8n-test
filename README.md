# N8N Service with Main Node and Multiple Workers

This project sets up a distributed **N8N** workflow automation service with a master node and N workers, along with Postgres, MySQL, and Redis, using Docker Compose. It allows you to scale your N8N service horizontally by adding additional worker nodes as needed.

## Prerequisites

Make sure you have Docker and Docker Compose installed on your system before proceeding.

## Setup

1. Clone this repository to your local machine.
```shell
git clone https://github.com/stdioh321/n8n-test.git
```

2. Navigate to the project directory.
```shell
cd n8n-test
```

3. Build the base image
```shell
docker build -t n8n-base -f infra/Dockerfile.base .
```

4. Build the Docker images
```shell
docker compose build --no-cache
```

## Run

Start the services using Docker Compose.
```shell
bash start.sh
```

Once the services are up and running, you can access the N8N web interface by visiting [http://localhost:5678](http://localhost:5678) in your web browser.

```shell
# Create your credentials
# Example
user: n8n@n8n.com
pass: Abc123@Abc123@
```
