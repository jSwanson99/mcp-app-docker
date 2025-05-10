.PHONY: start stop restart build

mcp-server-pyrepl := "localhost/mcp-server-pyrepl"
mcp-filesystem:= "localhost/mcp-server-filesystem"
mcp-app := "localhost/mcp-app"

restart: stop start

stop:
	docker-compose down

start: build
	docker-compose up -d

build:
	docker build -f ./mcp-servers/py-repl/Dockerfile -t $(mcp-server-pyrepl) ./mcp-servers/py-repl
	docker build -f ./mcp-servers/mcp-filesystem/Dockerfile -t $(mcp-filesystem) ./mcp-servers/mcp-filesystem
	docker build -f ./mcp-client/Dockerfile -t $(mcp-app) ./mcp-client
