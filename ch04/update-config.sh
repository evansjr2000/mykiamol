#!/bin/bash -x

# TRY IT NOW The new Pod spec references the ConfigMap, so that needs to be created
# first by applying the YAML, then we update the to-do app Deployment.

# create the JSON ConfigMap:
kubectl apply -f todo-list/configMaps/todo-web-config-dev.yaml
 
# update the app to use the ConfigMap:
kubectl apply -f todo-list/todo-web-dev.yaml
 
echo "Refresh your web browser at the /config page for your Service."


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
