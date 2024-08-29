FROM openjdk:21-jdk

ARG articfact=target/springboot_cicd_project-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app 

COPY ${articfact} app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]