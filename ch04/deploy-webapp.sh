#!/bin/bash -x

# deploy the app with a Service to access it:
kubectl apply -f todo-list/todo-web.yaml
 
# wait for the Pod to be ready:
kubectl wait --for=condition=Ready pod -l app=todo-web
 
# get the address of the app:
kubectl get svc todo-web -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8080'
 
# browse to the app and have a play around
# then try browsing to /config
 
# check the application logs:
kubectl logs -l app=todo-web


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
