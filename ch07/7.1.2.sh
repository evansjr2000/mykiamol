#!/bin/bash -x
#


# deploy the update:
kubectl apply -f sleep/sleep-with-server.yaml
 
# check the Pod status:
kubectl get pods -l app=sleep
 
# list the container names in the new Pod:
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[*].name}'
 
# make a network call between the containers:
kubectl exec deploy/sleep -c sleep -- wget -q -O - localhost:8080
 
# check the server container logs:
kubectl logs -l app=sleep -c server

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
