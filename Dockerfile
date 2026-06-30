FROM ghcr.io/openclaw/openclaw:latest

# Copy the config file directly into the active working directory
COPY openclaw.json ./openclaw.json
