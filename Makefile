# VARIABLES

# molecule executable path
MOLECULE?=./.venv/bin/molecule

install_ansible_venv:
	test -d ./.venv || python3 -m venv ./.venv
	./.venv/bin/pip install -r requirements.txt

install_ansible_virtualenv:
	test -d ./.venv || virtualenv ./.venv
	./.venv/bin/pip install -r requirements.txt

molecule_static_analyse:
	${MOLECULE} lint
	${MOLECULE} syntax

molecule_create:
	${MOLECULE} create
	${MOLECULE} list

molecule_verify:
	${MOLECULE} converge
	${MOLECULE} verify

molecule_test:
	${MOLECULE} test

molecule_destroy:
	${MOLECULE} destroy -f
