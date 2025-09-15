# Use a lightweight base image with bash
FROM debian:bullseye-slim

# Install required dependencies: fortune-mod, cowsay, netcat
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy wisecow script into the container
COPY wisecow.sh /app/wisecow.sh

# Give execution permission
RUN chmod +x /app/wisecow.sh

# Expose the default port
EXPOSE 4499

# Run the script
CMD ["/app/wisecow.sh"]
