#!/bin/bash
########################################
# NetApp Getting Started with NetApp and Ansible - Install script
# https://netapp.io/2018/10/08/getting-started-with-netapp-and-ansible-install-ansible/
# - Updated Blog 4/29/2020
#
# Note: this install script works very well with NetApp Lab-on-Demand 
#       IaaS OpenStack on Element and ONTAP v1.0
#
########################################

# CentOS the pip package is in the EPEL repository
sudo yum install epel-release -y

# add Python package installer (pip) 
sudo yum install python-pip -y

# For CentOS 8, pip comes with python, but it’s version 3 now.
sudo yum install python3 -y

# Install ansible
sudo pip install ansible

# Install NetApp ONTAP and Element storage modules for Ansible
#   Download latest versions of Ansible modules 
#   this step is optional since the latest versions of Ansible ship with 
#   the latest stable NetApp ONTAP and Element modules
sudo pip install netapp-lib solidfire-sdk-python requests

# Install NetApp collections and the collections directory to allow all users access
sudo ansible-galaxy collection install netapp.ontap netapp.elementsw -p /usr/share/ansible/collection
sudo chmod +rx /usr/share/ansible/collections

# Install git repository package (probably already done)
sudo yum install git -y

# (Optional) Upgrade Ansible
sudo pip install ansible --upgrade

# (Optional) Upgrade NetApp Galaxy Collections
sudo ansible-galaxy collection install netapp.ontap netapp.elementsw -p /usr/share/ansible/collections -f


