#!/bin/bash
echo 'Enter User Name which needs to be created'
read usernme
echo 'Enter Primary Group Name or Group ID'
read groupid
echo 'Enter Secondary Group Name seperated by , if there are multiple secondary groups'
read sgroupid
echo 'Enter comments for User'
read cmmts
cat /home/ansible/ansible_tut/playbooks/creation_user.yml | sed "s/usernme/$usernme/g" | sed "s/pid/$groupid/g" | sed "s/cmmts/$cmmts/g"| sed "s/sid/$sgroupid/g" > creation_user.yml
ansible-playbook /home/ansible/ansible_tut/playbooks/creation_user.yml -i /home/ansible/ansible_tut/hosts -K  -vvv

