#!/bin/sh
registry=registry-internal.cn-hangzhou.aliyuncs.com
namespace=gionee-library
docker build -t $registry/$namespace/java:8-jdk .