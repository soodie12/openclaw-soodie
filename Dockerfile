FROM ghcr.io/openclaw/openclaw:latest

# Use the exact subcommand structure requested by the OpenClaw parser
RUN openclaw setup local --non-interactive --accept-risk

# Start the gateway natively using the bypass flag
CMD ["openclaw", "gateway", "--allow-unconfigured"]
