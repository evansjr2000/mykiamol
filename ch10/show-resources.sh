#!/bin/bash -x
# show the details of the Deployment:
kubectl get deploy -l app.kubernetes.io/instance=ch10-vweb --show-labels
 
# update the release to increase the replica count:
helm upgrade --set servicePort=8010 --set replicaCount=3 ch10-vweb kiamol/vweb --version 1.0.0
 
# check the ReplicaSet:
kubectl get rs -l app.kubernetes.io/instance=ch10-vweb
 
# get the URL for the app:
kubectl get svc ch10-vweb -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8010'
 
# browse to the app URL

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
