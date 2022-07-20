#!/bin/bash -x

cd /kiamol/ch04 

kubectl create configmap sleep-config-literal --from-literal=kiamol.section='4.1'
kubectl get cm sleep-config-literal
kubectl describe cm sleep-config-literal
sleep 3

kubectl apply -f sleep/sleep-with-configMap-env.yaml
kubectl exec deploy/sleep -- sh -c 'printenv | grep "^KIAMOL"'
