#!/bin/bash -x
 
# OR on Linux/macOS:
chmod +x ./loadpi.sh && ./loadpi.sh
 
# give the metrics-server and HPA time to work:
sleep 60
 
# confirm that the Deployment has been scaled up:
kubectl get hpa pi-cpu
 
# print the Pod compute usage:
kubectl top pods -l app=pi-web

