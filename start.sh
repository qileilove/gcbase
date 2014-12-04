#!/bin/bash

PWD=$(pwd)

#redis
docker run -d -p 6379:6379 -v $PWD/redis/data:/data twgc/redis:0.3 && \
echo 'start redis'

#solr
docker run -d -p 8982:8982 -v $PWD/solr/data:/etc/solr/data twgc/solr:0.3 && \
echo 'start solr'

#mongodb(cannot mount volumn on mac)
docker run -d -p 27017:27017 twgc/mongodb:0.3 && \
echo 'start mongodb'

#nginx
docker run -d -p 80:80 -p 443:443 -v $PWD/nginx/sites-enabled:/etc/nginx/sites-enabled -v $PWD/nginx/log:/var/log/nginx twgc/nginx:0.3 && \
echo 'start nginx'