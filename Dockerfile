FROM ghcr.io/openclaw/openclaw:latest

# Use the native CLI tool to auto-generate a valid, flawless layout shell
RUN openclaw config init --mode local

# Start the gateway with the unconfigured bypass flag
CMD ["openclaw", "gateway", "--allow-unconfigured"]
