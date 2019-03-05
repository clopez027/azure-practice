# Overview

Use Azure Cloud Shell to setup a unix-type server with Ansible installed and configured.

## Steps

* Create a playbook for an Azure VM (CentOS)
* Install git
* Install Ansible
* ...

## Notes

* VM size = B1ms-$18 (1-vCPU | 2-RAM | 2-Disk | 800-IOPS | 4-Storage)
* VM size = DS1_v2-$55 (1-vCPU | 3.5-RAM | 4-Disk | 3500-IOPS | 7-Storage)
* ps (ssh) ssh [vm-name] -i [location/private-key]
* bash (ssh)