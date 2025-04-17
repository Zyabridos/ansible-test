.PHONY: ping

ping:
	ansible servers -m ping

all:
	ansible-playbook set_up_test_env_playbook.yml --tags "all"
update:

	ansible-playbook set_up_test_env_playbook.yml --tags "update"

packages:
	ansible-playbook set_up_test_env_playbook.yml --tags "packages"

users:
	ansible-playbook set_up_test_env_playbook.yml --tags "users"
