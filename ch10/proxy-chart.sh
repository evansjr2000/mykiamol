#!/bin/bash -x
# install a release from the local chart folder:
helm install --set upstreamToProxy=ch10-vweb:8010 vweb-proxy proxy/
 
# get the URL for the new proxy service:
kubectl get svc vweb-proxy-proxy -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8080'
 
# browse to the URL

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
