#!/bin/sh
registry=registry-internal.cn-hangzhou.aliyuncs.com
namespace=gionee-library
image=gradle
tag=4.7-jdk8
docker build -t $registry/$namespace/$image:$tag .
docker push $registry/$namespace/$image:$tag