#!/bin/bash

cd ~/etc/mykiamol/ch13

kubectl apply -f timecheck/

kubectl wait --for=condition=ContainersReady pod -l app=timecheck -n kiamol-ch13-dev

kubectl logs -l app=timecheck --all-containers -n kiamol-ch13-dev --tail 1

kubectl wait --for=condition=ContainersReady pod -l app=timecheck -n kiamol-ch13-test

