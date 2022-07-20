#!/bin/bash -x

# update the Pod spec:
kubectl apply -f sleep/sleep-with-hostPath-subPath.yaml
 
# check the Pod logs on the node:
kubectl exec deploy/sleep -- sh -c 'ls /pod-logs | grep _pi-'
 
# check the container logs:
kubectl exec deploy/sleep -- sh -c 'ls /container-logs | grep nginx'


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
