#!/usr/bin/env bash

# CloudBridge Enterprise
# Copyright 2026 Awungjia Sylvester
# SPDX-License-Identifier: Apache-2.0
# Chapter 0 - Control node preparation

set -euo pipefail

echo "CloudBridge Enterprise"
echo "Chapter 0 - Control Node Preparation"

source /etc/os-release

if [[ "$ID" != "ubuntu" ]]; then
    echo "[FAIL] This script requires Ubuntu."
    exit 1
fi

packages=(git curl openssh-client python3 ansible)
missing=()

for package in "${packages[@]}"; do
    if [[ "$(dpkg-query -W -f='${Status}' "$package" 2>/dev/null || true)" == "install ok installed" ]]; then
        echo "[PASS] $package is installed"
    else
        echo "[MISSING] $package"
        missing+=("$package")
    fi
done

if (( ${#missing[@]} > 0 )); then
    echo "Installing missing packages..."
    sudo apt-get update
    sudo apt-get install -y "${missing[@]}"
else
    echo "[PASS] All required packages are installed."
    echo "No installation required."
fi

echo
echo "Validating Ansible installation..."
ansible --version

echo "[PASS] Control node preparation completed."
