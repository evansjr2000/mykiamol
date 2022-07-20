#!/bin/bash -x

helm repo add kiamol https://kiamol.net

helm repo update

helm search repo vweb --versions


