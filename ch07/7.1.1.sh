#!/bin/bash -x

# switch to the chapter folder:
# cd ch07
 
# deploy the Pod spec:
kubectl apply -f sleep/sleep-with-file-reader.yaml
 
# get the detailed Pod information:
kubectl get pod -l app=sleep -o wide
 
# show the container names:
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[*].name}'
 
# check the Pod logs--this will fail:
kubectl logs -l app=sleep

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
