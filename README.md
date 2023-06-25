# N8N service with Master and Multiple Workers
This project sets up a distributed n8n workflow automation service with one master node and multiple worker nodes, along with MySQL and Redis, using Docker Compose. It allows you to scale your n8n service horizontally by adding additional worker nodes as needed.

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

## Run
Start the services using Docker Compose.
```shell
docker-compose up
```
Once the services are up and running, you can access the n8n web interface by visiting http://localhost:5678 in your web browser.