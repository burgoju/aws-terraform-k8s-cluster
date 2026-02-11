# Kubernetes Cluster on AWS - PROJECT COMPLETED

## ✅ All Requirements Met:

### 1. Infrastructure as Code (Terraform)
- ✅ EKS Cluster with 2 t3.small nodes in Stockholm
- ✅ VPC, Subnets, Security Groups
- ✅ IAM Roles for EKS and nodes

### 2. Horizontal Pod Autoscaler (HPA) 
- ✅ Configured to scale based on CPU (50% target)
- ✅ Metrics Server installed and providing metrics
- ✅ Current status: ScalingActive=True, ValidMetricFound
- ✅ Scaling range: 2-5 replicas

### 3. Ingress Controller
- ✅ NGINX Ingress Controller installed
- ✅ Ingress resource routing traffic to nginx-service

### 4. Application Deployment
- ✅ NGINX deployment with 2 pods
- ✅ LoadBalancer service exposing application
- ✅ Zero-downtime rollout capability verified

### 5. State Management
- ✅ S3 bucket: terraform-state-babloo
- ✅ DynamoDB table: terraform-state-lock
- ✅ Remote state with locking

## Verification Commands:
```bash
# Cluster is running
kubectl cluster-info

# Nodes are healthy (t3.small)
kubectl get nodes
kubectl top nodes

# HPA is active and monitoring
kubectl describe hpa nginx-hpa | grep -A2 "Conditions:"

# Application is accessible
curl http://ab7178fb8182b457aa50d96a5649bdf2-1087412112.eu-north-1.elb.amazonaws.com

# All resources visible
kubectl get all --all-namespaces
