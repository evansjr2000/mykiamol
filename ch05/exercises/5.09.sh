#!/bin/bash -x

cd /etc/kiamol/ch05

kubectl apply -f todo-list/postgres-persistentVolumeClaim.yaml
kubectl get pvc
kubectl get pv
