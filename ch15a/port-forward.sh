#!/bin/bash -x

export INC=5

# deploy the web app:
kubectl apply -f hello-kiamol/

echo " "
sleep $INC
echo " "

# confirm the Service is internal to the cluster:
kubectl get svc hello-kiamol

echo " "
sleep $INC
echo " "
 
# start a port-forward to the app:
kubectl port-forward svc/hello-kiamol 8015:80
 
# browse to http://localhost:8015
# then press Ctrl-C/Cmd-C to exit the port-forward”

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
