FROM maven:3.8.8-eclipse-temurin-17

RUN groupadd -r appgroup && useradd -r -g appgroup appuser
USER appuser
WORKDIR /usr/src/app
COPY . .
RUN chown -R appuser:appgroup .
RUN mvn clean install
CMD ["java", "-cp", "target/docker_maven-1.0-SNAPSHOT.jar", "App"]
    
