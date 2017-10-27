FROM ncc0706/alpine-java8

MAINTAINER niuyuxian <ncc0706@gmail.com>

ENV APP_VERSION 0.0.1-SNAPSHOT
ENV APP_NAME spring-boot-demo01


ENV SERVER_PROFILE dev
ENV SERVER_PORT 600001
ENV SERVER_NAME hello-spring-boot

EXPOSE 4200
COPY target/${APP_NAME}-${APP_VERSION}.jar /opt/app.jar
ENTRYPOINT ["-Dspring.profiles.active=${SERVER_PROFILE}","-Dserver.port=${SERVER_PORT}","-Dspring.application.name=${SERVER_NAME}","-jar","/opt/app.jar"]