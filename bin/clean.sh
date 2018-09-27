#!/usr/bin/env bash
cd $(dirname $0)/../
for files in $(ls roles | grep -v "requirements.yml") ; do rm -rf  roles/$files ; done
