# Serviço N8N com nó Main e múltiplos Workers
Este projeto configura um serviço de automação de fluxo de trabalho **N8N** distribuído com um nó mestre e N workers, juntamente com Postgres, MySQL e Redis, usando o Docker Compose. Ele permite que você dimensione seu serviço N8N horizontalmente adicionando nós de trabalho adicionais conforme necessário.

## Pré-requisitos
Certifique-se de ter o Docker e o Docker Compose instalados em seu sistema antes de prosseguir.

## Setup
1. Clone este repositório para sua máquina local.
```shell
git clone git@bitbucket.org:newway-ondemand/n8n.git
```
2. Navegue até o diretório do projeto.
```shell
cd n8n
```
3. Efetue build das imagens docker
```shell
docker-compose build --no-cache
```

## Executar
Inicie os serviços usando o Docker Compose.
```shell
bash start.sh
```
Depois que os serviços estiverem funcionando, você poderá acessar a interface da web n8n visitando http://localhost:5678 em seu navegador da web.


> Para começar com um ambiente limpo, exclua a pasta chamada "./data" que contém o banco de dados e os dados do Redis.

```shell
# Crie suas credenciais
# exemplo
user: test@test.com
pass: Abc123@123
```