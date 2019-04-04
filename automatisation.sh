#!/bin/bash
clear
depoy="deploy"
inventaire="wiki.inv"

# Get first occurence of ip address.
ipaddress=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $inventaire | head -1)

echo "Copy public ssh_key on home folder of $deploy"
cat ~/.ssh/id_rsa.pub |	ssh root@$ipaddress "sudo mkdir /home/$deploy/.ssh; sudo tee -a /home/$deploy/.ssh/authorized_keys"
clear

ansible-playbook --user root --ask-pass --become -i $inventaire install-userdeploy.yml

ansible-playbook --user deploy --become -i $inventaire install-apache.yml

ansible-playbook --user deploy --become -i $inventaire install-firewall.yml

ansible-playbook --user deploy --become -i $inventaire install-mariadb.yml

ansible-playbook --user deploy --become -i $inventaire install-mediawiki.yml
