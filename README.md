Snipe-IT Automation using Ansible


===========================================

Recommended OS: 18.04.5 LTS (Bionic Beaver)

===========================================

Prerequisite: create kumar user on master as well as worker nodes with sudo privilege and configure passwordless login in-between.

==================================================================================================================================
Master Node:

su - kumar

git clone https://github.com/kumarshreyansh/snipe-it-automation-using-ansible.git

cd snipe-it-automation-using-ansible

ansible-playbook playbook.yaml --become --become-method=sudo --become-user=root -K
========================================================================================

Based on your internet speed, task-9/script-9 execution can take longer periods of time.

========================================================================================

open worker node ip address in your browser
