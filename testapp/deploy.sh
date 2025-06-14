#!/bin/bash

echo "🔄 Deploying all Kubernetes resources..."

kubectl apply -f apache-deployment.yml
kubectl apply -f apache-service.yml

kubectl apply -f caddy.yml
kubectl apply -f caddy-service.yml

kubectl apply -f nginx.yml
kubectl apply -f nginx-service.yml

kubectl apply -f ingress.yml

echo "✅ Deployment complete."

echo "Your load balancer is: "

kubectl get ing