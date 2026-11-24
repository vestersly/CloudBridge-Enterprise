# Chapter 0 - Control Node Preparation

**CloudBridge Enterprise**

**Designed & Implemented by Awungjia Sylvester**

## 1. Objective

Prepare the Ubuntu engineering control node with
the tools required for infrastructure automation.

## 2. Execution Environment

Validated environment:

- Ubuntu 26.04.1 LTS
- Windows Subsystem for Linux (WSL2)
- Ansible Core 2.20.1
- Python 3.14.4

## 3. Required Packages

- git
- curl
- openssh-client
- python3
- ansible

## 4. Manual Implementation

Ensure that the Ubuntu Universe repository is
available before installing Ansible.

Execute:

    sudo apt-get update
    sudo apt-get install -y git curl openssh-client python3 ansible

Verify the Ansible installation:

    ansible --version

## 5. Automated Implementation

From the repository root, execute:

    ./scripts/chapter-00/02-prepare-control-node.sh

The script detects installed packages and installs
only missing packages and their required dependencies.

## 6. Validation

Execute the prerequisites checker:

    ./scripts/chapter-00/01-check-prerequisites.sh

## 7. Initial Test Results

Test date: 24 November 2026

| Validation | Result |
|---|---|
| Bash syntax validation | PASS |
| Existing package detection | PASS |
| Required packages detected | 5 of 5 |
| Unnecessary installation avoided | PASS |
| Ansible version validation | PASS |
| Direct script execution | PASS |

## 8. Security Considerations

The script uses Ubuntu-managed packages.

Administrative privileges are requested only
when missing packages require installation.

No credentials or personal paths are embedded
in the implementation script.

Review the script before executing it.

## 9. Validation Limitations

Fresh Ubuntu installation testing remains pending.

The missing-package installation branch has not
yet been functionally tested.

Package versions depend on the Ubuntu release
and available repository updates.

Compatibility with other Ubuntu releases has
not yet been validated.

## 10. Source Code

[Control Node Preparation Script](../../scripts/chapter-00/02-prepare-control-node.sh)
