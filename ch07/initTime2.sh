#!/bin/bash -x

# apply the ConfigMap and the new Deployment spec:
kubectl apply -f timecheck/timecheck-configMap.yaml -f timecheck/timecheck-with-config.yaml

# wait for the containers to start:
kubectl wait --for=condition=ContainersReady pod -l app=timecheck,version=v2

# check the log file in the new app container:
kubectl exec deploy/timecheck -- cat /logs/timecheck.log

# see the config file built by the init container:
kubectl exec deploy/timecheck -- cat /config/appsettings.json

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
