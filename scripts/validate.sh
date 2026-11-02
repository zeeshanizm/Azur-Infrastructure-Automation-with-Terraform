#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
test -s README.md && test -s docs/RUNBOOK.md && test -s docs/ARCHITECTURE.md
echo "Documentation checks passed"
