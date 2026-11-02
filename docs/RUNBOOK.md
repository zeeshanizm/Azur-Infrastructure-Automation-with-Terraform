# Runbook

Prerequisites: Azure subscription, `az` CLI, Terraform >= 1.6, SSH public key and permissions to create AKS/network resources.

```bash
az login
az account set --subscription YOUR_SUBSCRIPTION_ID
cd terraform
terraform init
terraform fmt -check
terraform validate
terraform plan -var='subscription_id=YOUR_SUBSCRIPTION_ID' -var='ssh_public_key=ssh-rsa AAAA...'
terraform apply -var='subscription_id=YOUR_SUBSCRIPTION_ID' -var='ssh_public_key=ssh-rsa AAAA...'
```

For teams, configure the Azure Blob backend using `backend.example.tf` and pre-provision a secured storage account/container. Never commit state. For AKS access use `az aks get-credentials -g RESOURCE_GROUP -n CLUSTER_NAME`. Destroy sandbox resources with `terraform destroy` using the same variables. The screenshot also mentions SQL Database and Ansible; these are documented extension points rather than deployed components in this minimal example.
