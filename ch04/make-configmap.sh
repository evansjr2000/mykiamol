#!/bin/bash -x

# load an environment variable into a new ConfigMap:
kubectl create configmap sleep-config-env-file --from-env-file=sleep/ch04.env
 
sleep 2
# check the details of the ConfigMap:
kubectl get cm sleep-config-env-file
 
sleep 2
# update the Pod to use the new ConfigMap:
kubectl apply -f sleep/sleep-with-configMap-env-file.yaml

sleep 2
# check the values in the container:
kubectl exec deploy/sleep -- sh -c 'printenv | grep "^KIAMOL"'


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
