# 🧪 Ansible Git Playbook

This repository is created as part of my Ansible learning journey.  
It includes simple playbooks to **install** and **remove Git** on remote Ubuntu servers.

## ⚙️ Server Setup Playbook with Tags

This section contains an Ansible playbook designed to prepare a remote Ubuntu server with common development tools and user accounts. The playbook supports **tag-based execution**, allowing you to run only specific parts of the configuration.

### 📁 Contents

- `playbook.yml` – main playbook with tagged tasks
- `Makefile` – make commands to run tagged tasks
- `inventory.ini` – defines remote servers

### Tags in use

| Tag        | Description                                      |
|------------|--------------------------------------------------|
| `update`   | Updates the apt package cache                    |
| `packages` | Installs required tools: Git, Make, Node.js      |
| `users`    | Creates users: `arya`, `sansa`, and `tirion`     |
| `all`      | Runs all of the above                            |

---

#### Check if users were created

```bash
ssh root@IP_ADRESS_OF_YOUR_SERVER "grep -E 'arya|sansa|tirion' /etc/passwd"
``` 

### Prerequisites
A remote Ubuntu server (e.g. from DigitalOcean)

SSH access with a private key

Python installed on the server

Ansible installed on your local machine

### Notes
This playbook is modular and beginner-friendly

Designed for testing and learning purposes

You can extend it with roles, templates, and handlers later