#!/bin/bash -x
# print the YAML Helm would deploy with default values:
helm install pi1 ./pi --dry-run
 
# install with custom settings to add the proxy:
helm install --set serviceType=ClusterIP --set proxy.enabled=true pi2 ./pi
 
# get the URL for the proxied app:
kubectl get svc pi2-proxy -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8030'
 
# browse to it

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
