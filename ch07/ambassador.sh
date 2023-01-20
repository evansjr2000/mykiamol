#!/bin/bash -x

export INC=5


# deploy the app and Services
kubectl apply -f numbers/

# find the URL for your app:
kubectl get svc numbers-web -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8090'

sleep $INC

cowsay " browse and get yourself a nice random number"

sleep $INC

cowsay " check that the web app has access to other endpoints:"

kubectl exec deploy/numbers-web -c web -- wget -q -O - http://timecheck:8080

sleep $INC

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
