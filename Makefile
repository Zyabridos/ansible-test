.PHONY: ping

ping:
	ansible servers -m ping

create-users:
	ansible-playbook create_users_with_git.yml