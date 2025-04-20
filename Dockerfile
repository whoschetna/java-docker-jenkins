# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Java
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Set the working directory
WORKDIR /app

# Copy the HelloWorld.java file into the container
COPY HelloWorld.java /app

# Compile the Java program
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
