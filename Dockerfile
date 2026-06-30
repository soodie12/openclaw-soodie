FROM ghcr.io/openclaw/openclaw:latest

# Copy your working model configuration into the application path
COPY openclaw.json ./openclaw.json

# Launch using the global binary route to keep paths perfectly aligned
CMD ["openclaw", "gateway", "--allow-unconfigured"]
