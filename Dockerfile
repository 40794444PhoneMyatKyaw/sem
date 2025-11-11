FROM eclipse-temurin:18
COPY ./target/devops-0.1.0.4.jar /tmp
WORKDIR /tmp
CMD ["java", "-jar", "devops-0.1.0.4.jar"]
