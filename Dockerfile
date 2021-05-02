#FROM openjdk:11-jdk-buster
#
#WORKDIR /app
#COPY ./target/springboot-app-docker-image-0.0.1-SNAPSHOT.jar /app
#
#EXPOSE 8081
#
#CMD ["java", "-jar","-Dspring.profiles.active=dev", "springboot-app-docker-image-0.0.1-SNAPSHOT.jar"]

FROM openjdk:11-jdk-buster
VOLUME /app
ADD target/springboot-app-docker-image-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","/app.jar"]
