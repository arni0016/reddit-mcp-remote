FROM python:3.12-slim

RUN pip install --no-cache-dir uv

RUN uv pip install --system reddit-no-auth-mcp-server

EXPOSE 8000

CMD ["reddit-no-auth-mcp-server", "--transport", "streamable-http", "--host", "0.0.0.0", "--port", "8000"]
