#!/bin/sh
cd ansible
# ansible-galaxy install -r requirements.yml
ansible-playbook -v --connection=local --inventory 127.0.0.1, site.yml
