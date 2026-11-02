# Security considerations

1. Use least-privilege cloud identities and short-lived credentials.
2. Keep secrets in your cloud secret manager or CI secret store, never Git.
3. Pin and scan container images before production use.
4. Restrict public ingress, storage access and control-plane permissions.
5. Review audit logs, encryption, backup retention and restore testing.
6. Use isolated test subscriptions/clusters; apply your organization's policies.
