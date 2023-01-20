#!/bin/bash

# cd /etc/mykiamol/ch13

kubectl apply -f timecheck/

kubectl wait --for=condition=ContainersReady pod -l app=timecheck -n kiamol-ch13-dev

kubectl logs -l app=timecheck --all-containers -n kiamol-ch13-dev --tail 1

kubectl wait --for=condition=ContainersReady pod -l app=timecheck -n kiamol-ch13-test

# check those logs:
kubectl logs -l app=timecheck --all-containers -n kiamol-ch13-test --tail 1

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
