FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    python3-tk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirement.txt .

RUN pip install --no-cache-dir -r requirement.txt

COPY . .

CMD ["python", "./app.py"]