#!/bin/bash -x
# switch to the chapter’s source:
# cd ch19
 
# print the taints already on the nodes:
kubectl get nodes -o=jsonpath='{range .items[*]}{.metadata.name}{.spec.taints[*].key}{end}'

echo " "

sleep 5

echo " "


# deploy the sleep app:
kubectl apply -f sleep/sleep.yaml
 
echo " "

sleep 5

echo " "


# add a taint to all nodes:
kubectl taint nodes --all kiamol-disk=hdd:NoSchedule
 
echo " "

sleep 5

echo " "

# confirm that the sleep Pod is still running:
kubectl get pods -l app=sleep

