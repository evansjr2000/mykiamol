 #!/bin/bash -x


# update the sleep Deployment:
kubectl apply -f sleep/sleep-with-secret.yaml
 
# check the environment variable in the Pod:
kubectl exec deploy/sleep -- printenv KIAMOL_SECRET


# Excerpt From: Elton Stoneman. “Learn Kubernetes in a Month of Lunches.” Apple Books.

