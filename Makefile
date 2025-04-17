.PHONY: ping

ping:
	ansible servers -m ping

install-git:
	ansible-playbook install_git.yml

remove-git:
	ansible-playbook -i inventory.ini remove_git.yml