# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17-slim

# Set the working directory in the Docker image
WORKDIR /app

# Copy the JAR file into the image
COPY target/*.jar /app/*.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/*.jar"]
