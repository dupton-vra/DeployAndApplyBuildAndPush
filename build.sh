#!/bin/bash
docker rm --force bb
docker rmi bulletinboard:1.$1
docker build --no-cache --tag bulletinboard:1.$1 .
docker run --publish 8000:8080 --detach --name bb bulletinboard:1.$1
sleep 2
curl http://localhost:8000
