install_ansible_venv:
	test -d ./.venv || python3 -m venv ./.venv
	./.venv/bin/pip install -r requirements.txt

install_ansible_virtualenv:
	test -d ./.venv || virtualenv ./.venv
	./.venv/bin/pip install -r requirements.txt

molecule_test:
	pass
