#!/bin/bash -x

export INC=2

echo " "
sleep $INC
echo " "

kubectl apply -f hello-kiamol/
 
echo " "
sleep $INC
echo " "

# confirm the service is publicly available:
kubectl get svc hello-kiamol

echo " "
sleep $INC
echo " "

cowsay "Start a port forward to the app."

kubectl port-forward svc/hello-kiamol 8015:80


