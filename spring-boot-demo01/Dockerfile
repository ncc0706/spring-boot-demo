FROM ncc0706/alpine-java8

MAINTAINER niuyuxian <ncc0706@gmail.com>


EXPOSE 4200

ENTRYPOINT ["java","-Dfile.encoding=UTF-8", "-Dspring.profiles.active=${server-profile}","-Dserver.port=${server-port}","-Dspring.application.name=${server-name}",,"-jar","/opt/app.jar"]