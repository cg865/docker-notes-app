FROM python:3.9-alpine

Don't forget to copy and install requirements
and create volume mount point


Also, set environment variables:

ENV NOTES_FILE=/data/notes.json
ENV APP_NAME="Docker Notes App"

And expose port:
EXPOSE 5000
