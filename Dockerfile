FROM adoptopenjdk/openjdk11


#VOLUME /tmp

ARG JAR_FILE=/Users/somvley/.jenkins/workspace/ksch/target/simple-maven-project-with-tests-1.0-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

#EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]

#CMD ["java", "-jar", "your-application.jar"]