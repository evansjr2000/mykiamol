#!/bin/bash -x

export INC=5


# apply the update:
kubectl apply -f timecheck/timecheck-good-citizen.yaml

# wait for all the containers to be ready:
kubectl wait --for=condition=ContainersReady pod -l app=timecheck,version=v4

# check the running containers:
kubectl get pod -l app=timecheck -o jsonpath='{.items[0].status.containerStatuses[*].name}'

# use the sleep container to check the timecheck app health:
kubectl exec deploy/sleep -c sleep -- wget -q -O - http://timecheck:8080

sleep $INC

# check its metrics:
kubectl exec deploy/sleep -c sleep -- wget -q -O - http://timecheck:8081

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
