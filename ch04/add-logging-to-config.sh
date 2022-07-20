#!/bin/bash -x



# check the current app logs:
kubectl logs -l app=todo-web
 
# deploy the updated ConfigMap:
kubectl apply -f todo-list/configMaps/todo-web-config-dev-with-logging.yaml
 
# wait for the config change to make it to the Pod:
sleep 12
 
# check the new setting:
kubectl exec deploy/todo-web -- sh -c 'ls -l /app/config/*.json'
 
# load a few pages from the site at your Service IP address
sleep 25

# check the logs again:
kubectl logs -l app=todo-web”

# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 

