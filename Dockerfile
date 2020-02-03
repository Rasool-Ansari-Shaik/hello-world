FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/HelloWorld-0.0.1-SNAPSHOT.jar hello-world.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hello-world.jar"]