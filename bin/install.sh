#!/usr/bin/env bash

cd $(dirname $0)/../


SCRIPT_INVENTORY=$1
SCRIPT_PLAYBOOK="grafana.yml"


[[ $SCRIPT_INVENTORY == "" ]] && echo "1st arg: inventory mandatory" && exit 1
[[ $SCRIPT_PLAYBOOK == "" ]] && echo "playbook $SCRIPT_PLAYBOOK not available" && exit 1
[[ $3 != "" ]] && echo "no 3rd arg" && exit 1

[[ ! -f "$SCRIPT_INVENTORY" ]] && echo "inventory not found" && exit 1 
[[ ! -f "$SCRIPT_PLAYBOOK" ]] && echo "playbook not found" && exit 1

rm -rf *.retry
ansible-playbook -i $SCRIPT_INVENTORY $SCRIPT_PLAYBOOK 
