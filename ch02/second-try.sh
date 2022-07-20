#!/bin/bash -x

#TRY IT NOW Kubectl returns basic information from the get pod command,
#but you can request more by applying an output parameter. You can name
#individual fields you want to see in the output parameter, and you can
#use the JSONPath query language or Go templates for complex output.

# get the basic information about the Pod:
kubectl get pod hello-kiamol

sleep 3

# specify custom columns in the output, selecting network details:
kubectl get pod hello-kiamol --output custom-columns=NAME:metadata.name,NODE_IP:status.hostIP,POD_IP:status.podIP 

# specify a JSONPath query in the output,
# selecting the ID of the first container in the Pod:
sleep 3

kubectl get pod hello-kiamol -o jsonpath='{.status.containerStatuses[0].containerID}'

echo " "

