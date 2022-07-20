#!/bin/bash -x

# update the data pipeline configuration files:
kubectl apply -f fluentbit/update/fluentbit-config-match.yaml
 
# restart the DaemonSet so a new Pod gets the changed configuration:
kubectl rollout restart ds/fluent-bit -n kiamol-ch13-logging
 
# wait for the new logging Pod:
kubectl wait --for=condition=ContainersReady pod -l app=fluent-bit -n kiamol-ch13-logging
 
# print the last log entry:
kubectl logs  -l app=fluent-bit -n kiamol-ch13-logging --tail 1

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.

