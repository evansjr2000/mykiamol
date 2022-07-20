#!/bin/bash -x
#
# Deploy pod with init containers.
#

# switch to the chapter folder:
# cd ch07
 
# apply the updated spec with the init container:
kubectl apply -f sleep/sleep-with-html-server.yaml
 
# check the Pod containers:
kubectl get pod -l app=sleep -o \
   jsonpath='{.items[0].status.containerStatuses[*].name}'
 
# check the init containers:
kubectl get pod -l app=sleep -o \
   jsonpath='{.items[0].status.initContainerStatuses[*].name}'
 
# check logs from the init container--there are none:
kubectl logs -l app=sleep -c init-html
 
# check that the file is available in the sidecar:
kubectl exec deploy/sleep -c server -- ls -l /data-ro

exit 0


Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
