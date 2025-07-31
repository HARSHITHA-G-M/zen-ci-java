# Stage 1 - Build the app
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2 - Run the app
FROM eclipse-temurin:17
WORKDIR /app
COPY --from=builder /app/target/zen-ci-java-app-1.0.0.jar app.jar
CMD ["java", "-jar", "app.jar"]

