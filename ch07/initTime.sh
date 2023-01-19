#!/bin/bash -x

# run the app, which uses a single config file:
kubectl apply -f timecheck/timecheck.yaml

# check the container logs--there won’t be any:
kubectl logs -l app=timecheck

# check the log file inside the container:
kubectl exec deploy/timecheck -- cat /logs/timecheck.log

# check the config setup:

kubectl exec deploy/timecheck -- cat /config/appsettings.json

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
