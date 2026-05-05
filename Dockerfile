# Imagen base con Java 21 (coherente con tu pom.xml)
FROM eclipse-temurin:21-jdk-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el JAR generado por Maven
COPY target/*.jar app.jar

# Exponer puerto de Spring Boot
EXPOSE 8080

# Ejecutar la aplicación
ENTRYPOINT ["java","-jar","app.jar"]
