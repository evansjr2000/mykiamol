#!/bin/bash -x

# update the sleep Pod to use an EmptyDir volume:
kubectl apply -f sleep/sleep-with-emptyDir.yaml
 
# list the contents of the volume mount:
kubectl exec deploy/sleep -- ls /data
 
# create a file in the empty directory:
kubectl exec deploy/sleep -- sh -c 'echo ch05 > /data/file.txt; ls /data'
 
# check the container ID:
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[0].containerID}'
 
# kill the container processes:
kubectl exec deploy/sleep -- killall5
 
# check replacement container ID:
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[0].containerID}'
 
# read the file in the volume:
kubectl exec deploy/sleep -- cat /data/file.txt


#Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
