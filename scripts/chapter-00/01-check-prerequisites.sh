#!/usr/bin/env bash

# CloudBridge Enterprise
# Copyright 2026 Awungjia Sylvester
# SPDX-License-Identifier: Apache-2.0
# Chapter 0 - Laboratory prerequisites checker
# Execution environment: Linux control node

set -euo pipefail

echo "========================================"
echo " CloudBridge Enterprise"
echo " Chapter 0 - Prerequisites Check"
echo "========================================"

echo
echo "[1/5] Operating system"
cat /etc/os-release

echo
echo "[2/5] CPU resources"
nproc

echo
echo "[3/5] Memory resources"
free -h

echo
echo "[4/5] Available disk space"
df -h /

echo
echo "[5/5] Required tools"

missing=0

for tool in git curl ssh python3 ansible ansible-playbook; do
    if command -v "$tool" >/dev/null 2>&1; then
        echo "[PASS] $tool is installed"
    else
        echo "[FAIL] $tool is missing"
        missing=$((missing + 1))
    fi
done

echo
if (( missing > 0 )); then
    echo "[FAIL] Missing tools: $missing"
    exit 1
fi

echo "[PASS] Required tools are available."
echo "Prerequisites check completed."
