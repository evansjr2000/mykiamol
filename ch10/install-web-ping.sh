#!/bin/bash -x

# switch to this chapter’s source:
# cd ch10
 
# validate the chart contents:
helm lint web-ping
 
# install a release from the chart folder:
helm install wp1 web-ping/
 
# check the installed releases:
helm ls

exit 0

Excerpt From
Learn Kubernetes in a Month of Lunches
Elton Stoneman
This material may be protected by copyright.
