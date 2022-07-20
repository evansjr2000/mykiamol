#!/bin/bash 

cd /etc/kiamol/ch04 

kubectl create secret generic sleep-secret-literal --from-literal=secret=shh...
kubectl describe secret sleep-secret-literal

sleep 3


echo -n "base64 encoded secret: "
kubectl get secret sleep-secret-literal -o jsonpath='{.data.secret}'
echo " "
echo -n "un-encoded secret: "
kubectl get secret sleep-secret-literal -o jsonpath='{.data.secret}' | base64 -d -o /tmp/junk.txt
echo " " >> /tmp/junk.txt
cat /tmp/junk.txt

echo " "

