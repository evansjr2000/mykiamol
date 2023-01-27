#!/bin/bash -x

myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi


# deploy the DaemonSet and ConfigMap:
$MYCMD apply -f fluentbit/
 
# wait for Fluent Bit to start up:
$MYCMD wait --for=condition=ContainersReady pod -l app=fluent-bit -n kiamol-ch13-logging
 
# check the logs of the Fluent Bit Pod:
$MYCMD logs  -l app=fluent-bit -n kiamol-ch13-logging --tail 2

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.

