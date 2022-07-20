#!/bin/bash -x


# show the endpoints for the sleep-2 Service:
kubectl get endpoints sleep-2
 
echo " "
sleep 3
echo " "

# delete the Pod:
kubectl delete pods -l app=sleep-2
 
echo " "
sleep 3
echo " "

# check the endpoint is updated with the IP of the replacement Pod:
kubectl get endpoints sleep-2
 
echo " "
sleep 3
echo " "

# delete the whole Deployment:
kubectl delete deploy sleep-2
 
echo " "
sleep 3
echo " "

# check the endpoint still exists, with no IP addresses:
kubectl get endpoints sleep-2

# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
