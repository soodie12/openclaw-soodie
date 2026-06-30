FROM ghcr.io/openclaw/openclaw:latest

# Build the configuration baseline natively
RUN openclaw setup

# Production Resource Optimizations to stop CPU Throttling
ENV OPENCLAW_UPDATE_CHECK="false"
ENV OPENCLAW_GATEWAY_HTTP_ENABLED="false"
ENV OPENCLAW_TELEMETRY_ENABLED="false"

# Turn off heavy agent memory plugins that bloat CPU usage on boot
ENV OPENCLAW_EXTENSIONS_ACTIVE_MEMORY_ENABLED="false"
ENV OPENCLAW_EXTENSIONS_MEMORY_CORE_ENABLED="false"
ENV OPENCLAW_EXTENSIONS_BROWSER_ENABLED="false"

# Launch ONLY the core polling loop with minimal footprint
CMD ["openclaw", "gateway", "--allow-unconfigured", "--bind", "loopback"]
