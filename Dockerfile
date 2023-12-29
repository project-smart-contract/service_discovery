
# Fetching latest version of Java
FROM openjdk:20-jdk-slim

# Setting up work directory
WORKDIR /app

# Copy the jar file into our app
COPY ./target/service_discovery-0.0.1-SNAPSHOT.jar /app

# Exposing port 8081
EXPOSE 8081

# Starting the application
CMD ["java" , "-jar" , "service_discovery-0.0.1-SNAPSHOT.jar"]



