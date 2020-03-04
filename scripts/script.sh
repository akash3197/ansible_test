#!/bin/bash
echo 'Enter User Name which needs to be created'
read usernme
echo 'Enter User ID which needs to be created'
read usrid
echo 'Enter Primary Group Name or Group ID'
read grpid
echo 'Enter Secondary Group Name seperated by , if there are multiple secondary groups'
read sgrpnm
echo 'Enter comments for User'
read cmmts
cat /home/ansible/ansible_tut/playbooks/creation_user.yml | sed "s/usernme/$usernme/g" | sed "s/usrid/$usrid/g" | sed "s/pgrnm/$grpid/g" | sed "s/cmmts/$cmmts/g" | sed "s/sgrnms/$sgrpnm/g" > creation_user.yml
ansible-playbook /home/ansible/ansible_tut/playbooks/creation_user.yml -i /home/ansible/ansible_tut/hosts -K
 

