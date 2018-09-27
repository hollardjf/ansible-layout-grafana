#!/usr/bin/env bash
cd $(dirname $0)/../
cd roles
ansible-galaxy install -r requirements.yml -p .

