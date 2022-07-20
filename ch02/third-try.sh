#!/bin/bash -x


# TRY IT NOW All Kubernetes environments use the same CRI mechanism to manage containers, but not all container runtimes allow you to access containers outside of Kubernetes. This exercise shows you how a Kubernetes node keeps its Pod containers running, but you’ll only be able to follow it if you’re using Docker as your container runtime.

# find the Pod’s container:
docker container ls -q --filter label=io.kubernetes.container.name=hello-kiamol
 
# now delete that container:
docker container rm -f $(docker container ls -q --filter label=io.kubernetes.container.name=hello-kiamol)
 
# check the Pod status:
kubectl get pod hello-kiamol
 
# and find the container again:
docker container ls -q --filter label=io.kubernetes.container.name=hello-kiamol



