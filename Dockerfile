FROM eclipse-temurin:18
COPY ./target/devops.jar /tmp
WORKDIR /tmp
CMD ["java", "-jar", "devops.jar"]

#FROM eclipse-termurin:18
#COPY ./target/devops.jar /tmp
#WORKDIR /tmp
#ENTRYPOINT ["java", "-jar", "devops.jar"]
