#!/bin/bash -x

echo " "
sleep 3
echo " "

# run the DNS lookup tool to resolve the Service name:
kubectl exec deploy/sleep-1 -- sh -c 'nslookup numbers-api | tail -n 5'


#Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
