# Stage 1 - Build
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2 - Run
FROM eclipse-temurin:17
WORKDIR /app
COPY --from=builder /app/target/app.jar app.jar
CMD ["java", "-jar", "app.jar"]

