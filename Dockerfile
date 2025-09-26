FROM openjdk:latest
WORKDIR /app
COPY ./target/*-jar-with-dependencies.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
