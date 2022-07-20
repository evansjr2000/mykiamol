#!/bin/bash -x

# run the sleep Pod, which has access to the node’s disk:
kubectl apply -f sleep/sleep-with-hostPath.yaml
 
# wait for the Pod to be ready:
kubectl wait --for=condition=Ready pod -l app=sleep
 
# create the directory path on the node, which the PV expects:
kubectl exec deploy/sleep -- mkdir -p /node-root/volumes/pv01

