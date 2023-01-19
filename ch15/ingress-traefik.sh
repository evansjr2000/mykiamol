#!/bin/bash -x

# # create the Traefik Deployment, Service, and security resources:
kubectl apply -f ingress-traefik/

# get the URL for the Traefik UI running in the ingress controller:

kubectl get svc ingress-traefik-controller -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8080' -n kiamol-ingress-traefik

echo " "

cowsay "Browse to the admin UI to see the routes Traefik has mapped"

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
