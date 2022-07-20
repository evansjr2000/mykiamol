#!/bin/bash -x
# switch to this chapter’s folder in the source code:
cd ~/etc/mykiamol/ch11
 
# build the app:
docker-compose -f bulletin-board/docker-compose.yml build
 
# run the app:
docker-compose -f bulletin-board/docker-compose.yml up -d
 
# check the running  containers:
docker ps
 
# browse to the app at http://localhost:8010/
sleep 5
exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
