# Azure Infrastructure Automation with Terraform

[![Documentation](https://img.shields.io/badge/docs-included-0ea5e9)](docs/ARCHITECTURE.md) ![Status](https://img.shields.io/badge/status-reference%20implementation-64748b)

> **Portfolio reference implementation.** This repository contains an independently runnable learning example. It does not reproduce or verify any production deployment, scale, uptime, or performance claims.

## Overview

Azure resource group, network, AKS, storage and optional Azure SQL with Terraform.

## Architecture

See [architecture and data flow](docs/ARCHITECTURE.md), [operations runbook](docs/RUNBOOK.md), and [security considerations](docs/SECURITY.md).

## Repository structure

- `README.md`: overview and quick start
- `docs/`: architecture, operations and security
- `scripts/`: helper commands
- `.github/workflows/`: validation workflow
- Other folders: project-specific deployment manifests and source

## Prerequisites

Use a development or sandbox environment. Required CLIs and accounts are described in `docs/RUNBOOK.md`. Do not deploy directly to production.

## Quick start

```bash
bash scripts/validate.sh
```

Follow [RUNBOOK.md](docs/RUNBOOK.md) for setup, deployment, verification, teardown, and troubleshooting.

## Validation

GitHub Actions performs repository-level checks. Actual cloud/Kubernetes deployment requires your own credentials, environment, and manual verification.

## Security and cost

Never commit credentials, kubeconfigs, Terraform state, or `.env` files. Cloud resources may incur charges. Review [SECURITY.md](docs/SECURITY.md) and destroy sandbox resources when finished.

## Portfolio

[Portfolio website](https://zeeshan-sand.vercel.app/) · [GitHub profile](https://github.com/zeeshanizm)

## License

MIT; see [LICENSE](LICENSE).
