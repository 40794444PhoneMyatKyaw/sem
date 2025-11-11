FROM eclipse-temurin:18
COPY ./target/sem-0.1.0.2-jar-with-dependencies.jar /tmp
WORKDIR /tmp
CMD ["java", "-jar", "sem-0.1.0.2-jar-with-dependencies.jar"]
