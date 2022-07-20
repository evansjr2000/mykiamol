#!/bin/bash -x

#imgpkg copy -i fluent/fluent-bit --to-tar=./ch13-kiamol-fluentbit.tar
#imgpkg copy -i kiamol/ch13-kibana --to-tar=./kiamol-ch13-kibana.tar
#imgpkg copy -i kiamol/ch13-elasticsearch --to-tar=./kiamol-ch13-elasticsearch.tar
#imgpkg copy -i kiamol/ch03-numbers-web --to-tar=./kiamol-ch03-numbers-web.tar
#imgpkg copy -i kiamol/ch03-numbers-web:v2 --to-tar=./kiamol-ch03-numbers-web-v2.tar
#imgpkg copy -i kiamol/ch03-numbers-api --to-tar=./kiamol-ch03-numbers-api.tar
#imgpkg copy -i kiamol/ch02-whoami --to-tar=./kiamol-ch02-whoami 
#imgpkg copy -i nginx:latest --to-tar=./nginx-latest.tar
#imgpkg copy -i busybox:latest --to-tar=./busybox-latest.tar
#imgpkg copy -i evansjr/myhttpbin:latest --to-tar=./jre-myhttpbin-latest.tar

imgpkg copy -i ghcr.io/evansjr2000/contour:latest --to-tar=./jre-contour-latest.tar
