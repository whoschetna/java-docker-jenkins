HEAD
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

# Pull the OpenJDK base image
FROM openjdk:17-slim

# Set working directory inside container
WORKDIR /app

# Copy Java file into the container
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
f8b4591 (Initial commit for Java Docker Jenkins project)
