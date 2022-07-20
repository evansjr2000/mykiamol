#!/bin/bash -x


kubectl get all

# delete all the resources in all the files in all the directories:
kubectl delete -f sleep/
kubectl delete -f todo-list/
kubectl delete -f todo-list/configMaps/
kubectl delete -f todo-list/secrets/

kubectl get all


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 

