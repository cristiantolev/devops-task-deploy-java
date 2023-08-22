# Stage 1: Build the Java application
FROM gradle:latest AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the application source code and Gradle configuration files to the container
COPY /App/build.gradle /app/
COPY /App/settings.gradle /app/
COPY /App/src /app/src/

# Build the application using Gradle
RUN gradle build


# Stage 2: Run the Java application
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the built application from the 'builder' stage to the current stage
COPY --from=builder /app/build/libs /app/

EXPOSE 8080
# Set the entry point to run the Java application
ENTRYPOINT ["java", "-jar", "/app/rest-service-0.0.1-SNAPSHOT.jar"]