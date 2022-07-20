#!/bin/bash -x

echo " "
sleep 3
echo " "

# delete the current API Service:
kubectl delete svc numbers-api
 
echo " "
sleep 3
echo " "

# deploy a new ExternalName Service:
kubectl apply -f numbers-services/api-service-externalName.yaml
 
echo " "
sleep 3
echo " "

# check the Service configuration:
kubectl get svc numbers-api

echo " "
sleep 3
echo " "

echo "Refresh the website in your browser and test with the Go button."


#Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
