FROM ghcr.io/openclaw/openclaw:latest

# Copy our clean configuration structure into the container
COPY openclaw.json /openclaw.json
