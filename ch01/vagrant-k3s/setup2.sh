#!/bin/bash -x

# install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sleep 10

# install Helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

sleep 10

# install K3s
curl -sfL https://get.k3s.io | sh -s - --docker --disable=traefik --write-kubeconfig-mode=644
