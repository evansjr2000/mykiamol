#!/bin/bash -x

export INC=5

# add the official Helm repository:
#helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo add stable https://charts.helm.sh/stable

sleep $INC
 
# install ChartMuseum--the repo flag fetches details from

# the repository so you don’t need to update your local cache:
helm install --set service.type=LoadBalancer --set service.externalPort=8008 \
                  --set env.open.DISABLE_API=false repo stable/chartmuseum --version 2.13.0 --wait
 
sleep $INC
# get the URL for your local ChartMuseum app:
kubectl get svc repo-chartmuseum -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8008'
 
sleep $INC
# add it as a repository called local:
helm repo add local $(kubectl get svc repo-chartmuseum -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8008')

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.

