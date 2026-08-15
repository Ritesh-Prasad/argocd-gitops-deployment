# ArgoCD GitOps Deployment on AWS

This project demonstrates how to provision a Kubernetes cluster on AWS using kOps and deploy applications using ArgoCD with a GitOps workflow. It includes shell automation for cluster setup, Helm installation, ArgoCD deployment, service exposure, password retrieval, and cleanup.

## Project Overview

This repository showcases a practical GitOps-based deployment workflow on AWS. It uses Kubernetes, kOps, ArgoCD, Helm, and Shell scripting to automate infrastructure setup and application delivery.

The project is designed to demonstrate real DevOps skills such as:
- Kubernetes cluster provisioning
- GitOps application deployment
- AWS infrastructure setup
- ArgoCD installation and access management
- Shell scripting for automation
- Operational cleanup of cloud resources

## Architecture

The workflow of this project follows this sequence:

`AWS -> kOps -> Kubernetes Cluster -> Helm -> ArgoCD -> GitOps Application Deployment`

### Flow Explanation
1. AWS provides the infrastructure layer.
2. kOps is used to create and manage the Kubernetes cluster.
3. Helm is used to install required packages.
4. ArgoCD is deployed inside the Kubernetes cluster.
5. ArgoCD manages application deployment using GitOps principles.
6. Shell scripts automate the full setup and management workflow.

## Tools Used

- AWS
- Kubernetes
- kOps
- ArgoCD
- Helm
- Shell Scripting
- GitHub Actions

## Repository Structure

```text
argocd-gitops-deployment/
├── images/
├── create-cluster.sh
├── decode-argocd-password.sh
├── delete_cluster.sh
├── expose-argocd-server.sh
├── get-argocd-password.sh
├── install-argocd.sh
├── install-helm.sh
├── install-kubectl-kops.sh
├── main.yml
├── setup-kops-s3-store.sh
└── README.md
```

## Script Details

### 1. `install-kubectl-kops.sh`
Installs the required CLI tools such as `kubectl` and `kOps`.

### 2. `setup-kops-s3-store.sh`
Configures the S3 bucket used as the kOps state store.

### 3. `create-cluster.sh`
Creates the Kubernetes cluster on AWS using kOps.

### 4. `install-helm.sh`
Installs Helm for package management inside Kubernetes.

### 5. `install-argocd.sh`
Deploys ArgoCD into the Kubernetes cluster.

### 6. `expose-argocd-server.sh`
Exposes the ArgoCD server so it can be accessed externally.

### 7. `get-argocd-password.sh`
Retrieves the initial ArgoCD admin password.

### 8. `decode-argocd-password.sh`
Decodes the ArgoCD password for login use.

### 9. `delete_cluster.sh`
Deletes the Kubernetes cluster and cleans up AWS resources.

## Prerequisites

Before running this project, make sure the following are ready:

- AWS account with required permissions
- AWS CLI configured locally
- Basic knowledge of Kubernetes and ArgoCD
- S3 bucket for kOps state store
- Linux environment or compatible shell environment

## Setup Steps

Follow these steps in sequence:

### Step 1: Install kubectl and kOps
Run the installation script:

```bash
bash install-kubectl-kops.sh
```

### Step 2: Configure kOps state store
Set up the S3 bucket for cluster state:

```bash
bash setup-kops-s3-store.sh
```

### Step 3: Create the Kubernetes cluster
Create the cluster on AWS:

```bash
bash create-cluster.sh
```

### Step 4: Install Helm
Install Helm in your environment:

```bash
bash install-helm.sh
```

### Step 5: Install ArgoCD
Deploy ArgoCD into the cluster:

```bash
bash install-argocd.sh
```

### Step 6: Expose ArgoCD server
Make the ArgoCD UI accessible:

```bash
bash expose-argocd-server.sh
```

### Step 7: Retrieve and decode ArgoCD password
Get the admin password:

```bash
bash get-argocd-password.sh
bash decode-argocd-password.sh
```

### Step 8: Access ArgoCD
Log in to the ArgoCD dashboard and connect your Git repository for application deployment.

### Step 9: Delete cluster when done
Clean up the environment:

```bash
bash delete_cluster.sh
```

## Screenshots

### ArgoCD Dashboard
![ArgoCD Dashboard](images/ArgoCd.png)

### Command History
![Command History](images/command_history.png)

### Kubernetes Pods and Services
![Pods and Services](images/pods_svc.png)

### S3 Bucket for kOps State Store
![S3 Bucket](images/S3_Bucket.png)

### Deployed Application Output
![Website Output](images/website_zomato_clone.png)

### AWS EC2 Instances
![AWS Instances](images/Aws_Instances.png)

## Challenges Solved

This project demonstrates how to:
- Provision Kubernetes infrastructure on AWS
- Configure kOps state management using S3
- Install and expose ArgoCD
- Retrieve and decode secure access credentials
- Automate repetitive DevOps setup using shell scripts
- Manage the full lifecycle from deployment to cleanup

## Future Improvements

This project can be improved further by adding:
- Terraform for infrastructure provisioning
- Ingress with HTTPS
- Monitoring with Prometheus and Grafana
- CI/CD enhancements with GitHub Actions
- Better folder structure using `scripts/` and `.github/workflows/`
- A production-grade sample application deployment

## Why This Project Matters

This repository is a strong portfolio project for DevOps, Cloud, and System Administration roles because it combines AWS, Kubernetes, ArgoCD, Helm, and automation into one hands-on workflow. It demonstrates practical knowledge of infrastructure provisioning, GitOps deployment, access management, and cloud resource cleanup.

## Author

**Ritesh Prasad**  
Cloud & DevOps Engineer
