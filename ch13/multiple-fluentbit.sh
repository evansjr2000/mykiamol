#!/bin/bash -x

# update the configuration and restart Fluent Bit:
kubectl apply -f fluentbit/update/fluentbit-config-match-multiple.yaml
 
kubectl rollout restart ds/fluent-bit -n kiamol-ch13-logging
 
kubectl wait --for=condition=ContainersReady pod -l app=fluent-bit -n kiamol-ch13-logging
 
# print the last two log lines:
kubectl logs  -l app=fluent-bit -n kiamol-ch13-logging --tail 4

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
