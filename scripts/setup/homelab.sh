#!/bin/bash
set -euo pipefail

echo "Install Task -----------------------------------"

if ! command -v task &>/dev/null; then
  curl -1sLf 'https://dl.cloudsmith.io/public/task/task/setup.deb.sh' | sudo -E bash
  sudo apt-get install -y task
fi

echo "Install Python venv and dependencies -----------"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

python3 -m venv "$REPO_DIR/.venv"
"$REPO_DIR/.venv/bin/pip" install -r "$REPO_DIR/requirements.txt"

echo "Install Done -------------------------------------"
