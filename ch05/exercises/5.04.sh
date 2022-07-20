#!/bin/bash -x

export INC=15

cd /etc/kiamol/ch05

kubectl delete pod -l app=pi-proxy

sleep $INC

kubectl exec deploy/pi-proxy -- ls -l /data/nginx/cache
