.PHONY: ping

ping:
	ansible -i inventory.ini do_server -m ping

