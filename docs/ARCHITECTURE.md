# Architecture — Azure Infrastructure Automation with Terraform

Azure resource group, network, AKS, storage and optional Azure SQL with Terraform.

## Design principles

- Declarative, version-controlled configuration
- Separate credentials from source
- Sandbox-first deployment and rollback
- Explicit health verification and observability

## Scope

The implementation illustrates the workflow with a sample application or configuration. Production rollout requires environment-specific IAM, network policy, monitoring, cost controls and change approval.
