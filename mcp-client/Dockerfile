FROM ghcr.io/astral-sh/uv:python3.13-bookworm-slim

WORKDIR /app

ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy

COPY uv.lock .
COPY pyproject.toml .
COPY fastagent.config.yaml .

RUN uv sync

COPY src ./src

EXPOSE 8001

CMD ["uv", "run", "src/main.py", "--server", "--port", "8001"]
