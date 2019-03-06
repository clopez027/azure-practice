# azure-practice

Used to explore Azure

## Tools

* **Ansible:** Explore using Ansible to provision components in Azure

## Steps

* Create Azure VM (CentOS)
* Install ansible
* Install git

## To do

* clean up ssh plan
* clean up provision plans (add variables)

## Notes

* VM size = B1ms-$18 (1-vCPU | 2-RAM | 2-Disk | 800-IOPS | 4-Storage)
* VM size = DS1_v2-$55 (1-vCPU | 3.5-RAM | 4-Disk | 3500-IOPS | 7-Storage)
* ps/bash (ssh) ssh [vm-name] -i [location/private-key]
* ansible.cfg
  * set inventory = hosts
  * run commands from the dir with the .cfg (or set env)