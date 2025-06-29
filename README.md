# 🚀 React App Deployment with GitHub Actions, Docker, and Terraform

This project demonstrates how to build and deploy a containerized React application to an AWS EC2 instance using **Docker**, **GitHub Actions**, and **Terraform**.

---

## 📁 Directory Structure

```plaintext
github_actions_reactapp/
│
├── .github/workflows/       # GitHub Actions workflow for CI/CD
│   └── deploy.yaml
│
├── public/                  # Static public assets for React
├── src/                     # React source code
│
├── terraform/               # Terraform scripts to provision AWS infrastructure
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Dockerfile               # Multi-stage Docker build with Nginx
├── nginx.conf               # Nginx configuration for serving React app
├── package.json
├── package-lock.json
└── test.txt                 # Test file (can be ignored or deleted)


