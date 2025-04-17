# 🧪 Ansible Git Playbook

This repository is created as part of my Ansible learning journey.  
It includes simple playbooks to **install** and **remove Git** on remote Ubuntu servers.

## 📦 Contents

- `inventory.ini` – inventory file with target server(s)
- `install_git.yml` – playbook to install Git
- `remove_git.yml` – playbook to remove Git
- `Makefile` – shortcuts to run playbooks

## 🚀 Usage

### 1. Install Git on remote server

```bash
make install
```

### 2. Verify installation

```bash
ssh root@YOUR_IP
git --version
# Output: git version 2.x.x
```

### 3. Remove Git from remote server

```bash
make remove
```

### 4. Verify removal
```bash
ssh root@YOUR_IP
git --version
# Output: Command 'git' not found
```

### Prerequisites
A remote Ubuntu-based server (e.g. on DigitalOcean)
SSH access with private key
Python on the remote server (usually preinstalled)
Ansible installed locally

### Notes
This is for educational purposes.
All commands were tested on Ubuntu 22.04.