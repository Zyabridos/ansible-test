# 🧪 Ansible Git Playbook

This repository is created as part of my Ansible learning journey.  
It includes simple playbooks to **install** and **remove Git** on remote Ubuntu servers.

# Ansible Nginx Setup

This playbook installs and configures **Nginx** to serve a simple HTML page.  
It includes a handler to automatically restart Nginx when the config file changes.

## Usage

```bash
make show-html
```

## Result

- Visit `http://your-server-ip` — you’ll see the **"Hello World!"** page
- Edit `files/index.html` to change the HTML content
- Run `make show-html` to apply changes with Ansible
- Refresh the page to see the updated result
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