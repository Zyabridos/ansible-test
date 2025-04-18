.PHONY: ping

ping:
	ansible servers -m ping

show-html:
	ansible-playbook show-html-playbook.yml