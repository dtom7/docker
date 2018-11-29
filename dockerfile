## docker build -f dockerfile -t docker.jar --rm .
## docker run -d -p 8080:8080 --name docker.jar docker.jar

# start with openjdk:8-jre base image
FROM openjdk:8-jre-alpine

MAINTAINER dony.thomas@bakerhughes.com

# copy docker.jar from host machine to container
COPY ./target/docker.jar /opt/spring-boot/target/

# expose port: 8080 to host
EXPOSE 8080

# run docker.jar
ENTRYPOINT ["java","-jar","/opt/spring-boot/target/docker.jar"]
