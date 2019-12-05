#!/bin/sh
registry=registry-internal.cn-hangzhou.aliyuncs.com
namespace=gionee-library
image=k8s-helm
tag=2.9.0
docker build -t $registry/$namespace/$image:$tag .
docker push $registry/$namespace/$image:$tag