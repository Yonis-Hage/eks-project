# 2048 EKS Project

This project deploys the 2048 game application to an AWS EKS (Elastic Kubernetes Service) cluster using Terraform for infrastructure and GitHub Actions for automation. The deployment includes Argo CD for GitOps, NGINX ingress for traffic management, SSL via Cert Manager, and Prometheus and Grafana for monitoring.

## Key Components

- **Docker**  
  The app is containerized using a Dockerfile for consistency across environments.

- **Terraform**  
  - **VPC Module**  
    Custom VPC with private subnets, NAT gateways, and public subnet.
  - **EKS Module**  
    Creates an Amazon EKS Cluster, IAM Role associated with the VPC setup, and node groups.
  - **IRSA Module**  
    IAM roles for service accounts in the EKS cluster to securely assume AWS IAM roles for access to AWS resources.
  - **Helm Module**  
    Sets up NGINX Ingress to route traffic, Cert Manager for automatic HTTPS certificates, ExternalDNS to manage DNS records, Argo CD for Git-based deployments, and Kube-Prometheus Stack for monitoring and alerts.

- **CI/CD Pipeline Automation**  
  - Building and pushing Docker image to Amazon ECR  
  - Security checks to ensure best code quality and no security issues  
  - Running `terraform init`, `apply`, and `destroy` with Kubernetes

## Project Directory Structure

├── app
│   └── 2048.app
├── argocd
│   ├── apps
│   └── argocd-app.yml
├── cert-manager
│   └── issuer.yml
├── helm-charts
│   └── nginx-ingress
├── readme.md
└── terraform
    ├── app.yaml
    ├── backend.tf
    ├── eks.tf
    ├── envs
    ├── helm-values
    ├── helm.tf
    ├── irsa.tf
    ├── locals.tf
    ├── nginx-ingress-controller
    ├── provider.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    └── vpc.tf

## Working Images
