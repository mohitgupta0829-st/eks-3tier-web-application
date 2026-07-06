# ☸️ Amazon EKS 3-Tier Web Application Deployment

![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![AWS EKS](https://img.shields.io/badge/Amazon_EKS-FF9900?style=for-the-badge&logo=amazon-eks&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

---

## 📖 Project Overview

This project demonstrates the deployment of a **containerized three-tier web application** on **Amazon Elastic Kubernetes Service (EKS)** using production-oriented Kubernetes resources and DevOps practices.

The application itself was used as a **sample deployment target** for learning and implementing Kubernetes deployment strategies. My primary contribution focused on designing, deploying, configuring, and troubleshooting the Kubernetes infrastructure rather than developing the application source code.

The deployment includes best practices such as **Deployments**, **Services**, **Secrets**, **Persistent Volumes**, **Persistent Volume Claims**, **StatefulSets**, **Ingress**, and **Horizontal Pod Autoscalers** to build a scalable and production-ready Kubernetes environment.

---

# 🏗️ Architecture

<p align="center">

> **Architecture Diagram (Coming Soon)**

<!-- Replace with the actual architecture diagram -->

<img src="./assets/architecture.png" alt="Amazon EKS 3-Tier Architecture" width="100%"/>

</p>

---

## 🔄 Architecture Flow

```text
                    🌍 User
                       │
                       ▼
            AWS Application Load Balancer
                       │
                       ▼
          NGINX Ingress Controller
                       │
                       ▼
        Frontend Deployment (React + Nginx)
                       │
                       ▼
        Backend Deployment (Node.js API)
                       │
                       ▼
          MySQL StatefulSet Database
                       │
                       ▼
        Persistent Volume & Persistent Storage
```

---

## ☁️ AWS Components

| Component | Purpose |
|-----------|---------|
| Amazon EKS | Managed Kubernetes Cluster |
| EC2 Worker Nodes | Run Kubernetes Pods |
| Application Load Balancer | Exposes the application externally |
| Kubernetes Ingress | Routes external HTTP traffic |
| Deployments | Manage frontend & backend pods |
| StatefulSet | Provides stable MySQL deployment |
| Persistent Volume | Stores database data |
| Persistent Volume Claim | Requests persistent storage |
| ConfigMaps | Application configuration |
| Secrets | Secure database credentials |
| Services | Internal communication between components |
| Horizontal Pod Autoscaler | Automatically scales application pods |

---

# 🚀 DevOps Implementation Highlights

- ☸️ Deployed a **three-tier web application** on **Amazon Elastic Kubernetes Service (EKS)**.

- 🐳 Used **Docker** containers for the frontend, backend, and database workloads.

- 🌐 Exposed the application externally using **AWS Load Balancer** and **NGINX Ingress Controller**.

- ⚙️ Managed frontend and backend applications using **Kubernetes Deployments**.

- 🗄️ Deployed MySQL using a **StatefulSet** with persistent storage.

- 💾 Implemented **Persistent Volumes (PV)** and **Persistent Volume Claims (PVC)** to retain database data.

- 🔐 Secured sensitive configuration using **Kubernetes Secrets**.

- ⚙️ Managed application configuration through **ConfigMaps**.

- 🔄 Implemented **Horizontal Pod Autoscalers (HPA)** for frontend and backend services.

- 📡 Used Kubernetes **Services** for internal communication between application components.

- 📊 Configured **resource requests and limits** for efficient workload scheduling.

- 🛠️ Troubleshot deployments using Kubernetes commands such as:

```bash
kubectl get pods
kubectl describe pod
kubectl logs
kubectl rollout restart deployment
kubectl get svc
kubectl get ingress
```

- 📁 Organized Kubernetes manifests for easier deployment and maintenance.

---

# 🛠️ Technology Stack

| Category | Technologies |
|-----------|--------------|
| ☁️ Cloud Platform | Amazon Web Services (AWS) |
| ☸️ Container Orchestration | Kubernetes (Amazon EKS) |
| 🐳 Containerization | Docker |
| 🌐 Ingress | NGINX Ingress Controller |
| ⚖️ Load Balancing | AWS Load Balancer |
| 🖥️ Frontend | React, Nginx |
| ⚙️ Backend | Node.js |
| 🗄️ Database | MySQL |
| 💾 Storage | Persistent Volume (PV), Persistent Volume Claim (PVC) |
| 🔐 Configuration | ConfigMaps, Secrets |
| 📈 Auto Scaling | Horizontal Pod Autoscaler (HPA) |
| 🖥️ Operating System | Ubuntu Linux |
| 🔧 CLI Tools | kubectl, eksctl, Docker CLI, AWS CLI |

---

# 📂 Project Structure

```text
eks-3tier-web-application
│
├── backend/
│   ├── Dockerfile
│   ├── package.json
│   ├── server.js
│   └── ...
│
├── frontend/
│   ├── Dockerfile
│   ├── nginx.conf
│   ├── package.json
│   ├── public/
│   ├── src/
│   └── ...
│
├── kubernetes/
│   ├── backend-deployment.yaml
│   ├── backend-service.yaml
│   ├── frontend-deployment.yaml
│   ├── frontend-service.yaml
│   ├── mysql-statefulset.yaml
│   ├── mysql-service.yaml
│   ├── mysql-secret.yaml
│   ├── configmap.yaml
│   ├── persistent-volume.yaml
│   ├── persistent-volume-claim.yaml
│   ├── ingress.yaml
│   ├── frontend-hpa.yaml
│   ├── backend-hpa.yaml
│   └── namespace.yaml
│
├── scripts/
│   ├── deploy.sh
│   └── cleanup.sh
│
├── assets/
│   ├── architecture.png
│   ├── workflow.png
│   └── screenshots/
│
└── README.md
```

---

## 📁 Directory Overview

| Directory | Description |
|------------|-------------|
| `backend/` | Node.js backend application and Docker configuration |
| `frontend/` | React frontend application served using Nginx |
| `kubernetes/` | Kubernetes manifest files used for deployment |
| `scripts/` | Deployment and cleanup automation scripts |
| `assets/` | Architecture diagrams, workflow images, and screenshots |
| `README.md` | Complete project documentation |

---

# ☸️ Kubernetes Resources Used

| Kubernetes Resource | Purpose |
|---------------------|---------|
| **Namespace** | Isolated application resources within the Kubernetes cluster. |
| **Deployment** | Managed stateless frontend and backend application pods with rolling updates and self-healing. |
| **Service (ClusterIP)** | Enabled internal communication between frontend, backend, and MySQL components. |
| **Service (LoadBalancer)** | Exposed the application externally through AWS Load Balancer. |
| **Ingress** | Managed HTTP request routing to application services using NGINX Ingress Controller. |
| **StatefulSet** | Deployed MySQL with stable pod identity and persistent storage. |
| **Persistent Volume (PV)** | Provided persistent storage for the MySQL database. |
| **Persistent Volume Claim (PVC)** | Requested storage resources for database persistence. |
| **ConfigMap** | Stored non-sensitive application configuration. |
| **Secret** | Stored sensitive database credentials securely. |
| **Horizontal Pod Autoscaler (HPA)** | Automatically scaled frontend and backend pods based on resource utilization. |
| **Resource Requests & Limits** | Allocated CPU and memory resources efficiently for containers. |

---

## 🔄 Application Deployment Flow

```text
Namespace
     │
     ▼
Secrets & ConfigMaps
     │
     ▼
Persistent Volume
     │
     ▼
Persistent Volume Claim
     │
     ▼
MySQL StatefulSet
     │
     ▼
Backend Deployment
     │
     ▼
Frontend Deployment
     │
     ▼
Services
     │
     ▼
Ingress
     │
     ▼
AWS Load Balancer
     │
     ▼
Users
```
---

# 🚀 Deployment Guide

This project includes deployment automation scripts to simplify the provisioning process and reduce manual Kubernetes operations.

---

## 📋 Prerequisites

Before deploying the application, ensure the following tools are installed and configured.

| Tool | Purpose |
|------|---------|
| AWS CLI | Connect to AWS Account |
| kubectl | Kubernetes CLI |
| eksctl | Amazon EKS Management |
| Docker | Container Management |
| Docker Hub | Container Registry |

---

## ☁️ Configure AWS Credentials

```bash
aws configure
```

Verify access:

```bash
aws sts get-caller-identity
```

---

## ☸️ Verify EKS Cluster

```bash
kubectl get nodes
```

Expected output

```text
STATUS   Ready
```

---

## 📂 Clone Repository

```bash
git clone https://github.com/mohitgupta0829-st/eks-3tier-web-application.git

cd eks-3tier-web-application
```

---

# ⚡ Automated Deployment

Instead of applying each Kubernetes manifest individually, this project provides deployment scripts to automate the process.

Grant execution permission.

```bash
chmod +x scripts/deploy.sh
```

Run deployment.

```bash
./scripts/deploy.sh
```

The deployment script automatically performs the following operations:

- Creates Namespace
- Creates Kubernetes Secrets
- Creates ConfigMaps
- Deploys Persistent Volumes
- Deploys Persistent Volume Claims
- Deploys MySQL StatefulSet
- Deploys Backend Deployment & Service
- Deploys Frontend Deployment & Service
- Deploys NGINX Ingress
- Deploys Horizontal Pod Autoscalers

---

# 🧹 Cleanup

To remove all deployed Kubernetes resources:

```bash
chmod +x scripts/cleanup.sh

./scripts/cleanup.sh
```

---

# ✅ Verify Deployment

```bash
kubectl get pods

kubectl get svc

kubectl get ingress

kubectl get hpa

kubectl get pvc
```

The application is considered successfully deployed when:

- All Pods are in **Running** state
- Services are successfully created
- Ingress receives an external address
- MySQL StatefulSet is healthy
- Persistent Volume Claim is **Bound**
- Horizontal Pod Autoscalers are active