AKS cluster deployment using Terraform via Azure pipelines

## 🚀 Deployment Overview

- Infrastructure-as-Code (IaC)  :Managed with Terraform.
- CI/CD Pipeline                : Managed using Azure Pipelines.
- Backend                       : Terraform state stored in Azure Blob Storage.
- Target Resource               : Azure Kubernetes Service (AKS) cluster.

---

## 🛠️ Prerequisites

Before using this deployment pipeline, ensure the following are set up:

- Azure Subscription
- Azure DevOps Project
- Terraform CLI installed (on the pipeline agent)
- Service Principal with appropriate RBAC permissions
- Azure Storage Account and Blob Container for the Terraform backend

---

🔐 Security
- State Storage: Remote state storage ensures safe state locking and collaboration.
- Role-Based Access Control (RBAC): Ensure least privilege access for Service Principal used by the pipeline.





![Image](https://github.com/user-attachments/assets/88425430-596a-406b-9d66-aa5f63d59000)


![Image](https://github.com/user-attachments/assets/7ef39be8-eb47-4889-8a7c-8980be2befc0)


![Image](https://github.com/user-attachments/assets/0ad4a945-0f0f-42d5-b8cc-bd9898c9c1fe)

