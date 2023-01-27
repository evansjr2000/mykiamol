#!/bin/bash -x

export INC=5

echo " "
sleep $INC
echo " "

# create the Deployment and Service for the Nginx ingress controller:
kubectl apply -f ingress-nginx/
 
echo " "
sleep $INC
echo " "

# confirm the service is publicly available:
kubectl get svc -n kiamol-ingress-nginx

echo " "
sleep $INC
echo " "

# get the URL for the proxy:
kubectl get svc ingress-nginx-controller  \
	-o jsonpath='http://{.status.loadBalancer.ingress[0].*}' -n kiamol-ingress-nginx
 
# browse to the URL

echo "browse to the URL"
sleep $INC
echo " "

exit 0

