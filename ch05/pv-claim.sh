#!/bin/bash -x

 
# create a PVC that will bind to the PV:
kubectl apply -f todo-list/postgres-persistentVolumeClaim.yaml
 
# check PVCs:
kubectl get pvc
 
# check PVs:
kubectl get pv
