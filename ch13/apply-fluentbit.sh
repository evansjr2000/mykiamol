#!/bin/bash -x

# deploy the DaemonSet and ConfigMap:
kubectl apply -f fluentbit/
 
# wait for Fluent Bit to start up:
kubectl wait --for=condition=ContainersReady pod -l app=fluent-bit -n kiamol-ch13-logging
 
# check the logs of the Fluent Bit Pod:
kubectl logs  -l app=fluent-bit -n kiamol-ch13-logging --tail 2

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
