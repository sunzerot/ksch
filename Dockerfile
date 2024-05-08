FROM openjdk:11-jre-slim

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz \

COPY ${JAR_FILE} /app/your-application.jar

WORKDIR /app

CMD ["java", "-jar", "your-application.jar"]