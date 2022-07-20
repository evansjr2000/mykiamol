#!/bin/bash -x

# deploy the Secret:

echo " "

cat todo-list/secrets/todo-db-secret-test.yaml

echo " "

sleep 25

kubectl apply -f todo-list/secrets/todo-db-secret-test.yaml

sleep 10

echo " " 

# check the data is encoded:
kubectl get secret todo-db-secret-test -o jsonpath='{.data.POSTGRES_PASSWORD}'
  
sleep 10

echo " " 

# see what annotations are stored:
kubectl get secret todo-db-secret-test -o jsonpath='{.metadata.annotations}'

echo " "

date.sh

# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
