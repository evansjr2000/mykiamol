#!/bin/bash -x

 
# deploy the Pi application:
kubectl apply -f pi/v1/ 

# wait for the web Pod to be ready:
kubectl wait --for=condition=Ready pod -l app=pi-web

# find the app URL from your LoadBalancer:
kubectl get svc pi-proxy -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8080/?dp=30000'
 
# browse to the URL, wait for the response then refresh the page
 
# check the cache in the proxy
kubectl exec deploy/pi-proxy -- ls -l /data/nginx/cache

# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
