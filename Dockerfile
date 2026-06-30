FROM ghcr.io/openclaw/openclaw:latest

# Force OpenClaw to build a clean local config file while skipping the live network test
RUN openclaw setup --non-interactive --accept-risk --mode local --skip-health

# Start the gateway natively using the bypass flag
CMD ["openclaw", "gateway", "--allow-unconfigured"]
