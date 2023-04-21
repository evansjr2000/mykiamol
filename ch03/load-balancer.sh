#!/bin/bash -x

export INC=5

# deploy the LoadBalancer Service for the website--if your firewall checks
# that you want to allow traffic, then it is OK to say yes:

# Made change from book for debugging purposes.

kubectl apply -f numbers/web-service2.yaml

sleep $INC

# check the details of the Service:
kubectl get svc numbers-web

# use formatting to get the app URL from the EXTERNAL-IP field:
kubectl get svc numbers-web -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8080'

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
