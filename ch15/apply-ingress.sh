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

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.


 
# start a port-forward to the app:
kubectl port-forward svc/hello-kiamol 8015:80
 
# browse to http://localhost:8015
# then press Ctrl-C/Cmd-C to exit the port-forward”

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
