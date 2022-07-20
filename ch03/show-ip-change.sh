#!/bin/bash -x

# check the current Pod’s IP address:
kubectl get pod -l app=sleep-2 --output jsonpath='{.items[0].status.podIP}'

echo " "
sleep 3
echo " "

# delete the Pod so the Deployment replaces it:
kubectl delete pods -l app=sleep-2
 
echo " "
sleep 3
echo " "

# check the IP address of the replacement Pod:
kubectl get pod -l app=sleep-2 --output jsonpath='{.items[0].status.podIP}'


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
