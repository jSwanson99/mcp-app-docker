.PHONY: start stop restart build

mcp-server-pyrepl := "localhost/mcp-server-pyrepl"
mcp-filesystem:= "localhost/mcp-server-filesystem"
mcp-app := "localhost/mcp-app"

start:
	docker-compose up --build

restart: stop start

stop:
	docker-compose down

build:
	docker build -f ./mcp-servers/py-repl/Dockerfile -t $(mcp-server-pyrepl) ./mcp-servers/py-repl
	docker build -f ./mcp-servers/mcp-filesystem/Dockerfile -t $(mcp-filesystem) ./mcp-servers/mcp-filesystem
	docker build -f ./mcp-client/Dockerfile -t $(mcp-app) ./mcp-client
