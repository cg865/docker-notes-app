# Docker Notes App

A simple Flask-based note-taking application containerized with Docker.


## Build Instructions


Build the Docker image:

docker build -t docker-notes-app .

## Run Instructions


Run the container with a volume mount for persistent data:

docker run -d -p 5000:5000 -v $(pwd)/data:/data --name notes_app docker-notes-app

Then access the application at: http://localhost:5000


## Environment Variables


- `NOTES_FILE`: Path to the JSON file storing notes (default: `/data/notes.json`)
- `APP_NAME`: Custom application name displayed in the UI (default: "My Notes App")

