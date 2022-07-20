#!/bin/bash -x

echo " "
sleep 1
echo " "

# check the Services in the default namespace:
kubectl get svc --namespace default

echo " "
sleep 3
echo " "

# check Services in the system namespace:
kubectl get svc -n kube-system

echo " "
sleep 3
echo " "

# try a DNS lookup to a fully qualified Service name:
kubectl exec deploy/sleep-1 -- sh -c 'nslookup numbers-api.default.svc.cluster.local | grep "^[^*]"'

echo " "
sleep 3
echo " "

# try a DNS lookup to a fully qualified Service name:
kubectl exec deploy/sleep-1 -- sh -c 'nslookup numbers-api.default.svc.cluster.local '


echo " "
sleep 3
echo " "

# and for a Service in the system namespace:
kubectl exec deploy/sleep-1 -- sh -c 'nslookup kube-dns.kube-system.svc.cluster.local | grep "^[^*]"'


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books. 
