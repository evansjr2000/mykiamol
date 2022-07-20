#!/bin/bash -x

# check the available settings for the chart:
helm show values web-ping/
 
# install a new release named wp2, using a different target:
helm install --set targetUrl=kiamol.net wp3 web-ping/
 
# wait a minute or so for the pings to fire, then check the logs:
sleep 10

kubectl logs -l app=web-ping --tail 1

sleep 2

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
