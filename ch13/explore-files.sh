#!/bin/bash -x

# run the Deployment:
kubectl apply -f sleep.yaml
 
# connect to a session in the Pod container:
kubectl exec -it deploy/sleep -- sh
 
# browse to the host log mount:
cd /var/log/containers/
 
# list the timecheck log files:
ls timecheck*kiamol-ch13*_logger* 
 
# view the contents of the dev log file:
cat $(ls timecheck*kiamol-ch13-dev_logger*) | tail -n 1
 
# exit from the session:
exit

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=0
This material may be protected by copyright.
