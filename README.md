
# Azure IaC Blueprint

This repository contains a structured, modular, and scalable Terraform blueprint for provisioning infrastructure in Microsoft Azure. It’s designed to serve as a starting point for sandbox environments, development labs, or early-stage infrastructure projects.

## Purpose

The goal of this blueprint is to simplify Azure provisioning using Terraform best practices. Whether you're experimenting with Azure services or standing up a stable dev environment, this repo provides a clean, adaptable foundation.

It is designed to integrate with [Harness Infrastructure-as-Code Management (IACM)](https://developer.harness.io/docs/continuous-delivery/cd-infrastructure/iacm/) to enable GitOps-style workflows, automated provisioning, and environment drift detection.

## Repository Structure

```
.
├── modules/               # Reusable Terraform modules (network, compute, etc.)
├── environments/
│   ├── dev/               # Development environment configuration
│   ├── stage/             # Staging environment
│   └── prod/              # Production (if applicable)
├── scripts/               # Optional helper scripts
├── backend.tf             # Remote state backend configuration (Azure blob)
├── main.tf                # Root Terraform config (delegates to modules/envs)
└── README.md
```

## Getting Started

1. Install Terraform (>= 1.6 recommended)
2. Authenticate to Azure:
   ```
   az login
   ```
3. Navigate to an environment:
   ```
   cd environments/dev
   terraform init
   terraform apply
   ```

## Features

- Resource Group creation
- Virtual Network and subnet definitions
- Network Security Group (NSG) integration
- Storage account provisioning
- Clear module separation for reusability

## Remote State

This repo assumes use of Azure Blob Storage for remote state management. You can customize `backend.tf` to point to your storage account and container.

## Harness IACM Integration

This blueprint can be easily imported into Harness IACM to enable:
- Git-triggered provisioning and updates
- Centralized visibility into infrastructure state
- Policy enforcement and drift detection

Refer to the Harness documentation or Harness University for setup steps and integration guides.

## Philosophy

This blueprint is designed to be clean, minimal, and extensible. It’s a foundation — not a framework. Add complexity as needed, but keep the fundamentals strong.

## Contributions

Open to PRs, issues, and suggestions. Use this repo as a base for your own IaC approach or extend it for more advanced use cases.
