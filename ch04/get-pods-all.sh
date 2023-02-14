#!/bin/bash -x

myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi

$MYCMD  get pods --all-namespaces -o wide
