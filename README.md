# Docker Notes App

A simple Flask-based note-taking application containerized with Docker.


## Build Instructions


Build the Docker image:


## Run Instructions


Run the container with a volume mount for persistent data:


Then access the application at: http://localhost:5000


## Environment Variables


- `NOTES_FILE`: Path to the JSON file storing notes (default: `/data/notes.json`)
- `APP_NAME`: Custom application name displayed in the UI (default: "My Notes App")
