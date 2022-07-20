#!/bin/bash -x

cd /etc/kiamol/ch05

kubectl get storageclass
chmod +x cloneDefaultStorageClass.sh  ./cloneDefaultStorageClass.sh
kubectl get sc
