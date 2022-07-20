#!/bin/bash -x
# switch to this chapter’s folder in the source code:
cd ~/etc/mykiamol/ch11
 
# deploy in kubernetes
kubectl apply -f bulletin-board/kubernetes
 
# get the new URL:
kubectl get svc bulletin-board -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8011'

# browse to the app at http://localhost:8010/
sleep 5
exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
