#!/bin/bash -x

echo " "
sleep 3
echo " "

# deploy the LoadBalancer Service for the website--if your firewall checks 
# that you want to allow traffic, then it is OK to say yes:
kubectl apply -f numbers/web-service.yaml
 
echo " "
sleep 3
echo " "

# check the details of the Service:
kubectl get svc numbers-web
 
echo " "
sleep 3
echo " "

# use formatting to get the app URL from the EXTERNAL-IP field:
kubectl get svc numbers-web -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8080'

# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.

