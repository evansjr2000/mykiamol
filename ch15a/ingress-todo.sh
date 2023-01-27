#!/bin/bash

# add a new domain for the app--on Windows:

# OR on Linux/macOS:
./add-to-hosts.sh todo2.kiamol.local ingress-traefik

# apply the new Ingress rules and sticky Service:
kubectl apply -f todo-list/update/ingress-traefik.yaml

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
