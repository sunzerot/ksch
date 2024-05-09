FROM adoptopenjdk/openjdk11


#VOLUME /tmp

ARG JAR_FILE=/Users/somvley/.jenkins/workspace/ksch/target/ksch-0.0.1-SNAPSHOT.jar
VOLUME /tmp

COPY ${JAR_FILE} app.jar

#EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]

#CMD ["java", "-jar", "your-application.jar"]