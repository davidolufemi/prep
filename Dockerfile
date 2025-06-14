FROM maven:3.9.9-eclipse-temurin-17

WORKDIR /app

COPY src ./src

COPY pom.xml .

RUN mvn clean package -DskipTests

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "target/spring-demo-1.0.0.jar"]