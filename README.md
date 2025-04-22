# 🧪 Ansible Git + Nginx + Cowsay Playbook

This repository is part of my Ansible learning journey.  
It includes playbooks to:

- ✅ Install & remove Git on remote Ubuntu servers  
- 🖥️ Deploy a dynamic HTML page using **Nginx + Jinja2 templates**  
- 🐄 Render ASCII art with **cowsay** based on server name

---

## 📦 What It Does

- Installs **Nginx** and **cowsay**
- Renders an HTML file using the `template` module
- Dynamically injects:
  - ✅ The server’s hostname in **uppercase**
  - 🕒 The current **deployment time**
  - 🐄 ASCII-art from `cowsay`

---

## 🧪 Example Output

```html
<h1>Hello World!</h1>
<h2>THIS IS SERVER UBUNTU-S-1VCPU-1GB-FRA1-02!</h2>
<pre><code> _____________________________
/ This is server              \
\ ubuntu-s-1vcpu-1gb-fra1-02! /
 -----------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||</code></pre>
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