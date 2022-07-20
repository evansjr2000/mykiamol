#!/bin/bash -x

# create two Deployments, which each run one Pod:
kubectl apply -f sleep/sleep1.yaml -f sleep/sleep2.yaml

echo " "
sleep 3
echo " "

# wait for the Pod to be ready:
kubectl wait --for=condition=Ready pod -l app=sleep-2
 
echo " "
sleep 3
echo " "

# check the IP address of the second Pod:
kubectl get pod -l app=sleep-2 --output jsonpath='{.items[0].status.podIP}'
 
echo " "
sleep 3
echo " "

# use that address to ping the second Pod from the first:
kubectl exec deploy/sleep-1 -- ping -c 2 $(kubectl get pod -l app=sleep-2 --output jsonpath='{.items[0].status.podIP}')

exit 0

# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
