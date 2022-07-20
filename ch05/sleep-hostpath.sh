#!/bin/bash -x

# run a Pod with a volume mount to the host:
kubectl apply -f sleep/sleep-with-hostPath.yaml
 
# check the log files inside the container:
kubectl exec deploy/sleep -- ls -l /var/log
 
# check the logs on the node using the volume:
kubectl exec deploy/sleep -- ls -l /node-root/var/log
 
# check the container user:
kubectl exec deploy/sleep -- whoami


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
