FROM python:3.11-slim
EXPOSE 8001
WORKDIR /app

COPY ./ /app/
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py", "--server", "--port", "8001"]
