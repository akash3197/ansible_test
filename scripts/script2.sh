#!/bin/bash
echo 'Enter User Name which needs to be created'
read usernme
cat /home/ansible/ansible_tut/playbooks/creation_user_2.yml | sed "s/usernme/$usernme/g"  > creation_user_2.yml


#ansible-playbook /home/ansible/ansible_tut/playbooks/creation_user_2.yml -i /home/ansible/ansible_tut/hosts -K  -vvv

