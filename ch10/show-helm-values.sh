#!/bin/bash -x

helm show values kiamol/vweb --version 1.0.0

helm install --set servicePort=8010 --set replicaCount=1 ch10-vweb kiamol/vweb --version 1.0.0

helm ls



