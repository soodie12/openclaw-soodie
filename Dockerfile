FROM ghcr.io/openclaw/openclaw:latest

# Use the correct native setup tool to initialize a flawless local workspace
RUN openclaw setup --non-interactive --accept-risk --mode local

# Start the gateway with the unconfigured bypass flag
CMD ["openclaw", "gateway", "--allow-unconfigured"]
