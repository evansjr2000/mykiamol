#!/bin/bash -x

# add domain to hosts--on Windows:
# ./add-to-hosts.ps1 hello.kiamol.local ingress-nginx
 
# OR on Linux/macOS:
chmod +x add-to-hosts.sh && ./add-to-hosts.sh hello.kiamol.local ingress-nginx
 
# update the Ingress object, adding the host name:
kubectl apply -f hello-kiamol/ingress/hello.kiamol.local.yaml
 
# confirm the update:
kubectl get ingress
 
echo "# browse to http://hello.kiamol.local   ”


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
