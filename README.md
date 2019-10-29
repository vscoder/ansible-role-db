[![Build Status](https://travis-ci.org/vscoder/ansible-role-db.svg?branch=master)](https://travis-ci.org/vscoder/ansible-role-db)

ansible-role-db
====================

Install MongoDB 3.2
This role is part of [OTUS DevOps cource](https://otus.ru/lessons/devops-praktiki-i-instrumenty)

Requirements
------------

None.

Installation
------------

Add to `requirements.yml`
```yaml
- name: vscoder.db
  src: https://github.com/vscoder/ansible-role-db
  version: v0.1
```

Role Variables
--------------

| name            | type    | default value                                     | description                           |
| --------------- | ------- | ------------------------------------------------- | ------------------------------------- |
| key_url         | string  | https://www.mongodb.org/static/pgp/server-3.2.asc | URL of apt key file                   |
| mongodb_version | string  | 3.2                                               | MongoDB version                       |
| packages        | list    | ["mongodb-org"]                                   | packages to install                   |
| mongo_port      | integer | 27017                                             | mongod service listen tcp port number |
| mongo_bind_ip   | string  | 127.0.0.1                                         | mongod service listen ip              |
| env             | string  | local                                             | environment name                      |


Dependencies
------------

None

Example Playbook
----------------
```yaml
- hosts: db
  roles:
    - { role: vscoder.db, mongo_bind_ip: 0.0.0.0 }
```

Makefile targets
----------------

| Target                     | Description                                                                 |
| -------------------------- | --------------------------------------------------------------------------- |
| install_ansible_venv       | install ansible into local .venv using `python3 -m venv`                    |
| install_ansible_virtualenv | install ansible into local .venv using `virtualenv`                         |
| molecule_static_analyse    | execute `molecule lint` and `molecule syntax`                               |
| molecule_create            | create molecule instances via `molecule create`                             |
| molecule_verify            | apply playbook to existent instance and run tests (`converge` and `verify`) |
| molecule_test              | run `molecule test` complex testing                                         |
| molecule_destroy           | force destroy instances `molecule destroy -f`                               |

License
-------

MIT

Author Information
------------------

Aleksey Koloskov
