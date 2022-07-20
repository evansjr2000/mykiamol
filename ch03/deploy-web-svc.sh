#!/bin/bash -x


# run the website and API as separate Deployments: 
kubectl apply -f numbers/api.yaml -f numbers/web.yaml
 
echo " "
sleep 3
echo " "

# wait for the Pod to be ready:
kubectl wait --for=condition=Ready pod -l app=numbers-web

echo " "
sleep 3
echo " "

# deploy the Service from listing 3.2:
kubectl apply -f numbers/api-service.yaml
 
echo " "
sleep 3
echo " "

# check the Service details:
kubectl get svc numbers-api

echo " "
sleep 3
echo " "

# forward a port to the web app:
kubectl port-forward deploy/numbers-web 8080:80
 
echo " "
sleep 3
echo " "

# browse to the site at http://localhost:8080 and click the Go button
 
echo "Hit ctrl-c to exit the port forward."
sleep 200
echo " "

# exit the port forward:
# ctrl-c


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
