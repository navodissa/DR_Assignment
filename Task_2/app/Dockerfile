FROM openjdk:8-jre-slim

WORKDIR /app
COPY ./target/helloworld-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]