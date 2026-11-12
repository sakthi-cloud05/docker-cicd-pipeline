# 🐳 Automated Docker CI/CD Pipeline (GitHub Actions + Amazon ECR)

An end-to-end Continuous Integration and Continuous Delivery (**CI/CD**) pipeline built with **GitHub Actions** and **Docker** to automatically build, validate, tag, and push lightweight production container images to **Amazon Elastic Container Registry (ECR)**.

---

## 🏗️ CI/CD Pipeline Architecture

```mermaid
flowchart LR
    A[Developer Push\nto main branch] -->|Triggers Workflow| B(GitHub Actions\nUbuntu Runner)
    B -->|Builds Lightweight Image| C[Docker Engine\nnginx:1.27-alpine]
    C -->|Tags with Commit SHA| D{AWS Credentials\nConfigured?}
    D -->|Yes| E[Amazon ECR\nContainer Registry]
    E -->|Ready for Deployment| F[Amazon ECS\nFargate / EC2 Cluster]
