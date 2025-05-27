FROM maven:3.9.1-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY --chown=maven:maven . /app
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
