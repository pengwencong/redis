#!/bin/bash

docker pull redis:latest

git clone git@github.com:pengwencong/redis.git

chmod 777 -R redis

docker run -it --name redis --net host -p 6379 -p 16379 -v /home/redis/conf/redis.conf:/usr/local/etc/redis/redis.conf -v /home/redis/data:/data -d redis:latest redis-server /usr/local/etc/redis/redis.conf
