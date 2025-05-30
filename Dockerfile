
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copy the JAR
COPY target/*.jar app.jar

# Copy the application.properties file
COPY src/main/resources/application.properties ./application.properties

# Run the app with explicit config location
CMD ["java", "-Dspring.config.location=file:./application.properties", "-DwebAllowOthers=true", "-jar", "app.jar"]
