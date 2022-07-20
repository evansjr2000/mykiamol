#!/bin/bash -x
# package the local chart:
export INC=6

helm package web-ping

sleep $INC
 
# *on Windows 10* remove the PowerShell alias to use the real curl:
# Remove-Item Alias:curl -ErrorAction Ignore
 
# upload the chart zip archive to ChartMuseum:
curl --data-binary "@web-ping-0.1.0.tgz" $(kubectl get svc repo-chartmuseum \
     -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8008/api/charts')

sleep $INC

# check that ChartMuseum has updated its index:
curl $(kubectl get svc repo-chartmuseum -o jsonpath='http://{.status.loadBalancer.ingress[0].*}:8008/index.yaml')

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
