#!/bin/bash -x

# update your repository cache:
helm repo update
 
# verify that Helm can find your chart:
helm search repo web-ping
 
# check the local values file:
cat web-ping-values.yaml
 
# install from the repository using the values file:
helm install -f web-ping-values.yaml wp4 local/web-ping
 
# list all the Pods running the web-ping apps:
kubectl get pod -l app=web-ping -o custom-columns='NAME:.metadata.name,ENV:.spec.containers[0].env[*].value'

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
