.PHONY: ping

ping:
	ansible -i inventory.ini prod_servers -m ping

