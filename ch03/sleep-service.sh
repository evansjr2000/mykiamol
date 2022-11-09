#!/bin/bash -x

kubectl apply -f sleep/sleep2-service.yaml

kubectl get svc sleep-2

# run a ping command to check connectivity--this will fail:
kubectl exec deploy/sleep-1 -- ping -c 1 sleep-2

exit 0
Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
