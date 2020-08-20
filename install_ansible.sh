#!/bin/bash
########################################
# NetApp Getting Started with NetApp and Ansible - Install script
# https://netapp.io/2018/10/08/getting-started-with-netapp-and-ansible-install-ansible/
#
# Note: this install script works very well with NetApp Lab-on-Demand 
#       IaaS OpenStack on Element and ONTAP v1.0
#
########################################

# CentOS the pip package is in the EPEL repository
sudo yum install epel-release -y

# add Python package installer (pip) 
sudo yum install python-pip -y

# Install ansible
sudo pip install ansible

# Install NetApp ONTAP and Element storage modules for Ansible
#   Download latest versions of Ansible modules 
#   this step is optional since the latest versions of Ansible ship with 
#   the latest stable NetApp ONTAP and Element modules
sudo pip install netapp-lib solidfire-sdk-python

# Install git repository package (probably already done)
sudo yum install git -y

# (Optional) Upgrade Ansible
# sudo pip install ansible --upgrade


