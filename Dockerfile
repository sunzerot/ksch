FROM openjdk:11-jre-slim

COPY ${JAR_FILE} /app/your-application.jar

WORKDIR /app

CMD ["java", "-jar", "your-application.jar"]