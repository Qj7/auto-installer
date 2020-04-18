#!/usr/bin/env bash
#

RESET_FORMATTING='\e[0m'
RED='\033[0;31m'

is_root?(){
  if [[ "${USER:-}" == "root" ]] ; then
    echo -e "${RED}This script works only with normal user, it wont work with root, please log in as normal user and try again.${RESET_FORMATTING}"
    exit 1
  fi
}

is_root?
curl -fsSL https://github.com/Qj7/auto-installer/archive/master.tar.gz | tar xz
cd auto-installer-master
ansible-playbook playbook.yml -vvv
cd ..
rm -rf auto-installer-master
/bin/bash -c 'source ~/.bash_profile'
