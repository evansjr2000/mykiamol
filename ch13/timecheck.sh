#!/bin/bash




myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi

docker login docker.io/evansjr

# cd /etc/mykiamol/ch13

$MYCMD apply -f timecheck/

$MYCMD wait --for=condition=ContainersReady pod -l app=timecheck -n kiamol-ch13-dev

$MYCMD logs -l app=timecheck --all-containers -n kiamol-ch13-dev --tail 1

$MYCMD wait --for=condition=ContainersReady pod -l app=timecheck -n kiamol-ch13-test

# check those logs:
$MYCMD logs -l app=timecheck --all-containers -n kiamol-ch13-test --tail 1

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
