# Utilise une image Java légère
FROM openjdk:17-jdk-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier .jar compilé dans l’image Docker
COPY target/*.jar app.jar

# Point d'entrée
ENTRYPOINT ["java", "-jar", "app.jar"]
