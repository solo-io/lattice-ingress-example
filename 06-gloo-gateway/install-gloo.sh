#!/bin/bash
kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.0.0/standard-install.yaml
helm repo add gloo https://storage.googleapis.com/solo-public-helm
helm repo update
helm install -n gloo-system gloo-gateway gloo/gloo \
--create-namespace \
--set kubeGateway.enabled=true \
--set gloo.disableLeaderElection=true \
--set discovery.enabled=false
