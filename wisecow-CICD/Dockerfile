# Use official lightweight image
FROM ubuntu:20.04

# Set working directory inside container
WORKDIR /app

# Copy script into container
COPY wisecow.sh /app/wisecow.sh

# Make script executable
RUN chmod +x /app/wisecow.sh

# Expose application port
EXPOSE 4499

# Run the script
CMD ["./wisecow.sh"]
