FROM python:3.9-alpine


ENV NOTES_FILE=/data/notes.json
ENV APP_NAME="Docker Notes App"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p /data

EXPOSE 5000

CMD ["python", "app.py"]
