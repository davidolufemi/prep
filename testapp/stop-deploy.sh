#!/bin/bash

echo "Stopping all Kubernetes resources..."

kubectl delete all --all

#eksctl delete cluster --name my-cluster --region us-east-1

echo "Deletion complete."

