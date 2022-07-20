#!/bin/bash -x
# switch to this chapter’s folder in the source code:
# This sets up Gogs in K8s.

export INC=5

cd ~/etc/mykiamol/ch11


# deploy the Git server:
kubectl apply -f infrastructure/gogs.yaml
 
# wait for it to spin up:

# browse and sign in with the same kiamol credentials

kubectl wait --for=condition=ContainersReady pod -l app=gogs

sleep $INC

# add your local Git server to the book’s repository--
# this grabs the URL from the Service to use as the target:
git remote add gogs $(kubectl get svc gogs -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:3000/kiamol/kiamol.git')
 
# push the code to your server--authenticate with 
# username kiamol and password kiamol 
git push gogs
 
# find the server URL:
kubectl get svc gogs -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:3000'
 
# browse and sign in with the same kiamol credentials


sleep $INC

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
