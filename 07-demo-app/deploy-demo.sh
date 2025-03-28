#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/aws/aws-application-networking-k8s/main/files/examples/my-hotel-gateway.yaml
kubectl apply -f https://raw.githubusercontent.com/aws/aws-application-networking-k8s/main/files/examples/inventory-ver1.yaml
aws vpc-lattice create-service-network --name my-hotel
SERVICE_NETWORK_ID=$(aws vpc-lattice list-service-networks --query "items[?name=='my-hotel'].id" --output text)
VPC_ID=$(aws eks describe-cluster --name $CLUSTER_NAME --output json | jq -r '.cluster.resourcesVpcConfig.vpcId')
aws vpc-lattice create-service-network-vpc-association --service-network-id $SERVICE_NETWORK_ID --vpc-id $VPC_ID
