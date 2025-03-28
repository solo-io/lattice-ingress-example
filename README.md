# Gloo Gateway + Amazon VPC Lattice Ingress Sample

This repository contains scripts and manifests supporting the blog:  
**"Configure Efficient Ingress for Amazon VPC Lattice Using Gloo Gateway"**

📘 Blog Link: [Solo.io Blog](https://www.solo.io)

## 🔧 What’s Inside

Each folder corresponds to a major step in the setup process:

- `01-eks-setup/`: Set up environment and EKS cluster
- `02-vpc-lattice-security/`: Configure security groups for Lattice traffic
- `03-iam-policy/`: Create IAM policy for VPC Lattice controller
- `04-controller-prep/`: Namespace and service account setup
- `05-controller-install/`: Install AWS Gateway API controller
- `06-gloo-gateway/`: Install Gloo Gateway and define upstreams
- `07-demo-app/`: Deploy the demo application and routes
- `08-dns-setup/`: Configure internal and external DNS (see `dns-setup.md`)
- `09-test/`: Test connectivity to VPC Lattice via Gloo Gateway

## 📄 Extended Documentation

Some steps (like DNS setup) include extra context stored in Markdown files in their respective folders:

- [`08-dns-setup/dns-setup.md`](08-dns-setup/dns-setup.md)

---
This structure helps separate CLI tasks from conceptual steps, keeping the blog lightweight while still offering full reproducibility.
