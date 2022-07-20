#!/bin/bash -x

 
# create a PVC that doesn’t match any available PVs:
kubectl apply -f todo-list/postgres-persistentVolumeClaim-too-big.yaml
 
# check claims:
kubectl get pvc
