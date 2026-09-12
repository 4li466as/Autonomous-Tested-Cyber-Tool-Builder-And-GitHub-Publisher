#!/usr/bin/env bash
set -e

echo "=== Verifying Python and pytest sandbox for n8n Cyber Tool Builder ==="

if ! command -v python3 &> /dev/null; then
    echo "Error: python3 is not installed." >&2
    exit 1
fi

echo "Python version: $(python3 --version)"

echo "Installing / upgrading pytest..."
python3 -m pip install --upgrade pip pytest

echo "Pytest version: $(python3 -m pytest --version)"
echo "Sandbox environment ready at /tmp/builds."
