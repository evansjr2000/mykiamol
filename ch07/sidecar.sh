#!/bin/bash -x

export INC=5

# add the sidecar logging container:
kubectl apply -f timecheck/timecheck-with-logging.yaml

# wait for the containers to start:
kubectl wait --for=condition=ContainersReady pod -l app=timecheck,version=v3

# check the Pods:
kubectl get pods -l app=timecheck

sleep $INC

# check the containers in the Pod:
kubectl get pod -l app=timecheck -o jsonpath='{.items[0].status.containerStatuses[*].name}'

# now you can see the app logs in the Pod:
kubectl logs -l app=timecheck -c logger

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
