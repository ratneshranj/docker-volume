# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk8:alpine-jre

#Author of the Docker File
# MAINTAINER Ratnesh Note: MAINTAINER has been deprecated for LABEL, 
# LABEL is a key value pair 
LABEL "Maintainer"="Ratnesh"

# Refer to Maven build -> finalName
ARG JAR_FILE=target/docker-volume.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/docker-volume.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# mount /opt/app/app.jar
VOLUME "/opt/app/log"

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]