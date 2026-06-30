FROM ghcr.io/openclaw/openclaw:latest

# Build the configuration template natively
RUN openclaw setup

# Force the gateway to bind globally to 0.0.0.0 on port 18789
CMD ["openclaw", "gateway", "--allow-unconfigured", "--bind", "0.0.0.0", "--port", "18789"]
