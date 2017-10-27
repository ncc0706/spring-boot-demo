#!/usr/bin/env bash

mvn install -Dmaven.test.skip=true

appName=spring-boot-demo
appVersion=0.0.1.RELEASE

docker build -t aliyun/${appName}:${appVersion} .
imageId=`docker images | grep aliyun/${appName} | grep ${appVersion} | awk  '{print $3}'`

docker tag ${imageId} registry-vpc.cn-hangzhou.aliyuncs.com/fengxin58/${appName}:${appVersion}
docker push registry-vpc.cn-hangzhou.aliyuncs.com/fengxin58/${appName}:${appVersion}