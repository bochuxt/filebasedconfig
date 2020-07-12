#!/bin/bash
docker rm /proxy-eds-cds-lds-filebased && \
#docker run --name=proxy-eds-filebased -d     -p 9901:9901     -p 80:10000     -v `pwd`:/etc/envoy envoyproxy/envoy-dev:latest
 
docker run --name=proxy-eds-cds-lds-filebased -d     -p 9902:9901     -p 88:10000     -v `pwd`:/etc/envoy     -v `pwd`/envoy1.yaml:/etc/envoy/envoy.yaml     envoyproxy/envoy-dev:latest
   

#
#
docker run -d -p 81:80 katacoda/docker-http-server; docker run -d -p 82:80 katacoda/docker-http-server;

docker run -d -p 83:80 katacoda/docker-http-server; docker run -d -p 84:80 katacoda/docker-http-server;
 #mv eds.conf tmp; mv tmp eds.conf
mv cds.conf tmp; mv tmp cds.conf; mv lds.conf tmp; mv tmp lds.conf