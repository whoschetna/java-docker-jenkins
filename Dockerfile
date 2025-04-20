# Use the official Ubuntu base image
FROM ubuntu:latest

# Update Ubuntu packages and install basic utilities
RUN apt-get update && \
    apt-get install -y curl vim nano

# Run basic commands during build (just for logs, optional)
RUN echo "Listing root directory:" && ls / && \
    echo "Current user is:" && whoami

# Set default command to bash so the container stays interactive
CMD ["/bin/bash"]
