#!/bin/bash -x

cd /etc/kiamol/ch04 

kubectl create configmap sleep-config-env-file2 --from-env-file=sleep/ch04.env
kubectl get cm sleep-config-env-file2
kubectl apply -f sleep/sleep-with-configMap-env-file.yaml
kubectl exec deploy/sleep -- sh -c 'printenv | grep "^KIAMOL"'
