#!/bin/sh
registry=registry-internal.cn-hangzhou.aliyuncs.com
namespace=gionee-library
image=docker
tag=18.04.0-ce
docker build -t $registry/$namespace/$image:$tag .
docker tag $registry/$namespace/$image:$tag docker push $registry/$namespace/$image:latest
docker push $registry/$namespace/$image:$tag
docker push $registry/$namespace/$image:latest