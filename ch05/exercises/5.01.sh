#!/bin/bash -x

cd /etc/kiamol/ch05

kubectl apply -f sleep/sleep.yaml
kubectl exec deploy/sleep -- sh -c 'echo ch05 > /file.txt; ls /*.txt'
kubectl exec deploy/sleep -- sh -c 'cat /*.txt'
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[0].containerID}'
kubectl exec -it deploy/sleep -- killall5
sleep 15
kubectl get pod
sleep 15
kubectl get pod -l app=sleep -o jsonpath='{.items[0].status.containerStatuses[0].containerID}'
kubectl exec deploy/sleep -- ls /*.txt
