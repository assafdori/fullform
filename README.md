![codesnap](https://github.com/assafdori/pod-to-s3/blob/main/k9s-snap.png)

## Overview: Full AWS Well-Architected VPC with MongoDB, Lambda, S3 and more! ☁️ 

#### Technologies 🛠️ :
- Python 
- boto3 
- Docker
- Kubernetes
- EKS
- IAM Services (roles, policies, IRSA)
- Terraform

#### Steps 📝 :

1. [x] Create a Python application.
2. [x] Dockerize the application.  
3. [x] Define all infrastructure as code (IaC) Terraform such as VPC, EKS, S3, IAM, etc.  
4. [x] Initialize Git repository for version control.  

#### Structure 🏗️ :
- **infrastructure/**: Terraform code for creating the EKS cluster, S3 bucket, IAM services, etc.  
- **application/**: Python application that uploads a file to an S3 bucket.  
