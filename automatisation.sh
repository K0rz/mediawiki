#!/bin/bash
clear

inventaire="wiki.inv"

ansible-playbook --user root --ask-pass --become -i $inventaire install-userdeploy.yml
 
# ansible-playbook --user deploy --become -i $inventaire install-apache.yml

# ansible-playbook --user deploy --become -i $inventaire install-firewall.yml

# ansible-playbook --user deploy --become -i $inventaire install-mariadb.yml

# ansible-playbook --user deploy --become -i $inventaire install-mediawiki.yml

ansible-playbook --user deploy --become -i $inventaire install-all.yml
