#!/bin/sh
registry=registry-internal.cn-hangzhou.aliyuncs.com
namespace=gionee-library
image=k8s-kubectl
tag=1.9.7
docker build -t $registry/$namespace/$image:$tag .
docker push $registry/$namespace/$image:$tag