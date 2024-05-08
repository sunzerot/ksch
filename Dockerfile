FROM openjdk:11-jre-slim

COPY /Users/somvley/.jenkins/workspace/ksch/target/simple-maven-project-with-tests-1.0-SNAPSHOT.jar /app/your-application.jar

WORKDIR /app

CMD ["java", "-jar", "your-application.jar"]