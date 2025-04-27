# Docker Notes App

A simple Flask-based note-taking application containerized with Docker.


## Build Instructions


Build the Docker image:

docker build -t docker-notes-app .


## Run Instructions


Run the container with a volume mount for persistent data:

docker run -d -p 5000:5000 -v $(pwd)/data:/data --name notes_app docker-notes-app


Then open your browser and access: http://localhost:5000


## Environment Variables


- `NOTES_FILE`: Path to the JSON file storing notes (default: `/data/notes.json`)
- `APP_NAME`: Custom application name displayed in the UI (default: "My Notes App")

You can override these environment variables when running:

docker run -d -p 5000:5000 -v $(pwd)/data:/data \
    -e APP_NAME="My Awesome Notes" \
    -e NOTES_FILE=/data/notes.json \
    --name notes_app docker-notes-app

## Health Check


Every 30 seconds, it checks if the Flask app is responsive.

If it fails 3 times, the container status will change to unhealthy.

Implemented using nc (netcat) to check if port 5000 is open.

You can verify container health by running:

docker ps


## Optimizations (Optimized Branch)


In the optimized-app branch:

Multi-stage Docker build is used to keep the final image lightweight.

Only the necessary Python wheels are copied to the final image.

Healthcheck added.

Minimal base image used (python:3.9-alpine).
