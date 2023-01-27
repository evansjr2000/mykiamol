#!/bin/bash -x

export INC=2

echo " "
sleep $INC
echo " "

kubectl apply -f hello-kiamol/ingress/localhost.yaml
 
echo " "
sleep $INC
echo " "

# confirm the service is publicly available:
kubectl get ingress

echo " "
sleep $INC
echo " "
# browse to the URL

cowsay  "browse to the URL"
sleep $INC
echo " "

exit 0

