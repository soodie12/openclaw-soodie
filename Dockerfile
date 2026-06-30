FROM ghcr.io/openclaw/openclaw:latest

# Copy the minimalist config file to the working directory
COPY openclaw.json ./openclaw.json

# Copy it to the default home configuration folder as a fallback
RUN mkdir -p /root/.openclaw
COPY openclaw.json /root/.openclaw/openclaw.json
