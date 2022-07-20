#!/bin/bash -x

 
# deploy a sleep Pod:
kubectl apply -f sleep/sleep.yaml
 
sleep 5
# write a file inside the container:
kubectl exec deploy/sleep -- sh -c 'echo ch05 > /file.txt; ls /*.txt'
 
# check the container ID:
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[0].containerID}'

sleep 3
# kill all processes in the container, causing a Pod restart:
kubectl exec -it deploy/sleep -- killall5

sleep 5

# check the replacment container ID:
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[0].containerID}'
 
# look for the file you wrote--it won’t be there:
kubectl exec deploy/sleep -- ls /*.txt


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
