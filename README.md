# 🧪 Ansible Git Playbook

This repository is created as part of my Ansible learning journey.  
It includes simple playbooks to **install** and **remove Git** on remote Ubuntu servers.

This playbook automatically creates multiple users on a remote server with:

- Custom `.gitconfig` files
- Uploaded SSH public keys
- Configured Git aliases
- Works on Debian/Ubuntu

## What It Does

- Creates users: `jaime`, `sansa`, `robert`
- Sets up their home folders
- Adds your SSH public key to `~/.ssh/authorized_keys`
- Generates `.gitconfig` for each user with aliases and personal name/email

## How to Run

```
bash
make create-users
```

# How to Verify
SSH into the server as one of the new users:
```
bash
ssh jaime@your_server_ip
Initialize a test git repo:

```
bash
git init
```
Check config & aliases:
```
bash
git config --list
git st      # should show git status
git hist    # custom log view
```