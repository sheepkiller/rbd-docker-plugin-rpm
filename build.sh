#!/bin/sh
mkdir r
docker build -t sheepkiller/build-rpm .
docker run --rm -it -v ${PWD}/r:/root/rpmbuild sheepkiller/build-rpm

