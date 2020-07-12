#!/bin/bash
docker rm /proxy-eds-filebased && \
docker run --name=proxy-eds-filebased -d     -p 9901:9901     -p 80:10000     -v `pwd`:/etc/envoy envoyproxy/envoy-dev:latest
 

#
docker run -d -p 81:80 katacoda/docker-http-server; docker run -d -p 82:80 katacoda/docker-http-server;

 mv eds.conf tmp; mv tmp eds.conf