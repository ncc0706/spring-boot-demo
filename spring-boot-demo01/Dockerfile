FROM ncc0706/alpine-java8

MAINTAINER niuyuxian <ncc0706@gmail.com>

ENV APP_VERSION 0.0.1-SNAPSHOT
ENV APP_NAME spring-boot-demo01


EXPOSE 4200
COPY target/${APP_NAME}-${APP_VERSION}.jar /opt/app.jar
ENTRYPOINT ["java","-Dfile.encoding=UTF-8", "-Dspring.profiles.active=${server-profile}","-Dserver.port=${server-port}","-Dspring.application.name=${server-name}",,"-jar","/opt/app.jar"]