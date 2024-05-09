#FROM adoptopenjdk/openjdk11
#
#
##VOLUME /tmp
#
##ARG JAR_FILE=/Users/somvley/.jenkins/workspace/ksch/target/ksch-0.0.1-SNAPSHOT.jar
#VOLUME /tmp
#
#COPY /Users/somvley/.jenkins/workspace/ksch/target/ksch-0.0.1-SNAPSHOT.jar app.jar
#
##EXPOSE 8080
#
#ENTRYPOINT ["java","-jar","/app.jar"]
#
##CMD ["java", "-jar", "your-application.jar"]


FROM openjdk:11-jre-slim

# 작업 디렉토리 설정
WORKDIR /app

# 호스트의 JAR 파일을 컨테이너로 복사
COPY /Users/somvley/.jenkins/workspace/ksch/target/ksch-0.0.1-SNAPSHOT.jar /app

# 어플리케이션 실행
CMD ["java", "-jar", "ksch-0.0.1-SNAPSHOT.jar"]