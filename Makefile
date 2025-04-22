.PHONY: ping

ping:
	ansible servers -m ping

deploy-html:
	ansible-playbook deploy_nginx_html.yml
	
install:
	ansible-playbook playbook.yml
