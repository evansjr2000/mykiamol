#!/bin/bash -x

# delete deployments, PVCs, PVs, and Services:
kubectl delete -f pi/v1 -f sleep/ -f storageClass/ -f todo-list/web -f todo-list/postgres -f todo-list/
 
# delete the custom storage class:
kubectl delete sc kiamol
