test-ansible-role-db
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
- name: db
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
    - { role: vscoder.test-ansible-role-db, mongo_bind_ip: 0.0.0.0 }
```

License
-------

MIT

Author Information
------------------

Aleksey Koloskov
