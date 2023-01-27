#!/bin/bash -x

# add the new domain name--on Windows:
# ./add-to-hosts.ps1 vweb.kiamol.local ingress-nginx

# OR on Linux/macOS:
./add-to-hosts.sh vweb.kiamol.local ingress-nginx

# deploy the app, Service, and Ingress:
kubectl apply -f vweb/

# confirm the Ingress domain:
kubectl get ingress

cowsay "\ browse to http://vweb.kiamol.local \n
# and http://vweb.kiamol.local/v1”

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
