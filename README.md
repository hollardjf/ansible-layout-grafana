ansible-layout-grafana
======================

Use this ansible layout to deploy Grafana.

Requirements
------------

ansible >= 2.5
Debian 8

Ansible Role
------------
https://github.com/hollardjf/ansible-role-grafana

Setup
-----
```
$> ./bin/git.sh
```
Copy and update inventories/local-standalone according to inventories/<your-inventory>

Deploy
------
```
$> ./bin/install.sh inventories/<your-inventory>/hosts
```

FYI
---
https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#directory-layout