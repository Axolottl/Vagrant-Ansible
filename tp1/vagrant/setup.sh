# init script for Vagrant VMs

# update OS
dnf update -y

# install ansible# install Ansible & python
dnf install -y ansible

# désactive SELinux
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config

# Define user with access to root
sudo useradd -ou 0 -g 0 dev
sudo passwd -d dev
sudo su dev