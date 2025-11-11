FROM eclipse-temurin:18
COPY ./target/devops-jar-with-dependencies.jar /tmp
WORKDIR /tmp
CMD ["java", "-jar", "devops-jar-with-dependencies.jar"]
