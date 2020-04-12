#!/usr/bin/env bash

RESET_FORMATTING='\e[0m'
COLOR_CODE['red']=31

is_root?(){
  if [[ "${USER:-}" == "root" ]] ; then
    local message="This script works only with normal user, it wont work with root, please log in as normal user and try again."
    print_with_color ${message} 'red'
    exit 1
  fi
}

print_with_color(){
  local message="${1}"
  local color="${2}"
  if ! empty "$color"; then
    escape_sequence="\e[${COLOR_CODE[$color]}m"
    echo -e "${escape_sequence}${message}${RESET_FORMATTING}"
  else
    echo "$message"
  fi
}

is_root?
curl -fsSL https://github.com/Qj7/auto-installer/archive/master.tar.gz | tar xz
cd auto-installer-master
ansible-playbook playbook.yml -vvv
cd ..
rm -rf auto-installer-master
