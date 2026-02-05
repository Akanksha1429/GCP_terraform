# ☁️ GOOGLE CLOUD PLATFORM (GCP)

---

## 🔐 Identity and Access Management (IAM)
┌──────────────────────────────┐
│ IAM │
└──────────────────────────────┘
 
### Purpose
- Responsible for **Authentication** and **Authorization**

### Authentication
- Users  
- Groups  
- Service Accounts (SA)

### Authorization
- Roles → Permissions

### Policy Binding
➡️ Users are **bound to roles using IAM policies**
[ User / Group / SA ]
│
▼
[ Role ]
│
▼
[ Permissions ]

---

## 🖥️ Compute Engine
┌──────────────────────────────┐
│ Compute Engine │
└──────────────────────────────┘

### Features
- Compute resources:
  - CPU
  - Memory
  - Storage
  - GPUs

### VM Creation
- Via **GCP Console**
- Via **CLI**

```bash
gcloud compute instances create VM_NAME \
  --zone=ZONE \
  --machine-type=e2-medium \
  --image-family=debian-11 \
  --image-project=debian-cloud
```
### Access
- SSH can be used to connect to the VM instance

## 💾 Cloud Storage Services
┌──────────────────────────────┐
│      Storage Services        │
└──────────────────────────────┘
1️⃣ Google Cloud Storage (GCS)
- Used for Object Storage
- Examples: Logs, Backups, Artifacts
- Cheapest storage option

### Features
- Durability: 99.9999999%
- Multi-region: Almost 100% durability
- Versioning: Maintains different versions of log files
- RBAC: Bucket-level and Object-level access
- CLI Access (**gcloud storage ls**)

### Storage Classes
| Storage Class | Usage                     |
| ------------- | ------------------------- |
| Standard      | Default                   |
| Nearline      | Very less accessed        |
| Coldline      | Accessed once in 3 months |
| Archive       | Accessed once in a year   |

2️⃣ Filestore
- Used to create NFS
- Example: PPTs shared across teams

3️⃣ Pub/Sub
- Messaging service
- Used when applications need to share messages with:
    - Databases
    - Mutiple microservices
- [ Producer ] → [ Pub/Sub ] → [ Consumer(s) ]

4️⃣ Datastore
- NoSQL database

5️⃣ Local SSD
- Blob storage
- Can be attached to an existing VM

### RBAC : Can be mainted on bucket and object level.

## 🌐 Load Balancing: 
┌──────────────────────────────┐
│        Load Balancing        │
└──────────────────────────────┘
Purpose

Balances traffic between servers

Types

Application Load Balancer → HTTP traffic

Network Load Balancer → TCP / UDP traffic

Exposure

Public Facing LB

Routes requests from clients to targets

Internal LB

Used when frontend communicates with backend

Deployment Scope

Global Region Deployment

Servers deployed across multiple regions

Single Region Deployment

Traffic retained in one region
Client
   │
   ▼
Load Balancer
   │
   ▼
Backend Servers

⚙️ Managed Instance Group (MIG)
┌──────────────────────────────┐
│   Managed Instance Group     │
└──────────────────────────────┘
Workflow

Create an Instance Template with VM configurations

Create a Managed Instance Group

Stateless (default)

Stateful (for DBs)

MIG deploys:

Minimum VMs initially

Scales up to maximum when required
[ Instance Template ]
          │
          ▼
[ Managed Instance Group ]
          │
      Auto Scaling

🟢 High Availability
┌──────────────────────────────┐
│      High Availability       │
└──────────────────────────────┘

🌐 Virtual Private Cloud (VPC)
┌──────────────────────────────┐
│              VPC             │
└──────────────────────────────┘
Definition

Isolated environment within the cloud

Created using CIDR

CIDR defines:

Number of IP addresses

Size of the VPC

Components of VPC
🔹 Subnets

Size decided by CIDR

Public Subnet

Connected to Internet Gateway (IGW)

Frontends of Load Balancers

Publicly accessible components

Private Subnet

Backends

Databases
Internet
   │
[ IGW ]
   │
Public Subnet ───► Private Subnet

🔹 Routes

Define access within and outside subnets

🔹 Route Tables

Explain traffic direction

🔹 Firewall

Rules attached to VPC using Tags

Controls application access

🔹 NAT (Network Address Translation)

Enables private subnet applications to access the internet

Hides original private IP from users

Private App → NAT → Internet

🔹 VPN

Integrates VPN with VPC

Provides authenticated users secure access to VPC