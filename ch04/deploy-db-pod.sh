#!/bin/bash -x

# deploy the YAML from listing 4.13
kubectl apply -f todo-list/todo-db-test.yaml
 
# check the database logs:
kubectl logs -l app=todo-db --tail 1
 
# verify the password file permissions:
kubectl exec deploy/todo-db -- sh -c 'ls -l $(readlink -f /secrets/postgres_password)'


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
