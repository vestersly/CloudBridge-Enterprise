# CloudBridge Enterprise

## A Secure Migration from On-Premises Infrastructure to AWS

**Designed & Implemented by Awungjia Sylvester**

![Status](https://img.shields.io/badge/Status-In_Development-blue)
![Cloud](https://img.shields.io/badge/Cloud-AWS-orange)
![Automation](https://img.shields.io/badge/Automation-Ansible-red)
![Security](https://img.shields.io/badge/Security-CIS-green)

## Project Overview

CloudBridge Enterprise is an enterprise cloud migration
simulation for Kestrel Parts Belgium, a fictional Belgian
automotive parts distributor.

The project demonstrates a security-first migration of
traditional on-premises infrastructure, Java applications
and PostgreSQL databases to Amazon Web Services.

## Engineering Objectives

- Infrastructure security and CIS benchmark alignment
- Hybrid cloud networking and network segmentation
- Infrastructure as Code and configuration automation
- Secure CI/CD and software supply chain security
- Containerization and Kubernetes orchestration
- High availability, scalability and resilience
- Database migration and data protection
- Observability, performance monitoring and FinOps
- Disaster recovery and business continuity

## Current Implementation

### Chapter 0 - On-Premises Security Foundation

- Ubuntu Linux infrastructure preparation
- Ansible control node configuration
- Secure SSH connectivity
- Pre-hardening infrastructure snapshot
- OpenSCAP CIS Level 1 baseline assessment
- Automated AIDE package installation
- AIDE candidate database generation
- Sanitized infrastructure inventory
- Ansible syntax validation

### Initial CIS Assessment

| Result | Count |
|---|---:|
| Passed | 228 |
| Failed | 138 |
| Not applicable | 42 |
| Not selected | 240 |

Initial pass ratio: 62.3% of passed and failed checks.

This is an unweighted baseline measurement, not an
official CIS certification or final compliance score.

## Repository Structure

- ansible/ - Configuration management and automation
- applications/ - Enterprise application components
- architecture/ - Architecture and design documentation
- documentation/ - Engineering handbook and decisions
- infrastructure/ - Cloud infrastructure as code
- scripts/ - Operational automation
- security/ - Security controls and assessments

## Security and Privacy

Operational inventories, credentials, private keys,
sensitive infrastructure identifiers and raw security
evidence are excluded from public version control.

## Project Status

Active development - Chapter 0 in progress.

AIDE operational validation, additional CIS remediation,
post-hardening assessment and AWS migration remain
pending.

This is an independent engineering portfolio project,
not a production customer deployment.
