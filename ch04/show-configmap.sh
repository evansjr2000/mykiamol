#!/bin/bash -x


# show the default config file:
kubectl exec deploy/todo-web -- sh -c 'ls -l /app/app*.json'
 
sleep 3
# show the config file in the volume mount:
kubectl exec deploy/todo-web -- sh -c 'ls -l /app/config/*.json'
 
sleep 3
# show the config file in the volume mount:
kubectl exec deploy/todo-web -- sh -c 'cat /app/config/*.json'
 
sleep 3
# check it really is read-only:
kubectl exec deploy/todo-web -- sh -c 'echo ch04 >> /app/config/config.json'


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.
