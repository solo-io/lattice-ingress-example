#!/bin/bash
kubectl create ns aws-application-networking-system
kubectl label ns aws-application-networking-system control-plane=gateway-api-controller
