#!/bin/bash -x

cd /etc/kiamol/ch05

kubectl apply -f todo-list/postgres-persistentVolumeClaim-too-big.yaml
kubectl get pvc
