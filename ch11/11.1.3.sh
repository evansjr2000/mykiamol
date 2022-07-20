#!/bin/bash -x
# switch to this chapter’s folder in the source code:
cd ~/etc/mykiamol/ch11
 
# remove the original code file:
rm bulletin-board/src/backend/events.js
 
# replace it with an updated version:
cp bulletin-board/src/backend/events-update.js bulletin-board/src/backend/events.js
 
# rebuild the image using Compose:
docker-compose -f bulletin-board/docker-compose.yml build
 
# try to redeploy using kubectl:
kubectl apply -f bulletin-board/kubernetes/
 
# delete the existing Pod to recreate it:
kubectl delete pod -l app=bulletin-board

sleep 5

exit 0
Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
