FROM node:22-alpine

WORKDIR /app

RUN npm install -g mcp-proxy @modelcontextprotocol/server-filesystem

RUN mkdir -p /projects

RUN echo '#!/bin/sh\n\
echo "Starting MCP proxy server..."\n\
export DEBUG="*"\n\
mcp-proxy --server sse --port 8000 --endpoint /sse node /usr/local/lib/node_modules/@modelcontextprotocol/server-filesystem/dist/index.js /projects\n\
' > /app/entrypoint.sh && chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

EXPOSE 8000
