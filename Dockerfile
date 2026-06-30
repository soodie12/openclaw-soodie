FROM ghcr.io/openclaw/openclaw:latest

# Use the exact subcommand structure requested by the OpenClaw parser
RUN openclaw setup --non-interactive --accept-risk --skip-health

# Start the gateway natively using the bypass flag
CMD ["openclaw", "gateway", "--allow-unconfigured"]
