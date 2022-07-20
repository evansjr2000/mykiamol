#!/bin/bash -x

echo " "
sleep 1
echo " "

kubectl delete deploy --all 
 
echo " "
sleep 1
echo " "
# and Services:
kubectl delete svc --all 
 
echo " "
sleep 1
echo " "
# check what’s running:
kubectl get all


#Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
