#!/bin/bash -x

# create the Elasticsearch deployment, and wait for the Pod:
kubectl apply -f elasticsearch/
 
kubectl wait --for=condition=ContainersReady pod -l app=elasticsearch -n kiamol-ch13-logging
sleep 1

# create the Kibana deployment, and wait for it to start:
kubectl apply -f kibana/
 
kubectl wait --for=condition=ContainersReady pod -l app=kibana -n kiamol-ch13-logging
sleep 1

# get the URL for Kibana:
kubectl get svc kibana -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:5601' -n kiamol-ch13-logging

#Excerpt From
#Learn Kubernetes in a Month of Lunches
#Elton Stoneman
#This material may be protected by copyright.


