# 🧪 Ansible Git Playbook

This repository is created as part of my Ansible learning journey.  
It includes simple playbooks to **install** and **remove Git** on remote Ubuntu servers.

This playbook deploys a simple HTML page to a remote Ubuntu server using **Ansible**.  
It demonstrates:

- Using **Jinja2 filters** (like `upper`) to manipulate variables
- Injecting **dynamic values from Ansible facts**
- Rendering an HTML page using the `template` module

---

## What It Does

- Installs **Nginx**
- Renders a dynamic HTML file from a Jinja2 template
- Displays:
  - A headline message with the server’s **hostname in uppercase**
  - The **current deployment date and time**

---

## Example Output

```html
<h1>Hello World!</h1>
<h2>THIS IS SERVER WEB1!</h2>
<small>Deployed at: 2025-04-18 23:12:34</small>
```
## How to Use

### 1. Clone the repo and update `inventory.ini`:

```ini
[servers]
web1 ansible_host=YOUR_SERVER_IP
```

### 2. Run the playbook:
```
bash
make deploy-html
```