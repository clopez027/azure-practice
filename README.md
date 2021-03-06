# azure-practice

Used to explore Azure

## Tools

* **Ansible:** Explore using Ansible to provision components in Azure

## Steps

* Create Azure VM (RHEL)
* Install ansible
  * sudo yum install ansible
* Install git
  * sudo yum install git
* Configure git
  * git config --global user.name "<First> <Last>"
  * git config --global user.email "<email address>"
  * git config --list

## To do

* clean up ssh plan
* create user account

## Accounts
* sudo -i
* /etc/ssh/sshd_config --> PasswordAuthentication yes
* useradd -m -s /bin/bash <username>
* passwd <username>
* usermdo -aG sudo <username>
* restart

## Notes

* Standard_B1ms-$18 (1-vCPU | 2-RAM | 2-Disk | 800-IOPS | 4-Storage)
* Standard_DS1_v2-$55 (1-vCPU | 3.5-RAM | 4-Disk | 3500-IOPS | 7-Storage)
* ps/bash (ssh) ssh [vm-name] -i [location/private-key]
* ansible.cfg
  * set inventory = hosts
  * run commands from the dir with the .cfg (or set env)
* check versions
  * git --version
  * python --version
  * ansible --version
* Basic Ansible commands
  * ansible-playbook [playbook.yml] --syntax-check
  * ansible-playbook [playbook.yml]
* Basic git commands
  * git clone https://github.com/ansible/ansbile.git --recursive


## Log on
* Azure - cd to .ssh and use user@ipaddress -i filename
* PC - cd to .ssh\tmp and use user@ipaddress -i filename