#!/bin/bash
aws ecr-public get-login-password --region us-east-1 | helm registry login --username AWS --password-stdin public.ecr.aws
helm install gateway-api-controller \
    oci://public.ecr.aws/aws-application-networking-k8s/aws-gateway-controller-chart \
    --version=v1.0.6 \
    --set=serviceAccount.create=false \
    --namespace aws-application-networking-system \
    --set=log.level=info
kubectl apply -f https://raw.githubusercontent.com/aws/aws-application-networking-k8s/main/files/controller-installation/gatewayclass.yaml

# 
kubectl get pods -n aws-application-networking-system
# Detailed logs for the controller can be found here:
kubectl -n aws-application-networking-system logs -l "app.kubernetes.io/instance"=gateway-api-controller
