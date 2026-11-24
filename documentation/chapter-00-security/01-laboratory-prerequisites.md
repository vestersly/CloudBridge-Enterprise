# Chapter 0 - Laboratory Prerequisites

**CloudBridge Enterprise**
**Designed & Implemented by Awungjia Sylvester**

## 1. Objective

Verify the Linux control node environment before
implementing the CloudBridge Enterprise laboratory.

## 2. Execution Environment

Run this script on the Linux engineering control node.

The initial implementation uses Ubuntu under WSL.

## 3. Implementation Script

From the repository root, execute:

    ./scripts/chapter-00/01-check-prerequisites.sh

## 4. Validation Scope

The script reports:

- Operating system information
- Available logical processors
- Memory resources
- Available filesystem capacity
- Required engineering tools

## 5. Required Tools

- Git
- Curl
- SSH
- Python 3
- Ansible
- Ansible Playbook

## 6. Initial Test Results

Test date: 24 November 2026

| Component | Result |
|---|---|
| Bash syntax validation | PASS |
| Functional execution | PASS |
| Direct script execution | PASS |
| Logical processors | 8 |
| Total memory | 7.5 GiB |
| Required tools available | 6 of 6 |

## 7. Expected Behaviour

The script returns exit code 0 when all required
tools are available.

It is designed to return exit code 1 when one or
more required tools are missing.

## 8. Security Considerations

The script is read-only and does not require
administrative privileges.

It does not install packages, modify configurations
or provision infrastructure.

## 9. Validation Limitations

Minimum hardware requirements are not enforced.

Missing-tool failure handling and independent
laboratory reproduction remain to be tested.

## 10. Source Code

[Laboratory Prerequisites Checker](../../scripts/chapter-00/01-check-prerequisites.sh)
