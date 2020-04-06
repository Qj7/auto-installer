#!/usr/bin/env bash

set -x

is_root?
curl -fsSL https://github.com/Qj7/auto-installer/archive/master.tar.gz | tar xz
cd auto-installer-master
ansible-playbook playbook.yml -vvv
cd ..
rm -rf auto-installer-master

is_root?() {
    if
      [[ "${USER:-}" == "root" ]] ; then
      echo "This script works only with normal user, it wont work with root, please log in as normal user and try again."
      exit 1
    fi
}
