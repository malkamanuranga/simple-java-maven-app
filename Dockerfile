# Use Java 17 (Matching your Maven build)
FROM eclipse-temurin:17-jre-alpine

# Create a place for the app
WORKDIR /app

# Copy the JAR from the Jenkins 'target' folder into the Docker image
COPY target/my-app-1.0-SNAPSHOT.jar app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
