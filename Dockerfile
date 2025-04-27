FROM python:3.9-alpine AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip wheel --no-cache-dir --wheel-dir /wheels -r requirements.txt

FROM python:3.9-alpine

ENV NOTES_FILE=/data/notes.json
ENV APP_NAME="Docker Notes App"

WORKDIR /app

COPY --from=builder /wheels /wheels
RUN pip install --no-cache /wheels/*

COPY . .

RUN mkdir -p /data

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD nc -z localhost 5000 || exit 1

CMD ["python", "app.py"]
