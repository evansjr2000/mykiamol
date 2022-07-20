#!/bin/bash -x


# now create a secret from a plain text literal:
kubectl create secret generic sleep-secret-literal --from-literal=secret=I-am-an-unencrypted-secret!

sleep 3

# show the friendly details of the Secret:
kubectl describe secret sleep-secret-literal

sleep 3

 
# retrieve the encoded Secret value:
kubectl get secret sleep-secret-literal -o jsonpath='{.data.secret}'

sleep 3

 
# and decode the data:
kubectl get secret sleep-secret-literal -o jsonpath='{.data.secret}' | base64 -d
echo -n "  "
echo " "


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.

