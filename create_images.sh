#!/bin/sh
  
docker build -t 192.168.1.1/ubuntu:base 00-base/
docker push 192.168.1.1/ubuntu:base

docker build -t 192.168.1.1/disk-wipe:v1 01-disk-wipe/ --build-arg REGISTRY=192.168.1.1
docker push 192.168.1.1/disk-wipe:v1

docker build -t 192.168.1.1/install-root-fs:v2 03-install-root-fs/ --build-arg REGISTRY=192.168.1.1
docker push 192.168.1.1/install-root-fs:v2

