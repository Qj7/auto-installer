Ansible Role: Yarn
=========

[![Build Status](https://travis-ci.org/tmiller02/ansible-role-yarn.svg?branch=master)](https://travis-ci.org/tmiller02/ansible-role-yarn)

Installs Yarn on RHEL/CentOS and Ubuntu/Debian.

Requirements
------------

This role requires that Node.js is installed. See the [geerlingguy.nodejs](https://github.com/geerlingguy/ansible-role-nodejs) role for installing Node.js.

Role Variables
--------------

None.

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      become: yes
      roles:
        - geerlingguy.nodejs 
        - tmiller02.yarn

License
-------

BSD

Author Information
------------------

This role was created in 2019 by Tom Miller.