FROM ghcr.io/openclaw/openclaw:latest

# Build the configuration baseline natively
RUN openclaw setup

# Use OpenClaw's valid "auto" binding flag along with the port definition
CMD ["openclaw", "gateway", "--allow-unconfigured", "--bind", "auto", "--port", "18789"]
