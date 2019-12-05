#!/bin/sh

registry=registry-internal.cn-hangzhou.aliyuncs.com
namespace=gionee-library
image=jenkins-slave
tag=1.0.1
#docker build -t $registry/$namespace/$image:$tag .

docker pull jenkinsci/jnlp-slave:3.19-1-alpine
docker tag jenkinsci/jnlp-slave:3.19-1-alpine $registry/$namespace/$image:$tag

docker push $registry/$namespace/$image:$tag