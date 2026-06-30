FROM ghcr.io/openclaw/openclaw:latest

# Plain setup writes the valid JSON file baseline without triggering health probes
RUN openclaw setup

# Launch the gateway using the unconfigured bypass flag
CMD ["openclaw", "gateway", "--allow-unconfigured"]
